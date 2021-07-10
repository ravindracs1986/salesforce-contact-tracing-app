public with sharing class CTLocationTriggerHandler {
   
    public static void beforeInsert(List<Location__c> newRecords){
        for (Location__c location : newRecords) {
            location.Status__c = 'Green';
        }
    }


    public static void beforeUpdate(List<Location__c> newRecords, Map<Id, Location__c> oldRecordMap){
        for (Location__c location : newRecords) {
            if(location.Status__c != oldRecordMap.get(location.Id).Status__c){
                location.Status_Update_Date__c = Date.today();
            }
        }
    }


}
