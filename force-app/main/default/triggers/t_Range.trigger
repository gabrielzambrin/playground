trigger t_Range on Range__c (before insert) {
    List<Range__c> lstRanges = [SELECT id, Minimo__c,Maximo__c FROM Range__c];
    
    Range__c novo = Trigger.new[0];

    List<List<Integer>> listaRangeUsados = new List<List<Integer>>();
    List<List<Integer>> listaRangeDisponiveis = new List<List<Integer>>();

    for (Range__c obj : lstRanges) {
        List<Integer> lstRange = new List<Integer>();
        for (Integer i = obj.Minimo__c.intValue(); i <= obj.Maximo__c.intValue(); i++) {
            lstRange.add(i);
        }
        listaRangeUsados.add(lstRange);
    }

    for (Integer i = novo.Minimo__c.intValue(); i <= novo.Maximo__c.intValue(); i++) {
        for (List<Integer> lst : listaRangeUsados) {
            if (lst.contains(i)) {
                novo.addError('Não é permitido!');
            }
        }
    }

}