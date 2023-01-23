using System;
using System.Collections.Generic;

namespace ConsoleApp7.Data;

public partial class Job
{
    public int Id { get; set; }

    public string Name { get; set; } = null!;

    public virtual ICollection<Person> People { get; } = new List<Person>();
}
