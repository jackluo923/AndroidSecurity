.class public final Lcom/alipay/mobile/rome/syncservice/sync/c/e;
.super Ljava/lang/Object;
.source "SyncDispatchTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:Ljava/lang/String;

.field b:I

.field c:Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;

.field d:J


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;JI)V
    .locals 1

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iget-object v0, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;->biz:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/rome/syncservice/sync/c/e;->a:Ljava/lang/String;

    .line 139
    iput p4, p0, Lcom/alipay/mobile/rome/syncservice/sync/c/e;->b:I

    .line 140
    iput-object p1, p0, Lcom/alipay/mobile/rome/syncservice/sync/c/e;->c:Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;

    .line 141
    iput-wide p2, p0, Lcom/alipay/mobile/rome/syncservice/sync/c/e;->d:J

    .line 142
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    .line 146
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncservice/sync/c/e;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/rome/syncservice/sync/e/b;->d(Ljava/lang/String;)Lcom/alipay/mobile/rome/longlinkservice/ISyncCallback;

    move-result-object v0

    .line 147
    if-nez v0, :cond_0

    .line 148
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync/c/c;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "DispatchCmdTask: run: [ getBizCallback return null ][ biz="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 149
    iget-object v2, p0, Lcom/alipay/mobile/rome/syncservice/sync/c/e;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 148
    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncservice/d/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    :goto_0
    return-void

    .line 153
    :cond_0
    iget v1, p0, Lcom/alipay/mobile/rome/syncservice/sync/c/e;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alipay/mobile/rome/syncservice/sync/c/e;->b:I

    .line 154
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync/c/c;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "DispatchCmdTask: run: [ biz="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/rome/syncservice/sync/c/e;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ][ sendNum="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 155
    iget v3, p0, Lcom/alipay/mobile/rome/syncservice/sync/c/e;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 154
    invoke-static {v1, v2}, Lcom/alipay/mobile/rome/syncservice/d/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget v1, p0, Lcom/alipay/mobile/rome/syncservice/sync/c/e;->b:I

    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync/a/a;->b()I

    move-result v2

    if-gt v1, v2, :cond_1

    .line 161
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/rome/syncservice/sync/c/e;->c:Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;

    iget-object v1, v1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;->id:Ljava/lang/String;

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 162
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync/b/a;->a()Lcom/alipay/mobile/rome/syncservice/sync/b/a;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/rome/syncservice/sync/c/e;->c:Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;

    iget-object v3, v3, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;->userId:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/rome/syncservice/sync/c/e;->c:Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;

    iget-object v3, v3, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;->biz:Ljava/lang/String;

    .line 163
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 162
    invoke-virtual {v2, v1}, Lcom/alipay/mobile/rome/syncservice/sync/b/a;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/util/MonitorParamsUtils;->createNetAppStatMap()Ljava/util/Map;

    move-result-object v1

    .line 172
    const-string/jumbo v2, "times"

    iget v3, p0, Lcom/alipay/mobile/rome/syncservice/sync/c/e;->b:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    const-string/jumbo v2, "SYNC_DISPATCH"

    .line 174
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/rome/syncservice/sync/c/e;->a:Ljava/lang/String;

    iget-object v5, p0, Lcom/alipay/mobile/rome/syncservice/sync/c/e;->c:Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;

    iget-object v5, v5, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;->id:Ljava/lang/String;

    const-string/jumbo v6, ","

    const-string/jumbo v7, "#"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 173
    invoke-static {v2, v3, v4, v5, v1}, Lcom/alipay/mobile/rome/syncservice/d/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 177
    iget-object v1, p0, Lcom/alipay/mobile/rome/syncservice/sync/c/e;->c:Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/rome/longlinkservice/ISyncCallback;->onReceiveCommand(Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;)V

    goto/16 :goto_0

    .line 164
    :catch_0
    move-exception v0

    .line 165
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync/c/c;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "DispatchCmdTask: run: [ addMsgSendNum ][ Exception="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " ]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 165
    invoke-static {v1, v0}, Lcom/alipay/mobile/rome/syncservice/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 180
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 181
    const-string/jumbo v1, "dispatchCmdFailed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "userId:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/rome/syncservice/sync/c/e;->c:Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;

    iget-object v2, v2, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;->userId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, " biz:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/rome/syncservice/sync/c/e;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, " sk:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/alipay/mobile/rome/syncservice/sync/c/e;->d:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    const-string/jumbo v0, "SYNC_EXP"

    .line 186
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/rome/syncservice/sync/c/e;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/rome/syncservice/sync/c/e;->c:Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;

    iget-object v3, v3, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;->id:Ljava/lang/String;

    .line 187
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/util/MonitorParamsUtils;->createNetAppStatMap()Ljava/util/Map;

    move-result-object v4

    .line 185
    invoke-static {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/rome/syncservice/d/d;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 190
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncservice/sync/c/e;->c:Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;

    invoke-static {v0}, Lcom/alipay/mobile/rome/syncservice/sync/c/a;->a(Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;)V

    goto/16 :goto_0
.end method
