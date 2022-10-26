using BusinessObject;
using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Data;

namespace SalesWPFApp
{
    internal class ProductConverter : IMultiValueConverter
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
            var objects = values;
            var productId = (string)objects[0];
            var categoryId = (string)values[1];
            var productName = (string)values[2];
            var weight = (string)values[3];
            var unitPrice = (string)values[4];
            var unitsInStock = (string)values[5];
            return new ProductObject(int.Parse(productId), int.Parse(categoryId), productName, weight, decimal.Parse(unitPrice), int.Parse(unitsInStock));
        }

        public object[] ConvertBack(object value, Type[] targetTypes, object parameter, CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }
}
