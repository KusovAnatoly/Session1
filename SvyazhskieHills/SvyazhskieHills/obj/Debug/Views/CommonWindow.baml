   M S B A M L   `   `   `  ����J  FSvyazhskieHills, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null=#clr-namespace:SvyazhskieHills.ViewsSvyazhskieHills.Views  5   	   (    "SvyazhskieHills.Views.CommonWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   5local#clr-namespace:SvyazhskieHills.Views     5   	   -   5        $��Comic Sans MS)�5   	   $	��450��5	   	   $	��800��5
   	   ���#FFFF  � Title  5   	   ��  �� ElementName$ 	MainFrame�� �� Path$ Content.Title�.��5      �  � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $��* �6   .+�5   
   o� -   5         o�Name$ MainMenu��5      $��0��5      .@�5      m� -   5         m�Name$ 
OrdersItem��5      $��Заказы��5      5       m� 5"      -   5        $ NewOrderItem��5"      $'��!Оформление заказа��5#      $y�	Collapsed=�5$      m� 5&      -   5        $ LoginHistoryItem��5&      $��История входа��5'      $y�	Collapsed=�5(      5)      m� 5+      -   5        $ ConsumablesItem��5+      $+��%Расходные материалы��5,      $y�	Collapsed=�5-      5.      m� 50      -   5        $ 
LogOutItem��50      $��
Выйти��51      52      54      �� 56   
    �� Orientation$ 
Horizontal=�6   ���#76E383$��1��58      .+�5:      �� .+�5<      �� $ ��\Resources\Images\logo.png��6   $	��100��5=      �� 5>      $��5q�6   $��Center=�5?      Свияжские холмы6J   5A      �� 5C      $��Stretch=�6   $��1��5D      $��2q�5E      
���   �5F      �� 5H      -   5         ��Name$ 	UserImage��5H      $	��100��5I      $	��5,2q�5J      �� 5L      -	   5         ��Name$ TextBlockUserInfo��5L      $��Center=�5M      5O      �� 5Q   
   -
   5        $ TextBoxTimerDisplay��5U      $��Right=�5Q      $��Center=�5R      $��10q�5S      $��1��5T      5U       � 5W   
   -   5        	  �Name$	 	MainFrame��5W      
  � NavigationUIVisibility$
 Hidden=�5X      $��2��5Y      5[      5]      