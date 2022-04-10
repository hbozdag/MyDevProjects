public class PracticeSchoolDonation {


    public decimal sumDonation(list<decimal> donationAmount){
        decimal sum=0;
       

        if (donationAmount.size()>0){

            for (decimal val : donationAmount) {
                sum +=val;
                
            }
            system.debug('total donation amount is '+sum+ ' dollars');

        }else{
            System.debug('No donation has been made.');
        }
return sum;

    }

    public decimal averageDonation(List<Decimal> donationAmount){
        decimal average;

        if(donationAmount.size()>0){
            decimal sum=this.sumDonation(donationAmount);
           average= sum/donationAmount.size();
           system.debug('average donation amount is '+average);
        }else{
            System.debug('No donation has been made.');
        }

        return average;

    }

    public decimal highestAmount(list<decimal> donationAmount){
        decimal highest;

        if (donationAmount.size()>0){
            highest=donationAmount[0];
            for (decimal val: donationAmount) {
                if(val>highest){
                highest=val;  
                }  
            }
            system.debug('highest amount of donation is '+highest);
        }else{
            System.debug('No donation has been made.');
        }

        return highest;
    }
    
    public decimal lowestAmount(list<decimal> donationAmount){
        decimal lowest;

        if (donationAmount.size()>0){
            lowest=donationAmount[0];
            for (decimal val: donationAmount) {
                if(val<lowest){
                lowest=val;  
                }  
            }
            system.debug('lowest amount of donation is '+lowest);
        }else{
            System.debug('No donation has been made.');
        }

        return lowest;
    }

    public void reversedDonation(List<Decimal> donationAmount){

        if(donationAmount.size()>0){

       for (Integer i = donationAmount.size()-1; i >=0; i--) {
           System.debug(donationAmount.get(i));
           
       }
    }else{
        System.debug('Please provide values');
    }
    }
    
    
}
