using BusinessObject;
using DataAccess.Entity;
using DataAccess.ViewModel;
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
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace SalesWPFApp
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        MemberObject memberObj;
        public MainWindow(MemberObject member)
        {
            InitializeComponent();
            if(member.Email.Equals("admin@hehe.com"))
            {
                btnProfile.Visibility = Visibility.Collapsed;
            } else
            {
                btnMember.Visibility = Visibility.Collapsed;
                btnProduct.Visibility = Visibility.Collapsed;
            }
            memberObj = member;
            this.DataContext = member;
        }

        private void btnMember_Click(object sender, RoutedEventArgs e)
        {
            MemberView memberView = new MemberView();
            memberView.ShowDialog();
        }

        private void btnOrder_Click(object sender, RoutedEventArgs e)
        {
            OrderView orderView = new OrderView(memberObj);
            orderView.ShowDialog();
        }

        private void btnProduct_Click(object sender, RoutedEventArgs e)
        {
            ProductView productView = new ProductView();
            productView.ShowDialog();
        }

        private void btnProfile_Click(object sender, RoutedEventArgs e)
        {
            ProfileView profileView = new ProfileView(memberObj);
            profileView.ShowDialog();
        }
    }
}
