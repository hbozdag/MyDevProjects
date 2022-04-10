Calculator cObj= new Calculator();
Calculator.welcomeMessage();
Calculator.printMessage('This is Harun\'s own calculator');
Integer addInteger=Calculator.add(10,15);
System.debug('sum is '+addInteger);
Integer addInteger2=Calculator.add(12, 23, 14);
System.debug(' sum 2 is '+ addInteger2);

List<integer> listInteger= new List<Integer>();

        listInteger.add(5);  //index 0
        listInteger.add(145);//index 1
        listInteger.add(21);//index 2
        listInteger.add(67);//index 3
        listInteger.add(5);//index 4
        listInteger.add(5);//index 5

       // integer sumList=Calculator.add(listInteger);
        System.debug('Calculator sum is '+Calculator.add(listInteger));

        Integer calcSum= Calculator.add(listInteger);

