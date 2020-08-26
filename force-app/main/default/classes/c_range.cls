public with sharing class c_range {
    @AuraEnabled
    public static void comparar() {
        List<MyClass> listaRecords = criarObj();

        List<List<Integer>> listaRangeUsados = new List<List<Integer>>();
        List<List<Integer>> listaRangeDisponiveis = new List<List<Integer>>();

        for (Myclass obj : listaRecords) {
            List<Integer> lstRange = new List<Integer>();
            for (Integer i = obj.min; i <= obj.max; i++) {
                lstRange.add(i);
            }
            listaRangeUsados.add(lstRange);
        }


        for (List<Integer> l1 : listaRangeUsados) {
            System.debug(l1);
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

        return lst;
    }

    public class MyClass {
        Integer Id;
        Integer min;
        Integer max;
    }    
}