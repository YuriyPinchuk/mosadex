public with sharing class BufferAzureTriggerHandler extends TriggerHandler {
  
    public override void beforeInsert () {
        for(Buffer_Azure__c bA : (List<Buffer_Azure__c>) Trigger.new) {
           if (bA.Message_Type__c == 'Order'){
                createOrder(bA);
           } else if (bA.Message_Type__c == 'Patient') {
                createPatient(bA);
           } else {
                notRecognizedMessage(bA);
           }
        }
    }

    public static void createOrder (Buffer_Azure__c bufferAzure){
        
    }

    public static void createPatient (Buffer_Azure__c bufferAzure){
        
    }
    
    public static void notRecognizedMessage (Buffer_Azure__c bufferAzure){

    }
}
