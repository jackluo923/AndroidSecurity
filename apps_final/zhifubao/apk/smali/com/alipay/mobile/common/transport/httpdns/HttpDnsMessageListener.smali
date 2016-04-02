.class public Lcom/alipay/mobile/common/transport/httpdns/HttpDnsMessageListener;
.super Ljava/lang/Object;
.source "HttpDnsMessageListener.java"

# interfaces
.implements Lcom/alipay/mobile/common/transport/httpdns/HttpDnsEventListener;


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "HTTP_DNS_TAG"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMessageFromHttpDns(Lcom/alipay/mobile/common/transport/httpdns/DnsEvent;)V
    .locals 5

    .prologue
    .line 28
    invoke-virtual {p1}, Lcom/alipay/mobile/common/transport/httpdns/DnsEvent;->getMessageType()Lcom/alipay/mobile/common/transport/httpdns/MessageType;

    move-result-object v0

    .line 30
    sget-object v1, Lcom/alipay/mobile/common/transport/httpdns/MessageType;->DNSFAIL:Lcom/alipay/mobile/common/transport/httpdns/MessageType;

    if-ne v0, v1, :cond_1

    .line 31
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "HTTP_DNS_TAG"

    const-string/jumbo v2, "Http Dns reslove failed"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    :cond_0
    :goto_0
    return-void

    .line 32
    :cond_1
    sget-object v1, Lcom/alipay/mobile/common/transport/httpdns/MessageType;->DNSTIME:Lcom/alipay/mobile/common/transport/httpdns/MessageType;

    if-ne v0, v1, :cond_2

    .line 33
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "HTTP_DNS_TAG"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Http Dns reslove success time is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/common/transport/httpdns/DnsEvent;->getDnsResolveTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 34
    :cond_2
    sget-object v1, Lcom/alipay/mobile/common/transport/httpdns/MessageType;->IPERROR:Lcom/alipay/mobile/common/transport/httpdns/MessageType;

    if-ne v0, v1, :cond_0

    .line 35
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "HTTP_DNS_TAG"

    const-string/jumbo v2, "Http Dns \u83b7\u53d6IP\u5931\u8d25"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
