.class public Lcom/alipay/mobile/rome/syncsdk/transport/c/c;
.super Ljava/lang/Object;
.source "PacketFactory.java"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "sync_link_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/alipay/mobile/rome/syncsdk/transport/c/c;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/rome/syncsdk/transport/c/c;->a:Ljava/lang/String;

    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)Lcom/alipay/mobile/rome/syncsdk/transport/c/a;
    .locals 4

    .prologue
    .line 21
    const/4 v0, 0x0

    .line 24
    sget v1, Lcom/alipay/mobile/rome/syncsdk/transport/c/b;->c:I

    if-ne v1, p0, :cond_0

    .line 25
    new-instance v0, Lcom/alipay/mobile/rome/syncsdk/transport/c/d;

    invoke-direct {v0}, Lcom/alipay/mobile/rome/syncsdk/transport/c/d;-><init>()V

    .line 31
    :goto_0
    return-object v0

    .line 27
    :cond_0
    sget-object v1, Lcom/alipay/mobile/rome/syncsdk/transport/c/c;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getPacket: protoVersion not supported [ protoVersion="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 27
    invoke-static {v1, v2}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
