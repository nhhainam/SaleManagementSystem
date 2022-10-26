﻿using AutoMapper;
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

namespace DataAccess.ViewModel
{
    public class MemberViewModel
    {
        private ObservableCollection<MemberObject> _members;
        public ObservableCollection<MemberObject> Members => _members;

        public ICommand DeleteCommand { get; set; }
        public ICommand AddCommand { get; set; }
        public ICommand UpdateCommand { get; set; }

        IMemberRepository memberRepository = new MemberRepository();
        public MemberViewModel()
        {
            List<Member> memberList = (List<Member>) memberRepository.GetMembers();

            var config = new MapperConfiguration(cfg =>
            {
                cfg.AddProfile(new MapDTO());
            });
            var mapper = config.CreateMapper();

            this._members = new ObservableCollection<MemberObject>(memberList.Select(mem => mapper.Map<Member, MemberObject>(mem)));

            DeleteCommand = new RelayCommand<MemberObject>(
                (m) => m != null, // CanExecute()
                (m) => removeMember(m) // Execute()
            );
            AddCommand = new RelayCommand<MemberObject>(
                (m) => true, // CanExecute()
                (m) => addMember(mapper.Map<MemberObject, Member>(m)) // Execute()
            );
            UpdateCommand = new RelayCommand<MemberObject>(
                (m) => true, // CanExecute()
                (m) => updateMember(mapper.Map<MemberObject, Member>(m)) // Execute()
            );
        }

        private void updateMember(Member member)
        {
            memberRepository.UpdateMember(member);
        }

        private void addMember(Member m)
        {
            memberRepository.InsertMember(m);
        }

        public void removeMember(MemberObject member)
        {
            List<Member> memberList = (List<Member>)memberRepository.GetMembers();
            Member mDel = memberList.FirstOrDefault(m => m.MemberId == member.MemberId);

            memberRepository.DeleteMember(mDel);
        }


    }


}
