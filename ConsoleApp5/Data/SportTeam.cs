using System;
using System.Collections.Generic;

#nullable disable

namespace ConsoleApp5.Data
{
    public partial class SportTeam
    {
        public SportTeam()
        {
            People = new HashSet<Person>();
        }

        public int Id { get; set; }
        public string Name { get; set; }

        public virtual ICollection<Person> People { get; set; }
    }
}
