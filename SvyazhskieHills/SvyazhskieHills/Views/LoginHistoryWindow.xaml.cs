using SvyazhskieHills.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace SvyazhskieHills.Views
{
    /// <summary>
    /// Interaction logic for LoginHistoryWindow.xaml
    /// </summary>
    public partial class LoginHistoryWindow : Window
    {
        public LoginHistoryWindow()
        {
            InitializeComponent();
            SetUpData();
        }

        private void SetUpData()
        {
            using (var dbContext = new DatabaseContext())
            {
                DataGridHistory.ItemsSource = dbContext.LoginHistory.Include("LoginStatus").Include("Employee").ToList();
            }
        }

        private void TextBoxFilter_TextChanged(object sender, TextChangedEventArgs e)
        {
            if (!string.IsNullOrEmpty(TextBoxFilter.Text))
            {
                using (var dbContext = new DatabaseContext())
                {
                    DataGridHistory.ItemsSource = dbContext.LoginHistory.Include("LoginStatus").Include("Employee").
                        Where(x => x.Employee.Login.Contains(TextBoxFilter.Text)).ToList();
                }
            }
            else
            {
                SetUpData();
            }
        }
    }
}
