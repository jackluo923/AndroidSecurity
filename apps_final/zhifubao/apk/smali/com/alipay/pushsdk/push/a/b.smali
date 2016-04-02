.class public Lcom/alipay/pushsdk/push/a/b;
.super Ljava/lang/Object;
.source "ConnectListenerImpl.java"

# interfaces
.implements Lcom/alipay/pushsdk/push/a/a;


# static fields
.field private static final c:Ljava/lang/String;


# instance fields
.field a:Lcom/alipay/pushsdk/push/l;

.field b:Lcom/alipay/pushsdk/push/q;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/alipay/pushsdk/push/a/b;

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 15
    sput-object v0, Lcom/alipay/pushsdk/push/a/b;->c:Ljava/lang/String;

    .line 14
    return-void
.end method

.method public constructor <init>(Lcom/alipay/pushsdk/push/l;)V
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/alipay/pushsdk/push/a/b;->a:Lcom/alipay/pushsdk/push/l;

    .line 23
    new-instance v0, Lcom/alipay/pushsdk/push/q;

    iget-object v1, p0, Lcom/alipay/pushsdk/push/a/b;->a:Lcom/alipay/pushsdk/push/l;

    invoke-virtual {v1}, Lcom/alipay/pushsdk/push/l;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/pushsdk/push/q;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/pushsdk/push/a/b;->b:Lcom/alipay/pushsdk/push/q;

    .line 24
    return-void
.end method


