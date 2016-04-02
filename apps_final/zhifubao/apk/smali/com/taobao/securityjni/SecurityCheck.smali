.class public Lcom/taobao/securityjni/SecurityCheck;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/taobao/wireless/security/sdk/indiekit/IIndieKitComponent;


# instance fields
.field private a:Lcom/taobao/wireless/security/sdk/indiekit/IIndieKitComponent;


# direct methods
.method public constructor <init>(Landroid/content/ContextWrapper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/taobao/wireless/security/sdk/SecurityGuardManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getIndieKitComp()Lcom/taobao/wireless/security/sdk/indiekit/IIndieKitComponent;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/securityjni/SecurityCheck;->a:Lcom/taobao/wireless/security/sdk/indiekit/IIndieKitComponent;

    :cond_0
    return-void
.end method


# virtual methods
.method public getCheckSignature(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Lcom/taobao/securityjni/tools/DataContext;

    invoke-direct {v0}, Lcom/taobao/securityjni/tools/DataContext;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Lcom/taobao/securityjni/tools/DataContext;->index:I

    invoke-virtual {p0, p1, v0}, Lcom/taobao/securityjni/SecurityCheck;->getCheckSignature(Ljava/lang/String;Lcom/taobao/securityjni/tools/DataContext;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCheckSignature(Ljava/lang/String;Lcom/taobao/securityjni/tools/DataContext;)Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/taobao/securityjni/SecurityCheck;->a:Lcom/taobao/wireless/security/sdk/indiekit/IIndieKitComponent;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v2, "timestamp"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/taobao/wireless/security/sdk/SecurityGuardParamContext;

    invoke-direct {v2}, Lcom/taobao/wireless/security/sdk/SecurityGuardParamContext;-><init>()V

    iput-object v0, v2, Lcom/taobao/wireless/security/sdk/SecurityGuardParamContext;->paramMap:Ljava/util/Map;

    const/4 v0, 0x1

    iput v0, v2, Lcom/taobao/wireless/security/sdk/SecurityGuardParamContext;->requestType:I

    iget-object v0, p2, Lcom/taobao/securityjni/tools/DataContext;->extData:[B

    if-eqz v0, :cond_2

    const-string/jumbo v0, ""

    iget-object v3, p2, Lcom/taobao/securityjni/tools/DataContext;->extData:[B

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/String;

    iget-object v1, p2, Lcom/taobao/securityjni/tools/DataContext;->extData:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    iput-object v0, v2, Lcom/taobao/wireless/security/sdk/SecurityGuardParamContext;->appKey:Ljava/lang/String;

    :goto_1
    iget-object v0, p0, Lcom/taobao/securityjni/SecurityCheck;->a:Lcom/taobao/wireless/security/sdk/indiekit/IIndieKitComponent;

    invoke-interface {v0, v2}, Lcom/taobao/wireless/security/sdk/indiekit/IIndieKitComponent;->indieKitRequest(Lcom/taobao/wireless/security/sdk/SecurityGuardParamContext;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget v0, p2, Lcom/taobao/securityjni/tools/DataContext;->index:I

    if-gez v0, :cond_4

    const/4 v0, 0x0

    :goto_2
    iput v0, p2, Lcom/taobao/securityjni/tools/DataContext;->index:I

    new-instance v0, Lcom/taobao/wireless/security/adapter/m/a;

    invoke-direct {v0}, Lcom/taobao/wireless/security/adapter/m/a;-><init>()V

    iget v3, p2, Lcom/taobao/securityjni/tools/DataContext;->index:I

    const-string/jumbo v4, ""

    invoke-virtual {v0, v3, v4}, Lcom/taobao/wireless/security/adapter/m/a;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string/jumbo v3, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_3
    move-object v0, v1

    goto :goto_0

    :cond_4
    iget v0, p2, Lcom/taobao/securityjni/tools/DataContext;->index:I

    goto :goto_2

    :cond_5
    iput-object v0, v2, Lcom/taobao/wireless/security/sdk/SecurityGuardParamContext;->appKey:Ljava/lang/String;

    goto :goto_1
.end method

.method public indieKitRequest(Lcom/taobao/wireless/security/sdk/SecurityGuardParamContext;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/taobao/securityjni/SecurityCheck;->a:Lcom/taobao/wireless/security/sdk/indiekit/IIndieKitComponent;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/taobao/securityjni/SecurityCheck;->a:Lcom/taobao/wireless/security/sdk/indiekit/IIndieKitComponent;

    invoke-interface {v0, p1}, Lcom/taobao/wireless/security/sdk/indiekit/IIndieKitComponent;->indieKitRequest(Lcom/taobao/wireless/security/sdk/SecurityGuardParamContext;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public reportSusText(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public validateFileSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method
