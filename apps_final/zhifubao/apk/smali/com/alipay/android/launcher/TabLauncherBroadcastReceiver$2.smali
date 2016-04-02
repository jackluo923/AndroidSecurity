.class Lcom/alipay/android/launcher/TabLauncherBroadcastReceiver$2;
.super Lcom/alipay/mobile/framework/service/common/TaskScheduleService$Transaction;
.source "TabLauncherBroadcastReceiver.java"


# instance fields
.field final synthetic this$0:Lcom/alipay/android/launcher/TabLauncherBroadcastReceiver;

.field private final synthetic val$guideType:I


# direct methods
.method constructor <init>(Lcom/alipay/android/launcher/TabLauncherBroadcastReceiver;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/launcher/TabLauncherBroadcastReceiver$2;->this$0:Lcom/alipay/android/launcher/TabLauncherBroadcastReceiver;

    iput p2, p0, Lcom/alipay/android/launcher/TabLauncherBroadcastReceiver$2;->val$guideType:I

    .line 189
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/common/TaskScheduleService$Transaction;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 192
    invoke-static {}, Lcom/alipay/android/launcher/guide/GuideManager;->getInstance()Lcom/alipay/android/launcher/guide/GuideManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/launcher/TabLauncherBroadcastReceiver$2;->this$0:Lcom/alipay/android/launcher/TabLauncherBroadcastReceiver;

    # getter for: Lcom/alipay/android/launcher/TabLauncherBroadcastReceiver;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/alipay/android/launcher/TabLauncherBroadcastReceiver;->access$0(Lcom/alipay/android/launcher/TabLauncherBroadcastReceiver;)Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/alipay/android/launcher/TabLauncherBroadcastReceiver$2;->val$guideType:I

    .line 193
    invoke-virtual {p0}, Lcom/alipay/android/launcher/TabLauncherBroadcastReceiver$2;->getId()Ljava/lang/String;

    move-result-object v3

    .line 192
    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/android/launcher/guide/GuideManager;->startGuide(Landroid/content/Context;ILjava/lang/String;)V

    .line 194
    return-void
.end method