# virtual methods
.method public final a(Lcom/alipay/pushsdk/push/connection/k;)V
    .locals 5

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x3

    .line 29
    iget-object v0, p0, Lcom/alipay/pushsdk/push/a/b;->a:Lcom/alipay/pushsdk/push/l;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/l;->d()Lcom/alipay/pushsdk/push/connection/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/connection/k;->e()V

    .line 30
    iget-object v0, p0, Lcom/alipay/pushsdk/push/a/b;->a:Lcom/alipay/pushsdk/push/l;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/l;->d()Lcom/alipay/pushsdk/push/connection/k;

    move-result-object v0

    .line 31
    iget-object v1, p0, Lcom/alipay/pushsdk/push/a/b;->a:Lcom/alipay/pushsdk/push/l;

    invoke-virtual {v1}, Lcom/alipay/pushsdk/push/l;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/pushsdk/util/d;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/push/connection/k;->a(Ljava/lang/String;)V

    .line 32
    invoke-static {v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    sget-object v0, Lcom/alipay/pushsdk/push/a/b;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "getConnection="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    iget-object v2, p0, Lcom/alipay/pushsdk/push/a/b;->a:Lcom/alipay/pushsdk/push/l;

    invoke-virtual {v2}, Lcom/alipay/pushsdk/push/l;->d()Lcom/alipay/pushsdk/push/connection/k;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 33
    invoke-static {v4, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 42
    :cond_0
    sget-object v0, Lcom/alipay/pushsdk/push/a/b;->c:Ljava/lang/String;

    const-string/jumbo v1, "===== Connected onSuccess()====="

    invoke-static {v3, v0, v1}, Lcom/alipay/pushsdk/util/log/TraceLoggerUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/alipay/pushsdk/push/a/b;->a:Lcom/alipay/pushsdk/push/l;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/l;->A()V

    .line 49
    iget-object v0, p0, Lcom/alipay/pushsdk/push/a/b;->a:Lcom/alipay/pushsdk/push/l;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/l;->d()Lcom/alipay/pushsdk/push/connection/k;

    move-result-object v0

    .line 50
    iget-object v1, p0, Lcom/alipay/pushsdk/push/a/b;->a:Lcom/alipay/pushsdk/push/l;

    invoke-virtual {v1}, Lcom/alipay/pushsdk/push/l;->l()Lcom/alipay/pushsdk/push/a/d;

    move-result-object v1

    .line 49
    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/push/connection/k;->a(Lcom/alipay/pushsdk/push/a/d;)V

    .line 51
    iget-object v0, p0, Lcom/alipay/pushsdk/push/a/b;->a:Lcom/alipay/pushsdk/push/l;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/l;->v()V

    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 54
    invoke-static {v0, v1}, Lcom/alipay/pushsdk/push/connection/m;->a(J)V

    .line 55
    iget-object v2, p0, Lcom/alipay/pushsdk/push/a/b;->a:Lcom/alipay/pushsdk/push/l;

    invoke-virtual {v2, v0, v1}, Lcom/alipay/pushsdk/push/l;->b(J)V

    .line 56
    invoke-static {v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    sget-object v0, Lcom/alipay/pushsdk/push/a/b;->c:Ljava/lang/String;

    const-string/jumbo v1, "onSuccess setLastConnectedTime."

    invoke-static {v3, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 60
    :cond_1
    const-string/jumbo v0, "31"

    .line 61
    const-string/jumbo v1, "01"

    .line 63
    const-string/jumbo v2, "2"

    .line 60
    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/util/log/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alipay/pushsdk/push/connection/k;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 66
    invoke-virtual {p1}, Lcom/alipay/pushsdk/push/connection/k;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 67
    iget-object v1, p0, Lcom/alipay/pushsdk/push/a/b;->b:Lcom/alipay/pushsdk/push/q;

    invoke-virtual {v1, v0}, Lcom/alipay/pushsdk/push/q;->b(Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public final b(Lcom/alipay/pushsdk/push/connection/k;)V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 78
    new-instance v0, Lcom/alipay/pushsdk/push/a/c;

    invoke-direct {v0, p0}, Lcom/alipay/pushsdk/push/a/c;-><init>(Lcom/alipay/pushsdk/push/a/b;)V

    .line 83
    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/a/c;->start()V

    .line 88
    const/4 v0, 0x2

    sget-object v1, Lcom/alipay/pushsdk/push/a/b;->c:Ljava/lang/String;

    const-string/jumbo v2, "===== Connected onFail()====="

    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/util/log/TraceLoggerUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/alipay/pushsdk/push/a/b;->a:Lcom/alipay/pushsdk/push/l;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/l;->A()V

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alipay/pushsdk/push/connection/k;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 94
    invoke-virtual {p1}, Lcom/alipay/pushsdk/push/connection/k;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 93
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 95
    iget-object v1, p0, Lcom/alipay/pushsdk/push/a/b;->b:Lcom/alipay/pushsdk/push/q;

    invoke-virtual {v1, v0}, Lcom/alipay/pushsdk/push/q;->a(Ljava/lang/String;)V

    .line 96
    iget-object v1, p0, Lcom/alipay/pushsdk/push/a/b;->b:Lcom/alipay/pushsdk/push/q;

    invoke-virtual {v1, v0}, Lcom/alipay/pushsdk/push/q;->d(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 97
    iget-object v1, p0, Lcom/alipay/pushsdk/push/a/b;->b:Lcom/alipay/pushsdk/push/q;

    invoke-static {v0}, Lcom/alipay/pushsdk/push/q;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/alipay/pushsdk/push/a/b;->a:Lcom/alipay/pushsdk/push/l;

    invoke-static {}, Lcom/alipay/pushsdk/push/l;->s()V

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/alipay/pushsdk/push/a/b;->a:Lcom/alipay/pushsdk/push/l;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/l;->y()Z

    move-result v0

    if-nez v0, :cond_1

    .line 105
    invoke-static {}, Lcom/alipay/pushsdk/push/connection/m;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 110
    :cond_1
    sget-object v0, Lcom/alipay/pushsdk/push/a/b;->c:Ljava/lang/String;

    .line 111
    const-string/jumbo v1, "onFail() isFrontPolicy and then to startReconnectionThread..."

    .line 110
    invoke-static {v3, v0, v1}, Lcom/alipay/pushsdk/util/log/TraceLoggerUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/alipay/pushsdk/push/a/b;->a:Lcom/alipay/pushsdk/push/l;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/l;->r()V

    .line 116
    const-string/jumbo v0, "50"

    .line 117
    const-string/jumbo v1, "80"

    .line 119
    const-string/jumbo v2, "8"

    .line 115
    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/util/log/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    :goto_0
    return-void

    .line 122
    :cond_2
    const-string/jumbo v0, "50"

    .line 123
    const-string/jumbo v1, "81"

    .line 125
    const-string/jumbo v2, "6"

    .line 121
    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/util/log/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
