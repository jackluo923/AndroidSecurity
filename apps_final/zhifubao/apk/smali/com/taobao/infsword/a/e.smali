.class public Lcom/taobao/infsword/a/e;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/taobao/infsword/a/e;->a:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/taobao/infsword/a/e;->b:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/taobao/infsword/a/e;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/taobao/infsword/a/e;->c:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/taobao/infsword/a/e;->c:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/taobao/infsword/a/e;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/taobao/infsword/a/e;->a:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/taobao/infsword/a/e;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/taobao/infsword/a/e;->b:Ljava/lang/String;

    return-void
.end method

.method public d()Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v2, "sender"

    iget-object v1, p0, Lcom/taobao/infsword/a/e;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string/jumbo v1, ""

    :goto_0
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "receivetime"

    iget-object v1, p0, Lcom/taobao/infsword/a/e;->b:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string/jumbo v1, ""

    :goto_1
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "content"

    iget-object v1, p0, Lcom/taobao/infsword/a/e;->c:Ljava/lang/String;

    if-nez v1, :cond_2

    const-string/jumbo v1, ""

    :goto_2
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_3
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/taobao/infsword/a/e;->a:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/taobao/infsword/a/e;->b:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/taobao/infsword/a/e;->c:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/taobao/infsword/c/b;->a(Ljava/lang/Exception;)V

    :goto_4
    const/4 v0, 0x0

    goto :goto_3

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/taobao/infsword/c/b;->a(Ljava/lang/Exception;)V

    goto :goto_4
.end method
