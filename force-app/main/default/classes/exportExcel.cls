public with sharing class exportExcel {
    public exportExcel(ApexPages.StandardController controller) {
        LeaveMC_VF();
    }
    public static PageReference LeaveMC_VF() {
        PageReference p = new PageReference('/apex/testeExcel');
        p.setRedirect(true);
        p.getParameters().put('customer','Gabriel MegaBlaster');
        return p;
        
     }
}

