using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(fightxweb.Startup))]
namespace fightxweb
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
