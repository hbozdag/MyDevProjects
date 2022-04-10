public class BillingInfo {
    public date calcNextBillingDate(Integer frequencyInMonth, Date prevBilledDate) {

        return prevBilledDate.addMonths(frequencyInMonth);


    }
}
