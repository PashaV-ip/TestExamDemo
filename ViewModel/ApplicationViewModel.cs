using OOO_Goods_for_Animals.DbEntity;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OOO_Goods_for_Animals.ViewModel
{
    public class ApplicationViewModel : BaseViewModel
    {
        private ObservableCollection<User> _users;
        private User _user;
        private ObservableCollection<Product> _products;

        public ObservableCollection<Product> Products
        {
            get => _products;
            set
            {
                _products = value;
                OnPropertyChanged(nameof(Products));
            }
        }

        public ObservableCollection<User> Users
        {
            get => _users;
            set
            {
                _users = value;
                OnPropertyChanged(nameof(Users));
            }
        }
        public User User
        {
            get => _user;
            set
            {
                _user = value;
                OnPropertyChanged(nameof(User));
            }
        }

        public bool CheckAdmin()
        {
            return User.UserInfo.Role.ID == 1;
        }

        public void LoadData()
        {
            var userList = DbStorage.DB_s.User.ToList();
            userList.ForEach(element => Users?.Add(element));
            var productList = DbStorage.DB_s.Product.ToList();
            productList.ForEach(element => Products?.Add(element));
        }

        public void OpenAdminPanel()
        {
            /*var adminPanel = new AdminPanelWindow(User);
            adminPanel.Show();*/
        }

        public ApplicationViewModel(User user)
        {
            Users = new ObservableCollection<User>();
            Products = new ObservableCollection<Product>();
            User = user;
            if (CheckAdmin())
            {
                
            }
            LoadData();
        }
    }
}
