.class public Lcom/alipay/mobile/rome/syncsdk/transport/connection/e;
.super Ljava/lang/Object;
.source "PacketWriter.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Ljava/io/DataOutputStream;

.field private final c:Lcom/alipay/mobile/rome/syncsdk/transport/connection/a;

.field private volatile d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "sync_link_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/alipay/mobile/rome/syncsdk/transport/connection/e;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/rome/syncsdk/transport/connection/e;->a:Ljava/lang/String;

    .line 13
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/rome/syncsdk/transport/connection/a;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/connection/e;->d:Z

    .line 30
    iput-object p1, p0, Lcom/alipay/mobile/rome/syncsdk/transport/connection/e;->c:Lcom/alipay/mobile/rome/syncsdk/transport/connection/a;

    .line 31
    iget-object v0, p1, Lcom/alipay/mobile/rome/syncsdk/transport/connection/a;->b:Ljava/io/DataOutputStream;

    iput-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/connection/e;->b:Ljava/io/DataOutputStream;

    .line 32
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 73
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/transport/connection/e;->a:Ljava/lang/String;

    const-string/jumbo v1, "shutdown: "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/connection/e;->d:Z

    .line 76
    return-void
.end method

.method public final a(Lcom/alipay/mobile/rome/syncsdk/transport/c/a;)V
    .locals 4

    .prologue
    .line 40
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/transport/connection/e;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sendPacket: [ packet="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget-boolean v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/connection/e;->d:Z

    if-eqz v0, :cond_0

    .line 43
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "already done"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_0
    if-nez p1, :cond_2

    .line 48
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/transport/connection/e;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sendPacket: [ packet="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :cond_1
    :goto_0
    return-void

    .line 52
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/connection/e;->b:Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Lcom/alipay/mobile/rome/syncsdk/transport/c/a;->f()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 53
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/connection/e;->b:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 54
    :catch_0
    move-exception v0

    .line 55
    sget-object v1, Lcom/alipay/mobile/rome/syncsdk/transport/connection/e;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "sendPacket: [ Exception"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ][ isDone "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/alipay/mobile/rome/syncsdk/transport/connection/e;->d:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 56
    const-string/jumbo v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 55
    invoke-static {v1, v2}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iget-boolean v1, p0, Lcom/alipay/mobile/rome/syncsdk/transport/connection/e;->d:Z

    if-nez v1, :cond_1

    .line 59
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alipay/mobile/rome/syncsdk/transport/connection/e;->d:Z

    .line 62
    iget-object v1, p0, Lcom/alipay/mobile/rome/syncsdk/transport/connection/e;->c:Lcom/alipay/mobile/rome/syncsdk/transport/connection/a;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/rome/syncsdk/transport/connection/a;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method
