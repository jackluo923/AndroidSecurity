.class public final Lcom/alibaba/wireless/security/open/staticdatastore/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/wireless/security/open/staticdatastore/IStaticDataStoreComponent;


# instance fields
.field private a:Lcom/taobao/wireless/security/adapter/m/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/taobao/wireless/security/adapter/m/a;

    invoke-direct {v0}, Lcom/taobao/wireless/security/adapter/m/a;-><init>()V

    iput-object v0, p0, Lcom/alibaba/wireless/security/open/staticdatastore/a;->a:Lcom/taobao/wireless/security/adapter/m/a;

    return-void
.end method


# virtual methods
.method public final getAppKeyByIndex(ILjava/lang/String;)Ljava/lang/String;
    .locals 3

    if-gez p1, :cond_0

    new-instance v0, Lcom/alibaba/wireless/security/open/SecException;

    const-string/jumbo v1, ""

    const/16 v2, 0xc9

    invoke-direct {v0, v1, v2}, Lcom/alibaba/wireless/security/open/SecException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/wireless/security/open/staticdatastore/a;->a:Lcom/taobao/wireless/security/adapter/m/a;

    invoke-virtual {v0, p1, p2}, Lcom/taobao/wireless/security/adapter/m/a;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getExtraData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    new-instance v0, Lcom/alibaba/wireless/security/open/SecException;

    const-string/jumbo v1, ""

    const/16 v2, 0xc9

    invoke-direct {v0, v1, v2}, Lcom/alibaba/wireless/security/open/SecException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/wireless/security/open/staticdatastore/a;->a:Lcom/taobao/wireless/security/adapter/m/a;

    invoke-virtual {v0, p1, p2}, Lcom/taobao/wireless/security/adapter/m/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getKeyType(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lcom/alibaba/wireless/security/open/SecException;

    const-string/jumbo v1, ""

    const/16 v2, 0xc9

    invoke-direct {v0, v1, v2}, Lcom/alibaba/wireless/security/open/SecException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/alibaba/wireless/security/open/staticdatastore/a;->a:Lcom/taobao/wireless/security/adapter/m/a;

    invoke-virtual {v0, p1, p2}, Lcom/taobao/wireless/security/adapter/m/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
