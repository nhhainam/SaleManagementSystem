   M S B A M L   `   `   `  ????F  BSalesWPFApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:SalesWPFAppSalesWPFApp  5   	   !    SalesWPFApp.OrderDetailView   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   +localclr-namespace:SalesWPFApp     5   	     ? Title$  OrderDetailView??5   	   $	??450??5	   	   $
??1118??5
   	    ? 	Resources 5      &   SalesWPFApp.OrderDetailConverter   	Converter??%   &	          5   
   6%   5      .??5      ?? $??
885,0,56,0q?6   .+?5   
   ? .+?5      ?? -   5         ??Name$ lvOrderDetail??5      $??-887,8,327,-8q?5      ??5      ?? *OrderDetails+ ?? View 5      ?? 5      .P?5      ??  ?? Width$	 100??5   )    ?? DisplayMemberBinding 5   )   ?? *	OrderId+$??OrderId??5   S   5      ?? 5      $	 100??5   )    5   )   ?? *	ProductId+$??	ProductId??5   U   5       ?? 5!      $	 150??5"   )    5!   )   ?? *	UnitPrice+$??	UnitPrice??5#   U   5$      ?? 5%      $	 150??5&   )    5%   )   ?? *
Quantity+$??Quantity??5'   T   5(      ?? 5)      $	 150??5*   )    5)   )   ?? *
Discount+$??Discount??5+   T   5,      5-      5/      50      ?? 53   
   .??6   
Order Id6   ?? 54   
   -   5        $??
txtOrderId??54      ??55      ??  ?? Path$ OrderId? ?? Mode$ OneWay=? ? DataContext 56      ?? 	 ?? ElementName$	 lvOrderDetail??$ SelectedItem?6Y   ?? 57   
   .??6   
Product Id6   ?? 58   
   -   5        $??txtProductId??58      ??59      ?? $ 	ProductId?$ OneWay=? 5:      ?? $	 lvOrderDetail??$ SelectedItem?6Y   ?? 5;   
   .??6   
Unit Price6   ?? 5<   
   -   5        $??txtUnitPrice??5<      ??5=      ?? $ 	UnitPrice?$ OneWay=? 5>      ?? $	 lvOrderDetail??$ SelectedItem?6Y   ?? 5?   
   .??6   
Quantity6   ?? 5@   
   -   5        $??txtQuantity??5@      ??5A      ?? $ Quantity?$ OneWay=? 5B      ?? $	 lvOrderDetail??$ SelectedItem?6Y   ?? 5C   
   .??6   
Discount6   ?? 5D   
   -   5        $??txtDiscount??5D      ??5E      ?? $ Discount?$ OneWay=? 5F      ?? $	 lvOrderDetail??$ SelectedItem?6Y   ?? 5I   
   -   5        $??btnAdd??5I      $	??Add??5J      ??5K      ?? *
AddCommand+??5L      `? 5M      
 `? 	Converter#
 [  6   .1?5N      ?? $
 Text?6   $	 txtProductId??5O      ?? 5P      $
 Text?6   $	 txtUnitPrice??5Q      ?? 5R      $
 Text?6   $	 txtQuantity??5S      ?? 5T      $
 Text?6   $	 txtDiscount??5U      5V      5X      ?? 5Y   
   -   5        $??	btnUpdate??5Y      $??Update??5Z      ??5[      ?? *UpdateCommand+??5\      `? 5]      #
 [  6   .1?5^      ?? $
 Text?6   $	 txtProductId??5_      ?? 5`      $
 Text?6   $	 txtUnitPrice??5a      ?? 5b      $
 Text?6   $	 txtQuantity??5c      ?? 5d      $
 Text?6   $	 txtDiscount??5e      5f      5h      ?? 5i   
   -	   5        $??	btnDelete??5i      $??Delete??5j      ??5k      ?? *DeleteCommand+??5l      `? 5m      #
 [  6   .1?5n      ?? $
 Text?6   $	 txtProductId??5o      ?? 5p      $
 Text?6   $	 txtUnitPrice??5q      ?? 5r      $
 Text?6   $	 txtQuantity??5s      ?? 5t      $
 Text?6   $	 txtDiscount??5u      5v      5x      5y      5z      