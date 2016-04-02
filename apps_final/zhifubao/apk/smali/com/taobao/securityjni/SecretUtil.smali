.class public Lcom/taobao/securityjni/SecretUtil;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/taobao/wireless/security/sdk/indiekit/IIndieKitComponent;
.implements Lcom/taobao/wireless/security/sdk/securesignature/ISecureSignatureComponent;


# static fields
.field public static final M_API:Ljava/lang/String; = "API"

.field public static final M_DATA:Ljava/lang/String; = "DATA"

.field public static final M_DEV:Ljava/lang/String; = "DEV"

.field public static final M_ECODE:Ljava/lang/String; = "ECODE"

.field public static final M_IMEI:Ljava/lang/String; = "IMEI"

.field public static final M_IMSI:Ljava/lang/String; = "IMSI"

.field public static final M_SSO:Ljava/lang/String; = "SSO"

.field public static final M_TIME:Ljava/lang/String; = "TIME"

.field public static final M_V:Ljava/lang/String; = "V"


# instance fields
.field private a:Lcom/taobao/wireless/security/sdk/securesignature/ISecureSignatureComponent;

.field private b:Lcom/taobao/wireless/security/sdk/indiekit/IIndieKitComponent;


# direct methods
.method public constructor <init>(Landroid/content/ContextWrapper;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/taobao/wireless/security/sdk/SecurityGuardManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getSecureSignatureComp()Lcom/taobao/wireless/security/sdk/securesignature/ISecureSignatureComponent;

    move-result-object v1

    iput-object v1, p0, Lcom/taobao/securityjni/SecretUtil;->a:Lcom/taobao/wireless/security/sdk/securesignature/ISecureSignatureComponent;

    invoke-virtual {v0}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getIndieKitComp()Lcom/taobao/wireless/security/sdk/indiekit/IIndieKitComponent;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/securityjni/SecretUtil;->b:Lcom/taobao/wireless/security/sdk/indiekit/IIndieKitComponent;

    :cond_0
    return-void
.end method


# virtual methods
.method public getExternalSign(Ljava/util/LinkedHashMap;Lcom/taobao/securityjni/tools/DataContext;)Ljava/lang/String;
    .locals 8

    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/taobao/securityjni/SecretUtil;->a:Lcom/taobao/wireless/security/sdk/securesignature/ISecureSignatureComponent;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    iget v0, p2, Lcom/taobao/securityjni/tools/DataContext;->category:I

    packed-switch v0, :pswitch_data_0

    :cond_2
    move v4, v1

    :goto_1
    if-eq v4, v1, :cond_8

    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v0, 0x300

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {p1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v7, 0x3d

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    const/16 v0, 0x26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :pswitch_0
    iget v0, p2, Lcom/taobao/securityjni/tools/DataContext;->type:I

    if-nez v0, :cond_2

    const/16 v0, 0xa

    move v4, v0

    goto :goto_1

    :pswitch_1
    iget v0, p2, Lcom/taobao/securityjni/tools/DataContext;->type:I

    if-nez v0, :cond_2

    const/16 v0, 0x8

    move v4, v0

    goto :goto_1

    :pswitch_2
    iget v0, p2, Lcom/taobao/securityjni/tools/DataContext;->type:I

    if-nez v0, :cond_2

    const/16 v0, 0xc

    move v4, v0

    goto :goto_1

    :pswitch_3
    iget v0, p2, Lcom/taobao/securityjni/tools/DataContext;->type:I

    if-nez v0, :cond_2

    const/16 v0, 0xb

    move v4, v0

    goto :goto_1

    :pswitch_4
    iget v0, p2, Lcom/taobao/securityjni/tools/DataContext;->type:I

    if-nez v0, :cond_2

    const/16 v0, 0xe

    move v4, v0

    goto :goto_1

    :cond_4
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_5
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "INPUT"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v2, v6}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/taobao/wireless/security/sdk/SecurityGuardParamContext;

    invoke-direct {v1}, Lcom/taobao/wireless/security/sdk/SecurityGuardParamContext;-><init>()V

    iput-object v0, v1, Lcom/taobao/wireless/security/sdk/SecurityGuardParamContext;->paramMap:Ljava/util/Map;

    iput v4, v1, Lcom/taobao/wireless/security/sdk/SecurityGuardParamContext;->requestType:I

    iget-object v0, p2, Lcom/taobao/securityjni/tools/DataContext;->extData:[B

    if-eqz v0, :cond_6

    iget-object v0, p2, Lcom/taobao/securityjni/tools/DataContext;->extData:[B

    array-length v0, v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/String;

    iget-object v2, p2, Lcom/taobao/securityjni/tools/DataContext;->extData:[B

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    iput-object v0, v1, Lcom/taobao/wireless/security/sdk/SecurityGuardParamContext;->appKey:Ljava/lang/String;

    :goto_4
    iget-object v0, p0, Lcom/taobao/securityjni/SecretUtil;->a:Lcom/taobao/wireless/security/sdk/securesignature/ISecureSignatureComponent;

    invoke-interface {v0, v1}, Lcom/taobao/wireless/security/sdk/securesignature/ISecureSignatureComponent;->signRequest(Lcom/taobao/wireless/security/sdk/SecurityGuardParamContext;)Ljava/lang/String;

    move-result-object v0

    :goto_5
    move-object v3, v0

    goto/16 :goto_0

    :cond_6
    iget v0, p2, Lcom/taobao/securityjni/tools/DataContext;->index:I

    if-gez v0, :cond_7

    move v0, v2

    :goto_6
    iput v0, p2, Lcom/taobao/securityjni/tools/DataContext;->index:I

    new-instance v0, Lcom/taobao/wireless/security/adapter/m/a;

    invoke-direct {v0}, Lcom/taobao/wireless/security/adapter/m/a;-><init>()V

    iget v2, p2, Lcom/taobao/securityjni/tools/DataContext;->index:I

    const-string/jumbo v4, ""

    invoke-virtual {v0, v2, v4}, Lcom/taobao/wireless/security/adapter/m/a;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iput-object v0, v1, Lcom/taobao/wireless/security/sdk/SecurityGuardParamContext;->appKey:Ljava/lang/String;

    goto :goto_4

    :cond_7
    iget v0, p2, Lcom/taobao/securityjni/tools/DataContext;->index:I

    goto :goto_6

    :cond_8
    move-object v0, v3

    goto :goto_5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method public getLaiwangSign(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/securityjni/tools/DataContext;)Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/taobao/securityjni/SecretUtil;->a:Lcom/taobao/wireless/security/sdk/securesignature/ISecureSignatureComponent;

    if-eqz v0, :cond_0

    if-nez p3, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v2, "INPUT"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "ENCRYPTEDKEY"

    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/taobao/wireless/security/sdk/SecurityGuardParamContext;

    invoke-direct {v2}, Lcom/taobao/wireless/security/sdk/SecurityGuardParamContext;-><init>()V

    iput-object v0, v2, Lcom/taobao/wireless/security/sdk/SecurityGuardParamContext;->paramMap:Ljava/util/Map;

    const/4 v0, 0x7

    iput v0, v2, Lcom/taobao/wireless/security/sdk/SecurityGuardParamContext;->requestType:I

    iget-object v0, p3, Lcom/taobao/securityjni/tools/DataContext;->extData:[B

    if-eqz v0, :cond_3

    iget-object v0, p3, Lcom/taobao/securityjni/tools/DataContext;->extData:[B

    array-length v0, v0

    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/String;

    iget-object v1, p3, Lcom/taobao/securityjni/tools/DataContext;->extData:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    iput-object v0, v2, Lcom/taobao/wireless/security/sdk/SecurityGuardParamContext;->appKey:Ljava/lang/String;

    :goto_1
    iget-object v0, p0, Lcom/taobao/securityjni/SecretUtil;->a:Lcom/taobao/wireless/security/sdk/securesignature/ISecureSignatureComponent;

    invoke-interface {v0, v2}, Lcom/taobao/wireless/security/sdk/securesignature/ISecureSignatureComponent;->signRequest(Lcom/taobao/wireless/security/sdk/SecurityGuardParamContext;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget v0, p3, Lcom/taobao/securityjni/tools/DataContext;->index:I

    if-gez v0, :cond_5

    const/4 v0, 0x0

    :goto_2
    iput v0, p3, Lcom/taobao/securityjni/tools/DataContext;->index:I

    new-instance v0, Lcom/taobao/wireless/security/adapter/m/a;

    invoke-direct {v0}, Lcom/taobao/wireless/security/adapter/m/a;-><init>()V

    iget v3, p3, Lcom/taobao/securityjni/tools/DataContext;->index:I

    const-string/jumbo v4, ""

    invoke-virtual {v0, v3, v4}, Lcom/taobao/wireless/security/adapter/m/a;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string/jumbo v3, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_4
    move-object v0, v1

    goto :goto_0

    :cond_5
    iget v0, p3, Lcom/taobao/securityjni/tools/DataContext;->index:I

    goto :goto_2

    :cond_6
    iput-object v0, v2, Lcom/taobao/wireless/security/sdk/SecurityGuardParamContext;->appKey:Ljava/lang/String;

    goto :goto_1
.end method

.method public getLoginTopToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Lcom/taobao/securityjni/tools/DataContext;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/taobao/securityjni/tools/DataContext;-><init>(I[B)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/taobao/securityjni/SecretUtil;->getLoginTopToken(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/securityjni/tools/DataContext;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLoginTopToken(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/securityjni/tools/DataContext;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/taobao/securityjni/SecretUtil;->b:Lcom/taobao/wireless/security/sdk/indiekit/IIndieKitComponent;

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v3, "username"

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "timestamp"

    invoke-virtual {v2, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/taobao/wireless/security/sdk/SecurityGuardParamContext;

    invoke-direct {v3}, Lcom/taobao/wireless/security/sdk/SecurityGuardParamContext;-><init>()V

    iput-object v2, v3, Lcom/taobao/wireless/security/sdk/SecurityGuardParamContext;->paramMap:Ljava/util/Map;

    iput v0, v3, Lcom/taobao/wireless/security/sdk/SecurityGuardParamContext;->requestType:I

    iget-object v2, p3, Lcom/taobao/securityjni/tools/DataContext;->extData:[B

    if-eqz v2, :cond_3

    iget-object v0, p3, Lcom/taobao/securityjni/tools/DataContext;->extData:[B

    array-length v0, v0

    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/String;

    iget-object v1, p3, Lcom/taobao/securityjni/tools/DataContext;->extData:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    iput-object v0, v3, Lcom/taobao/wireless/security/sdk/SecurityGuardParamContext;->appKey:Ljava/lang/String;

    :goto_1
    iget-object v0, p0, Lcom/taobao/securityjni/SecretUtil;->b:Lcom/taobao/wireless/security/sdk/indiekit/IIndieKitComponent;

    invoke-interface {v0, v3}, Lcom/taobao/wireless/security/sdk/indiekit/IIndieKitComponent;->indieKitRequest(Lcom/taobao/wireless/security/sdk/SecurityGuardParamContext;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget v2, p3, Lcom/taobao/securityjni/tools/DataContext;->index:I

    if-gez v2, :cond_5

    :goto_2
    iput v0, p3, Lcom/taobao/securityjni/tools/DataContext;->index:I

    new-instance v0, Lcom/taobao/wireless/security/adapter/m/a;

    invoke-direct {v0}, Lcom/taobao/wireless/security/adapter/m/a;-><init>()V

    iget v2, p3, Lcom/taobao/securityjni/tools/DataContext;->index:I

    const-string/jumbo v4, ""

    invoke-virtual {v0, v2, v4}, Lcom/taobao/wireless/security/adapter/m/a;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string/jumbo v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_4
    move-object v0, v1

    goto :goto_0

    :cond_5
    iget v0, p3, Lcom/taobao/securityjni/tools/DataContext;->index:I

    goto :goto_2

    :cond_6
    iput-object v0, v3, Lcom/taobao/wireless/security/sdk/SecurityGuardParamContext;->appKey:Ljava/lang/String;

    goto :goto_1
.end method

.method public getMtopSign(Ljava/util/HashMap;Lcom/taobao/securityjni/tools/DataContext;)Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/taobao/securityjni/SecretUtil;->a:Lcom/taobao/wireless/security/sdk/securesignature/ISecureSignatureComponent;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    new-instance v2, Lcom/taobao/wireless/security/sdk/SecurityGuardParamContext;

    invoke-direct {v2}, Lcom/taobao/wireless/security/sdk/SecurityGuardParamContext;-><init>()V

    iput-object p1, v2, Lcom/taobao/wireless/security/sdk/SecurityGuardParamContext;->paramMap:Ljava/util/Map;

    const/4 v0, 0x3

    iput v0, v2, Lcom/taobao/wireless/security/sdk/SecurityGuardParamContext;->requestType:I

    iget-object v0, p2, Lcom/taobao/securityjni/tools/DataContext;->extData:[B

    if-eqz v0, :cond_3

    iget-object v0, p2, Lcom/taobao/securityjni/tools/DataContext;->extData:[B

    array-length v0, v0

    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/String;

    iget-object v1, p2, Lcom/taobao/securityjni/tools/DataContext;->extData:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    iput-object v0, v2, Lcom/taobao/wireless/security/sdk/SecurityGuardParamContext;->appKey:Ljava/lang/String;

    :goto_1
    iget-object v0, p0, Lcom/taobao/securityjni/SecretUtil;->a:Lcom/taobao/wireless/security/sdk/securesignature/ISecureSignatureComponent;

    invoke-interface {v0, v2}, Lcom/taobao/wireless/security/sdk/securesignature/ISecureSignatureComponent;->signRequest(Lcom/taobao/wireless/security/sdk/SecurityGuardParamContext;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget v0, p2, Lcom/taobao/securityjni/tools/DataContext;->index:I

    if-gez v0, :cond_5

    const/4 v0, 0x0

    :goto_2
    iput v0, p2, Lcom/taobao/securityjni/tools/DataContext;->index:I

    new-instance v0, Lcom/taobao/wireless/security/adapter/m/a;

    invoke-direct {v0}, Lcom/taobao/wireless/security/adapter/m/a;-><init>()V

    iget v3, p2, Lcom/taobao/securityjni/tools/DataContext;->index:I

    const-string/jumbo v4, ""

    invoke-virtual {v0, v3, v4}, Lcom/taobao/wireless/security/adapter/m/a;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string/jumbo v3, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_4
    move-object v0, v1

    goto :goto_0

    :cond_5
    iget v0, p2, Lcom/taobao/securityjni/tools/DataContext;->index:I

    goto :goto_2

    :cond_6
    iput-object v0, v2, Lcom/taobao/wireless/security/sdk/SecurityGuardParamContext;->appKey:Ljava/lang/String;

    goto :goto_1
.end method

.method public getMtopV4RespSign(Ljava/lang/String;Lcom/taobao/securityjni/tools/DataContext;)Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/taobao/securityjni/SecretUtil;->a:Lcom/taobao/wireless/security/sdk/securesignature/ISecureSignatureComponent;

    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v2, "INPUT"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/taobao/wireless/security/sdk/SecurityGuardParamContext;

    invoke-direct {v2}, Lcom/taobao/wireless/security/sdk/SecurityGuardParamContext;-><init>()V

    iput-object v0, v2, Lcom/taobao/wireless/security/sdk/SecurityGuardParamContext;->paramMap:Ljava/util/Map;

    const/4 v0, 0x5

    iput v0, v2, Lcom/taobao/wireless/security/sdk/SecurityGuardParamContext;->requestType:I

    iget-object v0, p2, Lcom/taobao/securityjni/tools/DataContext;->extData:[B

    if-eqz v0, :cond_3

    iget-object v0, p2, Lcom/taobao/securityjni/tools/DataContext;->extData:[B

    array-length v0, v0

    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/String;

    iget-object v1, p2, Lcom/taobao/securityjni/tools/DataContext;->extData:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    iput-object v0, v2, Lcom/taobao/wireless/security/sdk/SecurityGuardParamContext;->appKey:Ljava/lang/String;

    :goto_1
    iget-object v0, p0, Lcom/taobao/securityjni/SecretUtil;->a:Lcom/taobao/wireless/security/sdk/securesignature/ISecureSignatureComponent;

    invoke-interface {v0, v2}, Lcom/taobao/wireless/security/sdk/securesignature/ISecureSignatureComponent;->signRequest(Lcom/taobao/wireless/security/sdk/SecurityGuardParamContext;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget v0, p2, Lcom/taobao/securityjni/tools/DataContext;->index:I

    if-gez v0, :cond_5

    const/4 v0, 0x0

    :goto_2
    iput v0, p2, Lcom/taobao/securityjni/tools/DataContext;->index:I

    new-instance v0, Lcom/taobao/wireless/security/adapter/m/a;

    invoke-direct {v0}, Lcom/taobao/wireless/security/adapter/m/a;-><init>()V

    iget v3, p2, Lcom/taobao/securityjni/tools/DataContext;->index:I

    const-string/jumbo v4, ""

    invoke-virtual {v0, v3, v4}, Lcom/taobao/wireless/security/adapter/m/a;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string/jumbo v3, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_4
    move-object v0, v1

    goto :goto_0

    :cond_5
    iget v0, p2, Lcom/taobao/securityjni/tools/DataContext;->index:I

    goto :goto_2

    :cond_6
    iput-object v0, v2, Lcom/taobao/wireless/security/sdk/SecurityGuardParamContext;->appKey:Ljava/lang/String;

    goto :goto_1
.end method

.method public getMtopV4Sign(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/securityjni/tools/DataContext;)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/taobao/securityjni/SecretUtil;->a:Lcom/taobao/wireless/security/sdk/securesignature/ISecureSignatureComponent;

    if-eqz v0, :cond_0

    if-nez p11, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "ECODE"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "DATA"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "TIME"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "API"

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "V"

    invoke-virtual {v0, v1, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "SID"

    invoke-virtual {v0, v1, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "TTID"

    invoke-virtual {v0, v1, p7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "DEVICEID"

    invoke-virtual {v0, v1, p8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "LAT"

    invoke-virtual {v0, v1, p9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "LNG"

    invoke-virtual {v0, v1, p10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/taobao/wireless/security/sdk/SecurityGuardParamContext;

    invoke-direct {v1}, Lcom/taobao/wireless/security/sdk/SecurityGuardParamContext;-><init>()V

    iput-object v0, v1, Lcom/taobao/wireless/security/sdk/SecurityGuardParamContext;->paramMap:Ljava/util/Map;

    const/4 v0, 0x4

    iput v0, v1, Lcom/taobao/wireless/security/sdk/SecurityGuardParamContext;->requestType:I

    iget-object v0, p11, Lcom/taobao/securityjni/tools/DataContext;->extData:[B

    if-eqz v0, :cond_3

    iget-object v0, p11, Lcom/taobao/securityjni/tools/DataContext;->extData:[B

    array-length v0, v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/String;

    iget-object v2, p11, Lcom/taobao/securityjni/tools/DataContext;->extData:[B

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    iput-object v0, v1, Lcom/taobao/wireless/security/sdk/SecurityGuardParamContext;->appKey:Ljava/lang/String;

    :goto_1
    iget-object v0, p0, Lcom/taobao/securityjni/SecretUtil;->a:Lcom/taobao/wireless/security/sdk/securesignature/ISecureSignatureComponent;

    invoke-interface {v0, v1}, Lcom/taobao/wireless/security/sdk/securesignature/ISecureSignatureComponent;->signRequest(Lcom/taobao/wireless/security/sdk/SecurityGuardParamContext;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget v0, p11, Lcom/taobao/securityjni/tools/DataContext;->index:I

    if-gez v0, :cond_5

    const/4 v0, 0x0

    :goto_2
    iput v0, p11, Lcom/taobao/securityjni/tools/DataContext;->index:I

    new-instance v0, Lcom/taobao/wireless/security/adapter/m/a;

    invoke-direct {v0}, Lcom/taobao/wireless/security/adapter/m/a;-><init>()V

    iget v2, p11, Lcom/taobao/securityjni/tools/DataContext;->index:I

    const-string/jumbo v3, ""

    invoke-virtual {v0, v2, v3}, Lcom/taobao/wireless/security/adapter/m/a;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string/jumbo v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_4
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_5
    iget v0, p11, Lcom/taobao/securityjni/tools/DataContext;->index:I

    goto :goto_2

    :cond_6
    iput-object v0, v1, Lcom/taobao/wireless/security/sdk/SecurityGuardParamContext;->appKey:Ljava/lang/String;

    goto :goto_1
.end method

.method public getQianNiuSign([B[B)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/taobao/securityjni/SecretUtil;->a:Lcom/taobao/wireless/security/sdk/securesignature/ISecureSignatureComponent;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p2}, Ljava/lang/String;-><init>([B)V

    const-string/jumbo v3, "STR1"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "STR2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/taobao/wireless/security/sdk/SecurityGuardParamContext;

    invoke-direct {v1}, Lcom/taobao/wireless/security/sdk/SecurityGuardParamContext;-><init>()V

    iput-object v0, v1, Lcom/taobao/wireless/security/sdk/SecurityGuardParamContext;->paramMap:Ljava/util/Map;

    const/16 v0, 0x9

    iput v0, v1, Lcom/taobao/wireless/security/sdk/SecurityGuardParamContext;->requestType:I

    iget-object v0, p0, Lcom/taobao/securityjni/SecretUtil;->a:Lcom/taobao/wireless/security/sdk/securesignature/ISecureSignatureComponent;

    invoke-interface {v0, v1}, Lcom/taobao/wireless/security/sdk/securesignature/ISecureSignatureComponent;->signRequest(Lcom/taobao/wireless/security/sdk/SecurityGuardParamContext;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSign(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/taobao/securityjni/SecretUtil;->getSign(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSign(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    if-nez p7, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v2, "API"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "V"

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "IMEI"

    invoke-virtual {v1, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "IMSI"

    invoke-virtual {v1, v2, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p5, :cond_2

    const-string/jumbo v2, "DATA"

    invoke-virtual {v1, v2, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eqz p6, :cond_3

    const-string/jumbo v2, "ECODE"

    invoke-virtual {v1, v2, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-string/jumbo v2, "TIME"

    invoke-virtual {v1, v2, p7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/taobao/securityjni/tools/DataContext;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0}, Lcom/taobao/securityjni/tools/DataContext;-><init>(I[B)V

    invoke-virtual {p0, v1, v2}, Lcom/taobao/securityjni/SecretUtil;->getSign(Ljava/util/HashMap;Lcom/taobao/securityjni/tools/DataContext;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSign(Ljava/util/HashMap;Lcom/taobao/securityjni/tools/DataContext;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/taobao/securityjni/SecretUtil;->getMtopSign(Ljava/util/HashMap;Lcom/taobao/securityjni/tools/DataContext;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTopSign(Ljava/util/TreeMap;)Ljava/lang/String;
    .locals 3

    new-instance v0, Lcom/taobao/securityjni/tools/DataContext;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/taobao/securityjni/tools/DataContext;-><init>(I[B)V

    invoke-virtual {p0, p1, v0}, Lcom/taobao/securityjni/SecretUtil;->getTopSign(Ljava/util/TreeMap;Lcom/taobao/securityjni/tools/DataContext;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTopSign(Ljava/util/TreeMap;Lcom/taobao/securityjni/tools/DataContext;)Ljava/lang/String;
    .locals 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/taobao/securityjni/SecretUtil;->a:Lcom/taobao/wireless/security/sdk/securesignature/ISecureSignatureComponent;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v2

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v0, 0x200

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "INPUT"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/taobao/wireless/security/sdk/SecurityGuardParamContext;

    invoke-direct {v1}, Lcom/taobao/wireless/security/sdk/SecurityGuardParamContext;-><init>()V

    iput-object v0, v1, Lcom/taobao/wireless/security/sdk/SecurityGuardParamContext;->paramMap:Ljava/util/Map;

    const/4 v0, 0x2

    iput v0, v1, Lcom/taobao/wireless/security/sdk/SecurityGuardParamContext;->requestType:I

    iget-object v0, p2, Lcom/taobao/securityjni/tools/DataContext;->extData:[B

    if-eqz v0, :cond_5

    iget-object v0, p2, Lcom/taobao/securityjni/tools/DataContext;->extData:[B

    array-length v0, v0

    if-nez v0, :cond_4

    move-object v0, v2

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/String;

    iget-object v2, p2, Lcom/taobao/securityjni/tools/DataContext;->extData:[B

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    iput-object v0, v1, Lcom/taobao/wireless/security/sdk/SecurityGuardParamContext;->appKey:Ljava/lang/String;

    :goto_2
    iget-object v0, p0, Lcom/taobao/securityjni/SecretUtil;->a:Lcom/taobao/wireless/security/sdk/securesignature/ISecureSignatureComponent;

    invoke-interface {v0, v1}, Lcom/taobao/wireless/security/sdk/securesignature/ISecureSignatureComponent;->signRequest(Lcom/taobao/wireless/security/sdk/SecurityGuardParamContext;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    iget v0, p2, Lcom/taobao/securityjni/tools/DataContext;->index:I

    if-gez v0, :cond_7

    const/4 v0, 0x0

    :goto_3
    iput v0, p2, Lcom/taobao/securityjni/tools/DataContext;->index:I

    new-instance v0, Lcom/taobao/wireless/security/adapter/m/a;

    invoke-direct {v0}, Lcom/taobao/wireless/security/adapter/m/a;-><init>()V

    iget v3, p2, Lcom/taobao/securityjni/tools/DataContext;->index:I

    const-string/jumbo v4, ""

    invoke-virtual {v0, v3, v4}, Lcom/taobao/wireless/security/adapter/m/a;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string/jumbo v3, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_6
    move-object v0, v2

    goto/16 :goto_0

    :cond_7
    iget v0, p2, Lcom/taobao/securityjni/tools/DataContext;->index:I

    goto :goto_3

    :cond_8
    iput-object v0, v1, Lcom/taobao/wireless/security/sdk/SecurityGuardParamContext;->appKey:Ljava/lang/String;

    goto :goto_2
.end method

.method public indieKitRequest(Lcom/taobao/wireless/security/sdk/SecurityGuardParamContext;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/taobao/securityjni/SecretUtil;->b:Lcom/taobao/wireless/security/sdk/indiekit/IIndieKitComponent;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/taobao/securityjni/SecretUtil;->b:Lcom/taobao/wireless/security/sdk/indiekit/IIndieKitComponent;

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

.method public signRequest(Lcom/taobao/wireless/security/sdk/SecurityGuardParamContext;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/taobao/securityjni/SecretUtil;->a:Lcom/taobao/wireless/security/sdk/securesignature/ISecureSignatureComponent;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/taobao/securityjni/SecretUtil;->a:Lcom/taobao/wireless/security/sdk/securesignature/ISecureSignatureComponent;

    invoke-interface {v0, p1}, Lcom/taobao/wireless/security/sdk/securesignature/ISecureSignatureComponent;->signRequest(Lcom/taobao/wireless/security/sdk/SecurityGuardParamContext;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public validateFileSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method
