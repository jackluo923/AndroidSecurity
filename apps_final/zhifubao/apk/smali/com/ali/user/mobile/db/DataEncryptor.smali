.class public Lcom/ali/user/mobile/db/DataEncryptor;
.super Ljava/lang/Object;
.source "DataEncryptor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/ContextWrapper;)Lcom/taobao/securityjni/tools/DataContext;
    .locals 2

    .prologue
    .line 53
    invoke-static {p0}, Lcom/alipay/android/phone/mobilesdk/storage/encryption/SsoLoginUtils;->init(Landroid/content/Context;)V

    .line 54
    new-instance v0, Lcom/taobao/securityjni/tools/DataContext;

    invoke-direct {v0}, Lcom/taobao/securityjni/tools/DataContext;-><init>()V

    .line 55
    const-string/jumbo v1, "12501616"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/securityjni/tools/DataContext;->extData:[B

    .line 56
    return-object v0
.end method

.method public static decrypt(Landroid/content/ContextWrapper;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 25
    new-instance v0, Lcom/taobao/securityjni/UtilWX;

    invoke-direct {v0, p0}, Lcom/taobao/securityjni/UtilWX;-><init>(Landroid/content/ContextWrapper;)V

    invoke-static {p0}, Lcom/ali/user/mobile/db/DataEncryptor;->a(Landroid/content/ContextWrapper;)Lcom/taobao/securityjni/tools/DataContext;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/taobao/securityjni/UtilWX;->Get(Ljava/lang/String;Lcom/taobao/securityjni/tools/DataContext;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static dynamicDecrypt(Landroid/content/ContextWrapper;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    invoke-static {p0}, Lcom/alipay/android/phone/mobilesdk/storage/encryption/SsoLoginUtils;->init(Landroid/content/Context;)V

    .line 43
    new-instance v0, Lcom/taobao/securityjni/UtilWX;

    invoke-direct {v0, p0}, Lcom/taobao/securityjni/UtilWX;-><init>(Landroid/content/ContextWrapper;)V

    invoke-virtual {v0, p1}, Lcom/taobao/securityjni/UtilWX;->Get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static dynamicEncrypt(Landroid/content/ContextWrapper;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    invoke-static {p0}, Lcom/alipay/android/phone/mobilesdk/storage/encryption/SsoLoginUtils;->init(Landroid/content/Context;)V

    .line 34
    new-instance v0, Lcom/taobao/securityjni/UtilWX;

    invoke-direct {v0, p0}, Lcom/taobao/securityjni/UtilWX;-><init>(Landroid/content/ContextWrapper;)V

    invoke-virtual {v0, p1}, Lcom/taobao/securityjni/UtilWX;->Put(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encrypt(Landroid/content/ContextWrapper;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 17
    new-instance v0, Lcom/taobao/securityjni/UtilWX;

    invoke-direct {v0, p0}, Lcom/taobao/securityjni/UtilWX;-><init>(Landroid/content/ContextWrapper;)V

    invoke-static {p0}, Lcom/ali/user/mobile/db/DataEncryptor;->a(Landroid/content/ContextWrapper;)Lcom/taobao/securityjni/tools/DataContext;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/taobao/securityjni/UtilWX;->Put(Ljava/lang/String;Lcom/taobao/securityjni/tools/DataContext;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
