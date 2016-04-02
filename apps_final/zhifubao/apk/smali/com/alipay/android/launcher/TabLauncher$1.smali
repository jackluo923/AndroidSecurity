.class Lcom/alipay/android/launcher/TabLauncher$1;
.super Ljava/lang/Object;
.source "TabLauncher.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/launcher/TabLauncher;


# direct methods
.method constructor <init>(Lcom/alipay/android/launcher/TabLauncher;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/launcher/TabLauncher$1;->this$0:Lcom/alipay/android/launcher/TabLauncher;

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 155
    const-wide/16 v0, 0x1770

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :goto_0
    # getter for: Lcom/alipay/android/launcher/TabLauncher;->isDestroyed:Z
    invoke-static {}, Lcom/alipay/android/launcher/TabLauncher;->access$3()Z

    move-result v0

    if-nez v0, :cond_0

    .line 159
    invoke-static {}, Lcom/alipay/android/launcher/service/LauncherService;->startLauncherService()V

    .line 161
    :cond_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
