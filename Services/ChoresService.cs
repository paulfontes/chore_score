namespace chore_score.Services;

public class ChoresService
{

    private readonly ChoresRepository _repo;


    public ChoresService(ChoresRepository repo)
    {
        _repo = repo;
    }


    public List<Chore> GetChores()
    {
        List<Chore> chores = _repo.GetChores();
        return chores;
    }

}