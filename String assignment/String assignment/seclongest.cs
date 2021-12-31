using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace String_assignment
{
    class seclongest
    {
        public void secondlargest(int[] arr)
        {
            int first = int.MinValue, second = int.MinValue;
            foreach (int i in arr)
            {
                if (i > first)
                {
                    second = first;
                    first = i;
                }
                else if (i > second)
                {
                    second = i;
                }

            }
            Console.WriteLine("second largest" + second);
        }
    }
}
