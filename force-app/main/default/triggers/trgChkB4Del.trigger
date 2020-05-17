trigger trgChkB4Del on Contact (before delete) {

    //check the account in contact is not null
    if(Trigger.isBefore && Trigger.isDelete){
        for(Contact c : Trigger.old){
            if(c.AccountId == null){
                c.addError('cannot delete as it does not an associated account');
            }
        }
    }
    //if null rollback the tnx

}