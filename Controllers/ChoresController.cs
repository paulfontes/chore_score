namespace chore_score.Controllers;

[ApiController] //data annotation
[Route("api/chores")] //super('api/chores')



public class ChoresController : ControllerBase //extends BaseController
{

    private readonly ChoresService _choresService;

    public ChoresController(ChoresService choresService)
    {
        _choresService = choresService;
    }

    [HttpGet("test")] //.get('', this.test)
    public string Test()
    {
        return "The API is ONLINE and REPORTING FOR DUTY 🫡";
    }

    [HttpGet]
    public ActionResult<List<Chore>> GetChores()
    {
        try
        {
            List<Chore> chores = _choresService.GetChores();
            return Ok(chores);
        }
        catch (Exception exception)
        {

            return BadRequest(exception.Message); //400 response
        }

    }


}