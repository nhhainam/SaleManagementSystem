using AutoMapper;
using BusinessObject;
using DataAccess.Entity;
using DataAccess.Repository;
using SalesWPFApp;
using SalesWPFApp.Utils;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;

namespace DataAccess.ViewModel
{
    public class OrderViewModel
    {
        private ObservableCollection<OrderObject> _orders;
        public ObservableCollection<OrderObject> Orders => _orders;

        public ICommand DeleteCommand { get; set; }
        public ICommand AddCommand { get; set; }
        public ICommand UpdateCommand { get; set; }
        public ICommand DetailCommand { get; set; }

        IOrderRepository orderRepository = new OrderRepository();
        public OrderViewModel(MemberObject memberObject)
        {
            List<Order> orderList = new List<Order>();
            if (memberObject != null && memberObject.MemberId == 0)
            {
                orderList = (List<Order>)orderRepository.GetOrders();
            } else
            {
                orderList = (List<Order>)orderRepository.GetOrdersByMemberID(memberObject.MemberId);
            }

            var config = new MapperConfiguration(cfg =>
            {
                cfg.AddProfile(new MapDTO());
            });
            var mapper = config.CreateMapper();

            this._orders = new ObservableCollection<OrderObject>(orderList.Select(o => mapper.Map<Order, OrderObject>(o)));

            DeleteCommand = new RelayCommand<OrderObject>(
                (o) => o != null, // CanExecute()
                (o) => removeOrder(o) // Execute()
            );
            AddCommand = new RelayCommand<OrderObject>(
                (o) => true, // CanExecute()
                (o) => addOrder(mapper.Map<OrderObject, Order>(o)) // Execute()
            );
            UpdateCommand = new RelayCommand<OrderObject>(
                (o) => true, // CanExecute()
                (o) => updateOrder(mapper.Map<OrderObject, Order>(o)) // Execute()
            );
            DetailCommand = new RelayCommand<OrderObject>(
                (o) => true, // CanExecute()
                (o) => seeDetail(o, memberObject) // Execute()
            );
        }

        private void seeDetail(OrderObject o, MemberObject memberObject)
        {
            OrderDetailView orderDetailView = new OrderDetailView(o, memberObject);
            orderDetailView.ShowDialog();
        }

        private void updateOrder(Order order)
        {
            orderRepository.UpdateOrder(order);
        }

        private void addOrder(Order order)
        {
            orderRepository.InsertOrder(order);
        }

        private void removeOrder(OrderObject o)
        {
            Order order = orderRepository.GetOrderByID(o.OrderId);

            orderRepository.DeleteOrder(order);
        }
    }
}
