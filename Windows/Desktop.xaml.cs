using System;
using OurDecorSerov.Data.Contexts;
using OurDecorSerov.Pages;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace OurDecorSerov.Windows
{
    /// <summary>
    /// Логика взаимодействия для Desktop.xaml
    /// </summary>
    public partial class Desktop : Window
    {
        public Desktop()
        {
            InitializeComponent();
            StaticContext.DesktopFrame = DesktopFrame;
            DesktopFrame.Navigate(new StartPage());
        }

        private void BtnProduct_Click(object sender, RoutedEventArgs e)
        {
            DesktopFrame.Navigate(new ProductPanelPage());
        }

        private void BtnBack_Click(object sender, RoutedEventArgs e)
        {
            if (StaticContext.DesktopFrame.CanGoBack)
            {
                StaticContext.DesktopFrame.GoBack();
            }
        }

        private void BtnPrev_Click(object sender, RoutedEventArgs e)
        {
            if (StaticContext.DesktopFrame.CanGoForward)
            {
                StaticContext.DesktopFrame.GoForward();
            } 
        }

        private void BtnAddProduct_Click(object sender, RoutedEventArgs e)
        {
            StaticContext.DesktopFrame.Navigate(new AddProductPage());
        }

        private void BtnHome_Click(object sender, RoutedEventArgs e)
        {
            StaticContext.DesktopFrame.Navigate(new StartPage());
        }
    }
}
