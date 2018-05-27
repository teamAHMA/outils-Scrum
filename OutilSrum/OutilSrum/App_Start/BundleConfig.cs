using System.Web;
using System.Web.Optimization;

namespace OutilSrum
{
    public class BundleConfig
    {
        // Pour plus d'informations sur le regroupement, visitez https://go.microsoft.com/fwlink/?LinkId=301862
        public static void RegisterBundles(BundleCollection bundles)
        {
            bundles.Add(new ScriptBundle("~/bundles/jquery").Include(
                        "~/Scripts/jquery-{version}.js"));

            bundles.Add(new ScriptBundle("~/bundles/jqueryval").Include(
                        "~/Scripts/jquery.validate*"));

            // Utilisez la version de développement de Modernizr pour le développement et l'apprentissage. Puis, une fois
            // prêt pour la production, utilisez l'outil de génération à l'adresse https://modernizr.com pour sélectionner uniquement les tests dont vous avez besoin.
            bundles.Add(new ScriptBundle("~/bundles/modernizr").Include(
                        "~/Scripts/modernizr-*"));

            bundles.Add(new ScriptBundle("~/bundles/bootstrap").Include(
                      "~/Scripts/bootstrap.js"));

            bundles.Add(new StyleBundle("~/Content/css").Include(
                      "~/Content/bootstrap.css",
                      "~/Content/site.css"));



            // template one ::
            //styles ::
            bundles.Add(new StyleBundle("~/Content/TemplateOne").Include(
                     "~/Content/templateOne/bootstrap.min.css",
                     "~/Content/templateOne/animate.min.css",
                     "~/Content/templateOne/et-line.css",
                     "~/Content/templateOne/icofont.css",
                     "~/Content/templateOne/fontawesome-all.min.css",
                     "~/Content/templateOne/YouTubePopUp.css",
                     "~/Content/templateOne/magnific-popup.css",
                     "~/Content/templateOne/owl.carousel.min.css",
                     "~/Content/templateOne/owl.theme.default.min.css",
                     "~/Content/templateOne/helper.css",
                     "~/Content/templateOne/style.css",
                     "~/Content/templateOne/custom.css",
                     "~/Content/popup/mesStyles.css",
                     "~/Content/templateOne/fontGoogleApi.css"
                     ));

            //scripts ::
            bundles.Add(new ScriptBundle("~/bundles/TemplateOne").Include(
                    "~/Scripts/TemplateOne/jquery-3.0.0.min.js",
                    "~/Scripts/TemplateOne/jquery-migrate-3.0.0.min.js",
                    "~/Scripts/TemplateOne/popper.min.js",
                    "~/Scripts/TemplateOne/bootstrap.min.js",
                     "~/Scripts/TemplateOne/scrollIt.min.js",
                     "~/Scripts/TemplateOne/animated.headline.js",
                     "~/Scripts/TemplateOne/jquery.waypoints.min.js",
                     "~/Scripts/TemplateOne/jquery.counterup.min.js",
                     "~/Scripts/TemplateOne/owl.carousel.min.js",
                     "~/Scripts/TemplateOne/jquery.magnific-popup.min.js",
                     "~/Scripts/TemplateOne/jquery.stellar.min.js",
                     "~/Scripts/TemplateOne/isotope.pkgd.min.js",
                     "~/Scripts/TemplateOne/YouTubePopUp.jquery.js",
                     "~/Scripts/TemplateOne/map.js",
                     "~/Scripts/TemplateOne/validator.js",
                     "~/Scripts/TemplateOne/scripts.js"
                     ));

            // popup script
            bundles.Add(new ScriptBundle("~/bundles/popupScripts").Include(
                    "~/Scripts/popup/popup.js"
                     ));


        }
    }
}
