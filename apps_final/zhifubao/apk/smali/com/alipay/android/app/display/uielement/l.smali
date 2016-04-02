.class final Lcom/alipay/android/app/display/uielement/l;
.super Lcom/alipay/android/app/display/event/MspEventArgs;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/display/uielement/BaseEditElement;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/display/uielement/BaseEditElement;Lcom/alipay/android/app/display/event/EventType;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/display/uielement/l;->a:Lcom/alipay/android/app/display/uielement/BaseEditElement;

    invoke-direct {p0, p2}, Lcom/alipay/android/app/display/event/MspEventArgs;-><init>(Lcom/alipay/android/app/display/event/EventType;)V

    return-void
.end method


# virtual methods
.method public final getEventScript(Lcom/alipay/android/lib/plusin/script/EventScriptType;)Lcom/alipay/android/app/event/IEventArgs$EventScript;
    .locals 4

    new-instance v0, Lcom/alipay/android/app/event/IEventArgs$EventScript;

    sget-object v1, Lcom/alipay/android/lib/plusin/script/EventScriptOperation;->Sentence:Lcom/alipay/android/lib/plusin/script/EventScriptOperation;

    iget-object v2, p0, Lcom/alipay/android/app/display/uielement/l;->a:Lcom/alipay/android/app/display/uielement/BaseEditElement;

    invoke-virtual {p0}, Lcom/alipay/android/app/display/uielement/l;->getEventType()Lcom/alipay/android/app/display/event/EventType;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/android/app/display/uielement/BaseEditElement;->a(Lcom/alipay/android/app/display/event/EventType;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/app/event/IEventArgs$EventScript;-><init>(Lcom/alipay/android/lib/plusin/script/EventScriptOperation;Ljava/lang/String;)V

    return-object v0
.end method
