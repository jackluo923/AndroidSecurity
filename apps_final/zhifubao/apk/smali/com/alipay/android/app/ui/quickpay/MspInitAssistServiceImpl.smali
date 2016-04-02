.class public Lcom/alipay/android/app/ui/quickpay/MspInitAssistServiceImpl;
.super Lcom/alipay/android/app/MspInitAssistService;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/app/MspInitAssistService;-><init>()V

    return-void
.end method


# virtual methods
.method public initWhenServiceCreate()V
    .locals 1

    invoke-static {}, Lcom/alipay/android/app/assist/MspAssistUtil;->k()V

    :try_start_0
    invoke-static {}, Lcom/alipay/android/app/helper/MspConfig;->r()Lcom/alipay/android/app/helper/MspConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/helper/MspConfig;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/util/EditTextPostProcessor;->setRsaPublicKey(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public initWhenServiceFirstCreate(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public stopWhenServiceDestroy(Landroid/content/Context;)V
    .locals 0

    return-void
.end method
