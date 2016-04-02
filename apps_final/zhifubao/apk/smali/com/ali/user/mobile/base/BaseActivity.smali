.class public abstract Lcom/ali/user/mobile/base/BaseActivity;
.super Lcom/ali/user/mobile/base/AdaptorActivity;
.source "BaseActivity.java"


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
    .line 18
    invoke-direct {p0}, Lcom/ali/user/mobile/base/AdaptorActivity;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ali/user/mobile/base/BaseActivity;->mIsDestroy:Z

    .line 18
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/ali/user/mobile/base/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/ali/user/mobile/base/BaseActivity$1;

    invoke-direct {v1, p0, p1}, Lcom/ali/user/mobile/base/BaseActivity$1;-><init>(Lcom/ali/user/mobile/base/BaseActivity;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 111
    return-void
.end method

.method static synthetic access$4(Lcom/ali/user/mobile/base/BaseActivity;Z)V
    .locals 0

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/ali/user/mobile/base/BaseActivity;->c:Z

    return-void
.end method


# virtual methods
.method public alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 7

    .prologue
    .line 51
    iget-object v0, p0, Lcom/ali/user/mobile/base/BaseActivity;->a:Lcom/ali/user/mobile/base/helper/ActivityUIHelper;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/base/helper/ActivityUIHelper;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 52
    return-void
.end method

.method public alertPop(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/commonui/widget/APNormalPopDialog$OnClickPositiveListener;Ljava/lang/String;Lcom/alipay/mobile/commonui/widget/APNormalPopDialog$OnClickNegativeListener;)V
    .locals 8

    .prologue
    .line 57
    iget-object v0, p0, Lcom/ali/user/mobile/base/BaseActivity;->a:Lcom/ali/user/mobile/base/helper/ActivityUIHelper;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/ali/user/mobile/base/helper/ActivityUIHelper;->alertPop(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/commonui/widget/APNormalPopDialog$OnClickPositiveListener;Ljava/lang/String;Lcom/alipay/mobile/commonui/widget/APNormalPopDialog$OnClickNegativeListener;)V

    .line 59
    return-void
.end method

.method protected closeInputMethod(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 115
    :try_start_0
    const-string/jumbo v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/base/BaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 116
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :goto_0
    return-void

    .line 117
    :catch_0
    move-exception v0

    .line 118
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u5173\u95ed\u952e\u76d8\u5931\u8d25"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public dismissProgress()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/ali/user/mobile/base/BaseActivity;->a:Lcom/ali/user/mobile/base/helper/ActivityUIHelper;

    invoke-virtual {v0}, Lcom/ali/user/mobile/base/helper/ActivityUIHelper;->dismissProgress()V

    .line 71
    return-void
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/ali/user/mobile/base/BaseActivity;->a:Lcom/ali/user/mobile/base/helper/ActivityUIHelper;

    invoke-virtual {v0}, Lcom/ali/user/mobile/base/helper/ActivityUIHelper;->finish()V

    .line 125
    invoke-super {p0}, Lcom/ali/user/mobile/base/AdaptorActivity;->finish()V

    .line 126
    return-void
.end method

.method public bridge synthetic getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/ali/user/mobile/base/AdaptorActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/ali/user/mobile/base/AdaptorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public isActivityDestroy()Z
    .locals 1

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/ali/user/mobile/base/BaseActivity;->mIsDestroy:Z

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/ali/user/mobile/base/AdaptorActivity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    new-instance v0, Lcom/ali/user/mobile/base/helper/ActivityUIHelper;

    invoke-direct {v0, p0}, Lcom/ali/user/mobile/base/helper/ActivityUIHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ali/user/mobile/base/BaseActivity;->a:Lcom/ali/user/mobile/base/helper/ActivityUIHelper;

    .line 29
    invoke-virtual {p0}, Lcom/ali/user/mobile/base/BaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ali/user/mobile/LaunchInit;->init(Landroid/content/Context;)V

    .line 30
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 130
    invoke-super {p0}, Lcom/ali/user/mobile/base/AdaptorActivity;->onDestroy()V

    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ali/user/mobile/base/BaseActivity;->mIsDestroy:Z

    .line 132
    iget-object v0, p0, Lcom/ali/user/mobile/base/BaseActivity;->a:Lcom/ali/user/mobile/base/helper/ActivityUIHelper;

    invoke-virtual {v0}, Lcom/ali/user/mobile/base/helper/ActivityUIHelper;->finish()V

    .line 133
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 34
    invoke-super {p0}, Lcom/ali/user/mobile/base/AdaptorActivity;->onStart()V

    .line 35
    invoke-static {}, Lcom/ali/user/mobile/login/LoginActivityCollections;->getInstance()Lcom/ali/user/mobile/login/LoginActivityCollections;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ali/user/mobile/login/LoginActivityCollections;->recordActivity(Landroid/app/Activity;)V

    .line 36
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .prologue
    .line 75
    invoke-super {p0, p1}, Lcom/ali/user/mobile/base/AdaptorActivity;->onWindowFocusChanged(Z)V

    .line 76
    iput-boolean p1, p0, Lcom/ali/user/mobile/base/BaseActivity;->b:Z

    .line 77
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/ali/user/mobile/base/BaseActivity;->c:Z

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/ali/user/mobile/base/BaseActivity;->d:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/base/BaseActivity;->a(Landroid/view/View;)V

    .line 80
    :cond_0
    return-void
.end method

.method protected showInputMethodPannel(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/ali/user/mobile/base/BaseActivity;->b:Z

    if-eqz v0, :cond_0

    .line 84
    invoke-direct {p0, p1}, Lcom/ali/user/mobile/base/BaseActivity;->a(Landroid/view/View;)V

    .line 89
    :goto_0
    return-void

    .line 86
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ali/user/mobile/base/BaseActivity;->c:Z

    .line 87
    iput-object p1, p0, Lcom/ali/user/mobile/base/BaseActivity;->d:Landroid/view/View;

    goto :goto_0
.end method

.method public showProgress(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/ali/user/mobile/base/BaseActivity;->a:Lcom/ali/user/mobile/base/helper/ActivityUIHelper;

    invoke-virtual {v0, p1}, Lcom/ali/user/mobile/base/helper/ActivityUIHelper;->showProgress(Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public bridge synthetic startActivity(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/ali/user/mobile/base/AdaptorActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic startActivityForResult(Landroid/content/Intent;I)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1, p2}, Lcom/ali/user/mobile/base/AdaptorActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public toast(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/ali/user/mobile/base/BaseActivity;->a:Lcom/ali/user/mobile/base/helper/ActivityUIHelper;

    invoke-virtual {v0, p1, p2}, Lcom/ali/user/mobile/base/helper/ActivityUIHelper;->toast(Ljava/lang/String;I)V

    .line 63
    return-void
.end method
