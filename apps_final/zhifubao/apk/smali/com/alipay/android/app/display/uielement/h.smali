.class final Lcom/alipay/android/app/display/uielement/h;
.super Lcom/alipay/android/app/display/event/MspEventArgs;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/alipay/android/app/display/uielement/g;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/display/uielement/g;Lcom/alipay/android/app/display/event/EventType;Z)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/display/uielement/h;->b:Lcom/alipay/android/app/display/uielement/g;

    iput-boolean p3, p0, Lcom/alipay/android/app/display/uielement/h;->a:Z

    invoke-direct {p0, p2}, Lcom/alipay/android/app/display/event/MspEventArgs;-><init>(Lcom/alipay/android/app/display/event/EventType;)V

    return-void
.end method


# virtual methods
.method public final getEventScript(Lcom/alipay/android/lib/plusin/script/EventScriptType;)Lcom/alipay/android/app/event/IEventArgs$EventScript;
    .locals 3

    iget-boolean v0, p0, Lcom/alipay/android/app/display/uielement/h;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/h;->b:Lcom/alipay/android/app/display/uielement/g;

    iget-object v0, v0, Lcom/alipay/android/app/display/uielement/g;->a:Lcom/alipay/android/app/display/uielement/BaseEditElement;

    sget-object v1, Lcom/alipay/android/app/display/event/EventType;->Focus:Lcom/alipay/android/app/display/event/EventType;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/display/uielement/BaseEditElement;->a(Lcom/alipay/android/app/display/event/EventType;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Lcom/alipay/android/app/event/IEventArgs$EventScript;

    sget-object v2, Lcom/alipay/android/lib/plusin/script/EventScriptOperation;->Sentence:Lcom/alipay/android/lib/plusin/script/EventScriptOperation;

    invoke-direct {v1, v2, v0}, Lcom/alipay/android/app/event/IEventArgs$EventScript;-><init>(Lcom/alipay/android/lib/plusin/script/EventScriptOperation;Ljava/lang/String;)V

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/h;->b:Lcom/alipay/android/app/display/uielement/g;

    iget-object v0, v0, Lcom/alipay/android/app/display/uielement/g;->a:Lcom/alipay/android/app/display/uielement/BaseEditElement;

    sget-object v1, Lcom/alipay/android/app/display/event/EventType;->FocusClosed:Lcom/alipay/android/app/display/event/EventType;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/display/uielement/BaseEditElement;->a(Lcom/alipay/android/app/display/event/EventType;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
