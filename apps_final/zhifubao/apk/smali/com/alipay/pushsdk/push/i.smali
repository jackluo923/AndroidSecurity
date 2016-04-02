.class public final Lcom/alipay/pushsdk/push/i;
.super Ljava/lang/Object;
.source "PushAppInfo.java"


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/alipay/pushsdk/push/i;->a:Landroid/content/Context;

    .line 15
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/alipay/pushsdk/push/i;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/pushsdk/util/e;->a(Landroid/content/Context;)Lcom/alipay/pushsdk/util/e;

    move-result-object v0

    .line 24
    const-string/jumbo v1, "userId"

    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/util/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 26
    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :cond_0
    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 18
    iget-object v0, p0, Lcom/alipay/pushsdk/push/i;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/pushsdk/util/e;->a(Landroid/content/Context;)Lcom/alipay/pushsdk/util/e;

    move-result-object v0

    .line 19
    const-string/jumbo v1, "userId"

    invoke-virtual {v0, v1, p1}, Lcom/alipay/pushsdk/util/e;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 20
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alipay/pushsdk/push/i;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/pushsdk/util/e;->a(Landroid/content/Context;)Lcom/alipay/pushsdk/util/e;

    move-result-object v0

    .line 36
    const-string/jumbo v1, "channelId"

    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/util/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 38
    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :cond_0
    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alipay/pushsdk/push/i;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/pushsdk/util/e;->a(Landroid/content/Context;)Lcom/alipay/pushsdk/util/e;

    move-result-object v0

    .line 31
    const-string/jumbo v1, "channelId"

    invoke-virtual {v0, v1, p1}, Lcom/alipay/pushsdk/util/e;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 32
    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alipay/pushsdk/push/i;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/pushsdk/util/e;->a(Landroid/content/Context;)Lcom/alipay/pushsdk/util/e;

    move-result-object v0

    .line 60
    const-string/jumbo v1, "versionId"

    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/util/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :cond_0
    return-object v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alipay/pushsdk/push/i;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/pushsdk/util/e;->a(Landroid/content/Context;)Lcom/alipay/pushsdk/util/e;

    move-result-object v0

    .line 43
    const-string/jumbo v1, "productId"

    invoke-virtual {v0, v1, p1}, Lcom/alipay/pushsdk/util/e;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 44
    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/alipay/pushsdk/push/i;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/pushsdk/util/e;->a(Landroid/content/Context;)Lcom/alipay/pushsdk/util/e;

    move-result-object v0

    .line 73
    const-string/jumbo v1, "clientId"

    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/util/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/alipay/pushsdk/push/i;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/pushsdk/util/c;->a(Landroid/content/Context;)Lcom/alipay/pushsdk/util/c;

    move-result-object v0

    .line 77
    invoke-virtual {v0}, Lcom/alipay/pushsdk/util/c;->a()Ljava/lang/String;

    move-result-object v0

    .line 79
    invoke-virtual {p0, v0}, Lcom/alipay/pushsdk/push/i;->e(Ljava/lang/String;)V

    .line 82
    :cond_1
    return-object v0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alipay/pushsdk/push/i;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/pushsdk/util/e;->a(Landroid/content/Context;)Lcom/alipay/pushsdk/util/e;

    move-result-object v0

    .line 55
    const-string/jumbo v1, "versionId"

    invoke-virtual {v0, v1, p1}, Lcom/alipay/pushsdk/util/e;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 56
    return-void
.end method

.method public final e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/alipay/pushsdk/push/i;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/pushsdk/util/e;->a(Landroid/content/Context;)Lcom/alipay/pushsdk/util/e;

    move-result-object v0

    .line 92
    const-string/jumbo v1, "utdId"

    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/util/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 94
    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :cond_0
    return-object v0
.end method

.method public final e(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/alipay/pushsdk/push/i;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/pushsdk/util/e;->a(Landroid/content/Context;)Lcom/alipay/pushsdk/util/e;

    move-result-object v0

    .line 68
    const-string/jumbo v1, "clientId"

    invoke-virtual {v0, v1, p1}, Lcom/alipay/pushsdk/util/e;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 69
    return-void
.end method

.method public final f()Ljava/lang/String;
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/alipay/pushsdk/push/i;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/pushsdk/util/e;->a(Landroid/content/Context;)Lcom/alipay/pushsdk/util/e;

    move-result-object v0

    .line 104
    const-string/jumbo v1, "msptId"

    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/util/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 106
    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :cond_0
    return-object v0
.end method

.method public final f(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alipay/pushsdk/push/i;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/pushsdk/util/e;->a(Landroid/content/Context;)Lcom/alipay/pushsdk/util/e;

    move-result-object v0

    .line 87
    const-string/jumbo v1, "utdId"

    invoke-virtual {v0, v1, p1}, Lcom/alipay/pushsdk/util/e;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 88
    return-void
.end method

.method public final g(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/alipay/pushsdk/push/i;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/pushsdk/util/e;->a(Landroid/content/Context;)Lcom/alipay/pushsdk/util/e;

    move-result-object v0

    .line 99
    const-string/jumbo v1, "msptId"

    invoke-virtual {v0, v1, p1}, Lcom/alipay/pushsdk/util/e;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 100
    return-void
.end method
