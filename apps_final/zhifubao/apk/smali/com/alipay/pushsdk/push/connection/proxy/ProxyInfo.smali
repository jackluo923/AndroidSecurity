.class public final Lcom/alipay/pushsdk/push/connection/proxy/ProxyInfo;
.super Ljava/lang/Object;
.source "ProxyInfo.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Lcom/alipay/pushsdk/push/connection/proxy/ProxyInfo$ProxyType;


# direct methods
.method public constructor <init>(Lcom/alipay/pushsdk/push/connection/proxy/ProxyInfo$ProxyType;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/alipay/pushsdk/push/connection/proxy/ProxyInfo;->c:Lcom/alipay/pushsdk/push/connection/proxy/ProxyInfo$ProxyType;

    .line 22
    iput-object p2, p0, Lcom/alipay/pushsdk/push/connection/proxy/ProxyInfo;->a:Ljava/lang/String;

    .line 23
    iput p3, p0, Lcom/alipay/pushsdk/push/connection/proxy/ProxyInfo;->b:I

    .line 24
    return-void
.end method

.method public static d()Ljavax/net/SocketFactory;
    .locals 1

    .prologue
    .line 62
    new-instance v0, Lcom/alipay/pushsdk/push/connection/proxy/a;

    invoke-direct {v0}, Lcom/alipay/pushsdk/push/connection/proxy/a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/proxy/ProxyInfo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/alipay/pushsdk/push/connection/proxy/ProxyInfo;->b:I

    return v0
.end method

.method public final c()Ljavax/net/SocketFactory;
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/proxy/ProxyInfo;->c:Lcom/alipay/pushsdk/push/connection/proxy/ProxyInfo$ProxyType;

    sget-object v1, Lcom/alipay/pushsdk/push/connection/proxy/ProxyInfo$ProxyType;->NONE:Lcom/alipay/pushsdk/push/connection/proxy/ProxyInfo$ProxyType;

    if-ne v0, v1, :cond_0

    .line 48
    new-instance v0, Lcom/alipay/pushsdk/push/connection/proxy/a;

    invoke-direct {v0}, Lcom/alipay/pushsdk/push/connection/proxy/a;-><init>()V

    .line 57
    :goto_0
    return-object v0

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/proxy/ProxyInfo;->c:Lcom/alipay/pushsdk/push/connection/proxy/ProxyInfo$ProxyType;

    sget-object v1, Lcom/alipay/pushsdk/push/connection/proxy/ProxyInfo$ProxyType;->SOCKS:Lcom/alipay/pushsdk/push/connection/proxy/ProxyInfo$ProxyType;

    if-ne v0, v1, :cond_1

    .line 55
    new-instance v0, Lcom/alipay/pushsdk/push/connection/proxy/b;

    invoke-direct {v0, p0}, Lcom/alipay/pushsdk/push/connection/proxy/b;-><init>(Lcom/alipay/pushsdk/push/connection/proxy/ProxyInfo;)V

    goto :goto_0

    .line 57
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 70
    iget-object v1, p0, Lcom/alipay/pushsdk/push/connection/proxy/ProxyInfo;->c:Lcom/alipay/pushsdk/push/connection/proxy/ProxyInfo$ProxyType;

    sget-object v2, Lcom/alipay/pushsdk/push/connection/proxy/ProxyInfo$ProxyType;->NONE:Lcom/alipay/pushsdk/push/connection/proxy/ProxyInfo$ProxyType;

    if-ne v1, v2, :cond_1

    .line 80
    :cond_0
    :goto_0
    return v0

    .line 77
    :cond_1
    iget-object v1, p0, Lcom/alipay/pushsdk/push/connection/proxy/ProxyInfo;->c:Lcom/alipay/pushsdk/push/connection/proxy/ProxyInfo$ProxyType;

    sget-object v2, Lcom/alipay/pushsdk/push/connection/proxy/ProxyInfo$ProxyType;->SOCKS:Lcom/alipay/pushsdk/push/connection/proxy/ProxyInfo$ProxyType;

    if-ne v1, v2, :cond_0

    .line 78
    const/4 v0, 0x1

    goto :goto_0
.end method
