﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

public class UserController : ApiController
{
    // GET api/<controller>
    public IEnumerable<string> Get()
    {
        return new string[] { "value1", "value2" };
    }


    // POST api/<controller>/<action>
    [HttpPost]
    public HttpResponseMessage Register([FromBody]User user)
    {
        var response = new HttpResponseMessage();
        
        //server side validation
        if (dlUser.UserNameExist(user.Username))
        {
            //response.StatusCode = (HttpStatusCode)401;
            //response.ReasonPhrase = "Someone already use that username. Try another?";
            var errorResponse = Request.CreateErrorResponse(HttpStatusCode.BadRequest, "Someone already use that username. Try another?");
            throw new HttpResponseException(errorResponse);
        }

        if (dlUser.EmailExist(user.Email))
        {
            var errorResponse = Request.CreateErrorResponse(HttpStatusCode.BadRequest, "Email has already been used. Try another?");
            throw new HttpResponseException(errorResponse);
        }

        //Get User IP Address
        user.IPAddress = blBase.getIPAddress();

        bool status = dlUser.CreateNewAccount(user);  


        if (status) return new HttpResponseMessage(HttpStatusCode.OK);
        throw new HttpResponseException(HttpStatusCode.NotFound);
    }

    [HttpPost]
    public HttpResponseMessage Login([FromBody]User user)
    {
        var response = new HttpResponseMessage();

        bool status = dlUser.LoginUser(user);

        if (status) return new HttpResponseMessage(HttpStatusCode.OK);
        throw new HttpResponseException(HttpStatusCode.NotFound);
    }
}
