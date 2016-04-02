.class Lcom/alipay/android/launcher/TabLauncherBroadcastReceiver$1;
.super Lcom/alipay/mobile/framework/service/common/TaskScheduleService$Transaction;
.source "TabLauncherBroadcastReceiver.java"


# instance fields
.field final synthetic this$0:Lcom/alipay/android/launcher/TabLauncherBroadcastReceiver;


# direct methods
.method constructor <init>(Lcom/alipay/android/launcher/TabLauncherBroadcastReceiver;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/launcher/TabLauncherBroadcastReceiver$1;->this$0:Lcom/alipay/android/launcher/TabLauncherBroadcastReceiver;

    .line 174
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/common/TaskScheduleService$Transaction;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 179
    invoke-static {}, Lcom/alipay/android/launcher/guide/GuideManager;->getInstance()Lcom/alipay/android/launcher/guide/GuideManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/launcher/TabLauncherBroadcastReceiver$1;->this$0:Lcom/alipay/android/launcher/TabLauncherBroadcastReceiver;

    # getter for: Lcom/alipay/android/launcher/TabLauncherBroadcastReceiver;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/alipay/android/launcher/TabLauncherBroadcastReceiver;->access$0(Lcom/alipay/android/launcher/TabLauncherBroadcastReceiver;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/android/launcher/TabLauncherBroadcastReceiver$1;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/launcher/guide/GuideManager;->startHongbaoGuide(Landroid/content/Context;Ljava/lang/String;)V

    .line 180
    return-void
.end method
