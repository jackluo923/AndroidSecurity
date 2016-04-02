.class public Lcom/alipay/android/launcher/guide/StartGuideActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;
.source "StartGuideActivity.java"

# interfaces
.implements Lcom/alipay/android/launcher/guide/StartAlipayCommon;


# static fields
.field private static final TAG:Ljava/lang/String; = "StartGuideActivity"

.field public static final TRANSACTION_ID:Ljava/lang/String; = "transaction_id"


# instance fields
.field private canClick:Z

.field private edit:Landroid/content/SharedPreferences$Editor;

.field private guidePager:Landroid/support/v4/view/ViewPager;

.field private mTransactionID:Ljava/lang/String;

.field private sgfAdapter:Lcom/alipay/android/launcher/guide/StartGuideFragmentAdapter;

.field private ss:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;-><init>()V

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/launcher/guide/StartGuideActivity;->canClick:Z

    .line 25
    return-void
.end method

.method static synthetic access$2(Lcom/alipay/android/launcher/guide/StartGuideActivity;)Z
    .locals 1

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/alipay/android/launcher/guide/StartGuideActivity;->canClick:Z

    return v0
.end method

.method static synthetic access$3(Lcom/alipay/android/launcher/guide/StartGuideActivity;Z)V
    .locals 0

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/alipay/android/launcher/guide/StartGuideActivity;->canClick:Z

    return-void
.end method

