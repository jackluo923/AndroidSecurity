.class public Lcom/alipay/mobile/framework/app/ui/ActivityHelper;
.super Ljava/lang/Object;
.source "ActivityHelper.java"


# static fields
.field public static final KEY_APP_ID:Ljava/lang/String; = "app_id"

.field public static final KEY_EXTRAS:Ljava/lang/String; = "mExtras"

.field static final TAG:Ljava/lang/String;

.field private static a:Z


# instance fields
.field private b:Landroid/app/Activity;

.field private c:Landroid/os/Handler;

.field private d:Lcom/alipay/mobile/framework/app/ui/DialogHelper;

.field protected mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

.field protected mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->TAG:Ljava/lang/String;

    .line 52
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->a:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->c:Landroid/os/Handler;

    .line 77
    iput-object p1, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->b:Landroid/app/Activity;

    .line 80
    invoke-static {}, Lcom/alipay/mobile/framework/app/ui/ActivityCollections;->getInstance()Lcom/alipay/mobile/framework/app/ui/ActivityCollections;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->b:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/app/ui/ActivityCollections;->recordActivity(Landroid/app/Activity;)V

    .line 82
    new-instance v0, Lcom/alipay/mobile/framework/app/ui/DialogHelper;

    iget-object v1, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->b:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->d:Lcom/alipay/mobile/framework/app/ui/DialogHelper;

    .line 84
    const-string/jumbo v0, ""

    .line 86
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "app_id"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    .line 91
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->a(Landroid/content/Intent;)V

    .line 92
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    .line 93
    if-nez v0, :cond_0

    .line 94
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unable to start "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :catch_0
    move-exception v1

    .line 88
    sget-object v2, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v0

    goto :goto_0

    .line 96
    :cond_0
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    .line 97
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findAppById(Ljava/lang/String;)Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/app/ActivityApplication;

    iput-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    .line 98
    sget-object v0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ActivityHelper() appId: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    if-nez v0, :cond_1

    .line 101
    new-instance v0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper$ActivityApplicationStub;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper$ActivityApplicationStub;-><init>(Lcom/alipay/mobile/framework/app/ui/ActivityHelper;Lcom/alipay/mobile/framework/app/ui/ActivityHelper$1;)V

    iput-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    .line 102
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    iget-object v1, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->attachContext(Lcom/alipay/mobile/framework/MicroApplicationContext;)V

    .line 103
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->finish()V

    .line 104
    sget-object v0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "ActivityHelper() return"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :goto_1
    return-void

    .line 108
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->setIsPrevent(Z)V

    .line 109
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    iget-object v1, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->b:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->pushActivity(Landroid/app/Activity;)V

    .line 111
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->b:Landroid/app/Activity;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    .line 113
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.alipay.mobile.framework.ACTIVITY_CREATE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_1
.end method

.method private a(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 118
    const-string/jumbo v0, "mExtras"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 119
    if-eqz v0, :cond_0

    .line 120
    iget-object v1, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 121
    invoke-virtual {p1, v0}, Landroid/content/Intent;->replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 123
    :cond_0
    return-void
.end method

.method static startClientStartedPipeline()V
    .locals 2

    .prologue
    .line 162
    sget-boolean v0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->a:Z

    if-nez v0, :cond_0

    .line 163
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->a:Z

    .line 165
    const-string/jumbo v0, "Pipeline"

    const-string/jumbo v1, "PIPELINE_FRAMEWORK_CLIENT_STARTED : start"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    .line 167
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 168
    const-string/jumbo v1, "com.alipay.mobile.client.STARTED"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getPipelineByName(Ljava/lang/String;)Lcom/alipay/mobile/framework/pipeline/Pipeline;

    move-result-object v0

    .line 169
    invoke-interface {v0}, Lcom/alipay/mobile/framework/pipeline/Pipeline;->start()V

    .line 171
    :cond_0
    return-void
.end method


# virtual methods
.method public alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 7

    .prologue
    .line 284
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->d:Lcom/alipay/mobile/framework/app/ui/DialogHelper;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 286
    return-void
.end method

.method public alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/Boolean;)V
    .locals 8

    .prologue
    .line 311
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->d:Lcom/alipay/mobile/framework/app/ui/DialogHelper;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/Boolean;)V

    .line 313
    return-void
.end method

.method public alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 9

    .prologue
    .line 332
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->d:Lcom/alipay/mobile/framework/app/ui/DialogHelper;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 334
    return-void
.end method

.method public dismissProgressDialog()V
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->d:Lcom/alipay/mobile/framework/app/ui/DialogHelper;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->dismissProgressDialog()V

    .line 371
    return-void
