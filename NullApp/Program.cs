namespace NullApp
{
    internal class Program
    {
        public class Adres
        {
            public string Sokak = "";
            public string Mahalle = null!;
            public string Sehir;
        }
        static void Main2(string[] args)
        {
            Adres adres = null;
            Console.WriteLine(adres.Sokak.Length);
            Console.WriteLine(adres.Mahalle?.Length);

            string str1 = null!;
            string str2 = null;
            Console.WriteLine(str1);
            Console.WriteLine(str2);
        }
        static void Main(string[] args)
        {
            int sayi1 = 5;
            //sayi1 = null;
            Console.WriteLine(sayi1);

            int? sayi2 = 5;
            Console.WriteLine(sayi2);

            int? sayi3 = null;
            Console.WriteLine("--> " + sayi3.GetValueOrDefault());

            int? sayi4 = null;
            Console.WriteLine("-->" +sayi4.GetValueOrDefault(999));

        }
    }
}