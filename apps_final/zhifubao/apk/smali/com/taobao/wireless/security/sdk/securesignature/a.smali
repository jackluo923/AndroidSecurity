.class public final Lcom/taobao/wireless/security/sdk/securesignature/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/taobao/wireless/security/sdk/securesignature/ISecureSignatureComponent;


# instance fields
.field private a:Lcom/taobao/wireless/security/adapter/j/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/taobao/wireless/security/adapter/j/b;

    invoke-direct {v0}, Lcom/taobao/wireless/security/adapter/j/b;-><init>()V

    iput-object v0, p0, Lcom/taobao/wireless/security/sdk/securesignature/a;->a:Lcom/taobao/wireless/security/adapter/j/b;

    return-void
.end method


# virtual methods
.method public final signRequest(Lcom/taobao/wireless/security/sdk/SecurityGuardParamContext;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/taobao/wireless/security/sdk/SecurityGuardParamContext;->paramMap:Ljava/util/Map;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    new-instance v1, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;

    invoke-direct {v1}, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;-><init>()V

    iget-object v2, p1, Lcom/taobao/wireless/security/sdk/SecurityGuardParamContext;->appKey:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;->appKey:Ljava/lang/String;

    iget-object v2, p1, Lcom/taobao/wireless/security/sdk/SecurityGuardParamContext;->paramMap:Ljava/util/Map;

    iput-object v2, v1, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;->paramMap:Ljava/util/Map;

    iget v2, p1, Lcom/taobao/wireless/security/sdk/SecurityGuardParamContext;->requestType:I

    iput v2, v1, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;->requestType:I

    iget-object v2, p1, Lcom/taobao/wireless/security/sdk/SecurityGuardParamContext;->reserved1:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;->reserved1:Ljava/lang/String;

    iget-object v2, p1, Lcom/taobao/wireless/security/sdk/SecurityGuardParamContext;->reserved2:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;->reserved2:Ljava/lang/String;

    iget-object v2, p0, Lcom/taobao/wireless/security/sdk/securesignature/a;->a:Lcom/taobao/wireless/security/adapter/j/b;

    const-string/jumbo v3, ""

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v1, v3, v4}, Lcom/taobao/wireless/security/adapter/j/b;->a(Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
