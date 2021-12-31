using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace String_assignment
{
    class stringrev
    {
        public void reversestring(string str)
        {
            string rev = " ";
            int len;
            len = str.Length;
            while (len > 0)
            {
                rev = rev + str[len - 1];
                len--;
            }
            Console.WriteLine(rev);


        }
    }
}
