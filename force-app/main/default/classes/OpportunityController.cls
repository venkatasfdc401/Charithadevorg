public class OpportunityController{
public String currentRecordId {get;set;}
public String state {get;set;}
public String src {get;set;}
public List<Opportunity> oppList{get;set;}
 
    public OpportunityController(ApexPages.StandardController controller) {
        currentRecordId  = ApexPages.CurrentPage().getparameters().get('id');
        oppList = [select id ,name, Account.BillingState from Opportunity where id =: currentRecordId limit 1];
        if(!oppList.isEmpty()){
           state = oppList[0].Account.BillingState;
           if(State == 'GA' || State == 'TN' || State == 'FL')
           src = system.label.GWSRC;
           else
           src = system.label.SNSSRC;
        }
    }
}