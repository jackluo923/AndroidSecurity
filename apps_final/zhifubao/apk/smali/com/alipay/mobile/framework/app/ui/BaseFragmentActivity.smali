.class public abstract Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;
.super Lcom/alipay/mobile/framework/app/ui/QuinoxFragmentActivity;
.source "BaseFragmentActivity.java"

# interfaces
.implements Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;


# static fields
.field static final TAG:Ljava/lang/String;


# instance fields
.field private a:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

.field protected mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

.field protected mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/QuinoxFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 7

    .prologue
    .line 317
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->a:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 319
    return-void
.end method

.method public alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/Boolean;)V
    .locals 8

    .prologue
    .line 344
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->a:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/Boolean;)V

    .line 346
    return-void
.end method

.method public alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 9

    .prologue
    .line 365
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->a:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 367
    return-void
.end method

.method public dismissProgressDialog()V
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->a:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->dismissProgressDialog()V

    .line 417
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->a:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->dispatchOnTouchEvent(Landroid/view/MotionEvent;)V

    .line 48
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/QuinoxFragmentActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;
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
    .line 420
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->a:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 281
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    .line 282
    const-string/jumbo v0, "void com.alipay.mobile.framework.app.ui.BaseActivity.finish()"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 283
    const-string/jumbo v0, "void com.alipay.mobile.framework.app.ui.BaseActivity.finish()"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 284
    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->a:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->a:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->finish()V

    :cond_1
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/QuinoxFragmentActivity;->finish()V

    .line 287
    :cond_2
    const-string/jumbo v0, "void com.alipay.mobile.framework.app.ui.BaseActivity.finish()"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 288
    return-void
.end method

.method public getActivityApplication()Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method public bridge synthetic getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/QuinoxFragmentActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method protected getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;
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
    .line 425
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->a:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/QuinoxFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 134
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    .line 135
    const-string/jumbo v0, "void com.alipay.mobile.framework.app.ui.BaseActivity.onBackPressed()"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 136
    const-string/jumbo v0, "void com.alipay.mobile.framework.app.ui.BaseActivity.onBackPressed()"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 137
    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 138
    :cond_0
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/QuinoxFragmentActivity;->onBackPressed()V

    .line 140
    :cond_1
    const-string/jumbo v0, "void com.alipay.mobile.framework.app.ui.BaseActivity.onBackPressed()"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 141
    return-void
.end method

