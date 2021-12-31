using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace String_assignment
{
    class wordreve
    {
        public void reversecharinword(string str2)
        {
            int start;
            int end;
            string rev = " ";

            end = str2.Length - 1;

            for (int i = end; i >= 0; i--)
            {
                if (str2[i] == ' ' || i == 0)
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
                        while (end > 0)
                        {
                            rev = rev + str2[end];
                            end--;
                        }
                    }
                    end = i - 1;
                }

            }
            Console.WriteLine("\n" + rev);
        }
    }
}
