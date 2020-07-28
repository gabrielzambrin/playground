// This file is generated as an Apex representation of the
//     corresponding sObject and its fields.
// This read-only file is used by the Apex Language Server to
//     provide code smartness, and is deleted each time you
//     refresh your sObject definitions.
// To edit your sObjects and their fields, edit the corresponding
//     .object-meta.xml and .field-meta.xml files.

global class OrderItemChangeEvent {
    global Id Id;
    global String ReplayId;
    global Object ChangeEventHeader;
    global Order Order;
    global Id OrderId;
    global PricebookEntry PricebookEntry;
    global Id PricebookEntryId;
    global OrderItem OriginalOrderItem;
    global Id OriginalOrderItemId;
    global Double AvailableQuantity;
    global Double Quantity;
    global Decimal UnitPrice;
    global Decimal ListPrice;
    global Date ServiceDate;
    global Date EndDate;
    global String Description;
    global Datetime CreatedDate;
    global User CreatedBy;
    global Id CreatedById;
    global Datetime LastModifiedDate;
    global User LastModifiedBy;
    global Id LastModifiedById;
    global String OrderItemNumber;
    global String colorTheme__c;
    /* If the bouquet has a fragrance, what does it smell like?
    */
    global String fragrance__c;
    global String glow__c;
    /* The number of flowers in the bouquet
    */
    global Double numberOfFlowers__c;
    /* How open are the flowers in the bouquet?
    */
    global Double percentOfOpening__c;

    global OrderItemChangeEvent () 
    {
    }
}