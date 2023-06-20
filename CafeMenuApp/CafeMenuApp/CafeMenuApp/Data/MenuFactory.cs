using CafeMenuApp.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Numerics;
using System.Text;

namespace CafeMenuApp.Data
{
    public class MenuFactory
    {
        public static List<Food> MenuList { get; }
        public static List<Group<string, Food>> MenuListGrouped { get; set; }

        static MenuFactory()
        {
            MenuList = new List<Food>
            {
                new Food{Name="Pizza", GroupTitle=Food.GroupName.Comidas},
                new Food{Name="Hamburger", GroupTitle=Food.GroupName.Comidas},
                new Food{Name="Sanduíche natural", GroupTitle=Food.GroupName.Comidas},
                new Food{Name="Panqueca", GroupTitle=Food.GroupName.Comidas},
                new Food{Name="Macarrão", GroupTitle=Food.GroupName.Comidas},
                new Food{Name="Salada", GroupTitle=Food.GroupName.Comidas},

                new Food{Name="Coca-cola", GroupTitle=Food.GroupName.Bebidas},
                new Food{Name="Milkshake", GroupTitle=Food.GroupName.Bebidas},
                new Food{Name="Chá gelado", GroupTitle=Food.GroupName.Bebidas},

                new Food{Name="Chá", GroupTitle=Food.GroupName.Bebidas},
                new Food{Name="Café", GroupTitle=Food.GroupName.Bebidas},

                new Food{Name="Cheesecake", GroupTitle=Food.GroupName.Sobremesas},
                new Food{Name="Sorvete", GroupTitle=Food.GroupName.Sobremesas},
                new Food{Name="Torta", GroupTitle=Food.GroupName.Sobremesas},
                new Food{Name="Tiramisu", GroupTitle=Food.GroupName.Sobremesas},
            };

            MenuListGrouped = MenuList.GroupBy(f => f.GroupTitle.ToString()).Select(g => new Group<string, Food>(g.Key, g)).ToList();
        }
    }
}

