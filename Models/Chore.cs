namespace chore_score.Models;


public class Chore
{
    public string Name { get; set; }
    public string Description { get; set; }
    public bool IsComplete { get; set; }
    public int Difficulty { get; set; }
}