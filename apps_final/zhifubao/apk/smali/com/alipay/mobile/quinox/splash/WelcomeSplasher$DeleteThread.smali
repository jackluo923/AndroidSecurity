.class Lcom/alipay/mobile/quinox/splash/WelcomeSplasher$DeleteThread;
.super Ljava/lang/Thread;
.source "WelcomeSplasher.java"


# instance fields
.field mPath:Ljava/lang/String;

.field final synthetic this$0:Lcom/alipay/mobile/quinox/splash/WelcomeSplasher;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/quinox/splash/WelcomeSplasher;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 192
    iput-object p1, p0, Lcom/alipay/mobile/quinox/splash/WelcomeSplasher$DeleteThread;->this$0:Lcom/alipay/mobile/quinox/splash/WelcomeSplasher;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 190
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/splash/WelcomeSplasher$DeleteThread;->mPath:Ljava/lang/String;

    .line 193
    iput-object p2, p0, Lcom/alipay/mobile/quinox/splash/WelcomeSplasher$DeleteThread;->mPath:Ljava/lang/String;

    .line 194
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 198
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 199
    iget-object v0, p0, Lcom/alipay/mobile/quinox/splash/WelcomeSplasher$DeleteThread;->mPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/splash/WelcomeSplasher$DeleteThread;->mPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 204
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    .line 205
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 206
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "welcome"

    .line 207
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "delete path = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/quinox/splash/WelcomeSplasher$DeleteThread;->mPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 206
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
