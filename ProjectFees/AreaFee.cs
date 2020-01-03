using System;

namespace ProjectFees
{
    public class AreaFee
    {
        public string Name
        {
            get;
            private set;
        }

        public string Postcode
        {
            get;
            private set;
        }

        public decimal Fee
        {
            get;
            private set;
        }

        public AreaFee(string name, string postcode, decimal fee)
        {
            Name = name;
            Postcode = postcode;
            Fee = fee;
        }
            
    }
}
