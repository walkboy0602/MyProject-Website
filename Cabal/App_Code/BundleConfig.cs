using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;

namespace Cabal
{
    public class BundleConfig
    {
        // For more information on Bundling, visit http://go.microsoft.com/fwlink/?LinkId=254726
        public static void RegisterBundles(BundleCollection bundles)
        {
            //angular
            bundles.Add(new ScriptBundle("~/bundles/angular").Include(
                "~/Scripts/angular/angular.js",
                "~/Scripts/angular/apps.js",
                "~/Scripts/angular/api.js",
                "~/Scripts/angular/directive.js",
                "~/Scripts/angular/ui-bootstrap-tpls-0.6.0.js",
                "~/Scripts/angular/controllers/user.js"
                ));

            //plugin
            bundles.Add(new ScriptBundle("~/bundles/plugin").Include(
                "~/Scripts/plugin/jquery.validate.js"
                ));

            //bundles.Add(new ScriptBundle("~/bundles/WebFormsJs").Include(
            //      "~/Scripts/WebForms/WebForms.js",
            //      "~/Scripts/WebForms/WebUIValidation.js",
            //      "~/Scripts/WebForms/MenuStandards.js",
            //      "~/Scripts/WebForms/Focus.js",
            //      "~/Scripts/WebForms/GridView.js",
            //      "~/Scripts/WebForms/DetailsView.js",
            //      "~/Scripts/WebForms/TreeView.js",
            //      "~/Scripts/WebForms/WebParts.js"));

            //bundles.Add(new ScriptBundle("~/bundles/MsAjaxJs").Include(
            //    "~/Scripts/WebForms/MsAjax/MicrosoftAjax.js",
            //    "~/Scripts/WebForms/MsAjax/MicrosoftAjaxApplicationServices.js",
            //    "~/Scripts/WebForms/MsAjax/MicrosoftAjaxTimer.js",
            //    "~/Scripts/WebForms/MsAjax/MicrosoftAjaxWebForms.js"));

            // Use the Development version of Modernizr to develop with and learn from. Then, when you’re
            // ready for production, use the build tool at http://modernizr.com to pick only the tests you need
            bundles.Add(new ScriptBundle("~/bundles/modernizr").Include(
                "~/Scripts/modernizr-*"));

            // Add @Styles.Render("~/Content/bootstrap/base") in the <head/> of your _Layout.cshtml view
            // For Bootstrap theme add @Styles.Render("~/Content/bootstrap/theme") in the <head/> of your _Layout.cshtml view
            // Add @Scripts.Render("~/bundles/bootstrap") after jQuery in your _Layout.cshtml view
            // When <compilation debug="true" />, MVC4 will render the full readable version. When set to <compilation debug="false" />, the minified version will be rendered automatically
            bundles.Add(new ScriptBundle("~/bundles/bootstrap").Include("~/Scripts/bootstrap/bootstrap.js"));
            bundles.Add(new StyleBundle("~/Content/bootstrap/base").Include("~/Content/bootstrap/bootstrap.css"));
            bundles.Add(new StyleBundle("~/Content/bootstrap/theme").Include(
                "~/Content/bootstrap/bootstrap-theme.css",
                "~/Content/bootstrap/bootstrap-style.css"));

        }
    }
}