.class public Lcom/alipay/pushsdk/push/e/a;
.super Lcom/alipay/pushsdk/push/e/d;
.source "SysTriggerEvent.java"


# static fields
.field private static final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/alipay/pushsdk/push/e/a;

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 13
    sput-object v0, Lcom/alipay/pushsdk/push/e/a;->c:Ljava/lang/String;

    .line 12
    return-void
.end method

.method public constructor <init>(Lcom/alipay/pushsdk/push/l;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/alipay/pushsdk/push/e/d;-><init>(Lcom/alipay/pushsdk/push/l;)V

    .line 18
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    .line 22
    iget-object v0, p0, Lcom/alipay/pushsdk/push/e/a;->a:Lcom/alipay/pushsdk/push/l;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/l;->i()J

    move-result-wide v0

    .line 23
    invoke-static {}, Lcom/alipay/pushsdk/push/connection/m;->d()J

    move-result-wide v2

    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    .line 26
    invoke-static {v9}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 29
    sget-object v6, Lcom/alipay/pushsdk/push/e/a;->c:Ljava/lang/String;

    .line 30
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "osTriggerEvent_onExecute isConnected="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    iget-object v8, p0, Lcom/alipay/pushsdk/push/e/a;->a:Lcom/alipay/pushsdk/push/l;

    invoke-virtual {v8}, Lcom/alipay/pushsdk/push/l;->t()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", lostedTime="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 32
    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", lastConnectedTime="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 33
    invoke-static {v2, v3}, Lcom/alipay/pushsdk/util/j;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 34
    const-string/jumbo v3, ", lastCreateConnectTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 35
    invoke-static {v0, v1}, Lcom/alipay/pushsdk/util/j;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 27
    invoke-static {v9, v6, v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 41
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 43
    iget-object v0, p0, Lcom/alipay/pushsdk/push/e/a;->a:Lcom/alipay/pushsdk/push/l;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/l;->b()V

    .line 46
    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/e/a;->b()Ljava/lang/String;

    move-result-object v0

    .line 47
    const-string/jumbo v1, "01"

    .line 49
    const-string/jumbo v2, "1"

    .line 45
    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/util/log/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    :goto_0
    return-void

    .line 51
    :cond_1
    iget-object v0, p0, Lcom/alipay/pushsdk/push/e/a;->a:Lcom/alipay/pushsdk/push/l;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/l;->t()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 53
    iget-object v0, p0, Lcom/alipay/pushsdk/push/e/a;->a:Lcom/alipay/pushsdk/push/l;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/l;->w()V

    .line 56
    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/e/a;->b()Ljava/lang/String;

    move-result-object v0

    .line 57
    const-string/jumbo v1, "41"

    .line 59
    const-string/jumbo v2, "3"

    .line 55
    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/util/log/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 62
    :cond_2
    invoke-static {}, Lcom/alipay/pushsdk/push/s;->a()I

    move-result v0

    if-gez v0, :cond_3

    .line 64
    iget-object v0, p0, Lcom/alipay/pushsdk/push/e/a;->a:Lcom/alipay/pushsdk/push/l;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/l;->r()V

    .line 67
    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/e/a;->b()Ljava/lang/String;

    move-result-object v0

    .line 68
    const-string/jumbo v1, "70"

    .line 70
    const-string/jumbo v2, "8"

    .line 66
    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/util/log/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 74
    :cond_3
    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/e/a;->b()Ljava/lang/String;

    move-result-object v0

    .line 75
    const-string/jumbo v1, "71"

    .line 77
    const-string/jumbo v2, "6"

    .line 73
    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/util/log/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
