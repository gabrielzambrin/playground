public with sharing class wsAnularFactura {
    // #region method wsAnularFactura
    webservice static List<Resposta> wsAnularFactura() {
        if (condition) {
            
        }else {
            if (condition) {
                
            } else {
                if (condition) {
                    List<Myclass> lst = new List<Myclass>();
                    
                    Myclass obj = new Myclass();
                    obj.Id=1;
                    obj.min=0;
                    obj.max=5;
                    lst.add(obj);
                    
                    Myclass obj2 = new Myclass();
                    obj2.Id=2;
                    obj2.min=10;
                    obj2.max=15;
                    lst.add(obj2);
                } else {
                    
                }
            }
        }
        
        
    }
    // #endregion
    
    return lst;
    
    // #region Classe nova
    public class MyClass {
        Integer Id;
        Integer min;
        Integer max;
    }
    // #endregion
}
