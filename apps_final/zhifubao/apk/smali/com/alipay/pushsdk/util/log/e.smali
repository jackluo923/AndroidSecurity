.class public final Lcom/alipay/pushsdk/util/log/e;
.super Ljava/lang/Object;
.source "ServiceTraceInfo.java"


# static fields
.field private static a:Lcom/alipay/pushsdk/util/log/e;


# instance fields
.field private b:Ljava/util/HashMap;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/pushsdk/util/log/e;->b:Ljava/util/HashMap;

    .line 14
    return-void
.end method

.method public static declared-synchronized a()Lcom/alipay/pushsdk/util/log/e;
    .locals 2

    .prologue
    .line 17
    const-class v1, Lcom/alipay/pushsdk/util/log/e;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/pushsdk/util/log/e;->a:Lcom/alipay/pushsdk/util/log/e;

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Lcom/alipay/pushsdk/util/log/e;

    invoke-direct {v0}, Lcom/alipay/pushsdk/util/log/e;-><init>()V

    sput-object v0, Lcom/alipay/pushsdk/util/log/e;->a:Lcom/alipay/pushsdk/util/log/e;

    .line 20
    :cond_0
    sget-object v0, Lcom/alipay/pushsdk/util/log/e;->a:Lcom/alipay/pushsdk/util/log/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 17
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/alipay/pushsdk/util/log/e;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 52
    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :cond_0
    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alipay/pushsdk/util/log/e;->b:Ljava/util/HashMap;

    sget-object v1, Lcom/alipay/pushsdk/util/log/d;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    iget-object v0, p0, Lcom/alipay/pushsdk/util/log/e;->b:Ljava/util/HashMap;

    sget-object v1, Lcom/alipay/pushsdk/util/log/d;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    iget-object v0, p0, Lcom/alipay/pushsdk/util/log/e;->b:Ljava/util/HashMap;

    sget-object v1, Lcom/alipay/pushsdk/util/log/d;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    iget-object v0, p0, Lcom/alipay/pushsdk/util/log/e;->b:Ljava/util/HashMap;

    sget-object v1, Lcom/alipay/pushsdk/util/log/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    iget-object v0, p0, Lcom/alipay/pushsdk/util/log/e;->b:Ljava/util/HashMap;

    sget-object v1, Lcom/alipay/pushsdk/util/log/d;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/alipay/pushsdk/util/log/e;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 44
    return-void
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/alipay/pushsdk/util/log/e;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
