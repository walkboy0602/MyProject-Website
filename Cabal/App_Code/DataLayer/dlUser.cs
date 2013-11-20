using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using System.Text;


/// <summary>
/// Summary description for dlUser
/// </summary>
public class dlUser
{
	public dlUser()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public static bool EmailExist(string strEmail)
    {
        try
        {
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["cabalAcc"].ToString()))
            {
                conn.Open();
                string strSQL = "SELECT COUNT(1) FROM cabal_auth_table (NOLOCK) WHERE Email = @Email";
                SqlCommand cmd = new SqlCommand(strSQL, conn);
                cmd.Parameters.AddWithValue("@Email", strEmail);
                return Convert.ToBoolean(cmd.ExecuteScalar());
            }

        }
        catch (Exception ex)
        {
            throw ex;
        }

    }

    public static bool UserNameExist(string strUserName)
    {
        try
        {
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["cabalAcc"].ToString()))
            {
                conn.Open();
                string strSQL = "SELECT COUNT(1) FROM cabal_auth_table (NOLOCK) WHERE ID = @ID";
                SqlCommand cmd = new SqlCommand(strSQL, conn);
                cmd.Parameters.AddWithValue("@ID", strUserName);
                return Convert.ToBoolean(cmd.ExecuteScalar());
            }

        }
        catch (Exception ex)
        {
            throw ex;
        }

    }

    public static bool CreateNewAccount(User user)
    {
        try
        {

            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["cabalAcc"].ToString()))
            {
                conn.Open();
                string strSQL = "EXEC cabal_tool_registerAccount_web @UserName, @Password, @Email, NULL, NULL, @IP ";
                SqlCommand cmd = new SqlCommand(strSQL, conn);
                cmd.Parameters.AddWithValue("@UserName", user.Username);
                cmd.Parameters.AddWithValue("@Password", user.Password);
                cmd.Parameters.AddWithValue("@Email", user.Email);
                cmd.Parameters.AddWithValue("@IP", user.IPAddress);
                return Convert.ToBoolean(cmd.ExecuteScalar());
            }

        }
        catch (Exception ex)
        {
            throw ex;
        }
    }

    public static User LoginUser(User user)
    {
        try
        {
            DataTable dt = new DataTable();

            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["cabalAcc"].ToString()))
            {
                conn.Open();
                string strSQL = "SELECT UserNum, ID FROM cabal_auth_table (NOLOCK) WHERE ID = @UserName and pwdcompare(@Password, Password) = 1 ";
                SqlCommand cmd = new SqlCommand(strSQL, conn);
                cmd.Parameters.AddWithValue("@UserName", user.Username);
                cmd.Parameters.AddWithValue("@Password", user.Password);

                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                adapter.Fill(dt);

                if (dt.Rows.Count > 0)
                {
                    user.AccountID = (int)dt.Rows[0]["UserNum"];
                    user.Username = dt.Rows[0]["ID"].ToString();
                }

                return user;

            }

        }
        catch (Exception ex)
        {
            throw ex;
        }
    }
}