
List<decimal> donationAmount= new List<decimal>();
donationAmount.add(34);
donationAmount.add(11);
donationAmount.add(3.67);
donationAmount.add(9.82);
donationAmount.add(34.69);
PracticeSchoolDonation psd=new PracticeSchoolDonation();
psd.sumDonation(donationAmount);
psd.averageDonation(donationAmount);
psd.highestAmount(donationAmount);
psd.lowestAmount(donationAmount);
psd.reversedDonation(donationAmount);