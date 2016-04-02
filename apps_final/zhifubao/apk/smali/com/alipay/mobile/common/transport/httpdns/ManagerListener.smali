.class public Lcom/alipay/mobile/common/transport/httpdns/ManagerListener;
.super Ljava/lang/Object;
.source "ManagerListener.java"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/common/transport/httpdns/HttpDnsEventListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/ManagerListener;->a:Ljava/util/List;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/ManagerListener;->a:Ljava/util/List;

    .line 23
    return-void
.end method


# virtual methods
.method public addHttpDnsEventListener(Lcom/alipay/mobile/common/transport/httpdns/HttpDnsEventListener;)V
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/ManagerListener;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    return-void
.end method

.method public deleteHttpDnsEventListener(Lcom/alipay/mobile/common/transport/httpdns/HttpDnsEventListener;)V
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/ManagerListener;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 33
    return-void
.end method

.method public fireHttpDnsEventListener(Lcom/alipay/mobile/common/transport/httpdns/DnsEvent;)V
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/ManagerListener;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transport/httpdns/HttpDnsEventListener;

    .line 38
    invoke-interface {v0, p1}, Lcom/alipay/mobile/common/transport/httpdns/HttpDnsEventListener;->getMessageFromHttpDns(Lcom/alipay/mobile/common/transport/httpdns/DnsEvent;)V

    goto :goto_0

    .line 40
    :cond_0
    return-void
.end method
