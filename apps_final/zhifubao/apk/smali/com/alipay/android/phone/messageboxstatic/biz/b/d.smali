.class final Lcom/alipay/android/phone/messageboxstatic/biz/b/d;
.super Ljava/lang/Object;
.source "SyncProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/messageboxstatic/biz/b/c;

.field private final synthetic b:Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;

.field private final synthetic c:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/messageboxstatic/biz/b/c;Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/messageboxstatic/biz/b/d;->a:Lcom/alipay/android/phone/messageboxstatic/biz/b/c;

    iput-object p2, p0, Lcom/alipay/android/phone/messageboxstatic/biz/b/d;->b:Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;

    iput-object p3, p0, Lcom/alipay/android/phone/messageboxstatic/biz/b/d;->c:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 65
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    invoke-static {}, Lcom/alipay/android/phone/messageboxstatic/biz/b/c;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "process syncMsg"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/android/phone/messageboxstatic/biz/b/d;->b:Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;

    iget-object v3, v3, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->msgData:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxstatic/biz/b/d;->a:Lcom/alipay/android/phone/messageboxstatic/biz/b/c;

    iget-object v0, p0, Lcom/alipay/android/phone/messageboxstatic/biz/b/d;->b:Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;

    invoke-static {v0}, Lcom/alipay/android/phone/messageboxstatic/biz/b/c;->b(Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;)Ljava/util/List;

    move-result-object v0

    .line 67
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 68
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    invoke-static {}, Lcom/alipay/android/phone/messageboxstatic/biz/b/c;->b()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "can process msg size is empty! exit"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :goto_0
    return-void

    .line 72
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    invoke-static {}, Lcom/alipay/android/phone/messageboxstatic/biz/b/c;->b()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "messages are : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v1, p0, Lcom/alipay/android/phone/messageboxstatic/biz/b/d;->a:Lcom/alipay/android/phone/messageboxstatic/biz/b/c;

    invoke-static {v1}, Lcom/alipay/android/phone/messageboxstatic/biz/b/c;->a(Lcom/alipay/android/phone/messageboxstatic/biz/b/c;)Lcom/alipay/android/phone/messageboxstatic/biz/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/android/phone/messageboxstatic/biz/c;->a(Ljava/util/List;)V

    .line 76
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxstatic/biz/b/d;->a:Lcom/alipay/android/phone/messageboxstatic/biz/b/c;

    invoke-static {v0}, Lcom/alipay/android/phone/messageboxstatic/biz/b/c;->b(Lcom/alipay/android/phone/messageboxstatic/biz/b/c;)Lcom/alipay/android/phone/messageboxstatic/api/OverdueService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/messageboxstatic/api/OverdueService;->triggerMsgInfoOverdue()V

    .line 77
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxstatic/biz/b/d;->a:Lcom/alipay/android/phone/messageboxstatic/biz/b/c;

    invoke-static {v0}, Lcom/alipay/android/phone/messageboxstatic/biz/b/c;->b(Lcom/alipay/android/phone/messageboxstatic/biz/b/c;)Lcom/alipay/android/phone/messageboxstatic/api/OverdueService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/messageboxstatic/api/OverdueService;->triggerReadMsgOverdue()V

    .line 79
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxstatic/biz/b/d;->c:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    iget-object v1, p0, Lcom/alipay/android/phone/messageboxstatic/biz/b/d;->b:Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;

    iget-object v1, v1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->userId:Ljava/lang/String;

    .line 80
    iget-object v2, p0, Lcom/alipay/android/phone/messageboxstatic/biz/b/d;->b:Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;

    iget-object v2, v2, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->biz:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/android/phone/messageboxstatic/biz/b/d;->b:Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;

    iget-object v3, v3, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->id:Ljava/lang/String;

    .line 79
    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->reportMsgReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    invoke-static {}, Lcom/alipay/android/phone/messageboxstatic/biz/b/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 83
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "reportMsgReceived \uff1a syncMessage.userId = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/android/phone/messageboxstatic/biz/b/d;->b:Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;

    iget-object v3, v3, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->userId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " , syncMessage.biz "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 84
    iget-object v3, p0, Lcom/alipay/android/phone/messageboxstatic/biz/b/d;->b:Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;

    iget-object v3, v3, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->biz:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", syncMessage.id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/phone/messageboxstatic/biz/b/d;->b:Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;

    iget-object v3, v3, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 83
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 82
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
