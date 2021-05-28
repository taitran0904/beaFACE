using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace ShopQuanAo
{
    public class QuanLyKetNoi
    {
        public SqlConnection cnn;
        public QuanLyKetNoi()
        {
            string strcnn = "Data Source=DESKTOP-HTD1HDL\\SQLEXPRESS;Initial Catalog=ShopQuanAo;Integrated Security=True";
            cnn = new SqlConnection(strcnn);
        }
        public void Open()
        {
            cnn.Open();
        }
        public void Close()
        {
            cnn.Close();
        }
    }
}