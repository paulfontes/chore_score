namespace chore_score.Controllers;

[ApiController] //data annotation
[Route("api/chores")] //super('api/chores')
public class ChoresController : ControllerBase
{
    [HttpGet] //.get('', this.test)
    public string Test()
    {
        return "The API is ONLINE and REPORTING FOR DUTY 🫡";
    }
}