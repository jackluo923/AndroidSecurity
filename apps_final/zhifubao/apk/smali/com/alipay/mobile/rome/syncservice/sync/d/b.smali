.class public Lcom/alipay/mobile/rome/syncservice/sync/d/b;
.super Ljava/lang/Object;
.source "SyncMsgHelper.java"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "sync_service_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/alipay/mobile/rome/syncservice/sync/d/b;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/rome/syncservice/sync/d/b;->a:Ljava/lang/String;

    .line 12
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/alipay/mobile/rome/syncservice/sync/d/a;)Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;
    .locals 4

    .prologue
    .line 25
    new-instance v0, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;

    invoke-direct {v0}, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;-><init>()V

    .line 27
    iget-object v1, p0, Lcom/alipay/mobile/rome/syncservice/sync/d/a;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->userId:Ljava/lang/String;

    .line 28
    iget-object v1, p0, Lcom/alipay/mobile/rome/syncservice/sync/d/a;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->biz:Ljava/lang/String;

    .line 29
    iget-object v1, p0, Lcom/alipay/mobile/rome/syncservice/sync/d/a;->f:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->msgData:Ljava/lang/String;

    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alipay/mobile/rome/syncservice/sync/d/a;->i:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/alipay/mobile/rome/syncservice/sync/d/a;->c:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->id:Ljava/lang/String;

    .line 32
    iget-object v1, p0, Lcom/alipay/mobile/rome/syncservice/sync/d/a;->e:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 33
    iget-object v1, p0, Lcom/alipay/mobile/rome/syncservice/sync/d/a;->e:Ljava/lang/String;

    const-string/jumbo v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/rome/syncservice/sync/d/a;->e:Ljava/lang/String;

    const-string/jumbo v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 34
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->hasMore:Z

    .line 39
    :goto_0
    return-object v0

    .line 36
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->hasMore:Z

    goto :goto_0
.end method

.method public static b(Lcom/alipay/mobile/rome/syncservice/sync/d/a;)Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;
    .locals 4

    .prologue
    .line 49
    new-instance v0, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;

    invoke-direct {v0}, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;-><init>()V

    .line 51
    iget-object v1, p0, Lcom/alipay/mobile/rome/syncservice/sync/d/a;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;->userId:Ljava/lang/String;

    .line 52
    iget-object v1, p0, Lcom/alipay/mobile/rome/syncservice/sync/d/a;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;->biz:Ljava/lang/String;

    .line 54
    iget-object v1, p0, Lcom/alipay/mobile/rome/syncservice/sync/d/a;->d:Ljava/lang/String;

    const-string/jumbo v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    const-string/jumbo v1, "init"

    iput-object v1, v0, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;->command:Ljava/lang/String;

    .line 64
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alipay/mobile/rome/syncservice/sync/d/a;->i:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/rome/syncservice/sync/d/a;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 65
    iget-wide v2, p0, Lcom/alipay/mobile/rome/syncservice/sync/d/a;->c:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 64
    iput-object v1, v0, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;->id:Ljava/lang/String;

    .line 66
    iget-object v1, p0, Lcom/alipay/mobile/rome/syncservice/sync/d/a;->f:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;->commandData:Ljava/lang/String;

    .line 68
    :goto_1
    return-object v0

    .line 56
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/rome/syncservice/sync/d/a;->d:Ljava/lang/String;

    const-string/jumbo v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 57
    const-string/jumbo v1, "fullUpdate"

    iput-object v1, v0, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;->command:Ljava/lang/String;

    goto :goto_0

    .line 59
    :cond_1
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/d/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "modelToSyncCmd: [ pf unknown ] [ pf="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/rome/syncservice/sync/d/a;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 60
    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 59
    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncservice/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const/4 v0, 0x0

    goto :goto_1
.end method
