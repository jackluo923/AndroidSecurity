.class public Lcom/alipay/mobile/common/transport/httpdns/DnsEvent;
.super Ljava/util/EventObject;
.source "DnsEvent.java"


# instance fields
.field private a:Lcom/alipay/mobile/common/transport/httpdns/MessageType;

.field private b:J

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/alipay/mobile/common/transport/httpdns/MessageType;J)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    .line 27
    iput-object p2, p0, Lcom/alipay/mobile/common/transport/httpdns/DnsEvent;->a:Lcom/alipay/mobile/common/transport/httpdns/MessageType;

    .line 28
    iput-wide p3, p0, Lcom/alipay/mobile/common/transport/httpdns/DnsEvent;->b:J

    .line 29
    return-void
.end method


# virtual methods
.method public getDnsResolveTime()J
    .locals 2

    .prologue
    .line 74
    iget-wide v0, p0, Lcom/alipay/mobile/common/transport/httpdns/DnsEvent;->b:J

    return-wide v0
.end method

.method public getMessageType()Lcom/alipay/mobile/common/transport/httpdns/MessageType;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/DnsEvent;->a:Lcom/alipay/mobile/common/transport/httpdns/MessageType;

    return-object v0
.end method

.method public getUserData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/DnsEvent;->c:Ljava/lang/String;

    return-object v0
.end method

.method public report()Ljava/lang/String;
    .locals 3

    .prologue
    .line 32
    const/4 v0, 0x0

    .line 33
    sget-object v1, Lcom/alipay/mobile/common/transport/httpdns/DnsEvent$1;->$SwitchMap$com$alipay$mobile$common$transport$httpdns$MessageType:[I

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/httpdns/DnsEvent;->a:Lcom/alipay/mobile/common/transport/httpdns/MessageType;

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transport/httpdns/MessageType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 45
    :goto_0
    return-object v0

    .line 35
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "type: DNSFAIL, value: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/httpdns/DnsEvent;->getUserData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 38
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "type: DNSTIME, value: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/httpdns/DnsEvent;->getDnsResolveTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 41
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "type: IPERROR, value: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/httpdns/DnsEvent;->getUserData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 44
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "type: RESLOVERROR, value: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/httpdns/DnsEvent;->getUserData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 33
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setDnsResolveTime(J)V
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/alipay/mobile/common/transport/httpdns/MessageType;->DNSTIME:Lcom/alipay/mobile/common/transport/httpdns/MessageType;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/transport/httpdns/DnsEvent;->setMessageType(Lcom/alipay/mobile/common/transport/httpdns/MessageType;)V

    .line 70
    iput-wide p1, p0, Lcom/alipay/mobile/common/transport/httpdns/DnsEvent;->b:J

    .line 71
    return-void
.end method

.method public setMessageType(Lcom/alipay/mobile/common/transport/httpdns/MessageType;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/httpdns/DnsEvent;->a:Lcom/alipay/mobile/common/transport/httpdns/MessageType;

    .line 54
    return-void
.end method

.method public setUserData(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/httpdns/DnsEvent;->c:Ljava/lang/String;

    .line 62
    return-void
.end method
