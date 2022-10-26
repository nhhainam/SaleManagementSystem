using DataAccess.Entity;
using DataAccess.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccess.Repository
{
    public class OrderRepository : IOrderRepository
    {
        public void DeleteOrder(Order order) => OrderManagement.Instance.Remove(order);

        public Order GetOrderByID(int orderID) => OrderManagement.Instance.GetOrderByID(orderID);

        public IEnumerable<Order> GetOrders() => OrderManagement.Instance.GetOrderList();
        public IEnumerable<Order> GetOrdersByMemberID(int memberID) => OrderManagement.Instance.GetOrderListByMemberId(memberID);

        public void InsertOrder(Order order) => OrderManagement.Instance.AddNew(order);

        public void UpdateOrder(Order order) => OrderManagement.Instance.Update(order);
    }
}
