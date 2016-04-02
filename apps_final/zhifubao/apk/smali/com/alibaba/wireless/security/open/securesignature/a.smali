.class public final Lcom/alibaba/wireless/security/open/securesignature/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/wireless/security/open/securesignature/ISecureSignatureComponent;


# instance fields
.field private a:Lcom/taobao/wireless/security/adapter/j/b;

.field private b:Landroid/content/ContextWrapper;


# direct methods
.method public constructor <init>(Landroid/content/ContextWrapper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/wireless/security/open/securesignature/a;->b:Landroid/content/ContextWrapper;

    new-instance v0, Lcom/taobao/wireless/security/adapter/j/b;

    invoke-direct {v0}, Lcom/taobao/wireless/security/adapter/j/b;-><init>()V

    iput-object v0, p0, Lcom/alibaba/wireless/security/open/securesignature/a;->a:Lcom/taobao/wireless/security/adapter/j/b;

    iput-object p1, p0, Lcom/alibaba/wireless/security/open/securesignature/a;->b:Landroid/content/ContextWrapper;

    return-void
.end method


# virtual methods
.method public final getSafeCookie(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/16 v3, 0x2bb

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/wireless/security/open/securesignature/a;->b:Landroid/content/ContextWrapper;

    invoke-static {v0}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v2, "INPUT"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;

    invoke-direct {v2}, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;-><init>()V

    iput-object p2, v2, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;->appKey:Ljava/lang/String;

    iput-object v1, v2, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;->paramMap:Ljava/util/Map;

    const/4 v1, 0x3

    iput v1, v2, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;->requestType:I

    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getSecureSignatureComp()Lcom/alibaba/wireless/security/open/securesignature/ISecureSignatureComponent;

    move-result-object v1

    invoke-interface {v1, v2, p3}, Lcom/alibaba/wireless/security/open/securesignature/ISecureSignatureComponent;->signRequest(Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getStaticDataEncryptComp()Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;

    move-result-object v0

    const/16 v2, 0x10

    invoke-interface {v0, v2, p2, v1, p3}, Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;->staticSafeEncrypt(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "AE001"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/SecException;->getErrorCode()I

    move-result v1

    const/16 v2, 0x258

    if-le v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/SecException;->getErrorCode()I

    move-result v1

    if-ge v1, v3, :cond_0

    throw v0

    :cond_0
    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/SecException;->getErrorCode()I

    move-result v1

    const/16 v2, 0x12e

    if-ne v1, v2, :cond_1

    new-instance v0, Lcom/alibaba/wireless/security/open/SecException;

    const/16 v1, 0x25f

    invoke-direct {v0, v1}, Lcom/alibaba/wireless/security/open/SecException;-><init>(I)V

    throw v0

    :cond_1
    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/SecException;->getErrorCode()I

    move-result v1

    const/16 v2, 0x12f

    if-ne v1, v2, :cond_2

    new-instance v0, Lcom/alibaba/wireless/security/open/SecException;

    const/16 v1, 0x260

    invoke-direct {v0, v1}, Lcom/alibaba/wireless/security/open/SecException;-><init>(I)V

    throw v0

    :cond_2
    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/SecException;->getErrorCode()I

    move-result v1

    const/16 v2, 0x130

    if-ne v1, v2, :cond_3

    new-instance v0, Lcom/alibaba/wireless/security/open/SecException;

    const/16 v1, 0x261

    invoke-direct {v0, v1}, Lcom/alibaba/wireless/security/open/SecException;-><init>(I)V

    throw v0

    :cond_3
    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/SecException;->getErrorCode()I

    move-result v1

    const/16 v2, 0x131

    if-ne v1, v2, :cond_4

    new-instance v0, Lcom/alibaba/wireless/security/open/SecException;

    const/16 v1, 0x262

    invoke-direct {v0, v1}, Lcom/alibaba/wireless/security/open/SecException;-><init>(I)V

    throw v0

    :cond_4
    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/SecException;->getErrorCode()I

    move-result v1

    const/16 v2, 0x132

    if-ne v1, v2, :cond_5

    new-instance v0, Lcom/alibaba/wireless/security/open/SecException;

    const/16 v1, 0x263

    invoke-direct {v0, v1}, Lcom/alibaba/wireless/security/open/SecException;-><init>(I)V

    throw v0

    :cond_5
    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/SecException;->getErrorCode()I

    move-result v1

    const/16 v2, 0x133

    if-ne v1, v2, :cond_6

    new-instance v0, Lcom/alibaba/wireless/security/open/SecException;

    const/16 v1, 0x264

    invoke-direct {v0, v1}, Lcom/alibaba/wireless/security/open/SecException;-><init>(I)V

    throw v0

    :cond_6
    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/SecException;->getErrorCode()I

    move-result v0

    const/16 v1, 0x134

    if-ne v0, v1, :cond_7

    new-instance v0, Lcom/alibaba/wireless/security/open/SecException;

    const/16 v1, 0x25a

    invoke-direct {v0, v1}, Lcom/alibaba/wireless/security/open/SecException;-><init>(I)V

    throw v0

    :cond_7
    new-instance v0, Lcom/alibaba/wireless/security/open/SecException;

    invoke-direct {v0, v3}, Lcom/alibaba/wireless/security/open/SecException;-><init>(I)V

    throw v0
.end method

.method public final signRequest(Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;->paramMap:Ljava/util/Map;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/alibaba/wireless/security/open/securesignature/a;->a:Lcom/taobao/wireless/security/adapter/j/b;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/taobao/wireless/security/adapter/j/b;->a(Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
