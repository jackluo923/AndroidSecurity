.class Lcom/alipay/mobile/framework/app/ui/QuinoxFragmentActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "QuinoxFragmentActivity.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "QuinoxFragmentActivity"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Intent;I)V
    .locals 5

    .prologue
    .line 63
    :try_start_0
    const-string/jumbo v0, "QuinoxFragmentActivity"

    new-instance v1, Lcom/alipay/mobile/framework/exception/StartActivityRecord;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "startActivityForResult(intent="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", code="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alipay/mobile/framework/exception/StartActivityRecord;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :goto_0
    return-void

    .line 66
    :catch_0
    move-exception v0

    .line 67
    const-string/jumbo v1, "QuinoxFragmentActivity"

    new-instance v2, Lcom/alipay/mobile/framework/exception/StartActivityRecord;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Start ActivityShell: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/alipay/mobile/framework/exception/StartActivityRecord;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 68
    invoke-static {p0, p1, p2}, Lcom/alipay/mobile/quinox/engine/BundleEngine;->startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;I)V

    goto :goto_0
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 30
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->attachBaseContext(Landroid/content/Context;)V

    .line 31
    const-string/jumbo v0, "QuinoxFragmentActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " replaceResources()."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/framework/app/ui/QuinoxFragmentActivity;->replaceResources(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 74
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 79
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 80
    return-object v0
.end method

.method protected replaceResources(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 36
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getBundleContext()Lcom/alipay/mobile/framework/BundleContext;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/alipay/mobile/framework/BundleContext;->replaceResources(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 41
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, v1, v0

    .line 42
    const-string/jumbo v0, "void com.alipay.mobile.framework.app.ui.BaseActivity.startActivity(Intent)"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 43
    const-string/jumbo v0, "void com.alipay.mobile.framework.app.ui.BaseActivity.startActivity(Intent)"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 44
    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 45
    :cond_0
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/framework/app/ui/QuinoxFragmentActivity;->a(Landroid/content/Intent;I)V

    .line 47
    :cond_1
    const-string/jumbo v0, "void com.alipay.mobile.framework.app.ui.BaseActivity.startActivity(Intent)"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 48
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 3

    .prologue
    .line 52
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, v1, v0

    const/4 v0, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    .line 53
    const-string/jumbo v0, "void com.alipay.mobile.framework.app.ui.BaseActivity.startActivityForResult(Intent, int)"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 54
    const-string/jumbo v0, "void com.alipay.mobile.framework.app.ui.BaseActivity.startActivityForResult(Intent, int)"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 55
    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 56
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/framework/app/ui/QuinoxFragmentActivity;->a(Landroid/content/Intent;I)V

    .line 58
    :cond_1
    const-string/jumbo v0, "void com.alipay.mobile.framework.app.ui.BaseActivity.startActivityForResult(Intent, int)"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 59
    return-void
.end method
