.class final Lcom/alipay/mobile/rome/syncsdk/transport/d/d;
.super Ljava/lang/Object;
.source "PacketListenerImplADispatch.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:Lcom/alipay/mobile/rome/syncsdk/transport/d/a;

.field final synthetic b:Lcom/alipay/mobile/rome/syncsdk/transport/d/b;

.field private c:Lcom/alipay/mobile/rome/syncsdk/transport/c/a;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/rome/syncsdk/transport/d/b;Lcom/alipay/mobile/rome/syncsdk/transport/d/a;Lcom/alipay/mobile/rome/syncsdk/transport/c/a;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/alipay/mobile/rome/syncsdk/transport/d/d;->b:Lcom/alipay/mobile/rome/syncsdk/transport/d/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-object p3, p0, Lcom/alipay/mobile/rome/syncsdk/transport/d/d;->c:Lcom/alipay/mobile/rome/syncsdk/transport/c/a;

    .line 123
    iput-object p2, p0, Lcom/alipay/mobile/rome/syncsdk/transport/d/d;->a:Lcom/alipay/mobile/rome/syncsdk/transport/d/a;

    .line 124
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/d/d;->a:Lcom/alipay/mobile/rome/syncsdk/transport/d/a;

    iget-object v1, p0, Lcom/alipay/mobile/rome/syncsdk/transport/d/d;->c:Lcom/alipay/mobile/rome/syncsdk/transport/c/a;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/transport/d/a;->a(Lcom/alipay/mobile/rome/syncsdk/transport/c/a;)V

    .line 128
    return-void
.end method
