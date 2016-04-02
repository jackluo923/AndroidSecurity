.class Lcom/alipay/mobile/publicplatform/relation/RelationRecv$3;
.super Ljava/lang/Object;
.source "RelationRecv.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/publicplatform/relation/RelationRecv;

.field private final synthetic val$syncMessage:Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/publicplatform/relation/RelationRecv;Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/publicplatform/relation/RelationRecv$3;->this$0:Lcom/alipay/mobile/publicplatform/relation/RelationRecv;

    iput-object p2, p0, Lcom/alipay/mobile/publicplatform/relation/RelationRecv$3;->val$syncMessage:Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 136
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "chatsdk_SyncProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "process syncMsg"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/publicplatform/relation/RelationRecv$3;->val$syncMessage:Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;

    iget-object v3, v3, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->msgData:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/alipay/mobile/publicplatform/relation/RelationRecv$3;->this$0:Lcom/alipay/mobile/publicplatform/relation/RelationRecv;

    iget-object v1, p0, Lcom/alipay/mobile/publicplatform/relation/RelationRecv$3;->val$syncMessage:Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;

    # invokes: Lcom/alipay/mobile/publicplatform/relation/RelationRecv;->extractMessage(Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;)Ljava/util/List;
    invoke-static {v0, v1}, Lcom/alipay/mobile/publicplatform/relation/RelationRecv;->access$3(Lcom/alipay/mobile/publicplatform/relation/RelationRecv;Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;)Ljava/util/List;

    move-result-object v0

    .line 138
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 139
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "chatsdk_SyncProcessor"

    const-string/jumbo v2, "can process msg size is empty! exit"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :cond_1
    :goto_0
    return-void

    .line 144
    :cond_2
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 145
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "chatsdk_SyncProcessor"

    const-string/jumbo v3, "mergedList is empty! exit"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :cond_4
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "chatsdk_SyncProcessor"

    const-string/jumbo v3, " start replay "

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/alipay/mobile/publicplatform/relation/RelationRecv$3;->val$syncMessage:Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;

    iget-boolean v1, v1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->hasMore:Z

    if-nez v1, :cond_5

    .line 149
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "chatsdk_SyncProcessor"

    const-string/jumbo v3, "only one mesaage and no more message"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v1, p0, Lcom/alipay/mobile/publicplatform/relation/RelationRecv$3;->this$0:Lcom/alipay/mobile/publicplatform/relation/RelationRecv;

    iget-object v2, p0, Lcom/alipay/mobile/publicplatform/relation/RelationRecv$3;->val$syncMessage:Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;

    iget-object v2, v2, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->userId:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/publicplatform/relation/model/FollowMessageModel;

    # invokes: Lcom/alipay/mobile/publicplatform/relation/RelationRecv;->replayMessage(Ljava/lang/String;Lcom/alipay/mobile/publicplatform/relation/model/FollowMessageModel;)V
    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/publicplatform/relation/RelationRecv;->access$4(Lcom/alipay/mobile/publicplatform/relation/RelationRecv;Ljava/lang/String;Lcom/alipay/mobile/publicplatform/relation/model/FollowMessageModel;)V

    goto :goto_0

    .line 152
    :cond_5
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "chatsdk_SyncProcessor"

    .line 153
    const-string/jumbo v3, "more than one message or has more message"

    .line 152
    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/publicplatform/relation/model/FollowMessageModel;

    .line 155
    iget-object v2, p0, Lcom/alipay/mobile/publicplatform/relation/RelationRecv$3;->this$0:Lcom/alipay/mobile/publicplatform/relation/RelationRecv;

    iget-object v3, p0, Lcom/alipay/mobile/publicplatform/relation/RelationRecv$3;->val$syncMessage:Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;

    iget-object v3, v3, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->userId:Ljava/lang/String;

    # invokes: Lcom/alipay/mobile/publicplatform/relation/RelationRecv;->replayMessage(Ljava/lang/String;Lcom/alipay/mobile/publicplatform/relation/model/FollowMessageModel;)V
    invoke-static {v2, v3, v0}, Lcom/alipay/mobile/publicplatform/relation/RelationRecv;->access$4(Lcom/alipay/mobile/publicplatform/relation/RelationRecv;Ljava/lang/String;Lcom/alipay/mobile/publicplatform/relation/model/FollowMessageModel;)V

    goto :goto_1
.end method
