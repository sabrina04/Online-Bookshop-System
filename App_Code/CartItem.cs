using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Collections.Generic;

/// <summary>
/// Summary description for CartItem
/// </summary>
public class CartItem
{
    private String _isbn;
    private String _title;
    private String _shop;
    private int _quantity;
    private double _price;
    private double _linetotal;

    public void New() { }

    public void New(String ISBN, String Title,String Shop, int Quantity, double Price)
    {
        _isbn = ISBN;
        _title = Title;
        _shop = Shop;
        _quantity = Quantity;
        _price = Price;
        _linetotal = Quantity * Price;
    }

    public String ISBN
    {
        get
        {
            return _isbn;
        }
        set
        {
            _isbn = value;
        }
    }

    public String Title
    {
        get
        {
            return _title;
        }
        set
        {
            _title = value;
        }
    }

    public String Shop
    {
        get
        {
            return _shop;
        }
        set
        {
            _shop = value;
        }
    }

    public int Quantity
    {
        get
        {
            return _quantity;
        }
        set
        {
            _quantity = value;
        }
    }

    public double Price
    {
        get
        {
            return _price;
        }
        set
        {
            _price = value;
        }
    }

    public double LineTotal
    {
        get
        {
            return _quantity * _price;
        }
    }

}

public class ShoppingCart
{
    private List<CartItem> _items;

    public ShoppingCart()
    {
        if (this._items == null)
        {
            this._items = new List<CartItem>();
        }
    }

    public List<CartItem> Items
    {
        get
        {
            return _items;
        }
        set
        {
            _items = value;
        }
    }

    public void Insert(String ISBN, String Title,String Shop, int Quantity, double Price)
    {
        int ItemIndex = ItemIndexOfISBN(ISBN);
        if (ItemIndex == -1)
        {
            CartItem NewItem = new CartItem();
            NewItem.ISBN = ISBN;
            NewItem.Title = Title;
            NewItem.Shop = Shop;
            NewItem.Quantity = Quantity;
            NewItem.Price = Price;
            _items.Add(NewItem);
        }
        else
        {
            _items[ItemIndex].Quantity += 1;
        }
    }

    public void Update(int RowID, String ISBN, int Quantity, double Price)
    {
        CartItem Item = _items[RowID];
        Item.ISBN = ISBN;
        Item.Quantity = Quantity;
        Item.Price = Price;
    }

    public void DeleteItem(int rowID)
    {
        _items.RemoveAt(rowID);
    }

    private int ItemIndexOfISBN(String ISBN)
    {
        int index = 0;
        foreach (CartItem item in _items)
        {
            if (item.ISBN.Equals(ISBN))
            {
                return index;
            }
            index += 1;
        }
        return -1;
    }

    public double Total
    {
        get
        {
            double t = 0;
            if (_items == null)
            {
                return 0;
            }
            foreach (CartItem Item in _items)
            {
                t += Item.LineTotal;
            }
            return t;
        }
    }
}
