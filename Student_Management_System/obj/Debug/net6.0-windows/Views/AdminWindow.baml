   M S B A M L   `   `   `  ����T  PStudent_Management_System, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null[2clr-namespace:Student_Management_System.ViewModels$Student_Management_System.ViewModels  5   	   1    +Student_Management_System.Views.AdminWindow   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   Dlocal2clr-namespace:Student_Management_System.ViewModels     5   	   c _MahApps.Metro.IconPacks.Core, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137ag cMahApps.Metro.IconPacks.Material, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137a:Icon-http://metro.mahapps.com/winfx/xaml/iconpacks   5   	   _ [MaterialDesignThemes.Wpf, Version=4.9.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	     � Title$  AdminWindow��5
   	   $	��450��6   $	��800��6*    � WindowStartupLocation$ CenterScreen=�66    � WindowStyle$
 None=�5   	    � AllowsTransparency$
 True��5   	   
������� � 
ResizeMode$ NoResize=�5   	   $��18(�5   	    � DataContext 5      ?   9Student_Management_System.ViewModels.AdminWindowViewModel  5   
   .��5      �  � RowDefinitions 5   
   �� 5      $��80 �6   �� 5      $��* �6   .+�5   
   �� ���#0E256B$��0��6&   ._�5      � $��0��6    � ColumnDefinitions 5      �� 5      $
��200* �6'   �� 5       $
��500* �6'   �� 5!      $	��30* �6'   .+�5$      �� $��
44,0,-22,0q�6    �� Orientation$ 
Horizontal=�61   $��0��6J   .+�5%      �� $j��dC:\Users\Dhananji\Desktop\dhanu\Student_Management_System\Student_Management_System\Images\logo1.png��6   $��88��6�   $	��108��6�   5(      �� 5)      $��1��6   .+�5*      �� $��User Records��6    
�������$��30(�6G   $
��Bold"�6U   	 �� TextAlignment$
	 Left=�5+      $	��356��60   $��65��6<   5,      �� 5-      $��2��6   .+�5.      �� $��16��5/      $��30��50      $��Right=�51      $��	0 13 14 0q�52      
 J� Opacity$	
 0.5Q�53      
������� � Cursor$
 Hand��55      ��56      �� *CloseCommand+��57      �� 58       �� 
TargetType" ��6.   .R�59   "   �� ._�5:   &   '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ Close=�6>   $��25��5;   :   $��25��5<   :   $��Center=�5=   :   $��Center=�5>   :   5?   #   5@      5C      5E      5F      5G      � 5I   
   $��1��6    5J      �� 5K      $	��400 �6#   �� 5L      $��* �6#   .+�5O      �� 
�������$��0��6M   ���#3A4750��6*   �� *
Listofuser+ �� View 5P      �� 5Q      P�5R      �� 5S      $��ID��6-    �� DisplayMemberBinding 69   �� *Id+�� 5T      $
��Name��6-    6;   �� *Name+�� 5U      $��Password��6-    6?   �� *
Password+�� 5V      $��Action��6-    �� CellTemplate 5W   "   �� 5X   &   .R�5Y   *   �� $ 
Horizontal=�65   $��4q�6N   .+�5Z   .   �� $��	BtnUpdate��65   $��Update��6F   $��60��6W   $��25��6b   $��10,0,0,0q�6n   ��6�   �� *DataContext.UpdateCommand+ �� RelativeSource ��  �� AncestorType" ����5[   1   �� �� 5\   .   $��	BtnDelete��65   $��Delete��6F   $��60��6W   $��25��6b   $��10,0,0,0q�6n   ��6�   �� *DataContext.DeleteCommand+ �� " ����5]   1   �� 5^   +   5_   '   5a      5c      5e      � 5h      $��1��6   
������� 5i      �� 5j      $	��180 �6$   �� 5k      $	��180 �6$   .+�5n      �� ���#3A4750$��	0,0,0,175q�6.   $��2��6A   ._�5p      �� $��Add User��6   $��16(�61   
��� ���$��25,10,10,10q�6Q   
��� ���$	��0.6q�5q   &   $��4��6<   $��7��6P   .��5r      �� $��0��6%   .+�5t      �� $��0��6$   
�������$��0��6E   $��UserName��6U   �� 5u      $��0��6&   $��1��63   $	��290��6]   ��6C   �� *
UserName+6]   �� 5v      $��1��6$   $��0��61   $��Password��6A   
�������6T   �� 5w      $��1��6&   $��1��63   $	��290��6]   ��6C   �� *
Password+6]   �� 5x      $��2��6%   $��2��62   $	��Add��6F   $��5q�6T   $��Right=�6_   $	��100��6{   $��30��5y   D   ��6!   �� *AddUserCommand+6D   5{      5|      5}      �� 5      ���#3A4750$��	0,0,0,-10q�6.   $��1��6A   ._�5�      �� $��Update User��6   $��16(�64   
��� ���$��25,10,10,10q�6T   
��� ���$	��0.6q�5�   &   $��4��6<   $��7��6P   .��5�      �� $��1��6%   .+�5�      �� $��UserName��6$   
�������67   �� 5�      $	��290��6J   ��6'   �� *SelectedUser.Name+6J   �� 5�      $��Password��6%   
�������68   �� 5�      $	��290��6M   ��6&   �� *SelectedUser.Password+6M   �� 5�      $��Update��6&   $��5q�67   $��Right=�6B   $	��100��6^   ��5�   !   �� *UpdateUserCommand+5�      5�      5�      5�      5�      5�      5�      