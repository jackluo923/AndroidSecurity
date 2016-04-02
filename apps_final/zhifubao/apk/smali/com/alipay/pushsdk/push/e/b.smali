.class public Lcom/alipay/pushsdk/push/e/b;
.super Lcom/alipay/pushsdk/push/e/d;
.source "SysTriggerNetChange.java"


# static fields
.field private static final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/alipay/pushsdk/push/e/b;

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 16
    sput-object v0, Lcom/alipay/pushsdk/push/e/b;->c:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public constructor <init>(Lcom/alipay/pushsdk/push/l;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/alipay/pushsdk/push/e/d;-><init>(Lcom/alipay/pushsdk/push/l;)V

    .line 21
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    .line 25
    invoke-static {}, Lcom/alipay/pushsdk/push/connection/m;->d()J

    move-result-wide v0

    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 28
    invoke-static {v8}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 31
    sget-object v4, Lcom/alipay/pushsdk/push/e/b;->c:Ljava/lang/String;

    .line 32
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "netTriggerEvent_onExecute lostedTime="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 33
    const-string/jumbo v3, ", isConnected="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/pushsdk/push/e/b;->a:Lcom/alipay/pushsdk/push/l;

    invoke-virtual {v3}, Lcom/alipay/pushsdk/push/l;->t()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 34
    const-string/jumbo v3, ", lastConnectedTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 35
    invoke-static {v0, v1}, Lcom/alipay/pushsdk/util/j;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 29
    invoke-static {v8, v4, v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/alipay/pushsdk/push/e/b;->a:Lcom/alipay/pushsdk/push/l;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/l;->t()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 46
    iget-object v0, p0, Lcom/alipay/pushsdk/push/e/b;->a:Lcom/alipay/pushsdk/push/l;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/l;->w()V

    .line 48
    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/e/b;->b()Ljava/lang/String;

    move-result-object v0

    .line 49
    const-string/jumbo v1, "41"

    .line 51
    const-string/jumbo v2, "3"

    .line 48
    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/util/log/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :cond_1
    :goto_0
    return-void

    .line 55
    :cond_2
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/alipay/pushsdk/push/e/b;->a:Lcom/alipay/pushsdk/push/l;

    invoke-virtual {v1}, Lcom/alipay/pushsdk/push/l;->a()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/alipay/pushsdk/push/j;

    invoke-direct {v2, v1}, Lcom/alipay/pushsdk/push/j;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/alipay/pushsdk/push/j;->f()J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v8}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v5

    if-eqz v5, :cond_3

    sget-object v5, Lcom/alipay/pushsdk/push/e/b;->c:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "isShortTime lastConnEventAction="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", curTime="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v5, v6}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_3
    sub-long v1, v3, v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    const-wide/16 v3, 0x1e

    cmp-long v1, v1, v3

    if-ltz v1, :cond_4

    const/4 v0, 0x0

    :cond_4
    invoke-static {v8}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/alipay/pushsdk/push/e/b;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "isShortTime ret="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v1, v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_5
    if-nez v0, :cond_1

    .line 58
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/alipay/pushsdk/push/e/b;->a:Lcom/alipay/pushsdk/push/l;

    invoke-virtual {v2}, Lcom/alipay/pushsdk/push/l;->a()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/alipay/pushsdk/push/j;

    invoke-direct {v3, v2}, Lcom/alipay/pushsdk/push/j;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v0, v1}, Lcom/alipay/pushsdk/push/j;->e(J)V

    invoke-static {v9}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object v2, Lcom/alipay/pushsdk/push/e/b;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "saveConnEventTime curTime="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v2, v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 60
    :cond_6
    iget-object v0, p0, Lcom/alipay/pushsdk/push/e/b;->a:Lcom/alipay/pushsdk/push/l;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/l;->b()V

    .line 62
    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/e/b;->b()Ljava/lang/String;

    move-result-object v0

    .line 63
    const-string/jumbo v1, "40"

    .line 65
    const-string/jumbo v2, "1"

    .line 62
    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/util/log/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
