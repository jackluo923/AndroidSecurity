.class public Lcom/alipay/mobile/rome/syncsdk/transport/d/g;
.super Ljava/lang/Object;
.source "PacketListenerImplLinkSync.java"

# interfaces
.implements Lcom/alipay/mobile/rome/syncsdk/transport/d/a;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "sync_link_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    const-class v1, Lcom/alipay/mobile/rome/syncsdk/transport/d/g;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/rome/syncsdk/transport/d/g;->a:Ljava/lang/String;

    .line 13
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/alipay/mobile/rome/syncsdk/transport/d/g;->b:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    .line 23
    return-void
.end method


# virtual methods
.method public final a(Lcom/alipay/mobile/rome/syncsdk/transport/c/a;)V
    .locals 2

    .prologue
    .line 39
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/transport/d/g;->a:Ljava/lang/String;

    const-string/jumbo v1, "processPacket: [ PacketListenerImplLinkSync ] "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-virtual {p1}, Lcom/alipay/mobile/rome/syncsdk/transport/c/a;->e()Ljava/lang/String;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/transport/d/g;->a:Ljava/lang/String;

    const-string/jumbo v1, "processPacket: [ packet dataStr=null ]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :goto_0
    return-void

    .line 48
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/rome/syncsdk/transport/d/g;->b:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    invoke-virtual {v1}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->getLinkNotifier()Lcom/alipay/mobile/rome/syncsdk/service/ILongLinkNotifer;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/alipay/mobile/rome/syncsdk/service/ILongLinkNotifer;->onReceivedPacketSync(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b(Lcom/alipay/mobile/rome/syncsdk/transport/c/a;)Z
    .locals 2

    .prologue
    .line 30
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alipay/mobile/rome/syncsdk/transport/c/a;->a()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 31
    const/4 v0, 0x1

    .line 33
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