.end method

.method public dispatchOnTouchEvent(Landroid/view/MotionEvent;)V
    .locals 4

    .prologue
    .line 219
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 220
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->b:Landroid/app/Activity;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    .line 224
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.alipay.mobile.framework.VIEW_CLICK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 225
    const-string/jumbo v2, "com.alipay.mobile.framework.VIEW_CLICK"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 226
    iget-object v2, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    if-eqz v2, :cond_1

    .line 227
    const-string/jumbo v2, "com.alipay.mobile.framework.ACTIVITY_DATA"

    iget-object v3, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v3}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 229
    :cond_1
    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 232
    :cond_2
    return-void
.end method

.method public findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 375
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 260
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    iget-object v1, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->b:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->removeActivity(Landroid/app/Activity;)V

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->d:Lcom/alipay/mobile/framework/app/ui/DialogHelper;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->dismissProgressDialog()V

    .line 263
    return-void
.end method

.method public getApp()Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method public getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/alipay/mobile/framework/service/ext/ExternalService;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 382
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    return-object v0
.end method

.method public getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    return-object v0
.end method

.method public onContentChanged()V
    .locals 0

    .prologue
    .line 191
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    .line 239
    :try_start_0
    const-string/jumbo v0, "android.text.TextLine"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "sCached"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    iget-object v1, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->b:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->removeActivity(Landroid/app/Activity;)V

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->b:Landroid/app/Activity;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    .line 244
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.alipay.mobile.framework.ACTIVITY_DESTROY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 245
    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 246
    return-void

    .line 239
    :catch_0
    move-exception v0

    sget-object v0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->TAG:Ljava/lang/String;

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->setIsPrevent(Z)V

    .line 195
    invoke-direct {p0, p1}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->a(Landroid/content/Intent;)V

    .line 196
    return-void
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 174
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->b:Landroid/app/Activity;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    .line 176
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.alipay.mobile.framework.ACTIVITY_PAUSE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 177
    iget-object v2, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    if-eqz v2, :cond_0

    .line 178
    const-string/jumbo v2, "com.alipay.mobile.framework.ACTIVITY_DATA"

    iget-object v3, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v3}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    :cond_0
    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 183
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 133
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    .line 134
    invoke-static {}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->getInstance()Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->setIsFinishStartup(Z)V

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->b:Landroid/app/Activity;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    .line 139
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.alipay.mobile.framework.ACTIVITY_RESUME"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 141
    iget-object v2, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->b:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 142
    if-eqz v2, :cond_1

    .line 144
    :try_start_0
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 145
    if-eqz v2, :cond_1

    .line 146
    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    if-eqz v2, :cond_2

    .line 153
    const-string/jumbo v2, "app_id"

    iget-object v3, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v3}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    :cond_2
    const-string/jumbo v2, "com.alipay.mobile.framework.ACTIVITY_DATA"

    iget-object v3, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->b:Landroid/app/Activity;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 158
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    iget-object v1, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->b:Landroid/app/Activity;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->updateActivity(Landroid/app/Activity;)Landroid/app/Activity;

    .line 159
    return-void

    .line 149
    :catch_0
    move-exception v2

    sget-object v2, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->TAG:Ljava/lang/String;

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->saveState()V

    .line 236
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 126
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->b:Landroid/app/Activity;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    .line 128
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.alipay.mobile.framework.ACTIVITY_START"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 130
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 187
    return-void
.end method

.method public onUserLeaveHint()V
    .locals 0

    .prologue
    .line 200
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

    .prologue
    .line 205
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->b:Landroid/app/Activity;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    .line 207
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.alipay.mobile.framework.WINDOW_FOCUS_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 209
    const-string/jumbo v2, "com.alipay.mobile.framework.WINDOW_FOCUS_CHANGED"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 211
    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 212
    if-eqz p1, :cond_0

    .line 213
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->windowFocus()V

    .line 215
    :cond_0
    return-void
.end method

.method public showProgressDialog(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->d:Lcom/alipay/mobile/framework/app/ui/DialogHelper;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->showProgressDialog(Ljava/lang/String;)V

    .line 356
    return-void
.end method

.method public showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 2

    .prologue
    .line 366
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->d:Lcom/alipay/mobile/framework/app/ui/DialogHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;Z)V

    .line 367
    return-void
.end method

.method public toast(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->d:Lcom/alipay/mobile/framework/app/ui/DialogHelper;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->toast(Ljava/lang/String;I)V

    .line 346
    return-void
.end method
