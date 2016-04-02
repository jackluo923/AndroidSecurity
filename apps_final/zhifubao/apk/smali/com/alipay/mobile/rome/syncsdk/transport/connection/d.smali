.class final Lcom/alipay/mobile/rome/syncsdk/transport/connection/d;
.super Ljava/lang/Thread;
.source "PacketReader.java"


# instance fields
.field final synthetic a:Lcom/alipay/mobile/rome/syncsdk/transport/connection/c;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/rome/syncsdk/transport/connection/c;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/rome/syncsdk/transport/connection/d;->a:Lcom/alipay/mobile/rome/syncsdk/transport/connection/c;

    .line 43
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/connection/d;->a:Lcom/alipay/mobile/rome/syncsdk/transport/connection/c;

    invoke-static {v0}, Lcom/alipay/mobile/rome/syncsdk/transport/connection/c;->a(Lcom/alipay/mobile/rome/syncsdk/transport/connection/c;)V

    .line 46
    return-void
.end method
