.class final Lcom/alipay/android/app/display/uielement/q;
.super Lcom/alipay/android/app/display/event/ToastEventArgs;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/display/uielement/BaseElement;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/display/uielement/BaseElement;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/display/uielement/q;->a:Lcom/alipay/android/app/display/uielement/BaseElement;

    invoke-direct {p0}, Lcom/alipay/android/app/display/event/ToastEventArgs;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDataByKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/q;->a:Lcom/alipay/android/app/display/uielement/BaseElement;

    const-string/jumbo v1, "toast_message"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/display/uielement/BaseElement;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getEventScript(Lcom/alipay/android/lib/plusin/script/EventScriptType;)Lcom/alipay/android/app/event/IEventArgs$EventScript;
    .locals 4

    new-instance v0, Lcom/alipay/android/app/event/IEventArgs$EventScript;

    sget-object v1, Lcom/alipay/android/lib/plusin/script/EventScriptOperation;->Sentence:Lcom/alipay/android/lib/plusin/script/EventScriptOperation;

    iget-object v2, p0, Lcom/alipay/android/app/display/uielement/q;->a:Lcom/alipay/android/app/display/uielement/BaseElement;

    invoke-virtual {p0}, Lcom/alipay/android/app/display/uielement/q;->getEventType()Lcom/alipay/android/app/display/event/EventType;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/android/app/display/uielement/BaseElement;->a(Lcom/alipay/android/app/display/event/EventType;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/app/event/IEventArgs$EventScript;-><init>(Lcom/alipay/android/lib/plusin/script/EventScriptOperation;Ljava/lang/String;)V

    return-object v0
.end method
