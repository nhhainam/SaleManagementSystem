using AutoMapper;
using BusinessObject;
using DataAccess.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SalesWPFApp.Utils
{
    public class MapDTO : Profile
    {
        public MapDTO()
        {
            CreateMap<Member, MemberObject>();
            CreateMap<MemberObject, Member>();
            CreateMap<Order, OrderObject>();
            CreateMap<OrderObject, Order>();
            CreateMap<OrderDetail, OrderDetailObject>();
            CreateMap<OrderDetailObject, OrderDetail>();
            CreateMap<Product, ProductObject>();
            CreateMap<ProductObject, Product>();
        }
    }
}
