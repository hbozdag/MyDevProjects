public class DateTimeMethodsDemo {

    public void calculateAgeInMonths(){

        //my bday

        date birthDate=date.newInstance(1984, 3,1);
        date todayDate=date.today();

        //calculate difference

        integer ageInMonths=birthDate.monthsBetween(todayDate);
        system.debug( 'my age in months is '+ ageInMonths);

        // 2. calculate age in days

        integer ageInDays=birthDate.daysBetween(todayDate);
        system.debug('my age in days is '+ageInDays);


    }
    
    //subscription end date

    public void printSubscriptionStartDate(){

    
    
   date subscriptionStartDate =date.today();

   date subscriptionEndDate= subscriptionStartDate.addDays(1000);
   System.debug('subscription end date is '+subscriptionEndDate);

   //year
   integer endDateYear= subscriptionEndDate.year();
   System.debug('end date year is '+endDateYear );

   integer endDateMonth=subscriptionEndDate.month();
   System.debug('end date month is '+endDateMonth);

   date subscriptioEndDate2=date.today();

   date subscriptionStartDate2=subscriptioEndDate2.addDays(-1000);
   System.debug('subscription start date is '+ subscriptionStartDate2);

   integer subscriptionYear=subscriptionStartDate2.year();
   System.debug(subscriptionYear);

   integer subMonth=subscriptionStartDate2.month();
   System.debug('subscription start month is '+subMonth);

    }

//4. create one method 
   public void printOfferEndDateTime(){


   //assuming offer starts right now
   //and offer is valid till 51 hours
   //print offer end date time

   datetime dtNow=datetime.now();
   datetime dtOfferEnd=dtNow.addHours(51);
   System.debug('offer end date and time is '+dtOfferEnd);

// print date component of the the offer end date





    }

}
