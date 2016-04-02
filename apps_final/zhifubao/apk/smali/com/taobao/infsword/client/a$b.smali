.class public Lcom/taobao/infsword/client/a$b;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/taobao/infsword/client/a;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/taobao/infsword/client/a;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/taobao/infsword/client/a$b;->a:Lcom/taobao/infsword/client/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p2, p0, Lcom/taobao/infsword/client/a$b;->b:Landroid/content/Context;

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/taobao/infsword/client/a$b;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/taobao/infsword/client/a$b;->a:Lcom/taobao/infsword/client/a;

    invoke-static {v0}, Lcom/taobao/infsword/client/a;->b(Lcom/taobao/infsword/client/a;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Synchronization failed."

    invoke-static {v0, v1}, Lcom/taobao/infsword/c/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/taobao/infsword/client/a$b;->a:Lcom/taobao/infsword/client/a;

    invoke-static {v0}, Lcom/taobao/infsword/client/a;->b(Lcom/taobao/infsword/client/a;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Synchronization success."

    invoke-static {v0, v1}, Lcom/taobao/infsword/c/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private b(Landroid/content/Context;)Z
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/taobao/infsword/client/a$b;->a:Lcom/taobao/infsword/client/a;

    invoke-static {v2}, Lcom/taobao/infsword/client/a;->b(Lcom/taobao/infsword/client/a;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Synchronization begin"

    invoke-static {v2, v3}, Lcom/taobao/infsword/c/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/taobao/infsword/statistic/KGB;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-static {p1}, Lcom/taobao/infsword/statistic/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "alibaba_antitrojan_client"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/taobao/infsword/c/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v8, "t"

    invoke-virtual {v7, v8, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v3, "sign"

    invoke-virtual {v7, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "appkey"

    invoke-virtual {v7, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "v"

    const-string/jumbo v4, "1.4.0"

    invoke-virtual {v7, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {v2, v7}, Lcom/taobao/infsword/b/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/taobao/infsword/b/a;->a(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/taobao/infsword/client/a$b;->a:Lcom/taobao/infsword/client/a;

    invoke-static {v3}, Lcom/taobao/infsword/client/a;->b(Lcom/taobao/infsword/client/a;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "result:"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/taobao/infsword/c/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "content"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v5, v2}, Lcom/taobao/infsword/statistic/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "phishing"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "target"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "target"

    invoke-static {p1, v4, v2}, Lcom/taobao/infsword/statistic/b;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "url"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "whitelist"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "whitelist"

    invoke-static {p1, v3, v2}, Lcom/taobao/infsword/statistic/b;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/taobao/infsword/client/a$b;->a:Lcom/taobao/infsword/client/a;

    invoke-static {v2}, Lcom/taobao/infsword/client/a;->b(Lcom/taobao/infsword/client/a;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Synchronization complete"

    invoke-static {v2, v3}, Lcom/taobao/infsword/c/b;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move v1, v0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/taobao/infsword/client/a$b;->a:Lcom/taobao/infsword/client/a;

    invoke-static {v0}, Lcom/taobao/infsword/client/a;->b(Lcom/taobao/infsword/client/a;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "syncCfgInfo exception"

    invoke-static {v0, v2}, Lcom/taobao/infsword/c/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public run()V
    .locals 9

    const-wide/16 v7, 0x0

    sget v0, Lcom/taobao/infsword/statistic/KGB;->z:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/taobao/infsword/client/a$b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/taobao/infsword/statistic/a;->a(Landroid/content/Context;)I

    :cond_0
    iget-object v0, p0, Lcom/taobao/infsword/client/a$b;->b:Landroid/content/Context;

    const-string/jumbo v1, "ReqTime"

    invoke-static {v0, v1, v7, v8}, Lcom/taobao/infsword/statistic/b;->b(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    iget-object v2, p0, Lcom/taobao/infsword/client/a$b;->a:Lcom/taobao/infsword/client/a;

    invoke-static {v2}, Lcom/taobao/infsword/client/a;->b(Lcom/taobao/infsword/client/a;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "last request time is:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/taobao/infsword/c/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/taobao/infsword/client/a$b;->a:Lcom/taobao/infsword/client/a;

    invoke-static {v4}, Lcom/taobao/infsword/client/a;->b(Lcom/taobao/infsword/client/a;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "curSystemTime time is:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/taobao/infsword/c/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    cmp-long v4, v0, v7

    if-nez v4, :cond_1

    iget-object v0, p0, Lcom/taobao/infsword/client/a$b;->a:Lcom/taobao/infsword/client/a;

    invoke-static {v0}, Lcom/taobao/infsword/client/a;->b(Lcom/taobao/infsword/client/a;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "starting synchronize config file"

    invoke-static {v0, v1}, Lcom/taobao/infsword/c/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/taobao/infsword/client/a$b;->b:Landroid/content/Context;

    const-string/jumbo v1, "ReqTime"

    invoke-static {v0, v1, v2, v3}, Lcom/taobao/infsword/statistic/b;->a(Landroid/content/Context;Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/taobao/infsword/client/a$b;->b:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/taobao/infsword/client/a$b;->a(Landroid/content/Context;)V

    :goto_0
    return-void

    :cond_1
    sub-long v0, v2, v0

    const-wide/32 v2, 0x36ee80

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/taobao/infsword/client/a$b;->a:Lcom/taobao/infsword/client/a;

    invoke-static {v0}, Lcom/taobao/infsword/client/a;->b(Lcom/taobao/infsword/client/a;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "TOO MUCH REQUEST,NEEDN\'T SYNCHRONIZE!!!"

    invoke-static {v0, v1}, Lcom/taobao/infsword/c/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/taobao/infsword/client/a$b;->a:Lcom/taobao/infsword/client/a;

    invoke-static {v0}, Lcom/taobao/infsword/client/a;->b(Lcom/taobao/infsword/client/a;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "It\'s a long time since last requests.starting synchronize"

    invoke-static {v0, v1}, Lcom/taobao/infsword/c/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/taobao/infsword/client/a$b;->b:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/taobao/infsword/client/a$b;->a(Landroid/content/Context;)V

    goto :goto_0
.end method
