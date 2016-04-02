.class public Lcom/taobao/securityjni/SecBody;
.super Ljava/lang/Object;


# instance fields
.field private proxy:Lcom/taobao/wireless/security/sdk/securitybody/ISecurityBodyComponent;


# direct methods
.method public constructor <init>(Landroid/content/ContextWrapper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/taobao/wireless/security/sdk/SecurityGuardManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getSecurityBodyComp()Lcom/taobao/wireless/security/sdk/securitybody/ISecurityBodyComponent;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/securityjni/SecBody;->proxy:Lcom/taobao/wireless/security/sdk/securitybody/ISecurityBodyComponent;

    :cond_0
    return-void
.end method


# virtual methods
.method public getSecBodyData(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/taobao/securityjni/SecBody;->proxy:Lcom/taobao/wireless/security/sdk/securitybody/ISecurityBodyComponent;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/taobao/securityjni/SecBody;->proxy:Lcom/taobao/wireless/security/sdk/securitybody/ISecurityBodyComponent;

    invoke-interface {v0, p1}, Lcom/taobao/wireless/security/sdk/securitybody/ISecurityBodyComponent;->getSecurityBodyData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
