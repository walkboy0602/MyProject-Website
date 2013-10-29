using System;
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

    // GET api/<controller>/5
    public string Get(int id)
    {
        return "value";
    }

    // POST api/<controller>
    public HttpResponseMessage Post([FromBody]User user)
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
        else if (dlUser.EmailExist(user.Email))
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

    // PUT api/<controller>/5
    public void Put(int id, [FromBody]string value)
    {
    }

    // DELETE api/<controller>/5
    public void Delete(int id)
    {
    }
}
