using ConsoleApp7.Data;

namespace ConsoleApp7
{
    internal class Program
    {
        static void Main(string[] args)
        {
            PersonContext db = new();
            var j = new Job { Name = "aaa" };
            var p = new Person { Name = "aaa", Surname = "aaa", Job = j };

            db.People.Add(p);
            db.SaveChanges();
            Console.WriteLine("ok.");
        }
    }
}