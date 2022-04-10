PracticeLoop attendee= new PracticeLoop();
date date2=date.newInstance(2003, 12, 22);
attendee.driver(date2);

date date1=date.newInstance(2000, 11, 11);
attendee.license(date1);

attendee.oddEven(7);


Integer max=attendee.maxNum(5, 41);
System.debug('max number is '+max);

attendee.remNumber(17, 6);
attendee.dlEligibility();
attendee.country('USA');
attendee.remainingNum(17, 6);
attendee.cubed(4);
attendee.oddNumber(5);
attendee.numberOfAttendees();