.method private writeLog()V
    .locals 2

    .prologue
    .line 92
    new-instance v0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-direct {v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;-><init>()V

    .line 93
    const-string/jumbo v1, "UC-FFC-150108-10"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setUserCaseID(Ljava/lang/String;)V

    .line 94
    const-string/jumbo v1, "09999971"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setAppID(Ljava/lang/String;)V

    .line 95
    const-string/jumbo v1, "newClick"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setSeedID(Ljava/lang/String;)V

    .line 96
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getBehavorLogger()Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;->click(Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V

    .line 97
    return-void
.end method


# virtual methods
.method public callMain()V
    .locals 3

    .prologue
    .line 81
    invoke-static {}, Lcom/alipay/mobile/common/info/AppInfo;->getInstance()Lcom/alipay/mobile/common/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/AppInfo;->getmProductVersion()Ljava/lang/String;

    move-result-object v0

    .line 82
    iget-object v1, p0, Lcom/alipay/android/launcher/guide/StartGuideActivity;->edit:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v2, "currentLoadVersion"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 83
    iget-object v0, p0, Lcom/alipay/android/launcher/guide/StartGuideActivity;->edit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 84
    iget-object v0, p0, Lcom/alipay/android/launcher/guide/StartGuideActivity;->ss:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "isShowGuide"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 85
    iget-object v0, p0, Lcom/alipay/android/launcher/guide/StartGuideActivity;->ss:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "isUpgrade"

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 86
    const/16 v0, 0x390

    invoke-virtual {p0, v0}, Lcom/alipay/android/launcher/guide/StartGuideActivity;->setResult(I)V

    .line 87
    invoke-direct {p0}, Lcom/alipay/android/launcher/guide/StartGuideActivity;->writeLog()V

    .line 88
    invoke-virtual {p0}, Lcom/alipay/android/launcher/guide/StartGuideActivity;->finish()V

    .line 89
    return-void
.end method

.method public finish()V
    .locals 4

    .prologue
    .line 101
    iget-object v0, p0, Lcom/alipay/android/launcher/guide/StartGuideActivity;->mTransactionID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 103
    const-class v1, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    .line 102
    iget-object v1, p0, Lcom/alipay/android/launcher/guide/StartGuideActivity;->mTransactionID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;->removeTransaction(Ljava/lang/String;)V

    .line 106
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "StartGuideActivity"

    new-instance v2, Ljava/lang/Exception;

    const-string/jumbo v3, "just log stack finish"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 107
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->finish()V

    .line 108
    return-void
.end method

.method public getAssets()Landroid/content/res/AssetManager;
    .locals 1

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/alipay/android/launcher/guide/StartGuideActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 112
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/alipay/android/launcher/guide/StartGuideActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 78
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/16 v4, 0x400

    const/4 v0, 0x1

    .line 39
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "StartGuideActivity"

    const-string/jumbo v3, "oncreate"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-virtual {p0, v0}, Lcom/alipay/android/launcher/guide/StartGuideActivity;->requestWindowFeature(I)Z

    .line 42
    invoke-virtual {p0}, Lcom/alipay/android/launcher/guide/StartGuideActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 46
    const-string/jumbo v1, "alipayGuide"

    const v2, 0x8000

    invoke-virtual {p0, v1, v2}, Lcom/alipay/android/launcher/guide/StartGuideActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/launcher/guide/StartGuideActivity;->edit:Landroid/content/SharedPreferences$Editor;

    .line 47
    sget v1, Lcom/alipay/android/tablauncher/R$layout;->guide_viewpager:I

    invoke-virtual {p0, v1}, Lcom/alipay/android/launcher/guide/StartGuideActivity;->setContentView(I)V

    .line 48
    new-instance v1, Lcom/alipay/android/launcher/guide/StartGuideActivity$1;

    invoke-direct {v1, p0}, Lcom/alipay/android/launcher/guide/StartGuideActivity$1;-><init>(Lcom/alipay/android/launcher/guide/StartGuideActivity;)V

    .line 61
    invoke-virtual {p0}, Lcom/alipay/android/launcher/guide/StartGuideActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 62
    if-eqz v2, :cond_0

    .line 63
    const-string/jumbo v3, "type"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 64
    const-string/jumbo v3, "transaction_id"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/android/launcher/guide/StartGuideActivity;->mTransactionID:Ljava/lang/String;

    .line 66
    :cond_0
    new-instance v2, Lcom/alipay/android/launcher/guide/StartGuideFragmentAdapter;

    invoke-virtual {p0}, Lcom/alipay/android/launcher/guide/StartGuideActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    .line 67
    invoke-direct {v2, v3, v1, v0}, Lcom/alipay/android/launcher/guide/StartGuideFragmentAdapter;-><init>(Landroid/support/v4/app/FragmentManager;Landroid/view/View$OnClickListener;I)V

    .line 66
    iput-object v2, p0, Lcom/alipay/android/launcher/guide/StartGuideActivity;->sgfAdapter:Lcom/alipay/android/launcher/guide/StartGuideFragmentAdapter;

    .line 68
    sget v0, Lcom/alipay/android/tablauncher/R$id;->start_guide_viewpage:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/launcher/guide/StartGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/alipay/android/launcher/guide/StartGuideActivity;->guidePager:Landroid/support/v4/view/ViewPager;

    .line 69
    iget-object v0, p0, Lcom/alipay/android/launcher/guide/StartGuideActivity;->guidePager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/alipay/android/launcher/guide/StartGuideActivity;->sgfAdapter:Lcom/alipay/android/launcher/guide/StartGuideFragmentAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 70
    sget v0, Lcom/alipay/android/tablauncher/R$id;->indicator:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/launcher/guide/StartGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/launcher/guide/CirclePageIndicator;

    .line 71
    iget-object v1, p0, Lcom/alipay/android/launcher/guide/StartGuideActivity;->guidePager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Lcom/alipay/android/launcher/guide/CirclePageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 72
    const-string/jumbo v0, "main_showGuide"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alipay/android/launcher/guide/StartGuideActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/launcher/guide/StartGuideActivity;->ss:Landroid/content/SharedPreferences;

    .line 73
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 128
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->onDestroy()V

    .line 129
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "StartGuideActivity"

    const-string/jumbo v2, "onDestroy"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/alipay/android/launcher/guide/StartGuideActivity;->sgfAdapter:Lcom/alipay/android/launcher/guide/StartGuideFragmentAdapter;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/alipay/android/launcher/guide/StartGuideActivity;->sgfAdapter:Lcom/alipay/android/launcher/guide/StartGuideFragmentAdapter;

    invoke-virtual {v0}, Lcom/alipay/android/launcher/guide/StartGuideFragmentAdapter;->destroy()V

    .line 133
    :cond_0
    return-void
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
