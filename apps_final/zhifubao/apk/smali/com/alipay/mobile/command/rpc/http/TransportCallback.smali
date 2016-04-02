.class public abstract Lcom/alipay/mobile/command/rpc/http/TransportCallback;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelled(Lcom/alipay/mobile/command/model/Request;)V
    .locals 0

    return-void
.end method

.method public onFailed(Lcom/alipay/mobile/command/model/Request;ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public abstract onPostExecute(Lcom/alipay/mobile/command/model/Request;Lcom/alipay/mobile/command/model/Response;)V
.end method

.method public onPreExecute(Lcom/alipay/mobile/command/model/Request;)V
    .locals 0

    return-void
.end method

.method public abstract onProgressUpdate(Lcom/alipay/mobile/command/model/Request;D)V
.end method
