.class public Lcom/alipay/pushsdk/push/d/e;
.super Ljava/lang/Object;
.source "ReconnectPacketListenerImpl.java"

# interfaces
.implements Lcom/alipay/pushsdk/push/d/d;


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field a:Lcom/alipay/pushsdk/push/q;

.field private final c:Lcom/alipay/pushsdk/push/l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/alipay/pushsdk/push/d/e;

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/pushsdk/push/d/e;->b:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public constructor <init>(Lcom/alipay/pushsdk/push/l;)V
    .locals 2

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/alipay/pushsdk/push/d/e;->c:Lcom/alipay/pushsdk/push/l;

    .line 25
    new-instance v0, Lcom/alipay/pushsdk/push/q;

    iget-object v1, p0, Lcom/alipay/pushsdk/push/d/e;->c:Lcom/alipay/pushsdk/push/l;

    invoke-virtual {v1}, Lcom/alipay/pushsdk/push/l;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/pushsdk/push/q;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/pushsdk/push/d/e;->a:Lcom/alipay/pushsdk/push/q;

    .line 26
    return-void
.end method


# virtual methods
.method public final a(Lcom/alipay/pushsdk/push/c/a;)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 31
    new-instance v0, Lcom/alipay/pushsdk/push/g;

    invoke-direct {v0, v4}, Lcom/alipay/pushsdk/push/g;-><init>(I)V

    .line 34
    invoke-interface {v0, p1}, Lcom/alipay/pushsdk/push/connection/c;->a(Lcom/alipay/pushsdk/push/c/a;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 35
    invoke-static {v0, v1}, Lcom/alipay/pushsdk/push/connection/m;->a(J)V

    .line 37
    iget-object v0, p0, Lcom/alipay/pushsdk/push/d/e;->c:Lcom/alipay/pushsdk/push/l;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/pushsdk/push/l;->b(J)V

    .line 39
    invoke-virtual {p1}, Lcom/alipay/pushsdk/push/c/a;->h()Ljava/lang/String;

    move-result-object v1

    .line 41
    const/4 v0, -0x1

    .line 43
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 44
    const-string/jumbo v1, "c"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 52
    :cond_0
    :goto_0
    invoke-static {v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 53
    sget-object v1, Lcom/alipay/pushsdk/push/d/e;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "processPacket() errno="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v1, v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 56
    :cond_1
    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    if-ne v0, v4, :cond_3

    .line 57
    :cond_2
    iget-object v0, p0, Lcom/alipay/pushsdk/push/d/e;->a:Lcom/alipay/pushsdk/push/q;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/q;->a()V

    .line 61
    :cond_3
    iget-object v0, p0, Lcom/alipay/pushsdk/push/d/e;->c:Lcom/alipay/pushsdk/push/l;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/l;->c()V

    .line 63
    :cond_4
    return-void

    .line 45
    :catch_0
    move-exception v1

    .line 47
    invoke-static {v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 48
    sget-object v2, Lcom/alipay/pushsdk/push/d/e;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v2, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
