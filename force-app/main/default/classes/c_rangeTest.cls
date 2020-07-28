public with sharing class c_rangeTest {
    @AuraEnabled
    public static void comparar() {
        List<MyClass> listaRecords = criarObj();

        MyClass novo = new MyClass();
        novo.min = 6;
        novo.max = 13;



        List<List<Integer>> listaRangeUsados = new List<List<Integer>>();
        List<List<Integer>> listaRangeDisponiveis = new List<List<Integer>>();

        for (Myclass obj : listaRecords) {
            List<Integer> lstRange = new List<Integer>();
            for (Integer i = obj.min; i <= obj.max; i++) {
                lstRange.add(i);
            }
            listaRangeUsados.add(lstRange);
        }

        List<Integer> lstNew = new List<Integer>();
        for (Integer i = novo.min; i <= novo.max; i++) {
            for (List<Integer> lst : listaRangeUsados) {
                if (lst.contains(i)) {
                    System.debug('ERROR');
                }
            }
        }

        // if(listaRangeUsados.size() > 1){
        //     for (Integer s = 0; s < listaRangeUsados.size()-1; s++) {
        //         List<Integer> lstRange = new List<Integer>();
        //         for(Integer i = listaRangeUsados[s].get(listaRangeUsados[s].size()-1)+1; i < listaRangeUsados[s+1].get(0); i++){      
        //             System.debug(listaRangeUsados[s+1].get(0));  
        //             if(i < listaRangeUsados[s+1].get(0)){
        //                 lstRange.add(i);
        //             } 
        //         }
        //         System.debug(lstRange);
        //         listaRangeDisponiveis.add(lstRange);
        //     }
        // }


        

        for (List<Integer> l1 : listaRangeUsados) {
            System.debug(l1);
        }
        for (List<Integer> l2 : listaRangeDisponiveis) {
            System.debug(l2);
        }
        
    }

    private static List<MyClass> criarObj(){
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

        Myclass obj3 = new Myclass();
        obj3.Id=3;
        obj3.min=20;
        obj3.max=25;
        lst.add(obj3);

        return lst;
    }

    public class MyClass {
        Integer Id;
        Integer min;
        Integer max;
    }    
}