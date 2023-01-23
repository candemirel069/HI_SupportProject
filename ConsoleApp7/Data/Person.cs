using System;
using System.Collections.Generic;

namespace ConsoleApp7.Data;

public partial class Person
{
    public int Id { get; set; }

    public string Name { get; set; } = null!;

    public string? Middlename { get; set; }

    public string Surname { get; set; } = null!;

    public int JobId { get; set; }

    public int? SportTeamId { get; set; }

    public virtual Job Job { get; set; } 

    public virtual SportTeam? SportTeam { get; set; }
}
