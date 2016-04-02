.class Lcom/alipay/mobile/quinox/splash/WelcomeSplasher$1;
.super Ljava/lang/Object;
.source "WelcomeSplasher.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/quinox/splash/WelcomeSplasher;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/quinox/splash/WelcomeSplasher;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/quinox/splash/WelcomeSplasher$1;->this$0:Lcom/alipay/mobile/quinox/splash/WelcomeSplasher;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/16 v1, 0xbb8

    const/4 v2, 0x1

    .line 54
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v3, "welcome"

    const-string/jumbo v4, "start Welcome 4"

    invoke-interface {v0, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/splash/WelcomeSplasher$1;->this$0:Lcom/alipay/mobile/quinox/splash/WelcomeSplasher;

    const/4 v3, 0x1

    invoke-static {v0, v3}, Lcom/alipay/mobile/quinox/splash/WelcomeSplasher;->access$1(Lcom/alipay/mobile/quinox/splash/WelcomeSplasher;Z)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/quinox/splash/WelcomeSplasher$1;->this$0:Lcom/alipay/mobile/quinox/splash/WelcomeSplasher;

    # getter for: Lcom/alipay/mobile/quinox/splash/WelcomeSplasher;->showTime:Ljava/lang/String;
    invoke-static {v0}, Lcom/alipay/mobile/quinox/splash/WelcomeSplasher;->access$2(Lcom/alipay/mobile/quinox/splash/WelcomeSplasher;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 62
    :goto_0
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u7ebf\u7a0b\u542f\u52a8 \u65f6\u95f4\u4e3a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    mul-int/lit16 v3, v0, 0x3e8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\uff01\u3002\u3002\u3002\u3002"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    if-lez v0, :cond_1

    mul-int/lit16 v0, v0, 0x3e8

    add-int/lit16 v0, v0, -0x1f4

    .line 67
    :goto_1
    if-le v0, v1, :cond_0

    move v0, v1

    .line 68
    :cond_0
    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 73
    iget-object v0, p0, Lcom/alipay/mobile/quinox/splash/WelcomeSplasher$1;->this$0:Lcom/alipay/mobile/quinox/splash/WelcomeSplasher;

    # invokes: Lcom/alipay/mobile/quinox/splash/WelcomeSplasher;->doStartEntry()V
    invoke-static {v0}, Lcom/alipay/mobile/quinox/splash/WelcomeSplasher;->access$0(Lcom/alipay/mobile/quinox/splash/WelcomeSplasher;)V

    .line 75
    :goto_2
    return-void

    .line 60
    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v0, v2

    goto :goto_0

    .line 66
    :cond_1
    mul-int/lit16 v0, v0, 0x3e8

    goto :goto_1

    .line 69
    :catch_1
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 71
    iget-object v0, p0, Lcom/alipay/mobile/quinox/splash/WelcomeSplasher$1;->this$0:Lcom/alipay/mobile/quinox/splash/WelcomeSplasher;

    # invokes: Lcom/alipay/mobile/quinox/splash/WelcomeSplasher;->doStartEntry()V
    invoke-static {v0}, Lcom/alipay/mobile/quinox/splash/WelcomeSplasher;->access$0(Lcom/alipay/mobile/quinox/splash/WelcomeSplasher;)V

    goto :goto_2

    .line 72
    :catchall_0
    move-exception v0

    .line 73
    iget-object v1, p0, Lcom/alipay/mobile/quinox/splash/WelcomeSplasher$1;->this$0:Lcom/alipay/mobile/quinox/splash/WelcomeSplasher;

    # invokes: Lcom/alipay/mobile/quinox/splash/WelcomeSplasher;->doStartEntry()V
    invoke-static {v1}, Lcom/alipay/mobile/quinox/splash/WelcomeSplasher;->access$0(Lcom/alipay/mobile/quinox/splash/WelcomeSplasher;)V

    .line 74
    throw v0
.end method
