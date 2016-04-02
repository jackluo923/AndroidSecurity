.class public Lcom/alipay/mobile/logmonitor/util/NetUtils;
.super Ljava/lang/Object;
.source "NetUtils.java"


# direct methods
.method public static a(Landroid/content/Context;)I
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 15
    .line 16
    const-string/jumbo v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 18
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 19
    if-nez v0, :cond_0

    .line 35
    :goto_0
    return v1

    .line 22
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    .line 23
    if-nez v3, :cond_2

    .line 24
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    .line 25
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 26
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "cmnet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 27
    const/4 v0, 0x3

    :goto_1
    move v1, v0

    .line 35
    goto :goto_0

    .line 29
    :cond_1
    const/4 v0, 0x2

    goto :goto_1

    .line 32
    :cond_2
    if-ne v3, v2, :cond_3

    move v0, v2

    .line 33
    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_1
.end method
