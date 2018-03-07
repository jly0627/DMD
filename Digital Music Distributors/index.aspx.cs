using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Digital_Music_Distributors
{
    public partial class Index : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected String convertSeconds(int seconds)
        {
            TimeSpan time = TimeSpan.FromSeconds(seconds);
            return time.ToString(@"hh\:mm\:ss\:fff");
        }
    }
}