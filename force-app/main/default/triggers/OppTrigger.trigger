trigger OppTrigger on Opportunity (after insert, after update) {

for(Opportunity opp : trigger.new){
    /*if(opp.stageName != Trigger.oldMap.get(opp.Id).StageName && trigger.oldmap.get(opp.Id).StageName == 'Closed Won'){
        //create  new insurance policy 
        FinServ__FinancialAccount__c finAccount = new FinServ__FinancialAccount__c();
        
        
        //create new membership financial account
        FinServ__FinancialAccount__c memAccount = new FinServ__FinancialAccount__c();
    }*/
}

}