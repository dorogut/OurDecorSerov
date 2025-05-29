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
    /// Логика взаимодействия для ChangeProductPage.xaml
    /// </summary>
    public partial class ChangeProductPage : Page
    {
        OurDecorContext db = new OurDecorContext();
        public ChangeProductPage()
        {
            InitializeComponent();
            CmbProductType.ItemsSource = db.ProductsTypes.ToList();
            CmbProductType.DisplayMemberPath = "ProductType";
            CmbProductType.SelectedValuePath = "ProductTypeId";
            TbArcticle.Text = db.Products.ToString();
            TbMinCostForPartner.Text = db.Products.ToString();
            TbName.Text = db.Products.ToString();
            TbWidthRulon.Text = OurDecorContext.GetContext().Products.ToString();
        }

        private void BtnSaveChangeProduct_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                if (string.IsNullOrEmpty(TbArcticle.Text))
                {
                    MessageBox.Show("Вы не добавили арктикул", "Ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
                    TbArcticle.Focus();
                }
                else if (string.IsNullOrEmpty(TbMinCostForPartner.Text))
                {
                    MessageBox.Show("Вы не добавили минимальную стоимость для партнера", "Ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
                    TbMinCostForPartner.Focus();
                }
                else if (string.IsNullOrEmpty(TbName.Text))
                {
                    MessageBox.Show("Вы не указали наименование", "Ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
                    TbName.Focus();
                }
                else if (string.IsNullOrEmpty(TbWidthRulon.Text))
                {
                    MessageBox.Show("Вы не указали ширину рулона", "Ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
                    TbWidthRulon.Focus();
                }

                double ArcticleToDouble = Convert.ToDouble(TbArcticle.Text);
                if (db.Products.Where(u => u.Arcticle == ArcticleToDouble).ToList().Count > 0)
                {
                    MessageBox.Show("Такой арктикул уже существует", "Ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
                    TbArcticle.Focus();
                }
                else
                {
                    db.Products.Add(new Product
                    {
                        Arcticle = ArcticleToDouble,
                        MinCostForPartner = Convert.ToInt32(TbMinCostForPartner),
                        WidtRulon = Convert.ToInt32(TbWidthRulon.Text),
                        ProductName = TbName.Text,
                        ProdcutTypeId = Convert.ToInt32(CmbProductType.SelectedValue),
                    });
                }
                StaticContext.DesktopFrame.Refresh();
            }
            catch (Exception er)
            {
                MessageBox.Show(er.Message, "Ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }
    }
}
