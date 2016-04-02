.class public Lcom/taobao/infsword/b/b;
.super Ljava/lang/Object;


# static fields
.field static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/taobao/infsword/b/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/taobao/infsword/b/b;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/taobao/infsword/a/d;
    .locals 7

    const/4 v6, -0x1

    new-instance v1, Lcom/taobao/infsword/a/d;

    invoke-direct {v1}, Lcom/taobao/infsword/a/d;-><init>()V

    :try_start_0
    invoke-static {p0, p1}, Lcom/taobao/infsword/b/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    sget-object v3, Lcom/taobao/infsword/b/b;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "kgb status code"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/taobao/infsword/c/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_0

    invoke-static {v0}, Lcom/taobao/infsword/b/a;->a(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "code"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/taobao/infsword/a/d;->a(I)V

    const-string/jumbo v0, "code"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/taobao/infsword/a/d;->a(Lorg/json/JSONObject;)V

    :goto_0
    return-object v1

    :cond_0
    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Lcom/taobao/infsword/a/d;->a(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/taobao/infsword/c/b;->a(Ljava/lang/Exception;)V

    invoke-virtual {v1, v6}, Lcom/taobao/infsword/a/d;->a(I)V

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :try_start_1
    invoke-virtual {v1, v0}, Lcom/taobao/infsword/a/d;->a(I)V

    sget-object v0, Lcom/taobao/infsword/b/b;->a:Ljava/lang/String;

    const-string/jumbo v2, "kgb response is null"

    invoke-static {v0, v2}, Lcom/taobao/infsword/c/b;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/taobao/infsword/c/b;->a(Ljava/lang/Exception;)V

    invoke-virtual {v1, v6}, Lcom/taobao/infsword/a/d;->a(I)V

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/taobao/infsword/a/c;)Lcom/taobao/infsword/a/d;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/16 v2, 0xe

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_0

    const/16 v0, 0x103

    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    :cond_0
    :try_start_0
    invoke-virtual {p2}, Lcom/taobao/infsword/a/c;->e()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/taobao/infsword/b/b;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/taobao/infsword/a/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_1

    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    :cond_1
    return-object v0

    :catchall_0
    move-exception v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_2

    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    :cond_2
    throw v0
.end method
