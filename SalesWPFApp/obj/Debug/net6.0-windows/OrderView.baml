   M S B A M L   `   `   `  ????F  BSalesWPFApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:SalesWPFAppSalesWPFApp  5   	       SalesWPFApp.OrderView   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   +localclr-namespace:SalesWPFApp     5   	     ? Title$  	OrderView??5   	   $	??723??5	   	   $
??1197??5
   	    ? 	Resources 5         SalesWPFApp.OrderConverter   	Converter??%   &	          5   
   6   5      .??5      ?? $??
885,0,56,0q?6   .+?5   
   ? .+?5      ?? -   5         ??Name$ lvOrder??5      $??-887,8,327,-8q?5      ??5      ?? *Orders+ ?? View 5      ?? 5      .P?5      ??  ?? Width$	 100??5   )    ?? DisplayMemberBinding 5   )   ?? *	OrderId+$??OrderId??5   S   5      ?? 5      $	 100??5   )    5   )   ?? *
MemberId+$??MemberId??5   T   5      ?? 5      $	 150??5    )    5   )   ?? *	OrderDate+$??	OrderDate??5!   U   5"      ?? 5#      $	 150??5$   )    5#   )   ?? *RequiredDate+$??RequiredDate??5%   X   5&      ?? 5'      $	 150??5(   )    5'   )   ?? *ShippedDate+$??ShippedDate??5)   W   5*      ?? 5+      $	 100??5,   )    5+   )   ?? *	Freight+$??Freight??5-   S   5.      5/      51      52      ?? 53   
   .??6   
Order Id6   ?? 54   
   -   5        $??
txtOrderId??54      ??55      ??  ?? Path$ OrderId? ?? Mode$ OneWay=? ? DataContext 56      ?? 	 ?? ElementName$	 lvOrder??$ SelectedItem?6S   ?? 57   
   .??6   	Member Id6   ?? 58   
   -   5        $??txtMemberId??58      ??59      ?? $ MemberId?$ OneWay=? 5:      ?? $	 lvOrder??$ SelectedItem?6S   ?? 5;   
   .??6   
Order Date6   (  "System.Windows.Controls.DatePicker  5<   
   -   5        $??dpOrderDate??5<      
   SelectedDate
 5=      ?? $ 	OrderDate?$ OneWay=? 5>      ?? $	 lvOrder??$ SelectedItem?6V   ?? 5?   
   .??6   Required Date6     5@   
   -   5        $??dpRequiredDate??5@      
 5A      ?? $ RequiredDate?$ OneWay=? 5B      ?? $	 lvOrder??$ SelectedItem?6V   ?? 5C   
   .??6   Shipped Date6     5D   
   -   5        $??dpShippedDate??5D      
 5E      ?? $ ShippedDate?$ OneWay=? 5F      ?? $	 lvOrder??$ SelectedItem?6V   ?? 5G   
   .??6   	Freight6   ?? 5H   
   -   5        $??
txtFreight??5H      ??5I      ?? $ Freight?$ OneWay=? 5J      ?? $	 lvOrder??$ SelectedItem?6S   ?? 5L   
   -   5        $??btnAdd??5L      $	??Add??5M      ??5N      ?? *
AddCommand+??5O      `? 5P       `? 	Converter# [  6   .1?5Q      ?? $
 Text?6   $	 
txtOrderId??5R      ?? 5S      $
 Text?6   $	 txtMemberId??5T      ?? 5U      $ SelectedDate?6   $	 dpOrderDate??5V      ?? 5W      $ SelectedDate?6   $	 dpRequiredDate??5X      ?? 5Y      $ SelectedDate?6   $	 dpShippedDate??5Z      ?? 5[      $
 Text?6   $	 
txtFreight??5\      5]      5_      ?? 5`   
   -	   5        $??	btnUpdate??5`      $??Update??5a      ??5b      ?? *UpdateCommand+??5c      `? 5d      # [  6   .1?5e      ?? $
 Text?6   $	 
txtOrderId??5f      ?? 5g      $
 Text?6   $	 txtMemberId??5h      ?? 5i      $ SelectedDate?6   $	 dpOrderDate??5j      ?? 5k      $ SelectedDate?6   $	 dpRequiredDate??5l      ?? 5m      $ SelectedDate?6   $	 dpShippedDate??5n      ?? 5o      $
 Text?6   $	 
txtFreight??5p      5q      5s      ?? 5t   
   -
   5        $??	btnDelete??5t      $??Delete??5u      ??5v      ?? *DeleteCommand+??5w      `? 5x      # [  6   .1?5y      ?? $
 Text?6   $	 
txtOrderId??5z      ?? 5{      $
 Text?6   $	 txtMemberId??5|      ?? 5}      $ SelectedDate?6   $	 dpOrderDate??5~      ?? 5      $ SelectedDate?6   $	 dpRequiredDate??5?      ?? 5?      $ SelectedDate?6   $	 dpShippedDate??5?      ?? 5?      $
 Text?6   $	 
txtFreight??5?      5?      5?      ?? 5?   
   -   5        $??	btnDetail??5?      $??Order Detail??5?      ??5?      ?? *DetailCommand+??5?      `? 5?      # [  6   .1?5?      ?? $
 Text?6   $	 
txtOrderId??5?      ?? 5?      $
 Text?6   $	 txtMemberId??5?      ?? 5?      $ SelectedDate?6   $	 dpOrderDate??5?      ?? 5?      $ SelectedDate?6   $	 dpRequiredDate??5?      ?? 5?      $ SelectedDate?6   $	 dpShippedDate??5?      ?? 5?      $
 Text?6   $	 
txtFreight??5?      5?      5?      5?      5?      