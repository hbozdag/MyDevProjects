public class Admissions {

    public static Integer totalAdmissionGranted=0;

    public void grantAdmission(){

        if(Admissions.totalAdmissionGranted<2){
            System.debug('Admission granted successfully' );
            Admissions.totalAdmissionGranted++;
        }else{
            System.debug('Admissions already full' );

        }
    }

    public void revokeAdmission(){
        if(Admissions.totalAdmissionGranted>0){
            System.debug('Admission revoked successfully' );
            Admissions.totalAdmissionGranted--;
        }else if (Admissions.totalAdmissionGranted==0){
            System.debug('No one is admitted');
        }
    }
}
