   M S B A M L   `   `   `  ����J  FSvyazhskieHills, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null=#clr-namespace:SvyazhskieHills.ViewsSvyazhskieHills.Views  5   	   .    (SvyazhskieHills.Views.LoginHistoryWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   5local#clr-namespace:SvyazhskieHills.Views     5   	     � Title$  История входа��5   	    � 
ResizeMode$ NoResize=�5	   	   $	��400��5
   	   $	��450��6   .��5      �  � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $��* �6   .+�5   
   �� $��0��6   .+�5      �� $,��&Фильтрация по логину��6   $��10(�5      �� 5      -   5         ��Name$ TextBoxFilter��5      5      5      &   System.Windows.Controls.DataGrid  5   
   -   5          Name$ DataGridHistory��5      $��1��5         
IsReadOnly .    AutoGenerateColumns .     Columns 5!      0  *System.Windows.Controls.DataGridTextColumn  5"      ,  &System.Windows.Controls.DataGridColumn   Header$ 
Логин��6%   1  +System.Windows.Controls.DataGridBoundColumn	   Binding	 5#   %   �� *Employee.Login+  5$      $ 
Время��6%   	 5%   %   �� *Time+
 �� StringFormat$
 hh\:mm��  5&      $ Попытка входа��6%   	 5'   %   �� *LoginStatus.Name+5*      5,      5.      