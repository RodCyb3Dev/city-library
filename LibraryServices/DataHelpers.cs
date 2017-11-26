using System;
using LibraryData.Models;
using System.Collections.Generic;
using System.Text;

namespace LibraryServices
{
    public class DataHelpers
    {
        public static IEnumerable<string>
           HumanizeBusinessHours(IEnumerable<BranchHours> branchHours)
        {
            var hours = new List<string>();

            foreach (var time in branchHours)
            {
                var day = HumanizeDayOfWeek(time.DayOfWeek);
                var openTime = HumanizeTime(time.OpenTime);
                var closeTime = HumanizeTime(time.CloseTime);
                var timeEntry = $"{day} {openTime} to {closeTime}";
                hours.Add(timeEntry);
            };

            return hours;
        }

        private static string HumanizeDayOfWeek(int number)
        {
            return Enum.GetName(typeof(DayOfWeek), number);
        }

        private static string HumanizeTime(int time)
        {
            TimeSpan result = TimeSpan.FromHours(time);
            return result.ToString("hh':'mm");
        }
    }
}
