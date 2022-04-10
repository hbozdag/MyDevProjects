OperationsHelper lnumber=new OperationsHelper();
lnumber.largestOutOfTwoNumbers(67.21, 25.67);

OperationsHelper snumber=new OperationsHelper();
snumber.smallestOutOfThreeNumbers(11.34, 33.45, 5.9);

OperationsHelper posNum= new OperationsHelper();
posNum.sumOfPositiveIntegers(3);

List<decimal> Values=new List<Decimal>();
Values.add(56.15);
Values.add(12.01);
Values.add(3.21);
OperationsHelper sd=new OperationsHelper();
sd.sumDec(Values);
sd.average(Values);
sd.highest(Values);
decimal hv=sd.highestOfListValues(Values);
System.debug('highest value is '+hv);

decimal lv=sd.lowestOfListValues(Values);
System.debug('lowest value is '+lv);
sd.reverseOrder(Values);