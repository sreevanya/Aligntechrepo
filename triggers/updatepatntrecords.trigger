trigger updatepatntrecords on patient_name__c (after insert,after delete) {
set<id> setid=new set<id>();
list<doctor__c>doctorlist=new list<doctor__c>();



}