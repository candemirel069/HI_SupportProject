using ConsoleApp5.Data;
using Microsoft.EntityFrameworkCore.Metadata.Internal;
using System;
using System.Linq;

namespace ConsoleApp5
{
    internal class Program
    {
        static void Main(string[] args)
        {
          PersonContext db= new PersonContext();
            db.Jobs.ToList().ForEach(job => Console.WriteLine(job.Name));
        }
    }
}
