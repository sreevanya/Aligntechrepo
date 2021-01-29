trigger updatetrigger on doctor__c (after update,after delete) {
  /*  public list<patient__c> plist=new list<patient__c>();
    public patient__c plist=new patient__c();
if(trigger.isupdate&&trigger.isafter){
    for( doctor__c d:trigger.old){
         plist=[select name,id from patient__c where name=d.name]; 
         for(doctor__c dn:trigger.new){
         plist.name=dn.name;
         update plist;
         }  
    }



}*/

}