   M S B A M L   `   `   `  ????F  BSalesWPFApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:SalesWPFAppSalesWPFApp  5   	       SalesWPFApp.ProductView   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   +localclr-namespace:SalesWPFApp     5   	     ? Title$  ProductView??5   	   $	??723??5	   	   $
??1197??5
   	    ? 	Resources 5      "  SalesWPFApp.ProductConverter   	Converter??%   &	          5   
   6!   5      .??5      ?? $??840,0,101,0q?6   .+?5   
   ? .+?5      ?? -   5         ??Name$ 	lvProduct??5      $??-842,15,303,-33q?5      ??5      ?? *
Products+ ?? View 5      ?? 5      .P?5      ??  ?? Width$	 100??5   )    ?? DisplayMemberBinding 5   )   ?? *	ProductId+$??	ProductId??5   U   5      ?? 5      $	 100??5   )    5   )   ?? *
CategoryId+$??
CategoryId??5   V   5      ?? 5      $	 100??5    )    5   )   ?? *ProductName+$??ProductName??5!   W   5"      ?? 5#      $	 100??5$   )    5#   )   ?? *Weight+$??Weight??5%   R   5&      ?? 5'      $	 100??5(   )    5'   )   ?? *	UnitPrice+$??	UnitPrice??5)   U   5*      ?? 5+      $	 100??5,   )    5+   )   ?? *UnitsInStock+$??UnitsInStock??5-   X   5.      5/      51      52      ?? 53   
   .??6   
Product Id6   ?? 54   
   -   5        $??txtProductId??54      ??55      ??  ?? Path$ 	ProductId? ?? Mode$ OneWay=? ? DataContext 56      ?? 	 ?? ElementName$	 	lvProduct??$ SelectedItem?6U   ?? 57   
   .??6   Category Id6   ?? 58   
   -   5        $??txtCategoryId??58      ??59      ?? $ 
CategoryId?$ OneWay=? 5:      ?? $	 	lvProduct??$ SelectedItem?6U   ?? 5;   
   .??6   Product Name6   ?? 5<   
   -   5        $??txtProductName??5<      ??5=      ?? $ ProductName?$ OneWay=? 5>      ?? $	 	lvProduct??$ SelectedItem?6U   ?? 5?   
   .??6   Weight6   ?? 5@   
   -   5        $??	txtWeight??5@      ??5A      ?? $ Weight?$ OneWay=? 5B      ?? $	 	lvProduct??$ SelectedItem?6U   ?? 5C   
   .??6   
Unit Price6   ?? 5D   
   -   5        $??txtUnitPrice??5D      ??5E      ?? $ 	UnitPrice?$ OneWay=? 5F      ?? $	 	lvProduct??$ SelectedItem?6U   ?? 5G   
   .??6   Units In Stock6    ?? 5H   
   -   5        $??txtUnitsInStock??5H      ??5I      ?? $ UnitsInStock?$ OneWay=? 5J      ?? $	 	lvProduct??$ SelectedItem?6U   ?? 5L   
   -   5        $??btnAdd??5L      $	??Add??5M      ??5N      ?? *
AddCommand+??5O      `? 5P      
 `? 	Converter#
 [  6   .1?5Q      ?? $
 Text?6   $	 txtProductId??5R      ?? 5S      $
 Text?6   $	 txtCategoryId??5T      ?? 5U      $
 Text?6   $	 txtProductName??5V      ?? 5W      $
 Text?6   $	 	txtWeight??5X      ?? 5Y      $
 Text?6   $	 txtUnitPrice??5Z      ?? 5[      $
 Text?6   $	 txtUnitsInStock??5\      5]      5_      ?? 5`   
   -	   5        $??	btnUpdate??5`      $??Update??5a      ??5b      ?? *UpdateCommand+??5c      `? 5d      #
 [  6   .1?5e      ?? $
 Text?6   $	 txtProductId??5f      ?? 5g      $
 Text?6   $	 txtCategoryId??5h      ?? 5i      $
 Text?6   $	 txtProductName??5j      ?? 5k      $
 Text?6   $	 	txtWeight??5l      ?? 5m      $
 Text?6   $	 txtUnitPrice??5n      ?? 5o      $
 Text?6   $	 txtUnitsInStock??5p      5q      5s      ?? 5t   
   -
   5        $??	btnDelete??5t      $??Delete??5u      ??5v      ?? *DeleteCommand+??5w      `? 5x      #
 [  6   .1?5y      ?? $
 Text?6   $	 txtProductId??5z      ?? 5{      $
 Text?6   $	 txtCategoryId??5|      ?? 5}      $
 Text?6   $	 txtProductName??5~      ?? 5      $
 Text?6   $	 	txtWeight??5?      ?? 5?      $
 Text?6   $	 txtUnitPrice??5?      ?? 5?      $
 Text?6   $	 txtUnitsInStock??5?      5?      5?      5?      5?      