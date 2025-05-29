using System;
using OurDecorSerov.Data;
using OurDecorSerov.Data.Contexts;
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
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace OurDecorSerov.Pages
{
    /// <summary>
    /// Логика взаимодействия для ProductPanelPage.xaml
    /// </summary>
    public partial class ProductPanelPage : Page
    {
        //AutoGenerateColumns="False"
        OurDecorContext db = new OurDecorContext();
        public ProductPanelPage()
        {
            InitializeComponent();
            DtgProductPanel.ItemsSource = db.Products.ToList();
        }

        private void BtnEditProductPage_Click(object sender, RoutedEventArgs e)
        {
            StaticContext.DesktopFrame.Navigate(new ChangeProductPage());
        }
    }
}
