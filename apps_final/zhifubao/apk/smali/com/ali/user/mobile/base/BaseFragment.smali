.class public Lcom/ali/user/mobile/base/BaseFragment;
.super Landroid/support/v4/app/Fragment;
.source "BaseFragment.java"


# instance fields
.field private a:Lcom/ali/user/mobile/base/helper/ActivityUIHelper;

.field protected mAttatachedAtcitity:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 7

    .prologue
    .line 38
    iget-object v0, p0, Lcom/ali/user/mobile/base/BaseFragment;->a:Lcom/ali/user/mobile/base/helper/ActivityUIHelper;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/base/helper/ActivityUIHelper;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 39
    return-void
.end method

.method public alertPop(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/commonui/widget/APNormalPopDialog$OnClickPositiveListener;Ljava/lang/String;Lcom/alipay/mobile/commonui/widget/APNormalPopDialog$OnClickNegativeListener;)V
    .locals 8

    .prologue
    .line 44
    iget-object v0, p0, Lcom/ali/user/mobile/base/BaseFragment;->a:Lcom/ali/user/mobile/base/helper/ActivityUIHelper;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/ali/user/mobile/base/helper/ActivityUIHelper;->alertPop(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/commonui/widget/APNormalPopDialog$OnClickPositiveListener;Ljava/lang/String;Lcom/alipay/mobile/commonui/widget/APNormalPopDialog$OnClickNegativeListener;)V

    .line 46
    return-void
.end method

.method protected callPhoneNum(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 61
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.CALL"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "tel:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 64
    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/base/BaseFragment;->startActivity(Landroid/content/Intent;)V

    .line 66
    :cond_0
    return-void
.end method

.method protected closeInputMethod(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 89
    iget-object v0, p0, Lcom/ali/user/mobile/base/BaseFragment;->mAttatachedAtcitity:Landroid/app/Activity;

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 90
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 91
    return-void
.end method

.method public dismissProgress()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/ali/user/mobile/base/BaseFragment;->a:Lcom/ali/user/mobile/base/helper/ActivityUIHelper;

    invoke-virtual {v0}, Lcom/ali/user/mobile/base/helper/ActivityUIHelper;->dismissProgress()V

    .line 58
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 21
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 22
    iput-object p1, p0, Lcom/ali/user/mobile/base/BaseFragment;->mAttatachedAtcitity:Landroid/app/Activity;

    .line 23
    new-instance v0, Lcom/ali/user/mobile/base/helper/ActivityUIHelper;

    invoke-direct {v0, p1}, Lcom/ali/user/mobile/base/helper/ActivityUIHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ali/user/mobile/base/BaseFragment;->a:Lcom/ali/user/mobile/base/helper/ActivityUIHelper;

    .line 24
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/ali/user/mobile/base/BaseFragment;->a:Lcom/ali/user/mobile/base/helper/ActivityUIHelper;

    invoke-virtual {v0}, Lcom/ali/user/mobile/base/helper/ActivityUIHelper;->finish()V

    .line 96
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 97
    return-void
.end method

.method protected showInputMethodPannel(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 69
    iget-object v0, p0, Lcom/ali/user/mobile/base/BaseFragment;->mAttatachedAtcitity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/ali/user/mobile/base/BaseFragmentActivity;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/ali/user/mobile/base/BaseFragment;->mAttatachedAtcitity:Landroid/app/Activity;

    check-cast v0, Lcom/ali/user/mobile/base/BaseFragmentActivity;

    .line 71
    invoke-virtual {v0, p1}, Lcom/ali/user/mobile/base/BaseFragmentActivity;->showInputMethodPannel(Landroid/view/View;)V

    .line 82
    :goto_0
    return-void

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/base/BaseFragment;->mAttatachedAtcitity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/ali/user/mobile/base/BaseFragment$1;

    invoke-direct {v1, p0, p1}, Lcom/ali/user/mobile/base/BaseFragment$1;-><init>(Lcom/ali/user/mobile/base/BaseFragment;Landroid/view/View;)V

    .line 80
    const-wide/16 v2, 0x258

    .line 73
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public showProgress(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/ali/user/mobile/base/BaseFragment;->a:Lcom/ali/user/mobile/base/helper/ActivityUIHelper;

    invoke-virtual {v0, p1}, Lcom/ali/user/mobile/base/helper/ActivityUIHelper;->showProgress(Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public toast(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/ali/user/mobile/base/BaseFragment;->a:Lcom/ali/user/mobile/base/helper/ActivityUIHelper;

    invoke-virtual {v0, p1, p2}, Lcom/ali/user/mobile/base/helper/ActivityUIHelper;->toast(Ljava/lang/String;I)V

    .line 50
    return-void
.end method
