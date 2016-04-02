.class public final Lcom/taobao/wireless/security/sdk/indiekit/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/taobao/wireless/security/sdk/indiekit/IIndieKitComponent;


# instance fields
.field private a:Lcom/taobao/wireless/security/adapter/e/b;


# direct methods
.method public constructor <init>(Landroid/content/ContextWrapper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/taobao/wireless/security/adapter/e/b;

    invoke-direct {v0, p1}, Lcom/taobao/wireless/security/adapter/e/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/taobao/wireless/security/sdk/indiekit/a;->a:Lcom/taobao/wireless/security/adapter/e/b;

    return-void
.end method


# virtual methods
.method public final indieKitRequest(Lcom/taobao/wireless/security/sdk/SecurityGuardParamContext;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/taobao/wireless/security/sdk/SecurityGuardParamContext;->paramMap:Ljava/util/Map;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/taobao/wireless/security/sdk/indiekit/a;->a:Lcom/taobao/wireless/security/adapter/e/b;

    invoke-virtual {v0, p1}, Lcom/taobao/wireless/security/adapter/e/b;->a(Lcom/taobao/wireless/security/sdk/SecurityGuardParamContext;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final reportSusText(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/taobao/wireless/security/sdk/indiekit/a;->a:Lcom/taobao/wireless/security/adapter/e/b;

    invoke-virtual {v0, p1, p2}, Lcom/taobao/wireless/security/adapter/e/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final validateFileSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v2, "filesignature"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "filehash"

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/taobao/wireless/security/sdk/SecurityGuardParamContext;

    invoke-direct {v2}, Lcom/taobao/wireless/security/sdk/SecurityGuardParamContext;-><init>()V

    iput-object p3, v2, Lcom/taobao/wireless/security/sdk/SecurityGuardParamContext;->appKey:Ljava/lang/String;

    iput-object v1, v2, Lcom/taobao/wireless/security/sdk/SecurityGuardParamContext;->paramMap:Ljava/util/Map;

    const/4 v1, 0x2

    iput v1, v2, Lcom/taobao/wireless/security/sdk/SecurityGuardParamContext;->requestType:I

    iget-object v1, p0, Lcom/taobao/wireless/security/sdk/indiekit/a;->a:Lcom/taobao/wireless/security/adapter/e/b;

    invoke-virtual {v1, v2}, Lcom/taobao/wireless/security/adapter/e/b;->a(Lcom/taobao/wireless/security/sdk/SecurityGuardParamContext;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :cond_0
    return v0
.end method
