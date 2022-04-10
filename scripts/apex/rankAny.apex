RankHandler rk=new RankHandler();
string prize1=rk.rankPrize(1);
System.debug('prize 1 is '+ prize1);
string prize2=rk.rankPrize(2);
System.debug('prize 2 is '+ prize2);
string prize3=rk.rankPrize(3);
System.debug('prize 3 is '+ prize3);
string prize4=rk.rankPrize(12);
System.debug('prize 4 is '+ prize4);


RankHandler rk=new RankHandler();
string prize1s=rk.rankPrizeSwitch(1);
System.debug('prize 1 is '+ prize1s);
string prize2s=rk.rankPrizeSwitch(2);
System.debug(prize2s);
string prize3s=rk.rankPrizeSwitch(3);
System.debug(prize3s);
string prize4s=rk.rankPrizeSwitch(12);
System.debug(prize4s);