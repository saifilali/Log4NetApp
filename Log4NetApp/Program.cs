using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Remoting.Metadata.W3cXsd2001;
using System.Text;
using System.Threading.Tasks;

[assembly: log4net.Config.XmlConfigurator(Watch =true)] //This line always go where the main method is such as Program.cs file or Startup.cs file.

namespace Log4NetApp
{
    class Program
    {
        private static readonly log4net.ILog log = log4net.LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType); //LogHelper.GetLogger(); 
        static void Main(string[] args)
        {
            Console.WriteLine("Hello World");

            log.Debug("Developer: MonthlyPayrollJob was run.");
            log.Info("Maintenance: WeeklyTimeManagementJob is running slow.");
            log.Warn("Maintenance: DailyJournalyEntryJob is cluttered.");

            var i = 0;
            try
            {
                var x = 10 / i;
            }
            catch(DivideByZeroException ex)
            {
                log.Error("Developer: Trying to divide by zero.", ex);
            }

            log.Fatal("Maintenance: SalesFrontCounterJob is stopped.");

            Console.ReadLine();
        }
    }
}
