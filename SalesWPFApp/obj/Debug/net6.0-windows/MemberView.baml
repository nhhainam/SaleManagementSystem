   M S B A M L   `   `   `  ????F  BSalesWPFApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:SalesWPFAppSalesWPFApp  5   	       SalesWPFApp.MemberView   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   +localclr-namespace:SalesWPFApp     5   	   -   5          ?Name$
  load??5   	    ? Title$ 
MemberView??5	   	   $	??723??5
   	   $
??1197??5   	    ? 	Resources 5      !  SalesWPFApp.MemberConverter   	Converter??%   &	          5   
   6    5      .??5      ?? $??819,0,122,0q?6   .+?5   
   ? .+?5      ?? -   5         ??Name$ lvMember??5      $
??Left=?5      $??
-818,8,0,8q?5      $	??686??5      ??5      ?? *	Members+ ?? View 5      ?? 5      .P?5      ??  ?? Width$	 100??5   )    ?? DisplayMemberBinding 5   )   ?? *
MemberId+$??MemberId??5   T   5      ?? 5      $	 100??5   )    5   )   ?? *Email+$??Email??5    Q   5!      ?? 5"      $	 100??5#   )    5"   )   ?? *CompanyName+$??CompanyName??5$   W   5%      ?? 5&      $	 100??5'   )    5&   )   ?? *City+$
??City??5(   P   5)      ?? 5*      $	 100??5+   )    5*   )   ?? *	Country+$??Country??5,   S   5-      ?? 5.      $	 100??5/   )    5.   )   ?? *
Password+$??Password??50   T   51      52      54      55      ?? 56   
   $??Id??6   ?? 57   
   -   5         ??Name$ txtMemberId??57      ??58      ?? *
MemberId+ ?? Mode$ OneWay=?	 ? DataContext	 59      ?? *SelectedItem+
 ?? ElementName$
 lvMember???? 5:   
   $??Email??6   ?? 5;   
   -   5        $ txtMemberEmail??5;      ??5<      ?? *Email+$ TwoWay=?	 5=      ?? *SelectedItem+$
 lvMember???? 5>   
   $??Company??6   ?? 5?   
   -   5        $ txtCompanyname??5?      ??5@      ?? *CompanyName+$ TwoWay=?	 5A      ?? *SelectedItem+$
 lvMember???? 5B   
   $
??City??6   ?? 5C   
   -   5        $
 City??5C      ??5D      ?? *City+$ TwoWay=?	 5E      ?? *SelectedItem+$
 lvMember???? 5F   
   $??Country??6   ?? 5G   
   -   5        $ Country??5G      ??5H      ?? *	Country+$ TwoWay=?	 5I      ?? *SelectedItem+$
 lvMember???? 5J   
   $	??Add??6   $??50??5K      ??5L      ?? *
AddCommand+??5M      `? 5N       `? 	Converter# [  6   .1?5O      ??  ?? Path$
 Text?6   $
 txtMemberId??5P      ?? 5Q      $
 Text?6   $
 txtMemberEmail??5R      ?? 5S      $
 Text?6   $
 txtCompanyname??5T      ?? 5U      $
 Text?6   $

 City??5V      ?? 5W      $
 Text?6   $
 Country??5X      5Y      5[      ?? 5\   
   $??Update??6   $??50??5]      ??5^      ?? *UpdateCommand+??5_      `? 5`      # [  6   .1?5a      ?? $
 Text?6   $
 txtMemberId??5b      ?? 5c      $
 Text?6   $
 txtMemberEmail??5d      ?? 5e      $
 Text?6   $
 txtCompanyname??5f      ?? 5g      $
 Text?6   $

 City??5h      ?? 5i      $
 Text?6   $
 Country??5j      5k      5m      ?? 5n   
   $??Delete??6   $??50??5o      ??5p      ?? *DeleteCommand+??5q      `? 5r      # [  6   .1?5s      ?? $
 Text?6   $
 txtMemberId??5t      ?? 5u      $
 Text?6   $
 txtMemberEmail??5v      ?? 5w      $
 Text?6   $
 txtCompanyname??5x      ?? 5y      $
 Text?6   $

 City??5z      ?? 5{      $
 Text?6   $
 Country??5|      5}      5      5?      5?      