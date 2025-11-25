using System;
using System.Web.UI;

namespace TPW_proiect
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                UpdateDateTime();
                SetRandomImages();
            }
        }

        protected void TimerTime_Tick(object sender, EventArgs e)
        {
            UpdateDateTime();
        }

        private void UpdateDateTime()
        {
            lblDateTime.Text = DateTime.Now.ToString("dd/MM/yyyy HH:mm:ss");
        }

        private static readonly string[] images =
        {
        "~/images/img1.jpg",
        "~/images/img2.jpg",
        "~/images/img3.jpg",
        "~/images/img4.jpg",
        "~/images/img5.jpg",
        "~/images/img6.jpg"
        };

        private Random rnd = new Random();

        protected void TimerImages_Tick(object sender, EventArgs e)
        {
            SetRandomImages();
        }

        private void SetRandomImages()
        {
            int index1 = rnd.Next(images.Length);
            imgSlideshow1.ImageUrl = images[index1];

            int index2;
            do
            {
                index2 = rnd.Next(images.Length);
            } while (index2 == index1);

            imgSlideshow2.ImageUrl = images[index2];
        }
    }
}
