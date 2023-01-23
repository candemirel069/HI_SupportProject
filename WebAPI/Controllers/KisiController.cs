using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace WebAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class KisiController : ControllerBase
    {
        private readonly ILogger<WeatherForecastController> _logger;

        public KisiController(ILogger<WeatherForecastController> logger)
        {
            _logger = logger;
        }

        public IEnumerable< string> Get() { 
            return new string [] { "aaa", "aaaa", "aa" };
        }
    }
}
