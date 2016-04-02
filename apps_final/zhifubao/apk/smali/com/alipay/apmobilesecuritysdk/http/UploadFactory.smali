.class public Lcom/alipay/apmobilesecuritysdk/http/UploadFactory;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;Lcom/alipay/apmobilesecuritysdk/http/UploadFactory$Mode;)Lcom/alipay/apmobilesecuritysdk/http/IUpload;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/alipay/apmobilesecuritysdk/http/WalletRPCUpload;->getInstance(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/http/WalletRPCUpload;

    move-result-object v0

    goto :goto_0
.end method
