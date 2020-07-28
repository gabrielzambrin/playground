// This file is generated as an Apex representation of the
//     corresponding sObject and its fields.
// This read-only file is used by the Apex Language Server to
//     provide code smartness, and is deleted each time you
//     refresh your sObject definitions.
// To edit your sObjects and their fields, edit the corresponding
//     .object-meta.xml and .field-meta.xml files.

global class OrderItem {
    global Id Id;
    global Product2 Product2;
    global Id Product2Id;
    global Boolean IsDeleted;
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
    global Decimal TotalPrice;
    global Date ServiceDate;
    global Date EndDate;
    global String Description;
    global Datetime CreatedDate;
    global User CreatedBy;
    global Id CreatedById;
    global Datetime LastModifiedDate;
    global User LastModifiedBy;
    global Id LastModifiedById;
    global Datetime SystemModstamp;
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
    global List<AttachedContentDocument> AttachedContentDocuments;
    global List<CombinedAttachment> CombinedAttachments;
    global List<ContentDocumentLink> ContentDocumentLinks;
    global List<EntitySubscription> FeedSubscriptionsForEntity;
    global List<OrderItem> ChildOrderItems;
    global List<OrderItemFeed> Feeds;
    global List<OrderItemHistory> Histories;
    global List<ContentVersion> FirstPublishLocation;
    global List<FeedComment> Parent;
    global List<FlowRecordRelation> RelatedRecord;
    global List<OrderItemChangeEvent> OriginalOrderItem;

    global OrderItem () 
    {
    }
}