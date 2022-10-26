using AutoMapper;
using BusinessObject;
using DataAccess.Entity;
using DataAccess.Repository;
using SalesWPFApp.Utils;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;

namespace SalesWPFApp.ViewModel
{
    public class ProfileViewModel
    {
        private MemberObject _member;
        public MemberObject Member => _member;
        public ICommand UpdateCommand { get; set; }

        IMemberRepository memberRepository = new MemberRepository();
        public ProfileViewModel(MemberObject memberObj)
        {
            Member member = memberRepository.GetMemberByID(memberObj.MemberId);

            var config = new MapperConfiguration(cfg =>
            {
                cfg.AddProfile(new MapDTO());
            });
            var mapper = config.CreateMapper();

            this._member= mapper.Map<Member, MemberObject>(member);

            UpdateCommand = new RelayCommand<MemberObject>(
                (m) => true, // CanExecute()
                (m) => updateMember(mapper.Map<MemberObject, Member>(m)) // Execute()
            );
        }

        private void updateMember(Member member)
        {
            memberRepository.UpdateMember(member);
        }



    }

}
