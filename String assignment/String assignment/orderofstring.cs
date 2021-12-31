using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace String_assignment
{
    class orderofstring
    {
        public void Reversewordsinstring(string str)
        {
            int start;
            int end;
            string rev = " ";

            end = str.Length - 1;

            for (int i = str.Length - 1; i >= 0; i--)
            {
                if (str[i] == ' ' || i == 0)
                {

                    if (i == 0)
                    {
                        start = 0;
                    }
                    else
                    {
                        start = i + 1;

                    }
                    for (int j = start; j <= end; j++)
                    {
                        Console.Write(str[j]);

                    }
                    end = i - 1;
                    Console.WriteLine('\t');
                }
                //Console.WriteLine();
            }
        }
    }
}
