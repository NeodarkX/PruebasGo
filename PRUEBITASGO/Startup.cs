using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(PRUEBITASGO.Startup))]
namespace PRUEBITASGO
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
