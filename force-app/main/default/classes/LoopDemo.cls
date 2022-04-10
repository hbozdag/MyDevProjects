public class LoopDemo {
    public void print_int_while(){
        Integer count=10;
        while (count<=25){
            system.debug(count);
            count++;
        }

    }

    public void print_N_numbers(Integer n){
        //for initialize         condition     increment
        for( integer i=1;          i<=n;         i++){
            //print i
            System.debug(i);
        }
       
    }

public void print_N_Odd_numbers(Integer startInt, integer endInt){
    
    for( integer i=startInt;          i<=endInt;         i++){
        if(Math.mod(i, 2)==1)
        
        System.debug(i);
    }
    
}


    //another example

  /*  public void print_N_Odd_numbers(Integer startInt, integer endInt){
     
        for( integer i=startInt;          i<=endInt;         i++){
            Integer modI=math.mod(i, 2);
            
            if( modI==1)          
            System.debug(i);
        }
       
    }*/

    public string getDay(Integer i){
        string s= '';      

        if(i==1){
            System.debug('Today is Monday');
        }else if(i==2){
            System.debug('Today is Tuesday');
        }else if (i==3){
            System.debug('Today is Wednesday');
        }else if(i==4){
            System.debug('Today is Thursday');
        }else if (i==5){
            System.debug('Today is Friday');
        }else if (i==6){
            System.debug('Today is Saturday');
        }else if(i==7){
            System.debug('Today is Sunday');
        }else{
           System.debug('Not a valid entry. Please try again');
        }
        return s;
    }

    }

