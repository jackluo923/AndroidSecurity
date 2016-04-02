.class public abstract Lcom/ali/user/mobile/base/BaseFragmentActivity;
.super Lcom/ali/user/mobile/base/AdaptorFragmentActivity;
.source "BaseFragmentActivity.java"


# instance fields
.field private a:Lcom/ali/user/mobile/base/helper/ActivityUIHelper;

.field private b:Z

.field private c:Z

.field private d:Landroid/view/View;

.field protected mIsDestroy:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/ali/user/mobile/base/AdaptorFragmentActivity;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ali/user/mobile/base/BaseFragmentActivity;->mIsDestroy:Z

    .line 13
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/ali/user/mobile/base/BaseFragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/ali/user/mobile/base/BaseFragmentActivity$1;

    invoke-direct {v1, p0, p1}, Lcom/ali/user/mobile/base/BaseFragmentActivity$1;-><init>(Lcom/ali/user/mobile/base/BaseFragmentActivity;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 62
    return-void
.end method

.method static synthetic access$4(Lcom/ali/user/mobile/base/BaseFragmentActivity;Z)V
    .locals 0

    .prologue
    .line 17
    iput-boolean p1, p0, Lcom/ali/user/mobile/base/BaseFragmentActivity;->c:Z

    return-void
.end method


# virtual methods
.method public alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 7

    .prologue
    .line 76
    iget-object v0, p0, Lcom/ali/user/mobile/base/BaseFragmentActivity;->a:Lcom/ali/user/mobile/base/helper/ActivityUIHelper;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/base/helper/ActivityUIHelper;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 77
    return-void
.end method

.method public alertPop(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/commonui/widget/APNormalPopDialog$OnClickPositiveListener;Ljava/lang/String;Lcom/alipay/mobile/commonui/widget/APNormalPopDialog$OnClickNegativeListener;)V
    .locals 8

    .prologue
    .line 82
    iget-object v0, p0, Lcom/ali/user/mobile/base/BaseFragmentActivity;->a:Lcom/ali/user/mobile/base/helper/ActivityUIHelper;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/ali/user/mobile/base/helper/ActivityUIHelper;->alertPop(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/commonui/widget/APNormalPopDialog$OnClickPositiveListener;Ljava/lang/String;Lcom/alipay/mobile/commonui/widget/APNormalPopDialog$OnClickNegativeListener;)V

    .line 84
    return-void
.end method

.method public dismissProgress()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/ali/user/mobile/base/BaseFragmentActivity;->a:Lcom/ali/user/mobile/base/helper/ActivityUIHelper;

    invoke-virtual {v0}, Lcom/ali/user/mobile/base/helper/ActivityUIHelper;->dismissProgress()V

    .line 96
    return-void
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/ali/user/mobile/base/BaseFragmentActivity;->a:Lcom/ali/user/mobile/base/helper/ActivityUIHelper;

    invoke-virtual {v0}, Lcom/ali/user/mobile/base/helper/ActivityUIHelper;->finish()V

    .line 101
    invoke-super {p0}, Lcom/ali/user/mobile/base/AdaptorFragmentActivity;->finish()V

    .line 102
    return-void
.end method

.method public bridge synthetic getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/ali/user/mobile/base/AdaptorFragmentActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/ali/user/mobile/base/AdaptorFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public isActivityDestroy()Z
    .locals 1

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/ali/user/mobile/base/BaseFragmentActivity;->mIsDestroy:Z

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 23
    invoke-super {p0, p1}, Lcom/ali/user/mobile/base/AdaptorFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    new-instance v0, Lcom/ali/user/mobile/base/helper/ActivityUIHelper;

    invoke-direct {v0, p0}, Lcom/ali/user/mobile/base/helper/ActivityUIHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ali/user/mobile/base/BaseFragmentActivity;->a:Lcom/ali/user/mobile/base/helper/ActivityUIHelper;

    .line 25
    invoke-virtual {p0}, Lcom/ali/user/mobile/base/BaseFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ali/user/mobile/LaunchInit;->init(Landroid/content/Context;)V

    .line 26
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 106
    invoke-super {p0}, Lcom/ali/user/mobile/base/AdaptorFragmentActivity;->onDestroy()V

    .line 107
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ali/user/mobile/base/BaseFragmentActivity;->mIsDestroy:Z

    .line 108
    iget-object v0, p0, Lcom/ali/user/mobile/base/BaseFragmentActivity;->a:Lcom/ali/user/mobile/base/helper/ActivityUIHelper;

    invoke-virtual {v0}, Lcom/ali/user/mobile/base/helper/ActivityUIHelper;->finish()V

    .line 109
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 30
    invoke-super {p0}, Lcom/ali/user/mobile/base/AdaptorFragmentActivity;->onStart()V

    .line 31
    invoke-static {}, Lcom/ali/user/mobile/login/LoginActivityCollections;->getInstance()Lcom/ali/user/mobile/login/LoginActivityCollections;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ali/user/mobile/login/LoginActivityCollections;->recordActivity(Landroid/app/Activity;)V

    .line 32
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/ali/user/mobile/base/AdaptorFragmentActivity;->onWindowFocusChanged(Z)V

    .line 37
    iput-boolean p1, p0, Lcom/ali/user/mobile/base/BaseFragmentActivity;->b:Z

    .line 38
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/ali/user/mobile/base/BaseFragmentActivity;->c:Z

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/ali/user/mobile/base/BaseFragmentActivity;->d:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/base/BaseFragmentActivity;->a(Landroid/view/View;)V

    .line 41
    :cond_0
    return-void
.end method

.method protected showInputMethodPannel(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/ali/user/mobile/base/BaseFragmentActivity;->b:Z

    if-eqz v0, :cond_0

    .line 45
    invoke-direct {p0, p1}, Lcom/ali/user/mobile/base/BaseFragmentActivity;->a(Landroid/view/View;)V

    .line 50
    :goto_0
    return-void

    .line 47
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ali/user/mobile/base/BaseFragmentActivity;->c:Z

    .line 48
    iput-object p1, p0, Lcom/ali/user/mobile/base/BaseFragmentActivity;->d:Landroid/view/View;

    goto :goto_0
.end method

.method public showProgress(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/ali/user/mobile/base/BaseFragmentActivity;->a:Lcom/ali/user/mobile/base/helper/ActivityUIHelper;

    invoke-virtual {v0, p1}, Lcom/ali/user/mobile/base/helper/ActivityUIHelper;->showProgress(Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public bridge synthetic startActivity(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/ali/user/mobile/base/AdaptorFragmentActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic startActivityForResult(Landroid/content/Intent;I)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1, p2}, Lcom/ali/user/mobile/base/AdaptorFragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public toast(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/ali/user/mobile/base/BaseFragmentActivity;->a:Lcom/ali/user/mobile/base/helper/ActivityUIHelper;

    invoke-virtual {v0, p1, p2}, Lcom/ali/user/mobile/base/helper/ActivityUIHelper;->toast(Ljava/lang/String;I)V

    .line 88
    return-void
.end method
