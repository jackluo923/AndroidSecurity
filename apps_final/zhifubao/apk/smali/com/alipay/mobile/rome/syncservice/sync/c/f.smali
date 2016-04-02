.class public final Lcom/alipay/mobile/rome/syncservice/sync/c/f;
.super Ljava/lang/Object;
.source "SyncDispatchTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:Ljava/lang/String;

.field b:I

.field c:Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;

.field d:J


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;JI)V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iget-object v0, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->biz:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/rome/syncservice/sync/c/f;->a:Ljava/lang/String;

    .line 59
    iput p4, p0, Lcom/alipay/mobile/rome/syncservice/sync/c/f;->b:I

    .line 60
    iput-object p1, p0, Lcom/alipay/mobile/rome/syncservice/sync/c/f;->c:Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;

    .line 61
    iput-wide p2, p0, Lcom/alipay/mobile/rome/syncservice/sync/c/f;->d:J

    .line 62
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncservice/sync/c/f;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/rome/syncservice/sync/e/b;->d(Ljava/lang/String;)Lcom/alipay/mobile/rome/longlinkservice/ISyncCallback;

    move-result-object v0

    .line 67
    if-nez v0, :cond_0

    .line 68
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync/c/c;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "DispatchMsgTask: run: [ getBizCallback return null ][ biz="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    iget-object v2, p0, Lcom/alipay/mobile/rome/syncservice/sync/c/f;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 68
    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncservice/d/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncservice/sync/c/f;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/rome/syncservice/sync/c/a;->b(Ljava/lang/String;)V

    .line 125
    :goto_0
    return-void

    .line 75
    :cond_0
    const-string/jumbo v1, "userBased"

    iget-object v2, p0, Lcom/alipay/mobile/rome/syncservice/sync/c/f;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/alipay/mobile/rome/syncservice/sync/e/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 77
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/a/b;->a()Ljava/lang/String;

    move-result-object v1

    .line 78
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 79
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync/c/c;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "DispatchMsgTask: run: [ userId null ][ biz="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/rome/syncservice/sync/c/f;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 80
    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 79
    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncservice/d/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncservice/sync/c/f;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/rome/syncservice/sync/c/a;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 87
    :cond_2
    iget v1, p0, Lcom/alipay/mobile/rome/syncservice/sync/c/f;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alipay/mobile/rome/syncservice/sync/c/f;->b:I

    .line 88
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync/c/c;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "DispatchMsgTask: run: [ biz="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/rome/syncservice/sync/c/f;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ][ sendNum="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 89
    iget v3, p0, Lcom/alipay/mobile/rome/syncservice/sync/c/f;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 88
    invoke-static {v1, v2}, Lcom/alipay/mobile/rome/syncservice/d/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget v1, p0, Lcom/alipay/mobile/rome/syncservice/sync/c/f;->b:I

    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync/a/a;->b()I

    move-result v2

    if-gt v1, v2, :cond_3

    .line 94
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/rome/syncservice/sync/c/f;->c:Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;

    iget-object v1, v1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->id:Ljava/lang/String;

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 95
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync/b/a;->a()Lcom/alipay/mobile/rome/syncservice/sync/b/a;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/rome/syncservice/sync/c/f;->c:Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;

    iget-object v3, v3, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->userId:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/rome/syncservice/sync/c/f;->c:Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;

    iget-object v3, v3, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->biz:Ljava/lang/String;

    .line 96
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 95
    invoke-virtual {v2, v1}, Lcom/alipay/mobile/rome/syncservice/sync/b/a;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/util/MonitorParamsUtils;->createNetAppStatMap()Ljava/util/Map;

    move-result-object v1

    .line 105
    const-string/jumbo v2, "times"

    iget v3, p0, Lcom/alipay/mobile/rome/syncservice/sync/c/f;->b:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const-string/jumbo v2, "SYNC_DISPATCH"

    .line 107
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/rome/syncservice/sync/c/f;->a:Ljava/lang/String;

    iget-object v5, p0, Lcom/alipay/mobile/rome/syncservice/sync/c/f;->c:Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;

    iget-object v5, v5, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->id:Ljava/lang/String;

    const-string/jumbo v6, ","

    const-string/jumbo v7, "#"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 106
    invoke-static {v2, v3, v4, v5, v1}, Lcom/alipay/mobile/rome/syncservice/d/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 110
    iget-object v1, p0, Lcom/alipay/mobile/rome/syncservice/sync/c/f;->c:Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/rome/longlinkservice/ISyncCallback;->onReceiveMessage(Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;)V

    goto/16 :goto_0

    .line 97
    :catch_0
    move-exception v0

    .line 98
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync/c/c;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "DispatchMsgTask: run: [ addMsgSendNum ][ Exception="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " ]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 98
    invoke-static {v1, v0}, Lcom/alipay/mobile/rome/syncservice/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 113
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    const-string/jumbo v1, "dispatchMsgFailed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "userId:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/rome/syncservice/sync/c/f;->c:Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;

    iget-object v2, v2, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->userId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, " biz:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/rome/syncservice/sync/c/f;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, " sk:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/alipay/mobile/rome/syncservice/sync/c/f;->d:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    const-string/jumbo v0, "SYNC_EXP"

    .line 119
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/rome/syncservice/sync/c/f;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/rome/syncservice/sync/c/f;->c:Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;

    iget-object v3, v3, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->id:Ljava/lang/String;

    .line 120
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/util/MonitorParamsUtils;->createNetAppStatMap()Ljava/util/Map;

    move-result-object v4

    .line 118
    invoke-static {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/rome/syncservice/d/d;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 123
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncservice/sync/c/f;->c:Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;

    invoke-static {v0}, Lcom/alipay/mobile/rome/syncservice/sync/c/a;->a(Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;)V

    goto/16 :goto_0
.end method
