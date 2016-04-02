.class public Lcom/alipay/mobile/chatsdk/db/init/ChatDbMsgStatus;
.super Ljava/lang/Object;
.source "ChatDbMsgStatus.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String;

.field private static volatile isRepaired:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "chatsdk_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    const-class v1, Lcom/alipay/mobile/chatsdk/db/init/ChatDbMsgStatus;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/chatsdk/db/init/ChatDbMsgStatus;->LOGTAG:Ljava/lang/String;

    .line 22
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/chatsdk/db/init/ChatDbMsgStatus;->isRepaired:Z

    .line 18
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/alipay/mobile/chatsdk/db/init/ChatDbMsgStatus;->LOGTAG:Ljava/lang/String;

    return-object v0
.end method

.method public static repairMsgStatus()V
    .locals 3

    .prologue
    .line 31
    sget-object v0, Lcom/alipay/mobile/chatsdk/db/init/ChatDbMsgStatus;->LOGTAG:Ljava/lang/String;

    .line 32
    const-string/jumbo v1, "repairMsgStatus: [ set msg status sending to fail ] "

    .line 31
    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const-class v1, Lcom/alipay/mobile/chatsdk/db/init/ChatDbMsgStatus;

    monitor-enter v1

    .line 35
    :try_start_0
    sget-boolean v0, Lcom/alipay/mobile/chatsdk/db/init/ChatDbMsgStatus;->isRepaired:Z

    if-eqz v0, :cond_0

    .line 36
    sget-object v0, Lcom/alipay/mobile/chatsdk/db/init/ChatDbMsgStatus;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v2, "repairMsgStatus: [ already repaired ] "

    invoke-static {v0, v2}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    monitor-exit v1

    .line 63
    :goto_0
    return-void

    .line 39
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/chatsdk/db/init/ChatDbMsgStatus;->isRepaired:Z

    .line 34
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    new-instance v0, Lcom/alipay/mobile/chatsdk/db/init/ChatDbMsgStatus$1;

    invoke-direct {v0}, Lcom/alipay/mobile/chatsdk/db/init/ChatDbMsgStatus$1;-><init>()V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 34
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
