   M S B A M L   `   `   `  ????F  BSalesWPFApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:SalesWPFAppSalesWPFApp  5   	       SalesWPFApp.ProfileView   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   +localclr-namespace:SalesWPFApp     5   	     ? Title$  ProfileView??5   	   $	??450??5	   	   $	??500??5
   	    ? 	Resources 5      !  SalesWPFApp.MemberConverter   	Converter??%   &	          5   
   6    5      .??5      ?? $??100,0,100,0q?6   .+?5   
   ?? $??Id??6   ?? 5   
   -   5         ??Name$ txtMemberId??5       ?? 
IsReadOnly$
 True??6'   ??5      ?? *
MemberId+ ?? Mode$ TwoWay=? ? DataContext 5      ?? *Member+?? 5   
   $??Email??6   ?? 5   
   -   5        $ txtMemberEmail??5      ??5      ?? *Email+$ TwoWay=? 5      ?? *Member+?? 5   
   $??Company??6   ?? 5   
   -   5        $ txtCompanyname??5      ??5      ?? *CompanyName+$ TwoWay=? 5      ?? *Member+?? 5   
   $
??City??6   ?? 5   
   -   5        $
 City??5      ??5      ?? *City+$ TwoWay=? 5      ?? *Member+?? 5    
   $??Country??6   ?? 5!   
   -   5        $ Country??5!      ??5"      ?? *	Country+$ TwoWay=? 5#      ?? *Member+?? 5%   
   $??Update??6   $??50??5&      ??5'      ?? *UpdateCommand+??5(      `? 5)       `? 	Converter# [  6   .1?5*      ??  ?? Path$
 Text?6    ?? ElementName$ txtMemberId??5+      ?? 5,      $
 Text?6   $ txtMemberEmail??5-      ?? 5.      $
 Text?6   $ txtCompanyname??5/      ?? 50      $
 Text?6   $
 City??51      ?? 52      $
 Text?6   $ Country??53      54      56      57      58      