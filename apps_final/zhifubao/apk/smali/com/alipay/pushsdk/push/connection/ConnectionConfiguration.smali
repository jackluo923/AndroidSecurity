.class public final Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration;
.super Ljava/lang/Object;
.source "ConnectionConfiguration.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field protected a:Lcom/alipay/pushsdk/push/connection/proxy/ProxyInfo;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Ljavax/net/SocketFactory;

.field private u:Z

.field private v:Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration$SecurityMode;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/alipay/pushsdk/push/connection/proxy/ProxyInfo;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-boolean v0, p0, Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration;->k:Z

    .line 38
    iput-boolean v0, p0, Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration;->l:Z

    .line 39
    iput-boolean v0, p0, Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration;->m:Z

    .line 40
    iput-boolean v0, p0, Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration;->n:Z

    .line 41
    iput-boolean v0, p0, Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration;->o:Z

    .line 43
    iput-boolean v0, p0, Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration;->p:Z

    .line 45
    iput-boolean v1, p0, Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration;->q:Z

    .line 47
    sget-boolean v0, Lcom/alipay/pushsdk/push/connection/a;->a:Z

    iput-boolean v0, p0, Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration;->r:Z

    .line 51
    iput-boolean v1, p0, Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration;->s:Z

    .line 60
    iput-boolean v1, p0, Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration;->u:Z

    .line 61
    sget-object v0, Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration$SecurityMode;->enabled:Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration$SecurityMode;

    iput-object v0, p0, Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration;->v:Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration$SecurityMode;

    .line 137
    iput-object p1, p0, Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration;->c:Ljava/lang/String;

    iput p2, p0, Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration;->d:I

    iput-object p1, p0, Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration;->a:Lcom/alipay/pushsdk/push/connection/proxy/ProxyInfo;

    const-string/jumbo v0, "java.home"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "lib"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "security"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "cacerts"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration;->e:Ljava/lang/String;

    const-string/jumbo v0, "jks"

    iput-object v0, p0, Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration;->f:Ljava/lang/String;

    const-string/jumbo v0, "changeit"

    iput-object v0, p0, Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration;->g:Ljava/lang/String;

    const-string/jumbo v0, "javax.net.ssl.keyStore"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration;->h:Ljava/lang/String;

    const-string/jumbo v0, "jks"

    iput-object v0, p0, Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration;->i:Ljava/lang/String;

    const-string/jumbo v0, "pkcs11.config"

    iput-object v0, p0, Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration;->j:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/alipay/pushsdk/push/connection/proxy/ProxyInfo;->c()Ljavax/net/SocketFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration;->t:Ljavax/net/SocketFactory;

    .line 138
    return-void
.end method

.method public static g()Ljavax/net/SocketFactory;
    .locals 1

    .prologue
    .line 614
    invoke-static {}, Lcom/alipay/pushsdk/push/connection/proxy/ProxyInfo;->d()Ljavax/net/SocketFactory;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration$SecurityMode;)V
    .locals 0

    .prologue
    .line 231
    iput-object p1, p0, Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration;->v:Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration$SecurityMode;

    .line 232
    return-void
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 206
    iget v0, p0, Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration;->d:I

    return v0
.end method

.method public final c()Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration$SecurityMode;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration;->v:Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration$SecurityMode;

    return-object v0
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 499
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration;->p:Z

    .line 500
    return-void
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 524
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration;->q:Z

    .line 525
    return-void
.end method

.method public final f()Ljavax/net/SocketFactory;
    .locals 1

    .prologue
    .line 604
    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration;->t:Ljavax/net/SocketFactory;

    return-object v0
.end method

.method public final h()Z
    .locals 1

    .prologue
    .line 624
    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration;->a:Lcom/alipay/pushsdk/push/connection/proxy/ProxyInfo;

    if-nez v0, :cond_0

    .line 625
    const/4 v0, 0x0

    .line 627
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration;->a:Lcom/alipay/pushsdk/push/connection/proxy/ProxyInfo;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/connection/proxy/ProxyInfo;->e()Z

    move-result v0

    goto :goto_0
.end method
