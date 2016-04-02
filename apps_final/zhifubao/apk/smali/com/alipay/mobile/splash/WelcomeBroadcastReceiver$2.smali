.class Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver$2;
.super Ljava/lang/Object;
.source "WelcomeBroadcastReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;

.field private final synthetic val$list:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver$2;->this$0:Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;

    iput-object p2, p0, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver$2;->val$list:Ljava/util/List;

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 213
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver$2;->this$0:Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;

    iget-object v1, p0, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver$2;->this$0:Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;

    # getter for: Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;->access$2(Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/splash/WelcomeDataHelper;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/splash/WelcomeDataHelper;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;->dataHelper:Lcom/alipay/mobile/splash/WelcomeDataHelper;

    .line 214
    iget-object v0, p0, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver$2;->this$0:Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;

    iget-object v1, p0, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver$2;->this$0:Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;

    iget-object v1, v1, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;->dataHelper:Lcom/alipay/mobile/splash/WelcomeDataHelper;

    invoke-virtual {v1}, Lcom/alipay/mobile/splash/WelcomeDataHelper;->getSpaceObjectModelDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;->dao:Lcom/j256/ormlite/dao/Dao;

    .line 215
    iget-object v0, p0, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver$2;->this$0:Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;

    iget-object v0, v0, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryForAll()Ljava/util/List;

    move-result-object v0

    .line 217
    iget-object v1, p0, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver$2;->this$0:Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;

    iget-object v2, p0, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver$2;->val$list:Ljava/util/List;

    # invokes: Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;->deleteWelcomeByObjectId(Ljava/util/List;Ljava/util/List;)V
    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;->access$5(Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;Ljava/util/List;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    iget-object v0, p0, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver$2;->this$0:Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;

    iget-object v0, v0, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;->dataHelper:Lcom/alipay/mobile/splash/WelcomeDataHelper;

    invoke-virtual {v0}, Lcom/alipay/mobile/splash/WelcomeDataHelper;->close()V

    .line 223
    :goto_0
    return-void

    .line 218
    :catch_0
    move-exception v0

    .line 219
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    # getter for: Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;->TAG_WEL:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;->access$6()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 221
    iget-object v0, p0, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver$2;->this$0:Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;

    iget-object v0, v0, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;->dataHelper:Lcom/alipay/mobile/splash/WelcomeDataHelper;

    invoke-virtual {v0}, Lcom/alipay/mobile/splash/WelcomeDataHelper;->close()V

    goto :goto_0

    .line 220
    :catchall_0
    move-exception v0

    .line 221
    iget-object v1, p0, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver$2;->this$0:Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;

    iget-object v1, v1, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;->dataHelper:Lcom/alipay/mobile/splash/WelcomeDataHelper;

    invoke-virtual {v1}, Lcom/alipay/mobile/splash/WelcomeDataHelper;->close()V

    .line 222
    throw v0
.end method
