.class public final Lcom/alipay/pushsdk/push/c/c;
.super Ljava/lang/Object;
.source "PacketFactory.java"


# direct methods
.method public static a(I)Lcom/alipay/pushsdk/push/c/a;
    .locals 3

    .prologue
    .line 10
    sget v0, Lcom/alipay/pushsdk/push/c/b;->a:I

    if-ne v0, p0, :cond_0

    .line 11
    new-instance v0, Lcom/alipay/pushsdk/push/c/d;

    invoke-direct {v0}, Lcom/alipay/pushsdk/push/c/d;-><init>()V

    .line 19
    :goto_0
    return-object v0

    .line 12
    :cond_0
    sget v0, Lcom/alipay/pushsdk/push/c/b;->c:I

    if-ne v0, p0, :cond_1

    .line 13
    new-instance v0, Lcom/alipay/pushsdk/push/c/e;

    invoke-direct {v0}, Lcom/alipay/pushsdk/push/c/e;-><init>()V

    goto :goto_0

    .line 15
    :cond_1
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Don\'t support this protovern:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method
