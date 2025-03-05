using fightxweb.DAL;
using fightxweb.Models.Home;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace fightxweb.Controllers
{
    public class HomeController : Controller
    {
        dbMyOnlineShoppingEntities ctx = new dbMyOnlineShoppingEntities();
        public ActionResult Index(string search, int? page)
        {
            HomeIndexViewModel model = new HomeIndexViewModel();
            return View(model.CreateModel(search,8, page));
        }

        public ActionResult Male()
        {
            return View();
        }

        public ActionResult Female()
        {
            return View();
        }

        public ActionResult Kids()
        {
            return View();
        }

        public ActionResult Brands()
        {
            return View();
        }

        public ActionResult Accessories()
        {
            return View();
        }

        public ActionResult Sale()
        {
            return View();
        }

        public ActionResult Blog()
        {
            return View();
        }


        public ActionResult Checkout()
        {
            return View();
        }

        public ActionResult CheckoutDetails()
        {
            return View();
        }

        /* public ActionResult AddToCart(int productId)
         {
             if(Session["cart"] == null)
             {
                 List<Item> cart = new List<Item>();
                 var product = ctx.Tbl_Product.Find(productId);
                 cart.Add(new Item()
                 {
                     Product = product,
                     Quantity = 1
                 });
                 Session["cart"] = cart;
             }
             else
             {
                 List<Item> cart = (List<Item>)Session["cart"];
                 var product = ctx.Tbl_Product.Find(productId);
                 foreach (var item in cart)
                 {
                     if (item.Product.productID == productId)
                     {
                         int prevQty = item.Quantity;
                         cart.Remove(item);
                         cart.Add(new Item()
                         {
                             Product = product,
                             Quantity = prevQty + 1
                         });
                         break;
                     }
                     else
                     {
                         cart.Add(new Item()
                         {
                             Product = product,
                             Quantity = 1
                         });
                     }
                 }
             }
             return Redirect("Index");
         }*/



        public ActionResult AddToCart(int productId)
        {
            if (Session["cart"] == null)
            {
                List<Item> cart = new List<Item>();
                var product = ctx.Tbl_Product.Find(productId);
                cart.Add(new Item()
                {
                    Product = product,
                    Quantity = 1
                });
                Session["cart"] = cart;
            }
            else
            {
                List<Item> cart = (List<Item>)Session["cart"];
                var product = ctx.Tbl_Product.Find(productId);
                foreach (var item in cart.ToList())
                {
                    if (item.Product.productID == productId)
                    {
                        int prevQty = item.Quantity;
                        cart.Remove(item);
                        cart.Add(new Item()
                        {
                            Product = product,
                            Quantity = prevQty + 1
                        });
                        break;
                    } 
                    else
                    {
                        cart.Add(new Item()
                        {
                            Product = product,
                            Quantity = 1
                        });
                    }
                }
                Session["cart"] = cart;
            }
            return Redirect("Index");
        }

        public ActionResult RemoveFromCart(int productId)
        {
            List<Item> cart = (List<Item>)Session["cart"];
            //var product = ctx.Tbl_Product.Find(productId);
            foreach(var item in cart)
            {
                if(item.Product.productID == productId)
                {
                    cart.Remove(item);
                    break;
                }
            }
            Session["cart"] = cart;
            return Redirect("Index");
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
    }
}