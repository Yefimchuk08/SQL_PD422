using System.Data.SqlClient;

namespace ConsoleApp3
{
    internal class Program
    {
        static void Main()
        {

            string connectionString = @"Data Source=DESKTOP-2P09BCH\SQLEXPRESS; Initial Catalog=Vegetables_Fruits; Integrated Security=true";


        }
        void Task1(string connectionStr)
        {
            SqlConnection sqlConnection = new SqlConnection(connectionStr);
            sqlConnection.Open();

            string cmdText = @"create table Vage_Fruits
                               (
                                    Id int not null identity(1, 1) primary key,
                                    Name nvarchar(100) not null check(Name<>''),
                                    Type nvarchar(50) not null check(Type='Vagetable' or Type = 'Fruit'),
                                    Color nvarchar(100) not null check(Color<>''),
                                    Calory int not null check(Calory!<0)
                               )";
            SqlCommand sqlCommand = new SqlCommand(cmdText, sqlConnection);
            sqlCommand.ExecuteNonQuery();
            sqlConnection.Close();
        }

        void Task2(string connectionStr)
        {
            SqlConnection connection = new SqlConnection(connectionStr);

            try
            {
                connection.Open();
                Console.WriteLine("Підключення до бази даних успішне!");
            }
            catch (Exception ex)
            {
                Console.WriteLine("Помилка підключення: " + ex.Message);
            }
            finally
            {
                if (connection.State == System.Data.ConnectionState.Open)
                {
                    connection.Close();
                    Console.WriteLine("Підключення закрите.");
                }
            }
        }
        void Menu(string connectionStr)
        {

            while (true)
            {
                Console.Clear();
                Console.WriteLine(" [1] - Enter all info from DB; \n[2] - Enter all names from DB; \n[3] - Enter all Colors from DB; \n[4] - Enter MAX Calories from DB; \n[5] - Enter MIN calories from DB; \n[6] - Enter AVG calories from DB; \n[7] - Exit;\n And what your choide: ");
                string str_num = Console.ReadLine();
                int num = Int32.Parse(str_num);

                switch (num)
                {
                    case 1:
                        Menu_Task1(connectionStr);
                        break;
                    case 2:
                        Menu_Task2(connectionStr);
                        break;
                    case 3:
                        Menu_Task3(connectionStr);
                        break;
                    case 4:
                        Menu_Task4(connectionStr);
                        break;
                    case 5:
                        Menu_Task5(connectionStr);
                        break;
                    case 6:
                        Menu_Task6(connectionStr);
                        break;
                    case 7:
                        Console.WriteLine("Thank you. Good Bye");
                        break;
                    default:
                        break;
                }
            }
        }
        void Menu_Task1(string connectionStr)
        {
            using (SqlConnection sqlConnection = new SqlConnection(connectionStr))
            {
                sqlConnection.Open();
                string cmdText = @"SELECT * FROM Vage_Fruits";

                using (SqlCommand command = new SqlCommand(cmdText, sqlConnection))
                using (SqlDataReader reader = command.ExecuteReader())
                {
                    while (reader.Read())
                    {

                        int id = reader.GetInt32(0);
                        string name = reader.GetString(1);
                        string type = reader.GetString(2);
                        int calory = reader.GetInt32(3);

                        Console.WriteLine($"ID: {id}, Name: {name}, Type: {type}, Calory: {calory}");
                    }
                }
                sqlConnection.Close();
            }
        }
        void Menu_Task2(string connectionStr)
        {
            using (SqlConnection sqlConnection = new SqlConnection(connectionStr))
            {
                sqlConnection.Open();
                string cmdText = @"SELECT Name
                                    FROM Vage_Fruits";
                using (SqlCommand command = new SqlCommand(cmdText, sqlConnection))
                using (SqlDataReader reader = command.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        string name = reader.GetString(0);

                        Console.WriteLine($"Name: {name}");
                    }
                }
                sqlConnection.Close();
            }
        }

