.class final Lcom/alipay/android/app/pay/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/json/JSONObject;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alipay/android/app/pay/HyperlinkActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/pay/HyperlinkActivity;Lcom/alipay/android/app/json/JSONObject;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/pay/c;->c:Lcom/alipay/android/app/pay/HyperlinkActivity;

    iput-object p2, p0, Lcom/alipay/android/app/pay/c;->a:Lcom/alipay/android/app/json/JSONObject;

    iput-object p3, p0, Lcom/alipay/android/app/pay/c;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    new-instance v0, Lcom/alipay/android/app/net/Request;

    iget-object v1, p0, Lcom/alipay/android/app/pay/c;->c:Lcom/alipay/android/app/pay/HyperlinkActivity;

    invoke-static {v1}, Lcom/alipay/android/app/pay/HyperlinkActivity;->a(Lcom/alipay/android/app/pay/HyperlinkActivity;)Lcom/alipay/android/app/net/Envelope;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/app/pay/c;->a:Lcom/alipay/android/app/json/JSONObject;

    const/4 v3, 0x0

    sget-object v4, Lcom/alipay/android/app/helper/ProtocolType;->Msp:Lcom/alipay/android/app/helper/ProtocolType;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/android/app/net/Request;-><init>(Lcom/alipay/android/app/net/Envelope;Lcom/alipay/android/app/json/JSONObject;Lcom/alipay/android/app/data/InteractionData;Lcom/alipay/android/app/helper/ProtocolType;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "agreementRequset : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/android/app/pay/c;->a:Lcom/alipay/android/app/json/JSONObject;

    invoke-virtual {v2}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/alipay/android/app/pay/c;->c:Lcom/alipay/android/app/pay/HyperlinkActivity;

    invoke-virtual {v1}, Lcom/alipay/android/app/pay/HyperlinkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alipay/android/app/net/Request;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/app/pay/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/alipay/android/app/net/Request;->a(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/alipay/android/lib/plusin/protocol/RequestUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/lib/plusin/protocol/RequestUtils;->a(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v1, v0}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "data"

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "params"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "res_data"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/pay/c;->b:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alipay/android/app/encrypt/TriDes;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "agreement:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/android/app/util/LogUtils;->b(Ljava/lang/String;)V

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/android/app/pay/c;->c:Lcom/alipay/android/app/pay/HyperlinkActivity;

    iget-object v0, v0, Lcom/alipay/android/app/pay/HyperlinkActivity;->b:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Lcom/alipay/android/app/exception/NetErrorException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/alipay/android/app/pay/c;->c:Lcom/alipay/android/app/pay/HyperlinkActivity;

    iget-object v1, p0, Lcom/alipay/android/app/pay/c;->c:Lcom/alipay/android/app/pay/HyperlinkActivity;

    iget-object v1, v1, Lcom/alipay/android/app/pay/HyperlinkActivity;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/pay/HyperlinkActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/alipay/android/app/pay/c;->c:Lcom/alipay/android/app/pay/HyperlinkActivity;

    invoke-static {v0}, Lcom/alipay/android/app/pay/HyperlinkActivity;->b(Lcom/alipay/android/app/pay/HyperlinkActivity;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/alipay/android/app/pay/c;->c:Lcom/alipay/android/app/pay/HyperlinkActivity;

    iget-object v1, p0, Lcom/alipay/android/app/pay/c;->c:Lcom/alipay/android/app/pay/HyperlinkActivity;

    iget-object v1, v1, Lcom/alipay/android/app/pay/HyperlinkActivity;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/pay/HyperlinkActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/alipay/android/app/pay/c;->c:Lcom/alipay/android/app/pay/HyperlinkActivity;

    invoke-static {v0}, Lcom/alipay/android/app/pay/HyperlinkActivity;->b(Lcom/alipay/android/app/pay/HyperlinkActivity;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lcom/alipay/android/app/pay/c;->c:Lcom/alipay/android/app/pay/HyperlinkActivity;

    iget-object v1, p0, Lcom/alipay/android/app/pay/c;->c:Lcom/alipay/android/app/pay/HyperlinkActivity;

    iget-object v1, v1, Lcom/alipay/android/app/pay/HyperlinkActivity;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/pay/HyperlinkActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/alipay/android/app/pay/c;->c:Lcom/alipay/android/app/pay/HyperlinkActivity;

    iget-object v2, p0, Lcom/alipay/android/app/pay/c;->c:Lcom/alipay/android/app/pay/HyperlinkActivity;

    iget-object v2, v2, Lcom/alipay/android/app/pay/HyperlinkActivity;->c:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/pay/HyperlinkActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    throw v0
.end method
