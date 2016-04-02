.class public Lcom/alipay/android/phone/messageboxstatic/biz/b/a;
.super Ljava/lang/Object;
.source "MsgboxSyncReceiver.java"

# interfaces
.implements Lcom/alipay/mobile/rome/longlinkservice/ISyncCallback;


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/alipay/android/phone/messageboxstatic/biz/b/c;

.field private static c:Lcom/alipay/android/phone/messageboxstatic/biz/b/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/alipay/android/phone/messageboxstatic/biz/b/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/phone/messageboxstatic/biz/b/a;->a:Ljava/lang/String;

    .line 16
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/alipay/android/phone/messageboxstatic/biz/b/c;

    invoke-direct {v0}, Lcom/alipay/android/phone/messageboxstatic/biz/b/c;-><init>()V

    sput-object v0, Lcom/alipay/android/phone/messageboxstatic/biz/b/a;->b:Lcom/alipay/android/phone/messageboxstatic/biz/b/c;

    .line 29
    return-void
.end method

.method public static declared-synchronized a()Lcom/alipay/android/phone/messageboxstatic/biz/b/a;
    .locals 2

    .prologue
    .line 32
    const-class v1, Lcom/alipay/android/phone/messageboxstatic/biz/b/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/android/phone/messageboxstatic/biz/b/a;->c:Lcom/alipay/android/phone/messageboxstatic/biz/b/a;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/alipay/android/phone/messageboxstatic/biz/b/a;

    invoke-direct {v0}, Lcom/alipay/android/phone/messageboxstatic/biz/b/a;-><init>()V

    sput-object v0, Lcom/alipay/android/phone/messageboxstatic/biz/b/a;->c:Lcom/alipay/android/phone/messageboxstatic/biz/b/a;

    .line 34
    :cond_0
    sget-object v0, Lcom/alipay/android/phone/messageboxstatic/biz/b/a;->c:Lcom/alipay/android/phone/messageboxstatic/biz/b/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 32
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final b()V
    .locals 4

    .prologue
    .line 59
    sget-object v0, Lcom/alipay/android/phone/messageboxstatic/biz/b/a;->a:Ljava/lang/String;

    const-string/jumbo v1, "\u5f00\u59cb\u6267\u884csyncProcessor.obtainLongLinkSyncService() "

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    sget-object v0, Lcom/alipay/android/phone/messageboxstatic/biz/b/a;->b:Lcom/alipay/android/phone/messageboxstatic/biz/b/c;

    .line 62
    invoke-static {}, Lcom/alipay/android/phone/messageboxstatic/biz/b/c;->a()Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    move-result-object v0

    .line 63
    sget-object v1, Lcom/alipay/android/phone/messageboxstatic/biz/b/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "longLinkSyncService =  "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    if-eqz v0, :cond_0

    .line 65
    const-string/jumbo v1, "MSG-BOX"

    invoke-virtual {v0, v1, p0}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->registerBizCallback(Ljava/lang/String;Lcom/alipay/mobile/rome/longlinkservice/ISyncCallback;)V

    .line 67
    :cond_0
    return-void
.end method

.method public onReceiveCommand(Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;)V
    .locals 0

    .prologue
    .line 44
    return-void
.end method

.method public onReceiveMessage(Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;)V
    .locals 3

    .prologue
    .line 48
    sget-object v0, Lcom/alipay/android/phone/messageboxstatic/biz/b/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onReceiveMessage,syncMessage  =  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;

    if-eqz v0, :cond_0

    .line 51
    sget-object v0, Lcom/alipay/android/phone/messageboxstatic/biz/b/a;->b:Lcom/alipay/android/phone/messageboxstatic/biz/b/c;

    invoke-virtual {v0, p1}, Lcom/alipay/android/phone/messageboxstatic/biz/b/c;->a(Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;)V

    .line 53
    :cond_0
    return-void
.end method
