using SalesWPFApp.Utils;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;
using System.Windows;
using DataAccess.Repository;
using DataAccess.Entity;
using Microsoft.EntityFrameworkCore.Metadata.Internal;
using BusinessObject;

namespace SalesWPFApp.ViewModel
{
    public class LoginViewModel
    {
        public ICommand LoginCommand { get; set; }

        public LoginWindow windowLogin;

        IMemberRepository memberRepository = new MemberRepository();
        public LoginViewModel(LoginWindow window)
        {
            this.windowLogin = window;

            LoginCommand = new RelayCommand<MemberDTO>(
                (c) => true, // CanExecute()
                (c) => processLogin(c) // Execute()
            );
        }

        private void processLogin(MemberDTO m)
        {
            if (m != null)
            {
                Member member = memberRepository.GetMemberByEmail(m.Email);

                if (member != null && m.Password.Equals(member.Password))
                {
                    MemberObject memberObject =
                        new(member.MemberId, member.Email, member.CompanyName, member.City, member.Country, member.Password);
                    MainWindow mainWindow = new MainWindow(memberObject);
                    MessageBox.Show("You are logging in as an user");
                    windowLogin.Close();
                    mainWindow.Show();
                }
                else if (m.Email.Equals("admin@hehe.com") && m.Password.Equals("admin"))
                {
                    MemberObject memberObject =
                        new(0, "admin@hehe.com", "FPT", "Hanoi", "VN", "admin");
                    MainWindow mainWindow = new MainWindow(memberObject);
                    MessageBox.Show("You are logging in as an admin");
                    windowLogin.Close();
                    mainWindow.Show();
                }
                else
                {
                    MessageBox.Show("Login failed. Check your account again");
                }
            } else
            {
                MessageBox.Show("Login failed. Check your account again");
            }
        }
    }
}
