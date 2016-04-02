.class final Lcom/alipay/pushsdk/push/n;
.super Ljava/lang/Object;
.source "PushManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final a:Lcom/alipay/pushsdk/push/l;

.field final synthetic b:Lcom/alipay/pushsdk/push/l;

.field private c:Lcom/alipay/pushsdk/push/a/a;


# direct methods
.method private constructor <init>(Lcom/alipay/pushsdk/push/l;Lcom/alipay/pushsdk/push/a/b;)V
    .locals 0

    .prologue
    .line 646
    iput-object p1, p0, Lcom/alipay/pushsdk/push/n;->b:Lcom/alipay/pushsdk/push/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 647
    iput-object p1, p0, Lcom/alipay/pushsdk/push/n;->a:Lcom/alipay/pushsdk/push/l;

    .line 648
    iput-object p2, p0, Lcom/alipay/pushsdk/push/n;->c:Lcom/alipay/pushsdk/push/a/a;

    .line 649
    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/pushsdk/push/l;Lcom/alipay/pushsdk/push/a/b;B)V
    .locals 0

    .prologue
    .line 646
    invoke-direct {p0, p1, p2}, Lcom/alipay/pushsdk/push/n;-><init>(Lcom/alipay/pushsdk/push/l;Lcom/alipay/pushsdk/push/a/b;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x3

    .line 655
    invoke-static {}, Lcom/alipay/pushsdk/push/l;->B()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "===== ConnectTask.run()====="

    invoke-static {v3, v0, v1}, Lcom/alipay/pushsdk/util/log/TraceLoggerUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 657
    invoke-static {v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 658
    invoke-static {}, Lcom/alipay/pushsdk/push/l;->B()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "===== ConnectTask pushManager="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 659
    iget-object v2, p0, Lcom/alipay/pushsdk/push/n;->a:Lcom/alipay/pushsdk/push/l;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 658
    invoke-static {v4, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 663
    :cond_0
    iget-object v0, p0, Lcom/alipay/pushsdk/push/n;->a:Lcom/alipay/pushsdk/push/l;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/l;->t()Z

    move-result v0

    if-nez v0, :cond_3

    .line 665
    iget-object v0, p0, Lcom/alipay/pushsdk/push/n;->a:Lcom/alipay/pushsdk/push/l;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/l;->z()V

    .line 668
    iget-object v0, p0, Lcom/alipay/pushsdk/push/n;->b:Lcom/alipay/pushsdk/push/l;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/pushsdk/push/l;->d(J)V

    .line 671
    iget-object v0, p0, Lcom/alipay/pushsdk/push/n;->b:Lcom/alipay/pushsdk/push/l;

    invoke-static {v0}, Lcom/alipay/pushsdk/push/l;->a(Lcom/alipay/pushsdk/push/l;)V

    .line 674
    iget-object v0, p0, Lcom/alipay/pushsdk/push/n;->b:Lcom/alipay/pushsdk/push/l;

    invoke-static {v0}, Lcom/alipay/pushsdk/push/l;->b(Lcom/alipay/pushsdk/push/l;)V

    .line 677
    iget-object v0, p0, Lcom/alipay/pushsdk/push/n;->b:Lcom/alipay/pushsdk/push/l;

    invoke-static {v0}, Lcom/alipay/pushsdk/push/l;->c(Lcom/alipay/pushsdk/push/l;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/pushsdk/push/n;->b:Lcom/alipay/pushsdk/push/l;

    invoke-static {v0}, Lcom/alipay/pushsdk/push/l;->c(Lcom/alipay/pushsdk/push/l;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 678
    iget-object v0, p0, Lcom/alipay/pushsdk/push/n;->b:Lcom/alipay/pushsdk/push/l;

    invoke-static {v0}, Lcom/alipay/pushsdk/push/l;->d(Lcom/alipay/pushsdk/push/l;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 679
    new-instance v0, Lcom/alipay/pushsdk/push/connection/proxy/ProxyInfo;

    sget-object v1, Lcom/alipay/pushsdk/push/connection/proxy/ProxyInfo$ProxyType;->SOCKS:Lcom/alipay/pushsdk/push/connection/proxy/ProxyInfo$ProxyType;

    .line 680
    iget-object v2, p0, Lcom/alipay/pushsdk/push/n;->b:Lcom/alipay/pushsdk/push/l;

    invoke-static {v2}, Lcom/alipay/pushsdk/push/l;->c(Lcom/alipay/pushsdk/push/l;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/pushsdk/push/n;->b:Lcom/alipay/pushsdk/push/l;

    invoke-static {v3}, Lcom/alipay/pushsdk/push/l;->d(Lcom/alipay/pushsdk/push/l;)I

    move-result v3

    .line 679
    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/pushsdk/push/connection/proxy/ProxyInfo;-><init>(Lcom/alipay/pushsdk/push/connection/proxy/ProxyInfo$ProxyType;Ljava/lang/String;I)V

    .line 686
    :goto_0
    new-instance v1, Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration;

    .line 687
    iget-object v2, p0, Lcom/alipay/pushsdk/push/n;->b:Lcom/alipay/pushsdk/push/l;

    invoke-static {v2}, Lcom/alipay/pushsdk/push/l;->e(Lcom/alipay/pushsdk/push/l;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/pushsdk/push/n;->b:Lcom/alipay/pushsdk/push/l;

    invoke-static {v3}, Lcom/alipay/pushsdk/push/l;->f(Lcom/alipay/pushsdk/push/l;)I

    move-result v3

    .line 686
    invoke-direct {v1, v2, v3, v0}, Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration;-><init>(Ljava/lang/String;ILcom/alipay/pushsdk/push/connection/proxy/ProxyInfo;)V

    .line 690
    iget-object v0, p0, Lcom/alipay/pushsdk/push/n;->b:Lcom/alipay/pushsdk/push/l;

    invoke-static {v0}, Lcom/alipay/pushsdk/push/l;->g(Lcom/alipay/pushsdk/push/l;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/pushsdk/push/n;->b:Lcom/alipay/pushsdk/push/l;

    invoke-static {v0}, Lcom/alipay/pushsdk/push/l;->g(Lcom/alipay/pushsdk/push/l;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 691
    sget-object v0, Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration$SecurityMode;->required:Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration$SecurityMode;

    invoke-virtual {v1, v0}, Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration;->a(Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration$SecurityMode;)V

    .line 696
    :goto_1
    invoke-virtual {v1}, Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration;->e()V

    .line 697
    invoke-virtual {v1}, Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration;->d()V

    .line 699
    new-instance v0, Lcom/alipay/pushsdk/push/connection/k;

    .line 700
    iget-object v2, p0, Lcom/alipay/pushsdk/push/n;->b:Lcom/alipay/pushsdk/push/l;

    invoke-static {v2}, Lcom/alipay/pushsdk/push/l;->h(Lcom/alipay/pushsdk/push/l;)Landroid/content/Context;

    .line 699
    invoke-direct {v0, v1}, Lcom/alipay/pushsdk/push/connection/k;-><init>(Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration;)V

    .line 701
    iget-object v1, p0, Lcom/alipay/pushsdk/push/n;->a:Lcom/alipay/pushsdk/push/l;

    invoke-virtual {v1, v0}, Lcom/alipay/pushsdk/push/l;->a(Lcom/alipay/pushsdk/push/connection/k;)V

    .line 704
    iget-object v0, p0, Lcom/alipay/pushsdk/push/n;->a:Lcom/alipay/pushsdk/push/l;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/l;->d()Lcom/alipay/pushsdk/push/connection/k;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/pushsdk/push/n;->b:Lcom/alipay/pushsdk/push/l;

    invoke-static {v1}, Lcom/alipay/pushsdk/push/l;->i(Lcom/alipay/pushsdk/push/l;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/push/connection/k;->b(I)V

    .line 705
    iget-object v0, p0, Lcom/alipay/pushsdk/push/n;->a:Lcom/alipay/pushsdk/push/l;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/l;->d()Lcom/alipay/pushsdk/push/connection/k;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/pushsdk/push/n;->b:Lcom/alipay/pushsdk/push/l;

    invoke-static {v1}, Lcom/alipay/pushsdk/push/l;->j(Lcom/alipay/pushsdk/push/l;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/push/connection/k;->a(I)V

    .line 707
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/alipay/pushsdk/push/l;->f(J)V

    .line 710
    iget-object v0, p0, Lcom/alipay/pushsdk/push/n;->a:Lcom/alipay/pushsdk/push/l;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/l;->d()Lcom/alipay/pushsdk/push/connection/k;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/pushsdk/push/n;->c:Lcom/alipay/pushsdk/push/a/a;

    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/push/connection/k;->a(Lcom/alipay/pushsdk/push/a/a;)V

    .line 721
    :goto_2
    return-void

    .line 682
    :cond_1
    new-instance v0, Lcom/alipay/pushsdk/push/connection/proxy/ProxyInfo;

    sget-object v1, Lcom/alipay/pushsdk/push/connection/proxy/ProxyInfo$ProxyType;->NONE:Lcom/alipay/pushsdk/push/connection/proxy/ProxyInfo$ProxyType;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/pushsdk/push/connection/proxy/ProxyInfo;-><init>(Lcom/alipay/pushsdk/push/connection/proxy/ProxyInfo$ProxyType;Ljava/lang/String;I)V

    goto :goto_0

    .line 693
    :cond_2
    sget-object v0, Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration$SecurityMode;->disabled:Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration$SecurityMode;

    invoke-virtual {v1, v0}, Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration;->a(Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration$SecurityMode;)V

    goto :goto_1

    .line 716
    :cond_3
    invoke-static {}, Lcom/alipay/pushsdk/push/l;->B()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ConnectTask.run: pushManager.isConnected now!"

    invoke-static {v3, v0, v1}, Lcom/alipay/pushsdk/util/log/TraceLoggerUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method
