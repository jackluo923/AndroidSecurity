.class final Lcom/taobao/dp/service/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/taobao/dp/service/IServerListener;


# instance fields
.field private synthetic a:Lcom/taobao/dp/service/c;


# direct methods
.method constructor <init>(Lcom/taobao/dp/service/c;)V
    .locals 0

    iput-object p1, p0, Lcom/taobao/dp/service/d;->a:Lcom/taobao/dp/service/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResDataReady(Lcom/taobao/dp/bean/c;)V
    .locals 7

    const/16 v2, 0xc8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "DevicePrintInitService initUuidFromServer data.getCode()="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/taobao/dp/bean/c;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "DevicePrintInitService initUuidFromServer success"

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/taobao/dp/bean/c;->a()I

    move-result v0

    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/taobao/dp/bean/c;->a()I

    move-result v0

    if-ne v0, v2, :cond_1

    invoke-virtual {p1}, Lcom/taobao/dp/bean/c;->c()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "uuid"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "exactid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/taobao/dp/service/d;->a:Lcom/taobao/dp/service/c;

    sget-object v4, Lcom/taobao/dp/http/c;->a:Ljava/lang/String;

    invoke-static {v3, v4, v0, v2}, Lcom/taobao/dp/service/c;->a(Lcom/taobao/dp/service/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/taobao/dp/service/d;->a:Lcom/taobao/dp/service/c;

    invoke-static {v3}, Lcom/taobao/dp/service/c;->d(Lcom/taobao/dp/service/c;)Lcom/taobao/dp/service/b;

    move-result-object v3

    iget-object v4, p0, Lcom/taobao/dp/service/d;->a:Lcom/taobao/dp/service/c;

    invoke-static {v4}, Lcom/taobao/dp/service/c;->a(Lcom/taobao/dp/service/c;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/taobao/dp/service/d;->a:Lcom/taobao/dp/service/c;

    invoke-static {v5}, Lcom/taobao/dp/service/c;->b(Lcom/taobao/dp/service/c;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/taobao/dp/service/d;->a:Lcom/taobao/dp/service/c;

    invoke-static {v6}, Lcom/taobao/dp/service/c;->c(Lcom/taobao/dp/service/c;)Lcom/taobao/dp/client/a;

    move-result-object v6

    invoke-virtual {v3, v0, v4, v5, v6}, Lcom/taobao/dp/service/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/dp/client/a;)V

    iget-object v0, p0, Lcom/taobao/dp/service/d;->a:Lcom/taobao/dp/service/c;

    invoke-static {v0}, Lcom/taobao/dp/service/c;->d(Lcom/taobao/dp/service/c;)Lcom/taobao/dp/service/b;

    move-result-object v0

    iget-object v3, p0, Lcom/taobao/dp/service/d;->a:Lcom/taobao/dp/service/c;

    invoke-static {v3}, Lcom/taobao/dp/service/c;->c(Lcom/taobao/dp/service/c;)Lcom/taobao/dp/client/a;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/taobao/dp/service/b;->a(Ljava/lang/String;Lcom/taobao/dp/client/a;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :try_start_1
    const-string/jumbo v0, "appListVer"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "appList"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    new-instance v2, Lcom/taobao/dp/service/b$a;

    invoke-direct {v2, v0, v1}, Lcom/taobao/dp/service/b$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/taobao/dp/service/d;->a:Lcom/taobao/dp/service/c;

    invoke-static {v0}, Lcom/taobao/dp/service/c;->d(Lcom/taobao/dp/service/c;)Lcom/taobao/dp/service/b;

    iget-object v0, p0, Lcom/taobao/dp/service/d;->a:Lcom/taobao/dp/service/c;

    invoke-static {v0}, Lcom/taobao/dp/service/c;->a(Lcom/taobao/dp/service/c;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/dp/service/d;->a:Lcom/taobao/dp/service/c;

    invoke-static {v1}, Lcom/taobao/dp/service/c;->b(Lcom/taobao/dp/service/c;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/taobao/dp/service/d;->a:Lcom/taobao/dp/service/c;

    invoke-static {v3}, Lcom/taobao/dp/service/c;->e(Lcom/taobao/dp/service/c;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/taobao/dp/service/d;->a:Lcom/taobao/dp/service/c;

    invoke-static {v4}, Lcom/taobao/dp/service/c;->c(Lcom/taobao/dp/service/c;)Lcom/taobao/dp/client/a;

    move-result-object v4

    invoke-static {v2, v0, v1, v3, v4}, Lcom/taobao/dp/service/b;->a(Lcom/taobao/dp/service/b$a;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/taobao/dp/client/a;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/taobao/dp/service/d;->a:Lcom/taobao/dp/service/c;

    invoke-static {v0}, Lcom/taobao/dp/service/c;->f(Lcom/taobao/dp/service/c;)Lcom/taobao/dp/service/IInitServiceCallBack;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/dp/service/d;->a:Lcom/taobao/dp/service/c;

    invoke-virtual {p1}, Lcom/taobao/dp/bean/c;->a()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/taobao/dp/service/IInitServiceCallBack;->onInitFinished(Lcom/taobao/dp/service/c;I)V

    return-void

    :cond_2
    const/4 v0, 0x0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "DevicePrintInitService initUuidFromServer JSONException:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1
.end method
