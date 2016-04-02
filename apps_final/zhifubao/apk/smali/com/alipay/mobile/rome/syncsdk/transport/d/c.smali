.class final Lcom/alipay/mobile/rome/syncsdk/transport/d/c;
.super Ljava/lang/Object;
.source "PacketListenerImplADispatch.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/rome/syncsdk/transport/d/b;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/rome/syncsdk/transport/d/b;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/rome/syncsdk/transport/d/c;->a:Lcom/alipay/mobile/rome/syncsdk/transport/d/b;

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    .prologue
    .line 144
    new-instance v0, Ljava/lang/Thread;

    const-string/jumbo v1, "longlink dispatcher"

    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 145
    return-object v0
.end method
