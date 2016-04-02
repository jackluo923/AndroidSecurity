.class public Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;
.super Ljava/lang/Object;
.source "HttpDns.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:J

.field private c:J

.field private d:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 728
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 730
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 722
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 723
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->a:Ljava/lang/String;

    .line 724
    iput-wide p2, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->b:J

    .line 725
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->c:J

    .line 726
    return-void
.end method


# virtual methods
.method public getIp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 765
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getIps()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 814
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->d:[Ljava/lang/String;

    return-object v0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 801
    iget-wide v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->c:J

    return-wide v0
.end method

.method public getTtl()J
    .locals 2

    .prologue
    .line 783
    iget-wide v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->b:J

    return-wide v0
.end method

.method public isTimeOut()Z
    .locals 4

    .prologue
    .line 753
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->b:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 754
    const/4 v0, 0x1

    .line 756
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTimeOut(J)Z
    .locals 4

    .prologue
    .line 740
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->c:J

    add-long/2addr v2, p1

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 741
    const/4 v0, 0x1

    .line 743
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setIp(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 774
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->a:Ljava/lang/String;

    .line 775
    return-void
.end method

.method public setIps([Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 818
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->d:[Ljava/lang/String;

    .line 819
    return-void
.end method

.method public setTime(J)V
    .locals 0

    .prologue
    .line 810
    iput-wide p1, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->c:J

    .line 811
    return-void
.end method

.method public setTtl(J)V
    .locals 0

    .prologue
    .line 792
    iput-wide p1, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->b:J

    .line 793
    return-void
.end method
