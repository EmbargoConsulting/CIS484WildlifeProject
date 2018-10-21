using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Maptest.Startup))]
namespace Maptest
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
