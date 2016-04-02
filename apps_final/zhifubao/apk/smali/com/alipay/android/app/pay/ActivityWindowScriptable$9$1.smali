.class Lcom/alipay/android/app/pay/ActivityWindowScriptable$9$1;
.super Lcom/alipay/android/app/display/event/MspEventArgs;


# instance fields
.field final synthetic this$1:Lcom/alipay/android/app/pay/ActivityWindowScriptable$9;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/pay/ActivityWindowScriptable$9;Lcom/alipay/android/app/display/event/EventType;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/pay/ActivityWindowScriptable$9$1;->this$1:Lcom/alipay/android/app/pay/ActivityWindowScriptable$9;

    invoke-direct {p0, p2}, Lcom/alipay/android/app/display/event/MspEventArgs;-><init>(Lcom/alipay/android/app/display/event/EventType;)V

    return-void
.end method


# virtual methods
.method public getEventScript(Lcom/alipay/android/lib/plusin/script/EventScriptType;)Lcom/alipay/android/app/event/IEventArgs$EventScript;
    .locals 3

    new-instance v0, Lcom/alipay/android/app/event/IEventArgs$EventScript;

    sget-object v1, Lcom/alipay/android/lib/plusin/script/EventScriptOperation;->Function:Lcom/alipay/android/lib/plusin/script/EventScriptOperation;

    iget-object v2, p0, Lcom/alipay/android/app/pay/ActivityWindowScriptable$9$1;->this$1:Lcom/alipay/android/app/pay/ActivityWindowScriptable$9;

    iget-object v2, v2, Lcom/alipay/android/app/pay/ActivityWindowScriptable$9;->val$function2:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/app/event/IEventArgs$EventScript;-><init>(Lcom/alipay/android/lib/plusin/script/EventScriptOperation;Ljava/lang/String;)V

    return-object v0
.end method
