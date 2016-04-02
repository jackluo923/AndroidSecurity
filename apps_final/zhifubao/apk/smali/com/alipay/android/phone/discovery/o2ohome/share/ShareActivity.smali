.class public Lcom/alipay/android/phone/discovery/o2ohome/share/ShareActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseActivity;
.source "ShareActivity.java"


# static fields
.field public static final EXTRA_SHARE_GROUP_ID:Ljava/lang/String; = "groupId"

.field public static final EXTRA_SHARE_PARAM_RID:Ljava/lang/String; = "chatUserId"

.field public static final EXTRA_SHARE_PARAM_TYPE:Ljava/lang/String; = "chatUserType"

.field public static final GROUP:Ljava/lang/String; = "2"

.field public static final PERSONAL:Ljava/lang/String; = "1"


# instance fields
.field private handler:Landroid/os/Handler;

.field private o2oWidgetGroupShare:Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;

.field protected shareParamReceiverId:Ljava/lang/String;

.field protected shareParamReceiverUserType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;-><init>()V

    .line 24
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/ShareActivity;->handler:Landroid/os/Handler;

    .line 13
    return-void
.end method

.method static synthetic access$4(Lcom/alipay/android/phone/discovery/o2ohome/share/ShareActivity;)Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/ShareActivity;->o2oWidgetGroupShare:Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;

    return-object v0
.end method

.method private initData()V
    .locals 3

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/alipay/android/phone/discovery/o2ohome/share/ShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 48
    if-nez v0, :cond_1

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    const-string/jumbo v1, "chatUserType"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/ShareActivity;->shareParamReceiverUserType:Ljava/lang/String;

    .line 52
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/ShareActivity;->shareParamReceiverUserType:Ljava/lang/String;

    const-string/jumbo v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 53
    const-string/jumbo v1, "chatUserId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/ShareActivity;->shareParamReceiverId:Ljava/lang/String;

    goto :goto_0

    .line 54
    :cond_2
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/ShareActivity;->shareParamReceiverUserType:Ljava/lang/String;

    const-string/jumbo v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    const-string/jumbo v1, "groupId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/ShareActivity;->shareParamReceiverId:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/share/ShareActivity;->initData()V

    .line 30
    new-instance v0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/ShareActivity;->shareParamReceiverId:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/ShareActivity;->shareParamReceiverUserType:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/ShareActivity;->o2oWidgetGroupShare:Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;

    .line 31
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/ShareActivity;->o2oWidgetGroupShare:Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;

    invoke-virtual {v0, p0}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->setContext(Landroid/app/Activity;)V

    .line 32
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/ShareActivity;->o2oWidgetGroupShare:Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/ShareActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->setContext(Lcom/alipay/mobile/framework/MicroApplicationContext;)V

    .line 33
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/ShareActivity;->o2oWidgetGroupShare:Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/discovery/o2ohome/share/ShareActivity;->setContentView(Landroid/view/View;)V

    .line 35
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/ShareActivity;->o2oWidgetGroupShare:Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->initTitlebar()V

    .line 36
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/ShareActivity;->o2oWidgetGroupShare:Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->initPullRefreshView()V

    .line 38
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/ShareActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/phone/discovery/o2ohome/share/ShareActivity$1;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/discovery/o2ohome/share/ShareActivity$1;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/share/ShareActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 44
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 62
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onDestroy()V

    .line 63
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/ShareActivity;->o2oWidgetGroupShare:Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->destroy()V

    .line 64
    return-void
.end method

.method public bridge synthetic startActivity(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic startActivityForResult(Landroid/content/Intent;I)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
