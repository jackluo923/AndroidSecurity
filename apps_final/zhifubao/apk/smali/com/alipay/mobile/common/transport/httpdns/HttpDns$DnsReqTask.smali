.class Lcom/alipay/mobile/common/transport/httpdns/HttpDns$DnsReqTask;
.super Ljava/lang/Object;
.source "HttpDns.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/transport/httpdns/HttpDns;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/transport/httpdns/HttpDns;)V
    .locals 0

    .prologue
    .line 829
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$DnsReqTask;->this$0:Lcom/alipay/mobile/common/transport/httpdns/HttpDns;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 831
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$DnsReqTask;->this$0:Lcom/alipay/mobile/common/transport/httpdns/HttpDns;

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->access$100(Lcom/alipay/mobile/common/transport/httpdns/HttpDns;)V

    .line 832
    return-void
.end method
