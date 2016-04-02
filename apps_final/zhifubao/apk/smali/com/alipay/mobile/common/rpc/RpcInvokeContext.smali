.class public interface abstract Lcom/alipay/mobile/common/rpc/RpcInvokeContext;
.super Ljava/lang/Object;
.source "RpcInvokeContext.java"


# virtual methods
.method public abstract getResponseHeaders()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract setAppKey(Ljava/lang/String;)V
.end method

.method public abstract setBgRpc(Z)V
.end method

.method public abstract setCompress(Z)V
.end method

.method public abstract setGwUrl(Ljava/lang/String;)V
.end method

.method public abstract setRequestHeaders(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setResetCookie(Z)V
.end method

.method public abstract setTimeout(J)V
.end method
