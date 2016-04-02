.class public Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordExActivity;
.super Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordActivity;
.source "AliUserLoginSetPayPasswordExActivity.java"


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EActivity;
    resName = "activity_pay_password"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method protected prepareSupplyRequest()Lcom/alipay/aliusergw/biz/shared/processer/password/SupplyPassGwReq;
    .locals 2

    .prologue
    .line 11
    new-instance v0, Lcom/alipay/aliusergw/biz/shared/processer/password/SupplyPassGwReq;

    invoke-direct {v0}, Lcom/alipay/aliusergw/biz/shared/processer/password/SupplyPassGwReq;-><init>()V

    .line 12
    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordExActivity;->mToken:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/aliusergw/biz/shared/processer/password/SupplyPassGwReq;->token:Ljava/lang/String;

    .line 13
    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordExActivity;->encryptedKey:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/aliusergw/biz/shared/processer/password/SupplyPassGwReq;->paymentPassword:Ljava/lang/String;

    .line 14
    const-string/jumbo v1, "0"

    iput-object v1, v0, Lcom/alipay/aliusergw/biz/shared/processer/password/SupplyPassGwReq;->simplePassword:Ljava/lang/String;

    .line 15
    return-object v0
.end method

.method protected requestType()I
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic startActivity(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic startActivityForResult(Landroid/content/Intent;I)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1, p2}, Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
