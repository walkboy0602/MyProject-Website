using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for blBase
/// </summary>
public class blBase
{
	public blBase()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public static string getIPAddress()
    {
        System.Web.HttpContext context = System.Web.HttpContext.Current;

        string xForwardedFor = context.Request.ServerVariables["HTTP_X_FORWARDED_FOR"];

        //Look for a proxy address first
        if (!string.IsNullOrEmpty(xForwardedFor))
        {
            string[] arIPs = xForwardedFor.Split(',');
            if (arIPs.Length != 0)
            {
                foreach (string addr in arIPs)
                {
                    return addr;
                }
            }
        }

        //If there is no proxy, get the standard remote address
        return context.Request.ServerVariables["REMOTE_ADDR"]; ;
    }
}