        void Menu_Task3(string connectionStr)
        {
            using (SqlConnection sqlConnection = new SqlConnection(connectionStr))
            {
                sqlConnection.Open();

                string cmdText = @"SELECT Color
                                   FROM Vage_Fruits";

                using (SqlCommand command = new SqlCommand(cmdText, sqlConnection))
                using (SqlDataReader reader = command.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        int calories = reader.GetInt32(0);

                        Console.WriteLine($"Color: {calories}");
                    }
                }
                sqlConnection.Close();

            }
        }
        void Menu_Task4(string connectionStr)
        {
            using (SqlConnection sqlConnection = new SqlConnection(connectionStr))
            {
                sqlConnection.Open();

                string cmdText = @"SELECT MAX(Calory)
                                   FROM Vage_Fruits";

                using (SqlCommand command = new SqlCommand(cmdText, sqlConnection))
                using (SqlDataReader reader = command.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        int maxCalory = reader.GetInt32(0);

                        Console.WriteLine($"Max calory product: {maxCalory}");
                    }
                }
                sqlConnection.Close();
            }
        }

        void Menu_Task5(string connectionStr)
        {
            using (SqlConnection sqlConnection = new SqlConnection(connectionStr))
            {
                sqlConnection.Open();

                string cmdText = @"SELECT MIN(Calory)
                                   FROM Vage_Fruits";

                using (SqlCommand command = new SqlCommand(cmdText, sqlConnection))
                using (SqlDataReader reader = command.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        int minCalory = reader.GetInt32(0);

                        Console.WriteLine($"Min calory product: {minCalory}");
                    }
                }
                sqlConnection.Close();
            }
        }

        void Menu_Task6(string connectionStr)
        {
            using (SqlConnection sqlConnection = new SqlConnection(connectionStr))
            {
                sqlConnection.Open();

                string cmdText = @"SELECT AVG(Calory)
                                   FROM Vage_Fruits";

                using (SqlCommand command = new SqlCommand(cmdText, sqlConnection))
                using (SqlDataReader reader = command.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        int avgCalory = reader.GetInt32(0);

                        Console.WriteLine($"Avarage calory: {avgCalory}");
                    }
                }
                sqlConnection.Close();
            }
        }
        void Menu_Zavd2(string connectionStr)
        {
            while (true)
            {
                Console.Clear();
                Console.WriteLine(" [1] - Enter count of vegetables; \n[2] - Enter count of fruits; \n[3] - Enter count objects by one color; \n[4] - Enter count of object all colors; \n[5] - Compared down by calories with that you write; \n[6] - Compaared up by calories with that you write; \n[7] - In diapazone; \n[8] - All objects who have 'yellow' or 'red' color; \n[9] - Exit; \n And whatt ypur choise:  ");
                string str_num = Console.ReadLine();
                int num = Int32.Parse(str_num);
                switch (num)
                {

                    default:
                        break;
                }

            }
        }
        void Menu_Zavd2_Task1(string connectionStr)
        {
            using (SqlConnection sqlConnection = new SqlConnection(connectionStr))
            {
                sqlConnection.Open();

                string cmdText = @"SELECT COUNT(Id)
                                   FROM Vage_Fruits
                                   WHERE Type = 'Vagetable'";

                using (SqlCommand command = new SqlCommand(cmdText, sqlConnection))
                using (SqlDataReader reader = command.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        int count = reader.GetInt32(0);

                        Console.WriteLine($"Count of vagetables: {count}");
                    }
                }
                sqlConnection.Close();
            }
        }
            void Menu_Zavd2_Task2(string connectionStr)
            {
                using (SqlConnection sqlConnection = new SqlConnection(connectionStr))
                {
                    sqlConnection.Open();

                    string cmdText = @"SELECT COUNT(Id)
                                   FROM Vage_Fruits
                                   WHERE Type = 'Vagetable'";

                    using (SqlCommand command = new SqlCommand(cmdText, sqlConnection))
                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            int count = reader.GetInt32(0);

                            Console.WriteLine($"Count of vagetables: {count}");
                        }
                    }
                    sqlConnection.Close();
                }
            }

            void Menu_Zavd2_Task3(string connectionStr)
            {
                Console.WriteLine("Enter color: ");
                string color = Console.ReadLine();
                using (SqlConnection sqlConnection = new SqlConnection(connectionStr))
                {
                    sqlConnection.Open();

                    string cmdText = $@"SELECT COUNT(Id)
                                   FROM Vage_Fruits
                                   WHERE Color = '{color}'";

                    using (SqlCommand command = new SqlCommand(cmdText, sqlConnection))
                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            int count = reader.GetInt32(0);

                            Console.WriteLine($"Count of object by {color} color: {count}");
                        }
                    }
                    sqlConnection.Close();
                }
            }
            void Menu_Zavd2_Task4(string connectionStr)
            {
                using (SqlConnection sqlConnection = new SqlConnection(connectionStr))
                {
                    sqlConnection.Open();

                    string cmdText = @"SELECT Color, Type, COUNT(*) AS Count
                                        FROM Vage_Fruits
                                        GROUP BY Color, Type
                                        ORDER BY Color, Type";

                    using (SqlCommand command = new SqlCommand(cmdText, sqlConnection))
                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            int count = reader.GetInt32(0);

                            Console.WriteLine($"Count of vagetables: {count}");
                        }
                    }
                    sqlConnection.Close();
                }
            }
    }
}
