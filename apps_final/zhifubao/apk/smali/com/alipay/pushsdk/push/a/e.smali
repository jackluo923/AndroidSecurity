.class public Lcom/alipay/pushsdk/push/a/e;
.super Ljava/lang/Object;
.source "PushConnectionListenerImpl.java"

# interfaces
.implements Lcom/alipay/pushsdk/push/a/d;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/alipay/pushsdk/push/l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/alipay/pushsdk/push/a/e;

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 19
    sput-object v0, Lcom/alipay/pushsdk/push/a/e;->a:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public constructor <init>(Lcom/alipay/pushsdk/push/l;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/alipay/pushsdk/push/a/e;->b:Lcom/alipay/pushsdk/push/l;

    .line 26
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 33
    const/4 v0, 0x3

    sget-object v1, Lcom/alipay/pushsdk/push/a/e;->a:Ljava/lang/String;

    const-string/jumbo v2, "connectionClosed()..."

    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/util/log/TraceLoggerUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public final a(Lcom/alipay/pushsdk/push/connection/PushException;)V
    .locals 6

    .prologue
    .line 44
    const/4 v1, 0x2

    sget-object v2, Lcom/alipay/pushsdk/push/a/e;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "=== connectionClosedOnError()==="

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_2

    const-string/jumbo v0, ""

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/alipay/pushsdk/util/log/TraceLoggerUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-virtual {p1}, Lcom/alipay/pushsdk/push/connection/PushException;->getType()Ljava/lang/String;

    move-result-object v0

    .line 50
    iget-object v1, p0, Lcom/alipay/pushsdk/push/a/e;->b:Lcom/alipay/pushsdk/push/l;

    invoke-virtual {v1}, Lcom/alipay/pushsdk/push/l;->d()Lcom/alipay/pushsdk/push/connection/k;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 51
    iget-object v1, p0, Lcom/alipay/pushsdk/push/a/e;->b:Lcom/alipay/pushsdk/push/l;

    invoke-virtual {v1}, Lcom/alipay/pushsdk/push/l;->d()Lcom/alipay/pushsdk/push/connection/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/pushsdk/push/connection/k;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    iget-object v1, p0, Lcom/alipay/pushsdk/push/a/e;->b:Lcom/alipay/pushsdk/push/l;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alipay/pushsdk/push/l;->a(Z)V

    .line 55
    iget-object v1, p0, Lcom/alipay/pushsdk/push/a/e;->b:Lcom/alipay/pushsdk/push/l;

    invoke-virtual {v1}, Lcom/alipay/pushsdk/push/l;->d()Lcom/alipay/pushsdk/push/connection/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/pushsdk/push/connection/k;->g()V

    .line 58
    const-string/jumbo v1, "41"

    .line 60
    const-string/jumbo v2, "7"

    .line 57
    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/util/log/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 65
    iget-object v3, p0, Lcom/alipay/pushsdk/push/a/e;->b:Lcom/alipay/pushsdk/push/l;

    invoke-virtual {v3, v1, v2}, Lcom/alipay/pushsdk/push/l;->c(J)V

    .line 68
    iget-object v3, p0, Lcom/alipay/pushsdk/push/a/e;->b:Lcom/alipay/pushsdk/push/l;

    invoke-virtual {v3}, Lcom/alipay/pushsdk/push/l;->y()Z

    move-result v3

    if-nez v3, :cond_1

    .line 69
    invoke-static {}, Lcom/alipay/pushsdk/push/connection/m;->h()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 77
    :cond_1
    const/4 v3, 0x3

    .line 78
    sget-object v4, Lcom/alipay/pushsdk/push/a/e;->a:Ljava/lang/String;

    .line 79
    const-string/jumbo v5, "connectionClosedOnError() isFrontPolicy and then to startReconnectionThread..."

    .line 76
    invoke-static {v3, v4, v5}, Lcom/alipay/pushsdk/util/log/TraceLoggerUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object v3, p0, Lcom/alipay/pushsdk/push/a/e;->b:Lcom/alipay/pushsdk/push/l;

    invoke-virtual {v3, v1, v2}, Lcom/alipay/pushsdk/push/l;->d(J)V

    .line 84
    iget-object v1, p0, Lcom/alipay/pushsdk/push/a/e;->b:Lcom/alipay/pushsdk/push/l;

    invoke-virtual {v1}, Lcom/alipay/pushsdk/push/l;->r()V

    .line 87
    const-string/jumbo v1, "80"

    .line 89
    const-string/jumbo v2, "8"

    .line 86
    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/util/log/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :goto_1
    return-void

    .line 44
    :cond_2
    invoke-virtual {p1}, Lcom/alipay/pushsdk/push/connection/PushException;->getType()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 92
    :cond_3
    const-string/jumbo v1, "81"

    .line 94
    const-string/jumbo v2, "6"

    .line 91
    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/util/log/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
