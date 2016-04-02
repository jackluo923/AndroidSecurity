.class Lcom/alipay/android/launcher/TabLauncher$HandleonResumeIdleHandler;
.super Ljava/lang/Object;
.source "TabLauncher.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# instance fields
.field final mCurrentGroupId:Ljava/lang/String;

.field final synthetic this$0:Lcom/alipay/android/launcher/TabLauncher;


# direct methods
.method constructor <init>(Lcom/alipay/android/launcher/TabLauncher;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 845
    iput-object p1, p0, Lcom/alipay/android/launcher/TabLauncher$HandleonResumeIdleHandler;->this$0:Lcom/alipay/android/launcher/TabLauncher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 846
    iput-object p2, p0, Lcom/alipay/android/launcher/TabLauncher$HandleonResumeIdleHandler;->mCurrentGroupId:Ljava/lang/String;

    .line 847
    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .locals 2

    .prologue
    .line 854
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher$HandleonResumeIdleHandler;->this$0:Lcom/alipay/android/launcher/TabLauncher;

    iget-object v1, p0, Lcom/alipay/android/launcher/TabLauncher$HandleonResumeIdleHandler;->mCurrentGroupId:Ljava/lang/String;

    # invokes: Lcom/alipay/android/launcher/TabLauncher;->handleOnResume(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/alipay/android/launcher/TabLauncher;->access$6(Lcom/alipay/android/launcher/TabLauncher;Ljava/lang/String;)V

    .line 857
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/MessageQueue;->removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 858
    const/4 v0, 0x0

    return v0
.end method
