using System.Web.Optimization;

namespace Apollo.Web.NursingApp
{
    public static class BundleConfig
    {
        // For more information on bundling, visit https://go.microsoft.com/fwlink/?LinkId=301862
        public static void RegisterBundles(BundleCollection bundles)
        {
            bundles.Add(new ScriptBundle("~/bundles/jquery").Include(
                        "~/Scripts/jquery-{version}.js"));

            bundles.Add(new ScriptBundle("~/bundles/angular").Include(
                       "~/Scripts/angular.js"));

            bundles.Add(new ScriptBundle("~/bundles/angularngfileupload").Include(
                       "~/Scripts/ngfileupload/ng-file-upload.min.js"));

            bundles.Add(new ScriptBundle("~/bundles/angularfilesaver").Include(
                       "~/Scripts/filesave/FileSaver.js"));

            bundles.Add(new ScriptBundle("~/bundles/appjs").Include(
                       "~/Scripts/appscripts/app.js"));

            bundles.Add(new ScriptBundle("~/bundles/jqueryval").Include(
                        "~/Scripts/jquery.validate*"));

            bundles.Add(new ScriptBundle("~/bundles/angularmultiselect").Include(
                       "~/Scripts/dropdownmultiselect/select-tpls.js"));

            // Use the development version of Modernizr to develop with and learn from. Then, when you're
            // ready for production, use the build tool at https://modernizr.com to pick only the tests you need.
            bundles.Add(new ScriptBundle("~/bundles/modernizr").Include(
                        "~/Scripts/modernizr-*"));

            bundles.Add(new Bundle("~/bundles/bootstrap").Include(
                      "~/Scripts/bootstrap.js"));

            bundles.Add(new StyleBundle("~/Content/css").Include(
                      "~/Content/bootstrap.css",
                      "~/Content/site.css"));

            bundles.Add(new StyleBundle("~/Content/multiselect").Include(
                      "~/Content/dropdownmultiselect/select.css"));
        }
    }
}