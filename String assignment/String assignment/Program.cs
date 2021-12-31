using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace String_assignment
{
    class Program
    {
       
        static void Main(string[] args)
        {

            string str = " ";
            string str1 = Console.ReadLine();
            string str2 = Console.ReadLine();
            
            str = Convert.ToString(Console.ReadLine());
            
            substring substringobj = new substring();
            substringobj.possiblesubstrin(str1);

            Stringoccurence occurrenceobj = new Stringoccurence();
            occurrenceobj.Occuranceofastring(str);

            wordreve revwordobj = new wordreve();
            revwordobj.reversecharinword(str2);

            stringrev reverstringobj = new stringrev();
            reverstringobj.reversestring(str);

            orderofstring revorderobj = new orderofstring();
            revorderobj.Reversewordsinstring(str);

            seclongest longobj = new seclongest();
            longobj.secondlargest(new int[] { 2, 3, 4, 5, 1 });



            Console.ReadLine();

        }
    }
}

