    public  class PrimitiveDataTypeDemo2 {
        public void printBasicDataType() {

    string batchName= 'Falcons 4';
    integer totalCandidates=40;
    boolean isAdminCompleted=true;

    system.debug(batchName);
    system.debug(totalCandidates);
    system.debug(isAdminCompleted);

    string batchDescription= batchName + ' are the best';
    system.debug(batchDescription);

    decimal decValue = 27.01;
    system.debug('Decimal: '+decValue);

    long longValue= 2147585858L;
    system.debug('Long : ' +longValue);


    Object obj= 'This is a string';
    Object obj2=10;

    //this is a salesforce ID
    ID id1='0015f00000DQCqPAAX';

    system.debug (id1);
    system.debug(obj);
    system.debug(obj2);


        }

        public void printNewDate(){

            Date newDate= Date.newInstance(1995, 2, 17);

            date newDate2=Date.newInstance(2021, 12, 12);

            date todayDate= date.today();
            

            system.debug('first date is '+newDate);
            system.debug('second date is '+newDate2);
            system.debug('today\'s date is '+ todayDate);

        }

        public void printNewTime(){

            //create new instance of time 

            Time myTime =Time.newInstance(18, 34, 21, 44);
            Time meTime= Time.newInstance(15, 15, 2, 20);

            system.debug(' first time is '+ myTime);
            system.debug(' second time is '+ meTime);

            Time miscTime=Time.newInstance(27, 70, 100, 50);
            system.debug(miscTime);

        }

        public void printNewDateTime(){
            //today's date
            date newDate=date.today();
            //new date 
            time newTime = time.newInstance(11,10, 20,30);

            // 1. new datetime
            datetime dt1=datetime.newInstance(newDate, newTime);
            system.debug('1st datetime= '+ dt1);

            //2. new instance with 3 params

            datetime dt2=datetime.newInstance(2025, 1,9);
            system.debug('dt 2 is '+ dt2 );

            //3. datetime instance with 6 params
            datetime dt3= datetime.newInstance(2021, 12,14,10,10,10);
            system.debug('dt3 is '+ dt3);

            //4. new instance from miliseconds

            Long longtime =383939394930L;
            datetime dt4_base=datetime.newInstance(0);
            system.debug('base date for miliseconds = '+dt4_base);
            
            datetime DT4= datetime.newInstance(longtime);
            system.debug('dt 4 is '+ DT4);

          

           

            //5. 
            system.debug('current datetime is '+ datetime.now());
             
    
            
            




        }
        
    }
