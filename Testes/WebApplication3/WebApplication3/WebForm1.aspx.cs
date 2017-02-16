using System;
using System.Collections.Generic;
using System.Drawing;
using System.Drawing.Imaging;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        public Bitmap GerarQRCode(int width, int height, string text)
        {
            try
            {
                var bw = new ZXing.BarcodeWriter();
                var encOptions = new ZXing.Common.EncodingOptions() { Width = width, Height = height, Margin = 0 };
                bw.Options = encOptions;
                bw.Format = ZXing.BarcodeFormat.QR_CODE;
                var resultado = new Bitmap(bw.Write(text));
                return resultado;
            }
            catch
            {
                throw;
            }
        }

        protected void btnTeste_Click(object sender, EventArgs e)
        {
            try
            {
                Bitmap qrImg = GerarQRCode(200, 200, txtTeste.Text);

                ImageConverter converter = new ImageConverter();
                byte[] arq = (byte[])converter.ConvertTo(qrImg, typeof(byte[]));

                MemoryStream ms = new MemoryStream();
                qrImg.Save(ms, ImageFormat.Gif);
                var base64Data = Convert.ToBase64String(ms.ToArray());
                Image1.ImageUrl = "data:image/gif;base64," + base64Data;
                /*
                ImageSourceConverter c = new ImageSourceConverter();
                this.Image1.Source = (ImageSource)c.ConvertFrom(qrImg);
                */
            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "/*Erro*/", "alert('" + ex.Message + "');", true);
            }
        }

    }
}