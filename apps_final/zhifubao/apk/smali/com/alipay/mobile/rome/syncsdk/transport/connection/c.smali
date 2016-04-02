.class public final Lcom/alipay/mobile/rome/syncsdk/transport/connection/c;
.super Ljava/lang/Object;
.source "PacketReader.java"


# instance fields
.field private volatile a:Ljava/lang/Thread;

.field private volatile b:Ljava/io/DataInputStream;

.field private final c:Lcom/alipay/mobile/rome/syncsdk/transport/connection/a;

.field private volatile d:Z


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/rome/syncsdk/transport/connection/a;)V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/alipay/mobile/rome/syncsdk/transport/connection/c;->c:Lcom/alipay/mobile/rome/syncsdk/transport/connection/a;

    .line 33
    invoke-virtual {p1}, Lcom/alipay/mobile/rome/syncsdk/transport/connection/a;->a()Ljava/io/DataInputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/connection/c;->b:Ljava/io/DataInputStream;

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/connection/c;->d:Z

    new-instance v0, Lcom/alipay/mobile/rome/syncsdk/transport/connection/d;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/rome/syncsdk/transport/connection/d;-><init>(Lcom/alipay/mobile/rome/syncsdk/transport/connection/c;)V

    iput-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/connection/c;->a:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/connection/c;->a:Ljava/lang/Thread;

    const-string/jumbo v1, "longLink Packet Reader"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/connection/c;->a:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 35
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/rome/syncsdk/transport/connection/c;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 78
    const-string/jumbo v0, "sync_link_PacketReader"

    const-string/jumbo v1, "parsePackets: reader "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/connection/c;->d:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_1
    return-void

    :cond_1
    sget v0, Lcom/alipay/mobile/rome/syncsdk/transport/c/b;->d:I

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/alipay/mobile/rome/syncsdk/transport/connection/c;->b:Ljava/io/DataInputStream;

    const/4 v2, 0x0

    sget v3, Lcom/alipay/mobile/rome/syncsdk/transport/c/b;->d:I

    invoke-virtual {v1, v0, v2, v3}, Ljava/io/DataInputStream;->readFully([BII)V

    iget-object v1, p0, Lcom/alipay/mobile/rome/syncsdk/transport/connection/c;->c:Lcom/alipay/mobile/rome/syncsdk/transport/connection/a;

    invoke-virtual {v1}, Lcom/alipay/mobile/rome/syncsdk/transport/connection/a;->b()I

    move-result v1

    invoke-static {v1}, Lcom/alipay/mobile/rome/syncsdk/transport/c/c;->a(I)Lcom/alipay/mobile/rome/syncsdk/transport/c/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/rome/syncsdk/transport/c/a;->c([B)V

    invoke-virtual {v1}, Lcom/alipay/mobile/rome/syncsdk/transport/c/a;->c()I

    move-result v0

    if-ltz v0, :cond_2

    const/high16 v2, 0x100000

    if-le v0, v2, :cond_3

    :cond_2
    const-string/jumbo v1, "sync_link_PacketReader"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "parsePackets: [ dataLen="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " ]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "parsePackets dataLen exception"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "sync_link_PacketReader"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "parsePackets: [ Exception="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ][ isDone="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/alipay/mobile/rome/syncsdk/transport/connection/c;->d:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/alipay/mobile/rome/syncsdk/transport/connection/c;->d:Z

    if-nez v1, :cond_0

    iput-boolean v5, p0, Lcom/alipay/mobile/rome/syncsdk/transport/connection/c;->d:Z

    iget-object v1, p0, Lcom/alipay/mobile/rome/syncsdk/transport/connection/c;->c:Lcom/alipay/mobile/rome/syncsdk/transport/connection/a;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/rome/syncsdk/transport/connection/a;->a(Ljava/lang/Exception;)V

    goto :goto_1

    :cond_3
    :try_start_1
    new-array v2, v0, [B

    iget-object v3, p0, Lcom/alipay/mobile/rome/syncsdk/transport/connection/c;->b:Ljava/io/DataInputStream;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4, v0}, Ljava/io/DataInputStream;->readFully([BII)V

    invoke-virtual {v1}, Lcom/alipay/mobile/rome/syncsdk/transport/c/a;->d()I

    move-result v0

    if-ne v0, v5, :cond_4

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/rome/syncsdk/transport/c/a;->b([B)V

    :goto_2
    const-string/jumbo v0, "sync_link_PacketReader"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "recvPacket: reader [ packet="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/alipay/mobile/rome/syncsdk/transport/c/a;->a(Lcom/alipay/mobile/rome/syncsdk/transport/c/a;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string/jumbo v0, "sync_link_PacketReader"

    const-string/jumbo v1, "recvPacket: it\'s unsupported packet!"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v1, v2}, Lcom/alipay/mobile/rome/syncsdk/transport/c/a;->a([B)V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/connection/c;->c:Lcom/alipay/mobile/rome/syncsdk/transport/connection/a;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/transport/connection/a;->b(Lcom/alipay/mobile/rome/syncsdk/transport/c/a;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/connection/c;->a:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 59
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 67
    const-string/jumbo v0, "sync_link_PacketReader"

    const-string/jumbo v1, "shutdown: "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/connection/c;->d:Z

    .line 70
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/connection/c;->a:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/connection/c;->a:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/connection/c;->a:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 73
    :cond_0
    return-void
.end method
