.class public Lcom/alipay/android/lib/plusin/ui/TransWindowData;
.super Lcom/alipay/android/lib/plusin/ui/WindowData;


# direct methods
.method protected constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/alipay/android/app/net/Request;

    sget-object v1, Lcom/alipay/android/app/helper/ProtocolType;->Msp:Lcom/alipay/android/app/helper/ProtocolType;

    invoke-direct {v0, v2, v2, v2, v1}, Lcom/alipay/android/app/net/Request;-><init>(Lcom/alipay/android/app/net/Envelope;Lcom/alipay/android/app/json/JSONObject;Lcom/alipay/android/app/data/InteractionData;Lcom/alipay/android/app/helper/ProtocolType;)V

    new-instance v1, Lcom/alipay/android/app/net/Response;

    invoke-direct {v1}, Lcom/alipay/android/app/net/Response;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/alipay/android/lib/plusin/ui/WindowData;-><init>(Lcom/alipay/android/app/net/Request;Lcom/alipay/android/app/net/Response;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final c()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
