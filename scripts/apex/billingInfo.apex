BillingInfo bi=new BillingInfo();
integer m=3;
date f=date.newInstance(2021, 3, 1);
System.debug('next bill date is '+bi.calcNextBillingDate(m, f));
