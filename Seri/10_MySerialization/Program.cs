using System.Xml.Serialization;

namespace MySerialization
{
    public class Sehir
    {
        public int Id { get; set; } = Program.UID++;
        public string Adi { get; set; }
        public string Plaka { get; set; }
        public List<Ilce> Ilceler { get; set; }
    }

    public class Ilce
    {
        public int Id { get; set; } = Program.UID++;
        public string Adi { get; set; }
    }

    public class SehirListesi : List<Sehir> { }

    internal class Program
    {
        public static SehirListesi GetData1()
        {
            SehirListesi Sehirler = new SehirListesi();
            Sehirler.Add(new Sehir
            {
                Adi = "Istanbul",
                Plaka = "34"
            });
            Sehirler.Add(new Sehir
            {
                Adi = "Ankara",
                Plaka = "06"
            });
            return Sehirler;

        }
        public static SehirListesi GetData()
        {
            var list = new SehirListesi();
            list.Add(new Sehir
            {
                Adi = "Istanbul",
                Plaka = "34",
                Ilceler = new List<Ilce> {
                new Ilce { Adi = "Beşiktaş" },
                new Ilce { Adi = "Şişli" },
                new Ilce { Adi = "Taksim" }
                }
            });
            list.Add(new Sehir
            {
                Adi = "Ankara",
                Plaka = "06",
                Ilceler = new List<Ilce> {
                new Ilce { Adi = "Maltepe" },
                new Ilce { Adi = "Çankaya" },
                new Ilce { Adi = "Tandoğan" }
                }
            });
            return list;
        }

        public static int UID = 1;
        static void Main(string[] args)
        {
            var data = GetData1();

            var stringwriter = new StringWriter();
            var serializer = new XmlSerializer(data.GetType());

            serializer.Serialize(stringwriter, data);
            Console.WriteLine(stringwriter.ToString());

        }
    }
}