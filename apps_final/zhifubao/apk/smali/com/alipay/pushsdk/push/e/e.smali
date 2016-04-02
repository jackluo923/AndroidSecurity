.class public final Lcom/alipay/pushsdk/push/e/e;
.super Ljava/lang/Object;
.source "TriggerFactory.java"


# direct methods
.method public static a(Lcom/alipay/pushsdk/push/l;Ljava/lang/String;)Lcom/alipay/pushsdk/push/e/d;
    .locals 2

    .prologue
    .line 10
    const/4 v0, 0x0

    .line 12
    if-eqz p1, :cond_1

    .line 14
    const-string/jumbo v1, "0"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 15
    const-string/jumbo v1, "1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 16
    const-string/jumbo v1, "2"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 17
    :cond_0
    new-instance v0, Lcom/alipay/pushsdk/push/e/f;

    invoke-direct {v0, p0}, Lcom/alipay/pushsdk/push/e/f;-><init>(Lcom/alipay/pushsdk/push/l;)V

    .line 36
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 37
    invoke-virtual {v0, p1}, Lcom/alipay/pushsdk/push/e/d;->a(Ljava/lang/String;)V

    .line 40
    :cond_2
    return-object v0

    .line 19
    :cond_3
    const-string/jumbo v1, "10"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 20
    new-instance v0, Lcom/alipay/pushsdk/push/e/c;

    invoke-direct {v0, p0}, Lcom/alipay/pushsdk/push/e/c;-><init>(Lcom/alipay/pushsdk/push/l;)V

    goto :goto_0

    .line 22
    :cond_4
    const-string/jumbo v1, "11"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 23
    const-string/jumbo v1, "12"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 24
    const-string/jumbo v1, "13"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 25
    const-string/jumbo v1, "15"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 26
    :cond_5
    new-instance v0, Lcom/alipay/pushsdk/push/e/a;

    invoke-direct {v0, p0}, Lcom/alipay/pushsdk/push/e/a;-><init>(Lcom/alipay/pushsdk/push/l;)V

    goto :goto_0

    .line 27
    :cond_6
    const-string/jumbo v1, "14"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 28
    new-instance v0, Lcom/alipay/pushsdk/push/e/b;

    invoke-direct {v0, p0}, Lcom/alipay/pushsdk/push/e/b;-><init>(Lcom/alipay/pushsdk/push/l;)V

    goto :goto_0
.end method
