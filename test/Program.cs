using System;
using System.Threading;

namespace ConsoleApplication
{
    public class Program
    {
        public static void Main(string[] args)
        {
            Random r = new Random();
            int i = 0;
            Console.Clear();
            while (i < 10)
            {
                Console.ForegroundColor = (ConsoleColor)r.Next(0, 16);
                Console.BackgroundColor = (ConsoleColor)r.Next(0, 16);
                Console.WriteLine("Pharmacy Onesource rocks!");
                Thread.Sleep(200);
                i++;
            }
            Console.ResetColor();
        }

    }

}
