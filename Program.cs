// See https://aka.ms/new-console-template for more information
using System;

class Program
{
    static void Main()
    {
        Console.WriteLine("Welcome to the Age Calculator!");

        // Get user name
        Console.Write("Enter your name: ");
        string name = Console.ReadLine();

        // Get user age with error handling
        int age;
        while (true)
        {
            Console.Write("Enter your age: ");
            string input = Console.ReadLine();

            if (int.TryParse(input, out age) && age > 0)
            {
                break; // Valid age, exit loop
            }
            else
            {
                Console.WriteLine("Invalid input. Please enter a valid age.");
            }
        }

        // Calculate year of birth
        int currentYear = DateTime.Now.Year;
        int birthYear = currentYear - age;

        // Display result
        Console.WriteLine($"\nHello {name}, you were born in the year {birthYear}.");
    }
}