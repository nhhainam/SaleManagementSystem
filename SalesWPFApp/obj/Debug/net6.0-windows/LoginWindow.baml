   M S B A M L   `   `   `  ????F  BSalesWPFApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:SalesWPFAppSalesWPFApp  5   	       SalesWPFApp.LoginWindow   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   +localclr-namespace:SalesWPFApp     5   	     ? Title$  LoginWindow??5   	   $	??450??6   $	??800??6*    ? 	Resources 5
      $  SalesWPFApp.MemberDTOConverter   	Converter??%   &	          5   
   6#   5      .??5      ?? $??0,50,0,0q?6   .+?5   
   ?? .??6   Email6   ?? 5   
   -   5        $??txtEmail??5      $?? ??5      6   ?? 5   
   .??6   
Password6   ?? 5   
   -   5        $??txtPassword??5      $?? ??5      6   ?? 5   
   -   5        $??btnLogin??5      $??Login??5      $??0,20,0,0q?5       ?? 	IsDefault$
 True??5      ??5      ?? *LoginCommand+??5      `? 5       `? 	Converter# [  6   .1?5      ??  ?? Path$
 Text?6    ?? ElementName$ txtEmail??5      ?? 5      $
 Text?6   $ txtPassword??5      5       5"      5#      5$      