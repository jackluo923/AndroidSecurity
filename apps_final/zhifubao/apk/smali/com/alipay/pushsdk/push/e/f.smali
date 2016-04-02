.class public Lcom/alipay/pushsdk/push/e/f;
.super Lcom/alipay/pushsdk/push/e/d;
.source "UserTrigger.java"


# static fields
.field private static final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/alipay/pushsdk/push/e/f;

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/pushsdk/push/e/f;->c:Ljava/lang/String;

    .line 9
    return-void
.end method

.method public constructor <init>(Lcom/alipay/pushsdk/push/l;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/alipay/pushsdk/push/e/d;-><init>(Lcom/alipay/pushsdk/push/l;)V

    .line 14
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x4

    const/4 v2, 0x3

    .line 18
    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/e/f;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v1, "10"

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lcom/alipay/pushsdk/push/e/f;->a:Lcom/alipay/pushsdk/push/l;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/l;->t()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alipay/pushsdk/push/e/f;->a:Lcom/alipay/pushsdk/push/l;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/pushsdk/push/e/f;->a:Lcom/alipay/pushsdk/push/l;

    invoke-virtual {v0, v4, v5}, Lcom/alipay/pushsdk/push/l;->b(J)V

    iget-object v0, p0, Lcom/alipay/pushsdk/push/e/f;->a:Lcom/alipay/pushsdk/push/l;

    invoke-virtual {v0, v4, v5}, Lcom/alipay/pushsdk/push/l;->d(J)V

    invoke-static {v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/pushsdk/push/e/f;->c:Ljava/lang/String;

    const-string/jumbo v1, "clearLastConnInfo done!"

    invoke-static {v3, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/pushsdk/push/e/f;->a:Lcom/alipay/pushsdk/push/l;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/pushsdk/push/l;->a(J)V

    .line 20
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alipay/pushsdk/push/e/f;->a:Lcom/alipay/pushsdk/push/l;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/l;->t()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 21
    iget-object v0, p0, Lcom/alipay/pushsdk/push/e/f;->a:Lcom/alipay/pushsdk/push/l;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/l;->w()V

    .line 24
    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/e/f;->b()Ljava/lang/String;

    move-result-object v0

    .line 25
    const-string/jumbo v1, "41"

    .line 27
    const-string/jumbo v2, "3"

    .line 23
    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/util/log/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    :goto_1
    return-void

    .line 18
    :cond_2
    invoke-static {v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/alipay/pushsdk/push/e/f;->c:Ljava/lang/String;

    const-string/jumbo v1, "onPreExecute Connected is true."

    invoke-static {v2, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/alipay/pushsdk/push/e/f;->a:Lcom/alipay/pushsdk/push/l;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/pushsdk/push/l;->a(J)V

    goto :goto_0

    .line 30
    :cond_4
    iget-object v0, p0, Lcom/alipay/pushsdk/push/e/f;->a:Lcom/alipay/pushsdk/push/l;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/l;->b()V

    .line 33
    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/e/f;->b()Ljava/lang/String;

    move-result-object v0

    .line 34
    const-string/jumbo v1, "40"

    .line 36
    const-string/jumbo v2, "6"

    .line 32
    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/util/log/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final d()Z
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 42
    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/e/f;->e()Z

    move-result v0

    if-nez v0, :cond_1

    .line 45
    const/4 v0, 0x0

    .line 48
    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/e/f;->b()Ljava/lang/String;

    move-result-object v1

    .line 49
    const-string/jumbo v2, "10"

    .line 51
    const-string/jumbo v3, "6"

    .line 47
    invoke-static {v1, v2, v3}, Lcom/alipay/pushsdk/util/log/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :goto_0
    invoke-static {v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    sget-object v1, Lcom/alipay/pushsdk/push/e/f;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "UserTrigger checkState is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v1, v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 59
    :cond_0
    return v0

    .line 53
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
