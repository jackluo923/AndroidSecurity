.class public Lcom/taobao/infsword/a/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/List;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:I

.field private h:Ljava/lang/String;

.field private i:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/infsword/a/a;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/taobao/infsword/a/a;->b:Ljava/util/List;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/taobao/infsword/a/a;->g:I

    return-void
.end method

.method public a(J)V
    .locals 5

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    new-instance v1, Ljava/util/Formatter;

    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v1, v2}, Ljava/util/Formatter;-><init>(Ljava/util/Locale;)V

    const-string/jumbo v2, "%1$tY-%1$tm-%1$td %1$tT"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/util/Formatter;->close()V

    iput-object v0, p0, Lcom/taobao/infsword/a/a;->h:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/taobao/infsword/a/a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/taobao/infsword/a/a;->b:Ljava/util/List;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/taobao/infsword/a/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b(J)V
    .locals 0

    iput-wide p1, p0, Lcom/taobao/infsword/a/a;->i:J

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/taobao/infsword/a/a;->a:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/taobao/infsword/a/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/taobao/infsword/a/a;->c:Ljava/lang/String;

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/taobao/infsword/a/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/taobao/infsword/a/a;->d:Ljava/lang/String;

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/taobao/infsword/a/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/taobao/infsword/a/a;->e:Ljava/lang/String;

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/taobao/infsword/a/a;->h:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/taobao/infsword/a/a;->f:Ljava/lang/String;

    return-void
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lcom/taobao/infsword/a/a;->g:I

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/taobao/infsword/a/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public i()J
    .locals 2

    iget-wide v0, p0, Lcom/taobao/infsword/a/a;->i:J

    return-wide v0
.end method

.method public j()Lorg/json/JSONObject;
    .locals 7

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v2, "apkmd5"

    iget-object v1, p0, Lcom/taobao/infsword/a/a;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string/jumbo v1, ""

    :goto_0
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "size"

    iget-wide v3, p0, Lcom/taobao/infsword/a/a;->i:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    const-string/jumbo v1, ""

    :goto_1
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "appname"

    iget-object v1, p0, Lcom/taobao/infsword/a/a;->c:Ljava/lang/String;

    if-nez v1, :cond_2

    const-string/jumbo v1, ""

    :goto_2
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "pkgname"

    iget-object v1, p0, Lcom/taobao/infsword/a/a;->d:Ljava/lang/String;

    if-nez v1, :cond_3

    const-string/jumbo v1, ""

    :goto_3
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "certmd5"

    iget-object v1, p0, Lcom/taobao/infsword/a/a;->e:Ljava/lang/String;

    if-nez v1, :cond_4

    const-string/jumbo v1, ""

    :goto_4
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "vercode"

    iget v1, p0, Lcom/taobao/infsword/a/a;->g:I

    if-nez v1, :cond_5

    const/4 v1, 0x0

    :goto_5
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v2, "vername"

    iget-object v1, p0, Lcom/taobao/infsword/a/a;->f:Ljava/lang/String;

    if-nez v1, :cond_6

    const-string/jumbo v1, ""

    :goto_6
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "installtime"

    iget-object v1, p0, Lcom/taobao/infsword/a/a;->h:Ljava/lang/String;

    if-nez v1, :cond_7

    const-string/jumbo v1, ""

    :goto_7
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "jnisomd5"

    new-instance v2, Lorg/json/JSONArray;

    iget-object v3, p0, Lcom/taobao/infsword/a/a;->b:Ljava/util/List;

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_8
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/taobao/infsword/a/a;->a:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-wide v3, p0, Lcom/taobao/infsword/a/a;->i:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/taobao/infsword/a/a;->c:Ljava/lang/String;

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/taobao/infsword/a/a;->d:Ljava/lang/String;

    goto :goto_3

    :cond_4
    iget-object v1, p0, Lcom/taobao/infsword/a/a;->e:Ljava/lang/String;

    goto :goto_4

    :cond_5
    iget v1, p0, Lcom/taobao/infsword/a/a;->g:I

    goto :goto_5

    :cond_6
    iget-object v1, p0, Lcom/taobao/infsword/a/a;->f:Ljava/lang/String;

    goto :goto_6

    :cond_7
    iget-object v1, p0, Lcom/taobao/infsword/a/a;->h:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_7

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/taobao/infsword/c/b;->a(Ljava/lang/Exception;)V

    :goto_9
    const/4 v0, 0x0

    goto :goto_8

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/taobao/infsword/c/b;->a(Ljava/lang/Exception;)V

    goto :goto_9
.end method
