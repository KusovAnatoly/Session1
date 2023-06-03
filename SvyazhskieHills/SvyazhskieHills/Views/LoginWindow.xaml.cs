using SvyazhskieHills.Models;
using System;
using System.Linq;
using System.Windows;

namespace SvyazhskieHills.Views
{
    public partial class LoginWindow : Window
    {
        public LoginWindow()
        {
            InitializeComponent();
        }

        private void CheckBox_Checked(object sender, RoutedEventArgs e)
        {
            // Отображение пароля
            // Скрыть PasswordBox
            // Показать TextBox
            PswdBoxPswd.Visibility = Visibility.Collapsed;
            TxtBoxPswd.Visibility = Visibility.Visible;
            // Присвоить TxtBoxPswd.Text значение из PswdBoxPswd.Password
            TxtBoxPswd.Text = PswdBoxPswd.Password;

        }

        private void CheckBox_Unchecked(object sender, RoutedEventArgs e)
        {
            // Сокрытие пароля
            // Показать PasswordBox
            // Скрыть TextBox
            PswdBoxPswd.Visibility = Visibility.Visible;
            TxtBoxPswd.Visibility = Visibility.Collapsed;
            // Присвоить PswdBoxPswd.Password значение из TxtBoxPswd.Text
            PswdBoxPswd.Password = TxtBoxPswd.Text;
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            if (Properties.Settings.Default.UnblockTime > DateTime.Now)
            {
                MessageBox.Show("Действует блокировка!");
                return;
            }

            using (var dbContext = new DatabaseContext())
            {
                if (dbContext.Employee.Any(x => x.Login == TxtBoxLogin.Text))
                {
                    var logHistory = new LoginHistory()
                    {
                        EmployeeID = dbContext.Employee.First(x => x.Login == TxtBoxLogin.Text).EmployeeID,
                        Time = DateTime.Now,
                        LoginStatusID = 2
                    };

                    if (dbContext.Employee.Any(x => x.Login == TxtBoxLogin.Text && x.Password == PswdBoxPswd.Password))
                    {
                        Properties.Settings.Default.UserID = dbContext.Employee.First(x => x.Login == TxtBoxLogin.Text && x.Password == PswdBoxPswd.Password).EmployeeID;
                        Properties.Settings.Default.UserType = dbContext.Employee.First(x => x.Login == TxtBoxLogin.Text && x.Password == PswdBoxPswd.Password).PositionID;
                        Properties.Settings.Default.Save();
                        
                        logHistory.LoginStatusID = 1;

                        new CommonWindow().Show();

                        Close();
                    }
                    else
                    {
                        MessageBox.Show("Не верный логин или пароль!");
                    }

                    dbContext.LoginHistory.Add(logHistory);

                    dbContext.SaveChanges();
                }
                else
                {
                    MessageBox.Show("Не верный логин или пароль!");
                }
            }
        }
    }
}
