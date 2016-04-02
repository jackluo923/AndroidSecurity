.class public abstract Lcom/ali/user/mobile/base/AdaptorFragmentActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;
.source "AdaptorFragmentActivity.java"


# instance fields
.field protected mAppId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;-><init>()V

    .line 10
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/ali/user/mobile/base/AdaptorFragmentActivity;->mAppId:Ljava/lang/String;

    .line 8
    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 28
    const-string/jumbo v0, "app_id"

    iget-object v1, p0, Lcom/ali/user/mobile/base/AdaptorFragmentActivity;->mAppId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 29
    const/high16 v0, 0x40000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 30
    return-void
.end method


# virtual methods
.method public bridge synthetic getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/ali/user/mobile/base/AdaptorFragmentActivity;->setAppId()V

    .line 15
    invoke-virtual {p0}, Lcom/ali/user/mobile/base/AdaptorFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/base/AdaptorFragmentActivity;->a(Landroid/content/Intent;)V

    .line 17
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/ali/user/mobile/base/AdaptorFragmentActivity;->a(Landroid/content/Intent;)V

    .line 24
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 25
    return-void
.end method

.method protected abstract setAppId()V
.end method

.method public bridge synthetic startActivity(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic startActivityForResult(Landroid/content/Intent;I)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
