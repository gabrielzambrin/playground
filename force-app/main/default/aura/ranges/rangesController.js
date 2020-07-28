({
    doInit : function(component, event, helper) {
        var action = component.get("c.comparar");
        
        action.setCallback(this, function(response) {
            var state = response.getState();
            if (state === "SUCCESS") {
                console.log(response.getReturnValue());

            } else if (state === "ERROR") {
                var errors = response.getError();
                var message = '';
                if (errors) {
                    if (errors[0] && errors[0].pageErrors[0]) {
                        console.log("Error message: " + errors[0].pageErrors[0].message);
                        message = errors[0].pageErrors[0].message;
                    }
                }
                var toastEvent = $A.get("e.force:showToast");
                toastEvent.setParams({
                    message: "Erro ao clonar orçamento: " + message,
                    type: "error"
                });

                toastEvent.fire();
                $A.get("e.force:closeQuickAction").fire();
            }
        });
        $A.enqueueAction(action);
    },
    close: function(component, event, helper){
        $A.get("e.force:closeQuickAction").fire();
    }
})