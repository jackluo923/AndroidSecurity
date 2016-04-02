.class public Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSecurityEncryptor;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/ContextWrapper;)Lcom/taobao/securityjni/tools/DataContext;
    .locals 2

    invoke-static {p0}, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSsoLoginUtils;->init(Landroid/content/Context;)V

    new-instance v0, Lcom/taobao/securityjni/tools/DataContext;

    invoke-direct {v0}, Lcom/taobao/securityjni/tools/DataContext;-><init>()V

    invoke-static {p0}, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSsoLoginUtils;->getAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/securityjni/tools/DataContext;->extData:[B

    return-object v0
.end method

.method public static decrypt(Landroid/content/ContextWrapper;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Lcom/taobao/securityjni/UtilWX;

    invoke-direct {v0, p0}, Lcom/taobao/securityjni/UtilWX;-><init>(Landroid/content/ContextWrapper;)V

    invoke-static {p0}, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSecurityEncryptor;->a(Landroid/content/ContextWrapper;)Lcom/taobao/securityjni/tools/DataContext;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/taobao/securityjni/UtilWX;->Get(Ljava/lang/String;Lcom/taobao/securityjni/tools/DataContext;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static decrypt(Landroid/content/ContextWrapper;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSsoLoginUtils;->init(Landroid/content/Context;)V

    new-instance v0, Lcom/taobao/securityjni/UtilWX;

    invoke-direct {v0, p0}, Lcom/taobao/securityjni/UtilWX;-><init>(Landroid/content/ContextWrapper;)V

    invoke-virtual {v0, p1, p2}, Lcom/taobao/securityjni/UtilWX;->DecryptData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static decrypt(Landroid/content/ContextWrapper;[B)[B
    .locals 2

    new-instance v0, Lcom/taobao/securityjni/UtilWX;

    invoke-direct {v0, p0}, Lcom/taobao/securityjni/UtilWX;-><init>(Landroid/content/ContextWrapper;)V

    invoke-static {p0}, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSecurityEncryptor;->a(Landroid/content/ContextWrapper;)Lcom/taobao/securityjni/tools/DataContext;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/taobao/securityjni/UtilWX;->Get([BLcom/taobao/securityjni/tools/DataContext;)[B

    move-result-object v0

    return-object v0
.end method

.method public static decrypt(Landroid/content/ContextWrapper;[BLjava/lang/String;)[B
    .locals 2

    invoke-static {p0}, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSsoLoginUtils;->init(Landroid/content/Context;)V

    new-instance v0, Lcom/taobao/securityjni/UtilWX;

    invoke-direct {v0, p0}, Lcom/taobao/securityjni/UtilWX;-><init>(Landroid/content/ContextWrapper;)V

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/taobao/securityjni/UtilWX;->DecryptData([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static dynamicDecrypt(Landroid/content/ContextWrapper;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSsoLoginUtils;->init(Landroid/content/Context;)V

    new-instance v0, Lcom/taobao/securityjni/UtilWX;

    invoke-direct {v0, p0}, Lcom/taobao/securityjni/UtilWX;-><init>(Landroid/content/ContextWrapper;)V

    invoke-virtual {v0, p1}, Lcom/taobao/securityjni/UtilWX;->Get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static dynamicDecrypt(Landroid/content/ContextWrapper;[B)[B
    .locals 1

    invoke-static {p0}, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSsoLoginUtils;->init(Landroid/content/Context;)V

    new-instance v0, Lcom/taobao/securityjni/UtilWX;

    invoke-direct {v0, p0}, Lcom/taobao/securityjni/UtilWX;-><init>(Landroid/content/ContextWrapper;)V

    invoke-virtual {v0, p1}, Lcom/taobao/securityjni/UtilWX;->Get([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static dynamicEncrypt(Landroid/content/ContextWrapper;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSsoLoginUtils;->init(Landroid/content/Context;)V

    new-instance v0, Lcom/taobao/securityjni/UtilWX;

    invoke-direct {v0, p0}, Lcom/taobao/securityjni/UtilWX;-><init>(Landroid/content/ContextWrapper;)V

    invoke-virtual {v0, p1}, Lcom/taobao/securityjni/UtilWX;->Put(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static dynamicEncrypt(Landroid/content/ContextWrapper;[B)[B
    .locals 1

    invoke-static {p0}, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSsoLoginUtils;->init(Landroid/content/Context;)V

    new-instance v0, Lcom/taobao/securityjni/UtilWX;

    invoke-direct {v0, p0}, Lcom/taobao/securityjni/UtilWX;-><init>(Landroid/content/ContextWrapper;)V

    invoke-virtual {v0, p1}, Lcom/taobao/securityjni/UtilWX;->Put([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static encrypt(Landroid/content/ContextWrapper;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Lcom/taobao/securityjni/UtilWX;

    invoke-direct {v0, p0}, Lcom/taobao/securityjni/UtilWX;-><init>(Landroid/content/ContextWrapper;)V

    invoke-static {p0}, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSecurityEncryptor;->a(Landroid/content/ContextWrapper;)Lcom/taobao/securityjni/tools/DataContext;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/taobao/securityjni/UtilWX;->Put(Ljava/lang/String;Lcom/taobao/securityjni/tools/DataContext;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encrypt(Landroid/content/ContextWrapper;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSsoLoginUtils;->init(Landroid/content/Context;)V

    new-instance v0, Lcom/taobao/securityjni/UtilWX;

    invoke-direct {v0, p0}, Lcom/taobao/securityjni/UtilWX;-><init>(Landroid/content/ContextWrapper;)V

    invoke-virtual {v0, p1, p2}, Lcom/taobao/securityjni/UtilWX;->EncryptData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encrypt(Landroid/content/ContextWrapper;[B)[B
    .locals 2

    new-instance v0, Lcom/taobao/securityjni/UtilWX;

    invoke-direct {v0, p0}, Lcom/taobao/securityjni/UtilWX;-><init>(Landroid/content/ContextWrapper;)V

    invoke-static {p0}, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSecurityEncryptor;->a(Landroid/content/ContextWrapper;)Lcom/taobao/securityjni/tools/DataContext;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/taobao/securityjni/UtilWX;->Put([BLcom/taobao/securityjni/tools/DataContext;)[B

    move-result-object v0

    return-object v0
.end method

.method public static encrypt(Landroid/content/ContextWrapper;[BLjava/lang/String;)[B
    .locals 2

    invoke-static {p0}, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSsoLoginUtils;->init(Landroid/content/Context;)V

    new-instance v0, Lcom/taobao/securityjni/UtilWX;

    invoke-direct {v0, p0}, Lcom/taobao/securityjni/UtilWX;-><init>(Landroid/content/ContextWrapper;)V

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/taobao/securityjni/UtilWX;->EncryptData([B[B)[B

    move-result-object v0

    return-object v0
.end method
