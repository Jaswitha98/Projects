using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Laptop
{
    class Program
    {
        static void Main(string[] args)
        {
           string name = Console.ReadLine();
            object price = Console.ReadLine();
            object processor = Console.ReadLine();
            object ram = Console.ReadLine();
            object harddrive = Console.ReadLine();


            string name1 = Console.ReadLine();
            
            child objdell = new child() ;
            objdell.Dell(processor);

            ram objram = new ram();
            objram.pi(ram,harddrive);


            Console.ReadLine();
        }
    }
}
