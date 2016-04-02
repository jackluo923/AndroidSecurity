.class Lcom/alipay/android/app/pay/ActivityWindowScriptable$4$1;
.super Lcom/alipay/android/app/display/event/MspEventArgs;


# instance fields
.field final synthetic this$1:Lcom/alipay/android/app/pay/ActivityWindowScriptable$4;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/pay/ActivityWindowScriptable$4;Lcom/alipay/android/app/display/event/EventType;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/pay/ActivityWindowScriptable$4$1;->this$1:Lcom/alipay/android/app/pay/ActivityWindowScriptable$4;

    invoke-direct {p0, p2}, Lcom/alipay/android/app/display/event/MspEventArgs;-><init>(Lcom/alipay/android/app/display/event/EventType;)V

    return-void
.end method


# virtual methods
.method public getEventScript(Lcom/alipay/android/lib/plusin/script/EventScriptType;)Lcom/alipay/android/app/event/IEventArgs$EventScript;
    .locals 4

    iget-object v0, p0, Lcom/alipay/android/app/pay/ActivityWindowScriptable$4$1;->this$1:Lcom/alipay/android/app/pay/ActivityWindowScriptable$4;

    iget-object v0, v0, Lcom/alipay/android/app/pay/ActivityWindowScriptable$4;->val$positiveButton:Lcom/alipay/android/app/display/uielement/UIButtonGroup$UIButtonItem;

    iget-object v0, v0, Lcom/alipay/android/app/display/uielement/UIButtonGroup$UIButtonItem;->e:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/alipay/android/app/event/IEventArgs$EventScript;

    sget-object v2, Lcom/alipay/android/lib/plusin/script/EventScriptOperation;->Sentence:Lcom/alipay/android/lib/plusin/script/EventScriptOperation;

    iget-object v0, p0, Lcom/alipay/android/app/pay/ActivityWindowScriptable$4$1;->this$1:Lcom/alipay/android/app/pay/ActivityWindowScriptable$4;

    iget-object v0, v0, Lcom/alipay/android/app/pay/ActivityWindowScriptable$4;->val$positiveButton:Lcom/alipay/android/app/display/uielement/UIButtonGroup$UIButtonItem;

    iget-object v0, v0, Lcom/alipay/android/app/display/uielement/UIButtonGroup$UIButtonItem;->e:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/alipay/android/app/pay/ActivityWindowScriptable$4$1;->getEventType()Lcom/alipay/android/app/display/event/EventType;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Lcom/alipay/android/app/event/IEventArgs$EventScript;-><init>(Lcom/alipay/android/lib/plusin/script/EventScriptOperation;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method
