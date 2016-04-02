.class final Lcom/alipay/android/app/pay/f;
.super Lcom/alipay/android/app/display/event/MspEventArgs;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/pay/MainActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/pay/MainActivity;Lcom/alipay/android/app/display/event/EventType;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/pay/f;->a:Lcom/alipay/android/app/pay/MainActivity;

    invoke-direct {p0, p2}, Lcom/alipay/android/app/display/event/MspEventArgs;-><init>(Lcom/alipay/android/app/display/event/EventType;)V

    return-void
.end method


# virtual methods
.method public final getEventScript(Lcom/alipay/android/lib/plusin/script/EventScriptType;)Lcom/alipay/android/app/event/IEventArgs$EventScript;
    .locals 4

    new-instance v0, Lcom/alipay/android/app/event/IEventArgs$EventScript;

    sget-object v1, Lcom/alipay/android/lib/plusin/script/EventScriptOperation;->Function:Lcom/alipay/android/lib/plusin/script/EventScriptOperation;

    iget-object v2, p0, Lcom/alipay/android/app/pay/f;->a:Lcom/alipay/android/app/pay/MainActivity;

    invoke-static {v2}, Lcom/alipay/android/app/pay/MainActivity;->a(Lcom/alipay/android/app/pay/MainActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/app/event/IEventArgs$EventScript;-><init>(Lcom/alipay/android/lib/plusin/script/EventScriptOperation;Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "close"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/event/IEventArgs$EventScript;->a([Ljava/lang/Object;)V

    return-object v0
.end method
