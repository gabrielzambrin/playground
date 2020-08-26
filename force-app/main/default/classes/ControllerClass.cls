public with sharing class ControllerClass {
    public string xmlheader {get;set;}
    public string endfile{get;set;}
    public string idioma{get;set;}
    public List<string> listString{get;set;}
    public ControllerClass() {
        
        //VF page gives some issues directly using the below code there, so wrap up in variable

        xmlheader ='<?xml version="1.0"?><?mso-application progid="Excel.Sheet"?>';

        endfile = '</Workbook>';

        listString = new List<string>();

        listString.add('1');

        listString.add('2');

        NomedoGajo = System.currentPageReference().getParameters().get('customer');
    }
}
