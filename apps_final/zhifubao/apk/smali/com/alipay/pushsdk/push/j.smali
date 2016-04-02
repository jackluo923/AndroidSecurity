.class public final Lcom/alipay/pushsdk/push/j;
.super Ljava/lang/Object;
.source "PushConnInfo.java"


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/alipay/pushsdk/push/j;->a:Landroid/content/Context;

    .line 15
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 4

    .prologue
    .line 23
    const-wide/16 v0, 0x0

    .line 24
    iget-object v2, p0, Lcom/alipay/pushsdk/push/j;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/alipay/pushsdk/util/e;->a(Landroid/content/Context;)Lcom/alipay/pushsdk/util/e;

    move-result-object v2

    .line 25
    const-string/jumbo v3, "APP_LAUNCH_TIME"

    invoke-virtual {v2, v3}, Lcom/alipay/pushsdk/util/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 27
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 28
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 31
    :cond_0
    return-wide v0
.end method

.method public final a(J)V
    .locals 3

    .prologue
    .line 18
    iget-object v0, p0, Lcom/alipay/pushsdk/push/j;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/pushsdk/util/e;->a(Landroid/content/Context;)Lcom/alipay/pushsdk/util/e;

    move-result-object v0

    .line 19
    const-string/jumbo v1, "APP_LAUNCH_TIME"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/pushsdk/util/e;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 20
    return-void
.end method

.method public final b()J
    .locals 4

    .prologue
    .line 40
    const-wide/16 v0, 0x0

    .line 41
    iget-object v2, p0, Lcom/alipay/pushsdk/push/j;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/alipay/pushsdk/util/e;->a(Landroid/content/Context;)Lcom/alipay/pushsdk/util/e;

    move-result-object v2

    .line 42
    const-string/jumbo v3, "LAST_CONNECTED_TIME"

    invoke-virtual {v2, v3}, Lcom/alipay/pushsdk/util/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 44
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 45
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 48
    :cond_0
    return-wide v0
.end method

.method public final b(J)V
    .locals 3

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alipay/pushsdk/push/j;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/pushsdk/util/e;->a(Landroid/content/Context;)Lcom/alipay/pushsdk/util/e;

    move-result-object v0

    .line 36
    const-string/jumbo v1, "LAST_CONNECTED_TIME"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/pushsdk/util/e;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 37
    return-void
.end method

.method public final c()J
    .locals 4

    .prologue
    .line 57
    const-wide/16 v0, 0x0

    .line 59
    iget-object v2, p0, Lcom/alipay/pushsdk/push/j;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/alipay/pushsdk/util/e;->a(Landroid/content/Context;)Lcom/alipay/pushsdk/util/e;

    move-result-object v2

    .line 60
    const-string/jumbo v3, "LAST_LOSTED_TIME"

    invoke-virtual {v2, v3}, Lcom/alipay/pushsdk/util/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 62
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 63
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 66
    :cond_0
    return-wide v0
.end method

.method public final c(J)V
    .locals 3

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alipay/pushsdk/push/j;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/pushsdk/util/e;->a(Landroid/content/Context;)Lcom/alipay/pushsdk/util/e;

    move-result-object v0

    .line 53
    const-string/jumbo v1, "LAST_LOSTED_TIME"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/pushsdk/util/e;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 54
    return-void
.end method

.method public final d()J
    .locals 4

    .prologue
    .line 75
    const-wide/16 v0, 0x0

    .line 77
    iget-object v2, p0, Lcom/alipay/pushsdk/push/j;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/alipay/pushsdk/util/e;->a(Landroid/content/Context;)Lcom/alipay/pushsdk/util/e;

    move-result-object v2

    .line 78
    const-string/jumbo v3, "CREATE_CONNECT_TIME"

    invoke-virtual {v2, v3}, Lcom/alipay/pushsdk/util/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 80
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 81
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 84
    :cond_0
    return-wide v0
.end method

.method public final d(J)V
    .locals 3

    .prologue
    .line 70
    iget-object v0, p0, Lcom/alipay/pushsdk/push/j;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/pushsdk/util/e;->a(Landroid/content/Context;)Lcom/alipay/pushsdk/util/e;

    move-result-object v0

    .line 71
    const-string/jumbo v1, "CREATE_CONNECT_TIME"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/pushsdk/util/e;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 72
    return-void
.end method

.method public final e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/alipay/pushsdk/push/j;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/pushsdk/util/e;->a(Landroid/content/Context;)Lcom/alipay/pushsdk/util/e;

    move-result-object v0

    .line 94
    const-string/jumbo v1, "trigger"

    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/util/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :cond_0
    return-object v0
.end method

.method public final e(J)V
    .locals 3

    .prologue
    .line 100
    iget-object v0, p0, Lcom/alipay/pushsdk/push/j;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/pushsdk/util/e;->a(Landroid/content/Context;)Lcom/alipay/pushsdk/util/e;

    move-result-object v0

    .line 101
    const-string/jumbo v1, "CONN_EVENT_LAST_TIME"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/pushsdk/util/e;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 102
    return-void
.end method

.method public final f()J
    .locals 4

    .prologue
    .line 105
    const-wide/16 v0, 0x0

    .line 106
    iget-object v2, p0, Lcom/alipay/pushsdk/push/j;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/alipay/pushsdk/util/e;->a(Landroid/content/Context;)Lcom/alipay/pushsdk/util/e;

    move-result-object v2

    .line 107
    const-string/jumbo v3, "CONN_EVENT_LAST_TIME"

    invoke-virtual {v2, v3}, Lcom/alipay/pushsdk/util/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 109
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 110
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 113
    :cond_0
    return-wide v0
.end method
