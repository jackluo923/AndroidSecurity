.class Lcom/alipay/mobile/common/transport/httpdns/HttpDns$InetAddrGetAllByNameTask;
.super Ljava/lang/Object;
.source "HttpDns.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<[",
        "Ljava/net/InetAddress;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field final synthetic this$0:Lcom/alipay/mobile/common/transport/httpdns/HttpDns;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/transport/httpdns/HttpDns;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 865
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$InetAddrGetAllByNameTask;->this$0:Lcom/alipay/mobile/common/transport/httpdns/HttpDns;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 866
    iput-object p2, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$InetAddrGetAllByNameTask;->a:Ljava/lang/String;

    .line 867
    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 861
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$InetAddrGetAllByNameTask;->call()[Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public call()[Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 877
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$InetAddrGetAllByNameTask;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method
