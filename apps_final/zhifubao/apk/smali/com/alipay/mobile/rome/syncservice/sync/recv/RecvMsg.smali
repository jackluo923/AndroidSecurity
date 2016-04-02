.class public Lcom/alipay/mobile/rome/syncservice/sync/recv/RecvMsg;
.super Ljava/lang/Object;
.source "RecvMsg.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "sync_service_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/alipay/mobile/rome/syncservice/sync/recv/RecvMsg;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/rome/syncservice/sync/recv/RecvMsg;->LOGTAG:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isNeedDispatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 90
    invoke-static {p1}, Lcom/alipay/mobile/rome/syncservice/sync/recv/RecvMsg;->isPFCmdNeedDispatch(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 96
    :cond_0
    :goto_0
    return v0

    .line 93
    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isPFCmdNeedDispatch(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 100
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 102
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 103
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-lez v1, :cond_0

    .line 104
    const/4 v0, 0x1

    .line 111
    :cond_0
    :goto_0
    return v0

    .line 107
    :catch_0
    move-exception v1

    sget-object v1, Lcom/alipay/mobile/rome/syncservice/sync/recv/RecvMsg;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v2, "isPFCmdNeedDispatch Integer.parseInt exception thrown."

    invoke-static {v1, v2}, Lcom/alipay/mobile/rome/syncservice/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static recvMsg(Lcom/alipay/mobile/rome/syncservice/sync/c;)V
    .locals 9

    .prologue
    const-wide/16 v2, 0x0

    .line 29
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/recv/RecvMsg;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "recvMsg: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/mobile/rome/syncservice/sync/c;->d:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncservice/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    new-instance v4, Lcom/alipay/mobile/rome/syncservice/sync/d/a;

    invoke-direct {v4}, Lcom/alipay/mobile/rome/syncservice/sync/d/a;-><init>()V

    .line 33
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncservice/sync/c;->a:Ljava/lang/String;

    iput-object v0, v4, Lcom/alipay/mobile/rome/syncservice/sync/d/a;->a:Ljava/lang/String;

    .line 34
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncservice/sync/c;->c:Ljava/lang/String;

    iput-object v0, v4, Lcom/alipay/mobile/rome/syncservice/sync/d/a;->b:Ljava/lang/String;

    .line 35
    iget-wide v0, p0, Lcom/alipay/mobile/rome/syncservice/sync/c;->b:J

    iput-wide v0, v4, Lcom/alipay/mobile/rome/syncservice/sync/d/a;->c:J

    .line 36
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncservice/sync/c;->e:Ljava/lang/String;

    iput-object v0, v4, Lcom/alipay/mobile/rome/syncservice/sync/d/a;->d:Ljava/lang/String;

    .line 37
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncservice/sync/c;->f:Ljava/lang/String;

    iput-object v0, v4, Lcom/alipay/mobile/rome/syncservice/sync/d/a;->e:Ljava/lang/String;

    .line 38
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncservice/sync/c;->d:Ljava/lang/String;

    iput-object v0, v4, Lcom/alipay/mobile/rome/syncservice/sync/d/a;->f:Ljava/lang/String;

    .line 39
    const/4 v0, 0x0

    iput v0, v4, Lcom/alipay/mobile/rome/syncservice/sync/d/a;->g:I

    .line 43
    :try_start_0
    iget-object v0, v4, Lcom/alipay/mobile/rome/syncservice/sync/d/a;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/rome/syncservice/sync/recv/RecvMsg;->isPFCmdNeedDispatch(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync/b/a;->a()Lcom/alipay/mobile/rome/syncservice/sync/b/a;

    move-result-object v0

    .line 45
    iget-object v1, v4, Lcom/alipay/mobile/rome/syncservice/sync/d/a;->a:Ljava/lang/String;

    iget-object v5, v4, Lcom/alipay/mobile/rome/syncservice/sync/d/a;->b:Ljava/lang/String;

    .line 44
    invoke-virtual {v0, v1, v5}, Lcom/alipay/mobile/rome/syncservice/sync/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/rome/syncservice/sync/d/a;

    move-result-object v0

    .line 46
    if-eqz v0, :cond_1

    iget-wide v0, v0, Lcom/alipay/mobile/rome/syncservice/sync/d/a;->c:J

    iget-wide v5, v4, Lcom/alipay/mobile/rome/syncservice/sync/d/a;->c:J

    cmp-long v0, v0, v5

    if-nez v0, :cond_1

    .line 47
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/recv/RecvMsg;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "recvMsg: already has this command: [ sKey="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    iget-wide v2, v4, Lcom/alipay/mobile/rome/syncservice/sync/d/a;->c:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ][ biz="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v4, Lcom/alipay/mobile/rome/syncservice/sync/d/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 47
    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncservice/d/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncservice/sync/c;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/rome/syncservice/sync/c/a;->a(Ljava/lang/String;)V

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    iget-object v0, v4, Lcom/alipay/mobile/rome/syncservice/sync/d/a;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v4, Lcom/alipay/mobile/rome/syncservice/sync/d/a;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/rome/syncservice/sync/recv/RecvMsg;->isPFCmdNeedDispatch(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 58
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync/b/a;->a()Lcom/alipay/mobile/rome/syncservice/sync/b/a;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/rome/syncservice/sync/b/a;->a(Lcom/alipay/mobile/rome/syncservice/sync/d/a;)J

    move-result-wide v0

    .line 63
    :goto_1
    iget-object v4, v4, Lcom/alipay/mobile/rome/syncservice/sync/d/a;->d:Ljava/lang/String;

    invoke-static {v4}, Lcom/alipay/mobile/rome/syncservice/sync/recv/RecvMsg;->isPFCmdNeedDispatch(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 65
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;->getInstance()Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;

    move-result-object v4

    iget-object v5, p0, Lcom/alipay/mobile/rome/syncservice/sync/c;->c:Ljava/lang/String;

    .line 66
    iget-object v6, p0, Lcom/alipay/mobile/rome/syncservice/sync/c;->a:Ljava/lang/String;

    .line 65
    invoke-virtual {v4, v5, v6}, Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;->getBizSkey(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v4

    .line 69
    iget-wide v6, p0, Lcom/alipay/mobile/rome/syncservice/sync/c;->b:J

    cmp-long v4, v6, v4

    if-lez v4, :cond_3

    .line 70
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;->getInstance()Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;

    move-result-object v4

    iget-object v5, p0, Lcom/alipay/mobile/rome/syncservice/sync/c;->c:Ljava/lang/String;

    iget-wide v6, p0, Lcom/alipay/mobile/rome/syncservice/sync/c;->b:J

    .line 71
    iget-object v8, p0, Lcom/alipay/mobile/rome/syncservice/sync/c;->a:Ljava/lang/String;

    .line 70
    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;->setBizSkey(Ljava/lang/String;JLjava/lang/String;)J

    .line 75
    :cond_3
    cmp-long v0, v0, v2

    if-gez v0, :cond_5

    .line 76
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "insertMsg failed"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :catch_0
    move-exception v0

    .line 79
    sget-object v1, Lcom/alipay/mobile/rome/syncservice/sync/recv/RecvMsg;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "recvMsg: insertMsg: [ Exception="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " ]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/rome/syncservice/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 60
    :cond_4
    :try_start_1
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/recv/RecvMsg;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v1, "syncPacket.md  is null or syncPacket.pf <= 0, msg will not insert to db."

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncservice/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-wide v0, v2

    goto :goto_1

    .line 84
    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncservice/sync/c;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/rome/syncservice/sync/c;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncservice/sync/recv/RecvMsg;->isNeedDispatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncservice/sync/c;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/rome/syncservice/sync/c/a;->a(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
