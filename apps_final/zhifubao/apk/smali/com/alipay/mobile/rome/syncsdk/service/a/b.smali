.class public Lcom/alipay/mobile/rome/syncsdk/service/a/b;
.super Ljava/lang/Object;
.source "CloseConnTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "sync_link_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/alipay/mobile/rome/syncsdk/service/a/b;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/rome/syncsdk/service/a/b;->a:Ljava/lang/String;

    .line 14
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/alipay/mobile/rome/syncsdk/service/a/b;->b:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    .line 28
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 33
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/service/a/b;->a:Ljava/lang/String;

    const-string/jumbo v1, "CloseConnTask: run: "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/a/b;->b:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 36
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/service/a/b;->a:Ljava/lang/String;

    const-string/jumbo v1, "sendClosePacket: [ isConnected=false ]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    :goto_0
    return-void

    .line 41
    :cond_0
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/service/a/b;->a:Ljava/lang/String;

    const-string/jumbo v1, "sendClosePacket: "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/a/b;->b:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->getProtocolVersion()I

    move-result v0

    invoke-static {v0}, Lcom/alipay/mobile/rome/syncsdk/transport/c/c;->a(I)Lcom/alipay/mobile/rome/syncsdk/transport/c/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/transport/c/a;->a(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/transport/c/a;->b(I)V

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/transport/c/a;->a(Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/rome/syncsdk/service/a/b;->b:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    invoke-virtual {v1}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->getConnection()Lcom/alipay/mobile/rome/syncsdk/transport/connection/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/rome/syncsdk/transport/connection/a;->a(Lcom/alipay/mobile/rome/syncsdk/transport/c/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/alipay/mobile/rome/syncsdk/service/a/b;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "sendClosePacket: [ Exception="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " ]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
