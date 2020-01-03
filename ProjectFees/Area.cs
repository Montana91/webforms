using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;
using System.Linq;

namespace ProjectFees
{
   public  class Area
    {
        public List<AreaFee> ServiceAreaFees = new List<AreaFee>();
        public decimal OutOfAreaFee { get; private set; }

        public Area()
        {
            ServiceAreaFees.Add(new AreaFee("Peterborough", "PE1",  25.00m));
            ServiceAreaFees.Add(new AreaFee("Stamford", "PE9", 8.99m));
            ServiceAreaFees.Add(new AreaFee("Bourne", "PE10", 5.50m));
            ServiceAreaFees.Add(new AreaFee("Spalding", "PE12", 2.90m));
            ServiceAreaFees.Add(new AreaFee("Wisbech", "PE14", 7.89m));
            ServiceAreaFees.Add(new AreaFee("March", "PE15", 16.80m));

            OutOfAreaFee = 49.99m;

        }
      public decimal  GetFeeForArea(string postcode)
        {
            var area = ServiceAreaFees.FirstOrDefault(f=> f.Postcode.Equals(postcode.ToUpper()));
            return area != null ? area.Fee : OutOfAreaFee;
        }

       

   
       
    }
}
