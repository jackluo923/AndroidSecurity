.class public interface abstract Lcom/alipay/mobile/common/transport/httpdns/DnsLocalManager;
.super Ljava/lang/Object;
.source "DnsLocalManager.java"


# virtual methods
.method public abstract deleteLocalIpsByHost(Ljava/lang/String;)Z
.end method

.method public abstract getLastUpdateTime()J
.end method

.method public abstract queryLocalIPByHost(Ljava/lang/String;)Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;
.end method

.method public abstract saveLastUpdateTime()V
.end method

.method public abstract storeIP2Local(Ljava/lang/String;Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;)V
.end method
