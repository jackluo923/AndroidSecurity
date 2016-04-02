.class public Lcom/alipay/android/app/source/ResponseWrapperFactory;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/source/ResponseWrapperFactory$1;
    }
.end annotation


# direct methods
.method public static a(Ljava/lang/String;)Lcom/alipay/android/app/source/IResponseWrapper;
    .locals 2

    sget-object v0, Lcom/alipay/android/app/source/ResponseWrapperType;->NETWORK:Lcom/alipay/android/app/source/ResponseWrapperType;

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "http"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "https"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    sget-object v0, Lcom/alipay/android/app/source/ResponseWrapperType;->NETWORK:Lcom/alipay/android/app/source/ResponseWrapperType;

    :cond_1
    :goto_0
    sget-object v1, Lcom/alipay/android/app/source/ResponseWrapperFactory$1;->a:[I

    invoke-virtual {v0}, Lcom/alipay/android/app/source/ResponseWrapperType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/alipay/android/app/source/http/NetResponseWrapper;

    invoke-direct {v0}, Lcom/alipay/android/app/source/http/NetResponseWrapper;-><init>()V

    :goto_1
    return-object v0

    :cond_2
    const-string/jumbo v1, "file"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/alipay/android/app/source/ResponseWrapperType;->LOCAL:Lcom/alipay/android/app/source/ResponseWrapperType;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/alipay/android/app/source/ResponseWrapperType;->RPC:Lcom/alipay/android/app/source/ResponseWrapperType;

    goto :goto_0

    :pswitch_0
    new-instance v0, Lcom/alipay/android/app/source/rpc/RpcResponseWrapper;

    invoke-direct {v0}, Lcom/alipay/android/app/source/rpc/RpcResponseWrapper;-><init>()V

    goto :goto_1

    :pswitch_1
    new-instance v0, Lcom/alipay/android/app/source/local/LocalResponseWrapper;

    invoke-direct {v0}, Lcom/alipay/android/app/source/local/LocalResponseWrapper;-><init>()V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