.method public onContentChanged()V
    .locals 2

    .prologue
    .line 265
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    .line 266
    const-string/jumbo v0, "void com.alipay.mobile.framework.app.ui.BaseActivity.onContentChanged()"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 267
    const-string/jumbo v0, "void com.alipay.mobile.framework.app.ui.BaseActivity.onContentChanged()"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 268
    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->a:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->onContentChanged()V

    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/QuinoxFragmentActivity;->onContentChanged()V

    .line 271
    :cond_1
    const-string/jumbo v0, "void com.alipay.mobile.framework.app.ui.BaseActivity.onContentChanged()"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 272
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 63
    new-array v6, v7, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, v6, v0

    .line 64
    const-string/jumbo v0, "void com.alipay.mobile.framework.app.ui.BaseActivity.onCreate(Bundle)"

    invoke-static {v0, p0, v6}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 65
    const-string/jumbo v0, "void com.alipay.mobile.framework.app.ui.BaseActivity.onCreate(Bundle)"

    invoke-static {v0, p0, v6}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 66
    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 67
    :cond_0
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/QuinoxFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v0, "dynamicLoadToCheck"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-static/range {v0 .. v5}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->footprint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    new-instance v0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->a:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->a:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->getApp()Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->a:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string/jumbo v1, "M040"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 69
    :cond_1
    const-string/jumbo v0, "void com.alipay.mobile.framework.app.ui.BaseActivity.onCreate(Bundle)"

    invoke-static {v0, p0, v6}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 70
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 247
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    .line 248
    const-string/jumbo v0, "void com.alipay.mobile.framework.app.ui.BaseActivity.onDestroy()"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 249
    const-string/jumbo v0, "void com.alipay.mobile.framework.app.ui.BaseActivity.onDestroy()"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 250
    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 251
    :cond_0
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/QuinoxFragmentActivity;->onDestroy()V

    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->a:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->a:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->onDestroy()V

    .line 253
    :cond_1
    const-string/jumbo v0, "void com.alipay.mobile.framework.app.ui.BaseActivity.onDestroy()"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 254
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 149
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, v1, v0

    .line 150
    const-string/jumbo v0, "void com.alipay.mobile.framework.app.ui.BaseActivity.onNewIntent(Intent)"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 151
    const-string/jumbo v0, "void com.alipay.mobile.framework.app.ui.BaseActivity.onNewIntent(Intent)"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 152
    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 153
    :cond_0
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/QuinoxFragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->a:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->onNewIntent(Landroid/content/Intent;)V

    .line 155
    :cond_1
    const-string/jumbo v0, "void com.alipay.mobile.framework.app.ui.BaseActivity.onNewIntent(Intent)"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 156
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 115
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    .line 116
    const-string/jumbo v0, "void com.alipay.mobile.framework.app.ui.BaseActivity.onPause()"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 117
    const-string/jumbo v0, "void com.alipay.mobile.framework.app.ui.BaseActivity.onPause()"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 118
    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 119
    :cond_0
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/QuinoxFragmentActivity;->onPause()V

    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->a:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->a:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->onPause()V

    .line 121
    :cond_1
    const-string/jumbo v0, "void com.alipay.mobile.framework.app.ui.BaseActivity.onPause()"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 123
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 95
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    .line 96
    const-string/jumbo v0, "void com.alipay.mobile.framework.app.ui.BaseActivity.onResume()"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 97
    const-string/jumbo v0, "void com.alipay.mobile.framework.app.ui.BaseActivity.onResume()"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 98
    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 99
    :cond_0
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/QuinoxFragmentActivity;->onResume()V

    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->a:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->a:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->onResume()V

    .line 101
    :cond_1
    const-string/jumbo v0, "void com.alipay.mobile.framework.app.ui.BaseActivity.onResume()"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 103
    invoke-static {}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->startClientStartedPipeline()V

    .line 104
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 197
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, v1, v0

    .line 198
    const-string/jumbo v0, "void com.alipay.mobile.framework.app.ui.BaseActivity.onSaveInstanceState(Bundle)"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 199
    const-string/jumbo v0, "void com.alipay.mobile.framework.app.ui.BaseActivity.onSaveInstanceState(Bundle)"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 200
    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 201
    :cond_0
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/QuinoxFragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->a:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 203
    :cond_1
    const-string/jumbo v0, "void com.alipay.mobile.framework.app.ui.BaseActivity.onSaveInstanceState(Bundle)"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 204
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 213
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    .line 214
    const-string/jumbo v0, "void com.alipay.mobile.framework.app.ui.BaseActivity.onStart()"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 215
    const-string/jumbo v0, "void com.alipay.mobile.framework.app.ui.BaseActivity.onStart()"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 216
    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 217
    :cond_0
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/QuinoxFragmentActivity;->onStart()V

    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->a:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->a:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->onStart()V

    .line 219
    :cond_1
    const-string/jumbo v0, "void com.alipay.mobile.framework.app.ui.BaseActivity.onStart()"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 220
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 231
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    .line 232
    const-string/jumbo v0, "void com.alipay.mobile.framework.app.ui.BaseActivity.onStop()"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 233
    const-string/jumbo v0, "void com.alipay.mobile.framework.app.ui.BaseActivity.onStop()"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 234
    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 235
    :cond_0
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/QuinoxFragmentActivity;->onStop()V

    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->a:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->onStop()V

    .line 237
    :cond_1
    const-string/jumbo v0, "void com.alipay.mobile.framework.app.ui.BaseActivity.onStop()"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 238
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 2

    .prologue
    .line 165
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    .line 166
    const-string/jumbo v0, "void com.alipay.mobile.framework.app.ui.BaseActivity.onUserLeaveHint()"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 167
    const-string/jumbo v0, "void com.alipay.mobile.framework.app.ui.BaseActivity.onUserLeaveHint()"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 168
    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 169
    :cond_0
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/QuinoxFragmentActivity;->onUserLeaveHint()V

    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->a:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->onUserLeaveHint()V

    .line 171
    :cond_1
    const-string/jumbo v0, "void com.alipay.mobile.framework.app.ui.BaseActivity.onUserLeaveHint()"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 172
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

    .prologue
    .line 181
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v0

    .line 182
    const-string/jumbo v0, "void com.alipay.mobile.framework.app.ui.BaseActivity.onWindowFocusChanged(boolean)"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 183
    const-string/jumbo v0, "void com.alipay.mobile.framework.app.ui.BaseActivity.onWindowFocusChanged(boolean)"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 184
    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 185
    :cond_0
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/QuinoxFragmentActivity;->onWindowFocusChanged(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->a:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->onWindowFocusChanged(Z)V

    .line 187
    :cond_1
    const-string/jumbo v0, "void com.alipay.mobile.framework.app.ui.BaseActivity.onWindowFocusChanged(boolean)"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 188
    return-void
.end method

.method public showProgressDialog(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->a:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->showProgressDialog(Ljava/lang/String;)V

    .line 401
    return-void
.end method

.method public showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->a:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 412
    return-void
.end method

.method public bridge synthetic startActivity(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/QuinoxFragmentActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic startActivityForResult(Landroid/content/Intent;I)V
    .locals 0

    .prologue
    .line 28
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/framework/app/ui/QuinoxFragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public toast(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 379
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    .line 380
    const-string/jumbo v0, "void com.alipay.mobile.framework.app.ui.BaseActivity.toast(String, int)"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 381
    const-string/jumbo v0, "void com.alipay.mobile.framework.app.ui.BaseActivity.toast(String, int)"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 382
    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 383
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->a:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->toast(Ljava/lang/String;I)V

    .line 385
    :cond_1
    const-string/jumbo v0, "void com.alipay.mobile.framework.app.ui.BaseActivity.toast(String, int)"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 386
    return-void
.end method
