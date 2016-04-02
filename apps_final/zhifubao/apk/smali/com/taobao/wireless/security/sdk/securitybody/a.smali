.class public final Lcom/taobao/wireless/security/sdk/securitybody/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/taobao/wireless/security/sdk/securitybody/ISecurityBodyComponent;


# instance fields
.field private a:Lcom/taobao/wireless/security/adapter/securitybody/SecurityBodyAdapter;


# direct methods
.method public constructor <init>(Landroid/content/ContextWrapper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/taobao/wireless/security/adapter/securitybody/SecurityBodyAdapter;

    invoke-direct {v0, p1}, Lcom/taobao/wireless/security/adapter/securitybody/SecurityBodyAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/taobao/wireless/security/sdk/securitybody/a;->a:Lcom/taobao/wireless/security/adapter/securitybody/SecurityBodyAdapter;

    return-void
.end method


# virtual methods
.method public final getSecurityBodyData(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/taobao/wireless/security/sdk/securitybody/a;->a:Lcom/taobao/wireless/security/adapter/securitybody/SecurityBodyAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/wireless/security/sdk/securitybody/a;->a:Lcom/taobao/wireless/security/adapter/securitybody/SecurityBodyAdapter;

    invoke-virtual {v0, p1}, Lcom/taobao/wireless/security/adapter/securitybody/SecurityBodyAdapter;->getSecurityBodyData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getSecurityBodyData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/taobao/wireless/security/sdk/securitybody/a;->a:Lcom/taobao/wireless/security/adapter/securitybody/SecurityBodyAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/wireless/security/sdk/securitybody/a;->a:Lcom/taobao/wireless/security/adapter/securitybody/SecurityBodyAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/taobao/wireless/security/adapter/securitybody/SecurityBodyAdapter;->getSecurityBodyData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final initSecurityBody(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/taobao/wireless/security/sdk/securitybody/a;->a:Lcom/taobao/wireless/security/adapter/securitybody/SecurityBodyAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/wireless/security/sdk/securitybody/a;->a:Lcom/taobao/wireless/security/adapter/securitybody/SecurityBodyAdapter;

    invoke-virtual {v0, p1}, Lcom/taobao/wireless/security/adapter/securitybody/SecurityBodyAdapter;->initSecurityBody(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final putUserActionRecord(Ljava/lang/String;Ljava/lang/String;FF)Z
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/taobao/wireless/security/sdk/securitybody/a;->a:Lcom/taobao/wireless/security/adapter/securitybody/SecurityBodyAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/wireless/security/sdk/securitybody/a;->a:Lcom/taobao/wireless/security/adapter/securitybody/SecurityBodyAdapter;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/taobao/wireless/security/adapter/securitybody/SecurityBodyAdapter;->putUserActionRecord(Ljava/lang/String;Ljava/lang/String;FF)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final putUserTrackRecord(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/taobao/wireless/security/sdk/securitybody/a;->a:Lcom/taobao/wireless/security/adapter/securitybody/SecurityBodyAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/wireless/security/sdk/securitybody/a;->a:Lcom/taobao/wireless/security/adapter/securitybody/SecurityBodyAdapter;

    invoke-virtual {v0, p1}, Lcom/taobao/wireless/security/adapter/securitybody/SecurityBodyAdapter;->putUserTrackRecord(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setSecurityBodyServer(I)V
    .locals 1

    iget-object v0, p0, Lcom/taobao/wireless/security/sdk/securitybody/a;->a:Lcom/taobao/wireless/security/adapter/securitybody/SecurityBodyAdapter;

    invoke-virtual {v0, p1}, Lcom/taobao/wireless/security/adapter/securitybody/SecurityBodyAdapter;->setSecurityBodyServer(I)V

    return-void
.end method
