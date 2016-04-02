.class public Lcom/alipay/android/app/logic/decorator/CommonRequestDecorator;
.super Lcom/alipay/android/app/logic/decorator/BaseDecorator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/app/logic/decorator/BaseDecorator;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/alipay/android/app/logic/decorator/BaseDecorator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/android/app/logic/decorator/BaseDecorator;-><init>(Lcom/alipay/android/app/logic/decorator/BaseDecorator;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final a([BLjava/lang/String;)[B
    .locals 7

    const-string/jumbo v0, " CommonRequestDecorator   todo  start "

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->d(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v1}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    new-instance v1, Lcom/alipay/android/app/json/JSONObject;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v1, v2}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v2}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    const-string/jumbo v3, "type"

    iget-object v4, p0, Lcom/alipay/android/app/logic/decorator/CommonRequestDecorator;->b:Lcom/alipay/android/app/logic/request/RequestConfig;

    invoke-virtual {v4}, Lcom/alipay/android/app/logic/request/RequestConfig;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "method"

    iget-object v4, p0, Lcom/alipay/android/app/logic/decorator/CommonRequestDecorator;->b:Lcom/alipay/android/app/logic/request/RequestConfig;

    invoke-virtual {v4}, Lcom/alipay/android/app/logic/request/RequestConfig;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "action"

    invoke-virtual {v1, v3, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Lcom/alipay/android/app/json/JSONObject;)V

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->b()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/android/app/flybird/ui/data/FlybirdTemplateParamsData;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "||"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "bpArgsError:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/android/app/util/LogUtils;->b(Ljava/lang/String;)V

    const-string/jumbo v3, "ex"

    const-string/jumbo v4, "bpArgsError"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "bp:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/alipay/android/app/statistic/StatisticManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string/jumbo v3, "bp"

    invoke-virtual {v1, v3, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/android/app/logic/decorator/CommonRequestDecorator;->b:Lcom/alipay/android/app/logic/request/RequestConfig;

    invoke-virtual {v2}, Lcom/alipay/android/app/logic/request/RequestConfig;->p()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "uac"

    invoke-virtual {v0}, Lcom/alipay/android/app/sys/GlobalContext;->c()Lcom/alipay/android/app/IAppConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/android/app/IAppConfig;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string/jumbo v0, "gzip"

    iget-object v2, p0, Lcom/alipay/android/app/logic/decorator/CommonRequestDecorator;->b:Lcom/alipay/android/app/logic/request/RequestConfig;

    invoke-virtual {v2}, Lcom/alipay/android/app/logic/request/RequestConfig;->j()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/alipay/android/app/logic/decorator/CommonRequestDecorator;->b:Lcom/alipay/android/app/logic/request/RequestConfig;

    invoke-virtual {v0}, Lcom/alipay/android/app/logic/request/RequestConfig;->n()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "session"

    iget-object v2, p0, Lcom/alipay/android/app/logic/decorator/CommonRequestDecorator;->b:Lcom/alipay/android/app/logic/request/RequestConfig;

    invoke-virtual {v2}, Lcom/alipay/android/app/logic/request/RequestConfig;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-static {}, Lcom/alipay/android/app/tid/TidInfo;->f()Lcom/alipay/android/app/tid/TidInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string/jumbo v2, "tid"

    invoke-virtual {v0}, Lcom/alipay/android/app/tid/TidInfo;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "CommonRequest:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->d()V

    invoke-virtual {v1}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const-string/jumbo v1, " CommonRequestDecorator   todo  end "

    invoke-static {v1}, Lcom/alipay/android/app/util/LogUtils;->d(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/app/logic/decorator/CommonRequestDecorator;->a:Lcom/alipay/android/app/logic/decorator/BaseDecorator;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/alipay/android/app/logic/decorator/CommonRequestDecorator;->a:Lcom/alipay/android/app/logic/decorator/BaseDecorator;

    iget-object v2, p0, Lcom/alipay/android/app/logic/decorator/CommonRequestDecorator;->b:Lcom/alipay/android/app/logic/request/RequestConfig;

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/logic/decorator/BaseDecorator;->a(Lcom/alipay/android/app/logic/request/RequestConfig;)V

    iget-object v1, p0, Lcom/alipay/android/app/logic/decorator/CommonRequestDecorator;->a:Lcom/alipay/android/app/logic/decorator/BaseDecorator;

    invoke-virtual {v1, v0, p2}, Lcom/alipay/android/app/logic/decorator/BaseDecorator;->a([BLjava/lang/String;)[B

    move-result-object v0

    :cond_4
    return-object v0
.end method
