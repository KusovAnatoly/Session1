using SvyazhskieHills.Models;
using System;
using System.IO;
using System.Linq;
using System.Windows;
using System.Windows.Media.Imaging;
using System.Windows.Threading;

namespace SvyazhskieHills.Views
{
    public partial class CommonWindow : Window
    {
        /// <summary>
        /// Таймер
        /// </summary>
        private DispatcherTimer _timer;

        /// <summary>
        /// Начало работы таймера
        /// </summary>
        private DateTime _start;

        /// <summary>
        /// Длительность сессии
        /// </summary>
        /// <remarks>
        /// В минутах
        /// </remarks>
        private int sessionTime;

        /// <summary>
        /// Оповещение об окончании сессии
        /// </summary>
        /// <remarks>
        /// В минутах
        /// </remarks>
        private int warningTime;

        /// <summary>
        /// Длительность блокировки
        /// </summary>
        /// <remarks>
        /// В минутах
        /// </remarks>
        private int blockTime;


        public CommonWindow()
        {
            InitializeComponent();
            SetUI();
            SetTimer();
        }

        /// <summary>
        /// Устанавливает таймер
        /// </summary>
        private void SetTimer()
        {
            sessionTime = 2;
            warningTime = 1;
            blockTime = 1;

            _start = DateTime.Now;

            _timer = new DispatcherTimer();
            _timer.Tick += new EventHandler(DispatcherTimer_Tick);
            _timer.Interval = new TimeSpan(0, 0, 0, 0, 50);
            _timer.Start();
        }

        private void DispatcherTimer_Tick(object sender, EventArgs e)
        {
            TextBoxTimerDisplay.Text = (DateTime.Now - _start).ToString(@"hh\:mm");
            if ((DateTime.Now - _start).Minutes == sessionTime)
            {
                Properties.Settings.Default.UnblockTime = DateTime.Now.AddMinutes(blockTime);
                Properties.Settings.Default.Save();
                MessageBox.Show("Сессия закончилась!");
                Application.Current.Shutdown();
            }
            if ((DateTime.Now - _start).Seconds == (sessionTime - warningTime)*59)
            {
                MessageBox.Show($"Осталось {warningTime} минут! Сохраните результаты работы!");
            }
        }

        /// <summary>
        /// Настраивает UI приложения для ролей
        /// </summary>
        private void SetUI()
        {
            MainFrame.Navigate(new OrdersPage());
            var userType = Properties.Settings.Default.UserType;
            switch (userType)
            {
                case 1:
                    NewOrderItem.Visibility = Visibility.Visible;
                    break;
                case 2:
                    LoginHistoryItem.Visibility = Visibility.Visible;
                    ConsumablesItem.Visibility = Visibility.Visible;
                    break;
                case 3:
                    NewOrderItem.Visibility = Visibility.Visible;
                    break;
            }
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            using (var dbContext = new DatabaseContext())
            {
                var employee = dbContext
                                        .Employee
                                        .Include("Position")
                                        .First(x => x.EmployeeID == Properties.Settings.Default.UserID);

                TextBlockUserInfo.Text = $"{employee.Surname} {employee.Name}, {employee.Position.Name}";

                var currentDirectory = Directory.GetCurrentDirectory();
                var filePath = Path.Combine(currentDirectory, "employees",$"{employee.Surname}.jpeg");
                UserImage.Source = new BitmapImage(new Uri(filePath, UriKind.RelativeOrAbsolute));
            }
        }

        private void LogOutItem_Click(object sender, RoutedEventArgs e)
        {
            if (MessageBox.Show("Вы уверены, что хотите выйтие?", "Выход", MessageBoxButton.YesNo, MessageBoxImage.Warning) == MessageBoxResult.Yes)
            {
                new LoginWindow().Show();
                Close();
            }
        }

        private void LoginHistoryItem_Click(object sender, RoutedEventArgs e)
        {
            new LoginHistoryWindow().ShowDialog();
        }

        private void ConsumablesItem_Click(object sender, RoutedEventArgs e)
        {
            MainFrame.Navigate(new ConsumablesPage());
        }

        private void OrdersItem_Click(object sender, RoutedEventArgs e)
        {
            MainFrame.Navigate(new OrdersPage());
        }
    }
}
