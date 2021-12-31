using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace String_assignment
{
    class Stringoccurence
    {
        public void Occuranceofastring(string str)
        {
            str = "hello";
            while (str.Length > 0)
            {
                Console.Write(str[0] + "-");
                int call = 0;
                for (int i = 0; i < str.Length; i++)
                {
                    if (str[0] == str[i])
                    {
                        call++;
                    }

                }
                Console.WriteLine(call);
                str = str.Replace(str[0].ToString(), string.Empty);
            }
        }
    }
}
