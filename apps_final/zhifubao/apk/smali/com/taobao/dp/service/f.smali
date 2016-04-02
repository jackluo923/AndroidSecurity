.class final Lcom/taobao/dp/service/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/taobao/dp/service/IServerListener;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Lcom/taobao/dp/service/c;


# direct methods
.method constructor <init>(Lcom/taobao/dp/service/c;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/taobao/dp/service/f;->b:Lcom/taobao/dp/service/c;

    iput-object p2, p0, Lcom/taobao/dp/service/f;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResDataReady(Lcom/taobao/dp/bean/c;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "DevicePrintInitService decryptUUIDFromServer ResCode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/taobao/dp/bean/c;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/taobao/dp/bean/c;->a()I

    move-result v0

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_2

    invoke-virtual {p1}, Lcom/taobao/dp/bean/c;->c()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "uuid"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/taobao/dp/service/f;->b:Lcom/taobao/dp/service/c;

    sget-object v2, Lcom/taobao/dp/http/c;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/taobao/dp/service/f;->a:Ljava/lang/String;

    invoke-static {v1, v2, v0, v3}, Lcom/taobao/dp/service/c;->a(Lcom/taobao/dp/service/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/taobao/dp/service/f;->b:Lcom/taobao/dp/service/c;

    invoke-static {v1}, Lcom/taobao/dp/service/c;->d(Lcom/taobao/dp/service/c;)Lcom/taobao/dp/service/b;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/dp/service/f;->b:Lcom/taobao/dp/service/c;

    invoke-static {v2}, Lcom/taobao/dp/service/c;->a(Lcom/taobao/dp/service/c;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/taobao/dp/service/f;->b:Lcom/taobao/dp/service/c;

    invoke-static {v3}, Lcom/taobao/dp/service/c;->b(Lcom/taobao/dp/service/c;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/taobao/dp/service/f;->b:Lcom/taobao/dp/service/c;

    invoke-static {v4}, Lcom/taobao/dp/service/c;->c(Lcom/taobao/dp/service/c;)Lcom/taobao/dp/client/a;

    move-result-object v4

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/taobao/dp/service/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/dp/client/a;)V

    iget-object v1, p0, Lcom/taobao/dp/service/f;->b:Lcom/taobao/dp/service/c;

    invoke-static {v1}, Lcom/taobao/dp/service/c;->f(Lcom/taobao/dp/service/c;)Lcom/taobao/dp/service/IInitServiceCallBack;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/dp/service/f;->b:Lcom/taobao/dp/service/c;

    invoke-virtual {p1}, Lcom/taobao/dp/bean/c;->a()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/taobao/dp/service/IInitServiceCallBack;->onInitFinished(Lcom/taobao/dp/service/c;I)V

    :cond_0
    :goto_1
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/taobao/dp/service/f;->b:Lcom/taobao/dp/service/c;

    iget-object v1, p0, Lcom/taobao/dp/service/f;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/taobao/dp/service/c;->a(Lcom/taobao/dp/service/c;Ljava/lang/String;)V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "DevicePrintInitService decryptUUIDFromServer decypt uuid "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-object v0, v1

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method
