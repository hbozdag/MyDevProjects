public class PracticeLoop {
    public void numberOfAttendees() {

        integer numOfAttendees=5;

        while(numOfAttendees<=20){
            System.debug(numOfAttendees);
            numOfAttendees++;
        }

    }

    //here is hwo to find odd and even numbers
     
    public void oddNumber(Integer  x){       
Integer y=x/2;
Integer z=y*2;


    if(z==x){
        System.debug(x + ' is an even number');
    }else{
        System.debug( x+ ' is an odd number');
    }
    
}

public void oddEven(Integer a){

    Integer remainder= Math.mod(a, 2);
    
    if (remainder==0){
        System.debug(a +' is an even number');
    }else{
        System.debug(a +' is an odd number');
    }

}



//2.) Verilen bir sayının küpünü hesaplayan bir metod yazın?

public void cubed(Integer y){

     integer cubedNum=y*y*y;
    System.debug('Cube of '+ y + ' is '+ cubedNum);

}

//3.) İki değişken alan, birinciyi ikinciye bölüp kalanını dönen bir metot yazın?
public Integer remainingNum(integer a, Integer b){

    Integer divNum=a/b;
    Integer s= divNum*b;
    Integer remNum = a-s;
    System.debug('remaining number is '+ remNum);

    return remNum;

} 

public integer remNumber(integer firstNum, Integer secondNum){

    Integer divResult=Math.mod(firstNum, secondNum);
    System.debug('remaining number is '+ divResult);

    return divResult;

}

//4.) Ülke ismini bir parametre olarak alan, 4 ülke için
//isimlerini girdiğinizde size hangi kıtada olduğunu,
//nüfusunu ve başkentini dönen.farklı bir ülke girince bilmediğini ifade eden bir method yazın?

public string country(string countryName){

    string countryInfo='';

    switch on countryName {

        when 'USA'{
           System.debug(countryName+' is in North America. Its population is 300 million, and its capital city is Washington DC');
        }
        when 'France'{
            System.debug(countryName+' is in Europe. Its population is 65 million, and its capital city is Paris.');
        }
        when 'Germany'{
            System.debug(countryName+' is in Europe. Its population is 50 million, and its capital city is Berlin');
        }
        when 'Kenya'{
            System.debug(countryName+' is in Africa. Its population is 100 million, and its capital city is Nairobi');
        }
        when else {
            System.debug(countryName+' is not available.');
            
        }

    }
    return countryInfo;

}

/*
5.) Doğum tarihini bir değişken olarak alan,
buna göre ehliyet alıp alamayacağını dönen bir metot yazın.
*/

public string dlEligibility(){

    date birthday=date.newInstance(1984, 3,1);
    String DLresult;
    Date todayDate=date.today();
    Integer age=birthday.monthsBetween(todayDate);
    


    if(age<216){
        System.debug('Candidate is not eligible for driver license');
    }else{
        System.debug('Candidate is eligible for driver license');
    }

    return DLresult;

}

public integer maxNum(Integer a, integer b){
    return Math.max(a, b);
}

public void license(date birthdate){
    Integer birthYear=birthdate.year();
    date todayDate=date.today();
    integer todayYear=todayDate.year();
    integer age= todayYear-birthYear;

    if (age>=18){
        system.debug('candidate is eligible for driver license');
    }else{
        system.debug('candidate is not eligible for driver license');
    }
}

public void driver(date birthdate){
date todayDate=date.today();
System.debug('today date is '+todayDate);

date limitDate= todayDate.addYears(-18);
System.debug('DL lmit date is '+limitDate);

Integer bDays=birthdate.daysBetween(todayDate);

integer limitdays=limitDate.daysBetween(todayDate);
if (bDays>=limitdays){
    System.debug('Yes driver licencse can be obtained');

}else{
    System.debug('no driver license');
}
}
}
