using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Net;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Data;

namespace SalesWPFApp
{
    internal class MemberDTOConverter : IMultiValueConverter
    {
        public object Convert(object[] values, Type targetType, object parameter, CultureInfo culture)
        {
            for (int i = 0; i < values.Length; i++)
            {
                if (values[i] == null || values[i].Equals(""))
                {
                    return null;
                }
            }

            var mail = (string)values[0];
            var password = (string)values[1];

            MemberDTO memberDTO = new MemberDTO();
            memberDTO.Email = mail;
            memberDTO.Password = password;

            return memberDTO;
        }

        public object[] ConvertBack(object value, Type[] targetTypes, object parameter, CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }
}
