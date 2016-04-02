.class public Lcom/alipay/mobile/rome/syncsdk/transport/d/e;
.super Ljava/lang/Object;
.source "PacketListenerImplClose.java"

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
    const-class v1, Lcom/alipay/mobile/rome/syncsdk/transport/d/e;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/rome/syncsdk/transport/d/e;->a:Ljava/lang/String;

    .line 13
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/alipay/mobile/rome/syncsdk/transport/d/e;->b:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    .line 23
    return-void
.end method


# virtual methods
.method public final a(Lcom/alipay/mobile/rome/syncsdk/transport/c/a;)V
    .locals 2

    .prologue
    .line 39
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/transport/d/e;->a:Ljava/lang/String;

    const-string/jumbo v1, "processPacket: close "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/d/e;->b:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->disconnectByServerNotify()V

    .line 42
    return-void
.end method

.method public final b(Lcom/alipay/mobile/rome/syncsdk/transport/c/a;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 29
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alipay/mobile/rome/syncsdk/transport/c/a;->a()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 32
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
