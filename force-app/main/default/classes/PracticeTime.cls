public class PracticeTime {
    public void yourPracticeTime() {

    date startDate=date.newInstance(2011, 11, 22);
    date todayDate=date.today();

    integer experienceInMonths=startDate.monthsBetween(todayDate);
    System.debug('It has been '+ experienceInMonths+ ' months that I have been working for Salesforce');

    integer experienceInDays=startDate.daysBetween(todayDate);
    System.debug('It has been '+ experienceInDays+ ' days that I have been working for Salesforce');

    }

    public void agrEndDate(){

        date agreementSigned=date.newInstance(2012, 9, 17);
        //agreement is valid for 3000 days

        date agreementEndDate=agreementSigned.addDays(3000);
        System.debug('Agreement end date is '+agreementEndDate);
        system.debug('agreement ends in ' + agreementEndDate.year()+ ' '+ agreementEndDate.month());
    

     
      
    }

    public void offerQuick(){
        datetime offerStarts=datetime.now();
        datetime endTime=offerStarts.addHours(48);

        System.debug('offer will be ending in at '+endTime);
        System.debug(endTime.hour());
        System.debug(endTime.minute());
        System.debug(endTime.second());
        System.debug(offerStarts.getTime());
        
    }

    public string favPlaces(string a, string b){
     
        System.debug(a +' is great place to go for dinner '+ b + ' is recommended for breakfast');

       return a;
    }

    public string favPlaces(string name, integer age ){
        System.debug('His name is '+name+' and he is '+ age+' years old.');

    return name;
    }

    public Boolean leapYearCheck(date dt){
        Integer year=dt.year();
        Boolean lp=date.isLeapYear(year);
        return lp;
    }
}
