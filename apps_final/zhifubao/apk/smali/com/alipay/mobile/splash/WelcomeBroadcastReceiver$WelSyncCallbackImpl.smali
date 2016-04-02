.class Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver$WelSyncCallbackImpl;
.super Ljava/lang/Object;
.source "WelcomeBroadcastReceiver.java"

# interfaces
.implements Lcom/alipay/mobile/rome/longlinkservice/ISyncCallback;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver$WelSyncCallbackImpl;->this$0:Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiveCommand(Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;)V
    .locals 0

    .prologue
    .line 154
    return-void
.end method

.method public onReceiveMessage(Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;)V
    .locals 4

    .prologue
    .line 158
    const-string/jumbo v0, "welcome"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onReceiveMessage "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->msgData:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver$WelSyncCallbackImpl;->this$0:Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;

    # getter for: Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;->syncService:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;
    invoke-static {v0}, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;->access$0(Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;)Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    move-result-object v0

    iget-object v1, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->userId:Ljava/lang/String;

    iget-object v2, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->biz:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->reportMsgReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver$WelSyncCallbackImpl;->this$0:Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;

    iget-object v1, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->msgData:Ljava/lang/String;

    # invokes: Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;->processCMD(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;->access$1(Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;Ljava/lang/String;)V

    .line 161
    return-void
.end method
