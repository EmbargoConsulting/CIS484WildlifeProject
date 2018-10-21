using System;
using System.Security.Cryptography;

public partial class CreateNewUser :  System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnCreateUser_Click(object sender, EventArgs e)
    {
        string hash = "";
        hash = PasswordHash.HashPassword(txt_password.Value);

        User user = new User(txt_name.Value, hash);
        user.insertData();
    }

}