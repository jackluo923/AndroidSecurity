.class final Lcom/alipay/mobile/command/invoke/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/command/rpc/http/Transport;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/command/invoke/a;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/command/invoke/a;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/command/invoke/b;->a:Lcom/alipay/mobile/command/invoke/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute(Lcom/alipay/mobile/command/model/Request;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/command/model/Request;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/alipay/mobile/command/model/Response;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/alipay/mobile/command/rpc/http/HttpManager;->getInstance()Lcom/alipay/mobile/command/rpc/http/HttpManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/alipay/mobile/command/rpc/http/HttpManager;->execute(Lcom/alipay/mobile/command/model/Request;Lcom/alipay/mobile/command/rpc/http/TransportCallback;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method
