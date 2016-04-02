.class public Lcom/alipay/mobile/rome/syncsdk/service/a/h;
.super Ljava/lang/Object;
.source "SendLinkSyncDataTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

.field private final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "sync_link_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    const-class v1, Lcom/alipay/mobile/rome/syncsdk/service/a/h;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/rome/syncsdk/service/a/h;->a:Ljava/lang/String;

    .line 14
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/alipay/mobile/rome/syncsdk/service/a/h;->b:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    .line 33
    iput-object p2, p0, Lcom/alipay/mobile/rome/syncsdk/service/a/h;->c:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 42
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/service/a/h;->a:Ljava/lang/String;

    const-string/jumbo v1, "SendLinkSyncDataTask: run: "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/a/h;->b:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->isDeviceBinded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 46
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/service/a/h;->a:Ljava/lang/String;

    const-string/jumbo v1, "SendLinkSyncDataTask: run: [ connection isDeviceBinded=false ]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/a/h;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/a/h;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/a/h;->c:Ljava/lang/String;

    sget-object v1, Lcom/alipay/mobile/rome/syncsdk/service/a/h;->a:Ljava/lang/String;

    const-string/jumbo v2, "sendSyncPacket: "

    invoke-static {v1, v2}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/rome/syncsdk/service/a/h;->b:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    invoke-virtual {v1}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->getProtocolVersion()I

    move-result v1

    invoke-static {v1}, Lcom/alipay/mobile/rome/syncsdk/transport/c/c;->a(I)Lcom/alipay/mobile/rome/syncsdk/transport/c/a;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/rome/syncsdk/transport/c/a;->a(I)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/rome/syncsdk/transport/c/a;->b(I)V

    :try_start_0
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/rome/syncsdk/transport/c/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/a/h;->b:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->getConnection()Lcom/alipay/mobile/rome/syncsdk/transport/connection/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/transport/connection/a;->a(Lcom/alipay/mobile/rome/syncsdk/transport/c/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/alipay/mobile/rome/syncsdk/service/a/h;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "sendSyncPacket: [ Exception="

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
