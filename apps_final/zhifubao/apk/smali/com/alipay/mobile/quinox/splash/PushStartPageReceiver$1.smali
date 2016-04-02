.class Lcom/alipay/mobile/quinox/splash/PushStartPageReceiver$1;
.super Ljava/lang/Object;
.source "PushStartPageReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/quinox/splash/PushStartPageReceiver;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/quinox/splash/PushStartPageReceiver;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/quinox/splash/PushStartPageReceiver$1;->this$0:Lcom/alipay/mobile/quinox/splash/PushStartPageReceiver;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 36
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.alipay.mobile.command.NOTIFY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 37
    const-string/jumbo v1, "BODY"

    const-string/jumbo v2, "NOTIFY_RECEIVER=com.eg.android.AlipayGphone&TYPE=datatunnel"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    const-string/jumbo v1, "NOTIFICATION_UNIQUE_FLAG"

    const-string/jumbo v2, "100101_1_20150318"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    iget-object v1, p0, Lcom/alipay/mobile/quinox/splash/PushStartPageReceiver$1;->this$0:Lcom/alipay/mobile/quinox/splash/PushStartPageReceiver;

    # getter for: Lcom/alipay/mobile/quinox/splash/PushStartPageReceiver;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/alipay/mobile/quinox/splash/PushStartPageReceiver;->access$0(Lcom/alipay/mobile/quinox/splash/PushStartPageReceiver;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    iget-object v1, p0, Lcom/alipay/mobile/quinox/splash/PushStartPageReceiver$1;->this$0:Lcom/alipay/mobile/quinox/splash/PushStartPageReceiver;

    # getter for: Lcom/alipay/mobile/quinox/splash/PushStartPageReceiver;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/alipay/mobile/quinox/splash/PushStartPageReceiver;->access$0(Lcom/alipay/mobile/quinox/splash/PushStartPageReceiver;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 41
    const-string/jumbo v0, "PushStartPageReceiver"

    const-string/jumbo v1, "PushStartPageReceiver com.alipay.mobile.push.CMD_TRANSFERD  sendBroadcast!!"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    return-void
.end method
