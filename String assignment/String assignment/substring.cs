using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace String_assignment
{
    class substring
    {
        public void possiblesubstrin(string str1)
        {
            str1 = "xyz";
            for (int i = 1; i < str1.Length; i++)
            {
                for (int start = 0; start <= str1.Length - i; start++)
                {
                    string substr = str1.Substring(start, i);
                    Console.WriteLine(substr);

                }
            }

        }
    }
}
