.class public abstract Lcom/alipay/mobile/framework/service/ext/security/RSAService;
.super Lcom/alipay/mobile/framework/service/ext/ExternalService;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/ExternalService;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract RSAEncrypt(Ljava/lang/String;Z)Ljava/lang/String;
.end method

.method public abstract getRsaKey()Ljava/lang/String;
.end method

.method public abstract getRsaTS()Ljava/lang/String;
.end method

.method public abstract getSafeRSATS()J
.end method
