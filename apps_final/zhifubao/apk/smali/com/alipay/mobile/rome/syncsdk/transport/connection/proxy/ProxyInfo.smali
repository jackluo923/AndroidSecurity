.class public final Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/ProxyInfo;
.super Ljava/lang/Object;
.source "ProxyInfo.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/ProxyInfo$ProxyType;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/ProxyInfo$ProxyType;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/ProxyInfo;->d:Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/ProxyInfo$ProxyType;

    .line 34
    iput-object p2, p0, Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/ProxyInfo;->a:Ljava/lang/String;

    .line 35
    iput p3, p0, Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/ProxyInfo;->b:I

    .line 36
    const/16 v0, 0xf

    iput v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/ProxyInfo;->c:I

    .line 37
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/ProxyInfo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/ProxyInfo;->b:I

    return v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/ProxyInfo;->c:I

    return v0
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 87
    const/16 v0, 0xf

    iput v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/ProxyInfo;->c:I

    .line 90
    return-void
.end method

.method public final e()Ljavax/net/SocketFactory;
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/ProxyInfo;->d:Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/ProxyInfo$ProxyType;

    sget-object v1, Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/ProxyInfo$ProxyType;->NONE:Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/ProxyInfo$ProxyType;

    if-ne v0, v1, :cond_0

    .line 100
    new-instance v0, Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/a;

    invoke-direct {v0}, Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/a;-><init>()V

    .line 101
    iget v1, p0, Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/ProxyInfo;->c:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/a;->a(I)V

    .line 102
    new-instance v0, Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/a;

    invoke-direct {v0}, Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/a;-><init>()V

    .line 117
    :goto_0
    return-object v0

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/ProxyInfo;->d:Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/ProxyInfo$ProxyType;

    sget-object v1, Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/ProxyInfo$ProxyType;->HTTP:Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/ProxyInfo$ProxyType;

    if-ne v0, v1, :cond_1

    .line 106
    new-instance v0, Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/b;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/b;-><init>(Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/ProxyInfo;)V

    .line 107
    iget v1, p0, Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/ProxyInfo;->c:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/b;->a(I)V

    goto :goto_0

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/ProxyInfo;->d:Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/ProxyInfo$ProxyType;

    sget-object v1, Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/ProxyInfo$ProxyType;->SOCKS:Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/ProxyInfo$ProxyType;

    if-ne v0, v1, :cond_2

    .line 113
    new-instance v0, Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/a;

    invoke-direct {v0}, Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/a;-><init>()V

    .line 114
    iget v1, p0, Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/ProxyInfo;->c:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/a;->a(I)V

    .line 115
    new-instance v0, Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/a;

    invoke-direct {v0}, Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/a;-><init>()V

    goto :goto_0

    .line 117
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ProxyInfo [proxyAddress="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/ProxyInfo;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", proxyPort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/ProxyInfo;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", proxyType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 126
    iget-object v1, p0, Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/ProxyInfo;->d:Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/ProxyInfo$ProxyType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", connTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/ProxyInfo;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 125
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
