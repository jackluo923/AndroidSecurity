.class public abstract Lcom/alipay/android/app/hardwarepay/base/AbstractHardwarePay;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/android/app/hardwarepay/base/IHardwarePay;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createRequestJson(IILjava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v1, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v1}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v0, "type"

    invoke-virtual {v1, v0, p1}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;I)V

    const-string/jumbo v0, "version"

    invoke-virtual {v1, v0, p2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;I)V

    const-string/jumbo v0, "data"

    invoke-virtual {v1, v0, p3}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v1}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
