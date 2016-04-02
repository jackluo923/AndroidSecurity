.class public Lcom/alipay/mobile/security/authcenter/service/TaobaoBlackboxServiceImpl;
.super Lcom/alipay/mobile/framework/service/ext/security/TaobaoBlackboxService;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/security/TaobaoBlackboxService;-><init>()V

    return-void
.end method


# virtual methods
.method public decrypt(Landroid/content/ContextWrapper;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1, p2}, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSecurityEncryptor;->decrypt(Landroid/content/ContextWrapper;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public decrypt(Landroid/content/ContextWrapper;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1, p2, p3}, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSecurityEncryptor;->decrypt(Landroid/content/ContextWrapper;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public decrypt(Landroid/content/ContextWrapper;[B)[B
    .locals 1

    invoke-static {p1, p2}, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSecurityEncryptor;->decrypt(Landroid/content/ContextWrapper;[B)[B

    move-result-object v0

    return-object v0
.end method

.method public decrypt(Landroid/content/ContextWrapper;[BLjava/lang/String;)[B
    .locals 1

    invoke-static {p1, p2, p3}, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSecurityEncryptor;->decrypt(Landroid/content/ContextWrapper;[BLjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public dynamicDecrypt(Landroid/content/ContextWrapper;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1, p2}, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSecurityEncryptor;->dynamicDecrypt(Landroid/content/ContextWrapper;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public dynamicDecrypt(Landroid/content/ContextWrapper;[B)[B
    .locals 1

    invoke-static {p1, p2}, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSecurityEncryptor;->decrypt(Landroid/content/ContextWrapper;[B)[B

    move-result-object v0

    return-object v0
.end method

.method public dynamicEncrypt(Landroid/content/ContextWrapper;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1, p2}, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSecurityEncryptor;->dynamicEncrypt(Landroid/content/ContextWrapper;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public dynamicEncrypt(Landroid/content/ContextWrapper;[B)[B
    .locals 1

    invoke-static {p1, p2}, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSecurityEncryptor;->encrypt(Landroid/content/ContextWrapper;[B)[B

    move-result-object v0

    return-object v0
.end method

.method public encrypt(Landroid/content/ContextWrapper;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1, p2}, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSecurityEncryptor;->encrypt(Landroid/content/ContextWrapper;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encrypt(Landroid/content/ContextWrapper;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1, p2, p3}, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSecurityEncryptor;->encrypt(Landroid/content/ContextWrapper;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encrypt(Landroid/content/ContextWrapper;[B)[B
    .locals 1

    invoke-static {p1, p2}, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSecurityEncryptor;->encrypt(Landroid/content/ContextWrapper;[B)[B

    move-result-object v0

    return-object v0
.end method

.method public encrypt(Landroid/content/ContextWrapper;[BLjava/lang/String;)[B
    .locals 1

    invoke-static {p1, p2, p3}, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSecurityEncryptor;->encrypt(Landroid/content/ContextWrapper;[BLjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method
