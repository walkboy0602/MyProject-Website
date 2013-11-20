<%@ Application Language="C#" %>
<%@ Import Namespace="Cabal" %>
<%@ Import Namespace="System.Web.Optimization" %>
<%@ Import Namespace="System.Web.Routing" %>
<%@ Import Namespace="System.Web.Http" %>
<%@ Import Namespace="System.Web.Http.WebHost" %>
   
<script runat="server">

    // Create two new classes for session handling
    //public class MyHttpControllerHandler
    //    : HttpControllerHandler, IRequiresSessionState
    //{
    //    public MyHttpControllerHandler(RouteData routeData)
    //        : base(routeData)
    //    { }
    //}
    //public class MyHttpControllerRouteHandler : HttpControllerRouteHandler
    //{
    //    protected override IHttpHandler GetHttpHandler(
    //        RequestContext requestContext)
    //    {
    //        return new MyHttpControllerHandler(requestContext.RouteData);
    //    }
    //}

    public class SessionControllerHandler : HttpControllerHandler, IRequiresSessionState
    {
            public SessionControllerHandler(RouteData routeData)
                : base(routeData)
            {}
    }

    public class SessionRouteHandler : IRouteHandler
    {
        IHttpHandler IRouteHandler.GetHttpHandler(RequestContext requestContext)
        {
            return new SessionControllerHandler(requestContext.RouteData);
        }
    }

    void Application_Start(object sender, EventArgs e)
    {
        // Code that runs on application startup
        BundleConfig.RegisterBundles(BundleTable.Bundles);
        AuthConfig.RegisterOpenAuth();
        RouteConfig.RegisterRoutes(RouteTable.Routes);

        //Add this in order to use the WebAPI
        RouteTable.Routes.MapHttpRoute(
            name: "DefaultApi",
            routeTemplate: "api/{controller}/{action}/{id}",
            defaults: new { id = System.Web.Http.RouteParameter.Optional }
            ).RouteHandler = new SessionRouteHandler(); ;
    }
    
    void Application_End(object sender, EventArgs e)
    {
        //  Code that runs on application shutdown

    }

    void Application_Error(object sender, EventArgs e)
    {
        // Code that runs when an unhandled error occurs

    }

</script>
