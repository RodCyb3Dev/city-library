using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Logging;
using Microsoft.EntityFrameworkCore;
using LibraryServices;
using LibraryData;

namespace Library
{
    public class Startup
    {
        public Startup(IHostingEnvironment env)
        {
            var builder = new ConfigurationBuilder()
                .SetBasePath(env.ContentRootPath)
                .AddJsonFile("appsettings.json", optional: false, reloadOnChange: true)
                .AddJsonFile($"appsettings.{env.EnvironmentName}.json", optional: true)
                .AddEnvironmentVariables();
            Configuration = builder.Build();
        }

        public IConfigurationRoot Configuration { get; }

        // This method gets called by the runtime. Use this method to add services to the container.
        public void ConfigureServices(IServiceCollection services)
        {
            // Add framework services.
            services.AddMvc();
            services.AddSingleton(Configuration);
            services.AddScoped<ILibraryCard, LibraryCardService>(); // so that Bookservice is injected into controllers and other components that request IBook
            services.AddScoped<ILibraryBranch, LibraryBranchService>(); // so that Bookservice is injected into controllers and other components that request IBook
            services.AddScoped<IPatron, PatronService>(); // so that Bookservice is injected into controllers and other components that request IBook
            services.AddScoped<ICheckout, CheckoutService>(); // so that Bookservice is injected into controllers and other components that request IBook
            services.AddScoped<ILibraryAsset, LibraryAssetService>(); // so that Bookservice is injected into controllers and other components that request IBook
            services.AddScoped<IBook, BookService>(); // so that Bookservice is injected into controllers and other components that request IBook
            services.AddScoped<IVideo, VideoService>(); // so that Bookservice is injected into controllers and other components that request IBook
            services.AddScoped<IStatus, StatusService>(); // so that Bookservice is injected into controllers and other components that request IBook

            services.AddDbContext<LibraryContext>(options
                => options.UseSqlServer(Configuration.GetConnectionString("LibraryConnection")));
        }

        // This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
        public void Configure(IApplicationBuilder app, IHostingEnvironment env, ILoggerFactory loggerFactory)
        {
            loggerFactory.AddConsole(Configuration.GetSection("Logging"));
            loggerFactory.AddDebug();

            if (env.IsDevelopment())
            {
                app.UseDeveloperExceptionPage();
                app.UseBrowserLink();
            }
            else
            {
                app.UseExceptionHandler("/Home/Error");
            }

            app.UseStaticFiles();

            app.UseMvc(routes =>
            {
                routes.MapRoute(
                    name: "default",
                    template: "{controller=Home}/{action=Index}/{id?}");
            });
        }
    }
}
