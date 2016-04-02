.class Lcom/inmobi/androidsdk/InterstitialView$c;
.super Landroid/os/Handler;


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/inmobi/androidsdk/InterstitialView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/inmobi/androidsdk/InterstitialView;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView$c;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    iget-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/androidsdk/InterstitialView;

    if-eqz v0, :cond_0

    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0}, Lcom/inmobi/androidsdk/InterstitialView;->c(Lcom/inmobi/androidsdk/InterstitialView;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-static {v0}, Lcom/inmobi/androidsdk/InterstitialView;->d(Lcom/inmobi/androidsdk/InterstitialView;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v4, "ad"

    invoke-static {v0}, Lcom/inmobi/androidsdk/InterstitialView;->e(Lcom/inmobi/androidsdk/InterstitialView;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "t"

    invoke-virtual {v3, v4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    invoke-static {}, Lcom/inmobi/androidsdk/bootstrapper/Initializer;->getLogger()Lcom/inmobi/commons/metric/Logger;

    move-result-object v4

    new-instance v5, Lcom/inmobi/commons/metric/EventLog;

    sget-object v6, Lcom/inmobi/androidsdk/bootstrapper/NetworkEventType;->FETCH_COMPLETE:Lcom/inmobi/androidsdk/bootstrapper/NetworkEventType;

    invoke-direct {v5, v6, v3}, Lcom/inmobi/commons/metric/EventLog;-><init>(Lcom/inmobi/commons/metric/EventType;Lorg/json/JSONObject;)V

    invoke-virtual {v4, v5}, Lcom/inmobi/commons/metric/Logger;->logEvent(Lcom/inmobi/commons/metric/EventLog;)V

    :cond_1
    const/16 v3, 0x132

    invoke-virtual {p0, v3}, Lcom/inmobi/androidsdk/InterstitialView$c;->removeMessages(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    invoke-static {v0}, Lcom/inmobi/androidsdk/InterstitialView;->f(Lcom/inmobi/androidsdk/InterstitialView;)Lcom/inmobi/re/container/IMWebView;

    move-result-object v3

    if-nez v3, :cond_3

    new-instance v3, Lcom/inmobi/re/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/InterstitialView;->g(Lcom/inmobi/androidsdk/InterstitialView;)Landroid/app/Activity;

    move-result-object v4

    invoke-static {v0}, Lcom/inmobi/androidsdk/InterstitialView;->h(Lcom/inmobi/androidsdk/InterstitialView;)Lcom/inmobi/re/container/IMWebView$IMWebViewListener;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/inmobi/re/container/IMWebView;-><init>(Landroid/content/Context;Lcom/inmobi/re/container/IMWebView$IMWebViewListener;ZZ)V

    invoke-static {v0, v3}, Lcom/inmobi/androidsdk/InterstitialView;->a(Lcom/inmobi/androidsdk/InterstitialView;Lcom/inmobi/re/container/IMWebView;)Lcom/inmobi/re/container/IMWebView;

    iget-boolean v3, v0, Lcom/inmobi/androidsdk/InterstitialView;->b:Z

    if-nez v3, :cond_2

    invoke-static {v0}, Lcom/inmobi/androidsdk/InterstitialView;->f(Lcom/inmobi/androidsdk/InterstitialView;)Lcom/inmobi/re/container/IMWebView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/inmobi/re/container/IMWebView;->disableHardwareAcceleration()V

    :cond_2
    invoke-static {v0}, Lcom/inmobi/androidsdk/InterstitialView;->f(Lcom/inmobi/androidsdk/InterstitialView;)Lcom/inmobi/re/container/IMWebView;

    move-result-object v3

    new-instance v4, Lcom/inmobi/androidsdk/impl/imai/IMAIController;

    invoke-static {v0}, Lcom/inmobi/androidsdk/InterstitialView;->f(Lcom/inmobi/androidsdk/InterstitialView;)Lcom/inmobi/re/container/IMWebView;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/inmobi/androidsdk/impl/imai/IMAIController;-><init>(Lcom/inmobi/re/container/IMWebView;)V

    const-string v5, "imaiController"

    invoke-virtual {v3, v4, v5}, Lcom/inmobi/re/container/IMWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    invoke-static {v0}, Lcom/inmobi/androidsdk/InterstitialView;->i(Lcom/inmobi/androidsdk/InterstitialView;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-static {v0}, Lcom/inmobi/androidsdk/InterstitialView;->i(Lcom/inmobi/androidsdk/InterstitialView;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "@__imm_aft@"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/androidsdk/InterstitialView;->a(Lcom/inmobi/androidsdk/InterstitialView;Ljava/lang/String;)Ljava/lang/String;

    :cond_4
    invoke-static {v0}, Lcom/inmobi/androidsdk/InterstitialView;->i(Lcom/inmobi/androidsdk/InterstitialView;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/androidsdk/InterstitialView;->c(Lcom/inmobi/androidsdk/InterstitialView;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    :try_start_4
    const-string v2, "[InMobi]-[Network]-4.4.1"

    const-string v3, "Error retrieving ad "

    invoke-static {v2, v3, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v1, Lcom/inmobi/androidsdk/InterstitialView$State;->INIT:Lcom/inmobi/androidsdk/InterstitialView$State;

    invoke-static {v0, v1}, Lcom/inmobi/androidsdk/InterstitialView;->a(Lcom/inmobi/androidsdk/InterstitialView;Lcom/inmobi/androidsdk/InterstitialView$State;)Lcom/inmobi/androidsdk/InterstitialView$State;

    const/16 v1, 0x65

    sget-object v2, Lcom/inmobi/androidsdk/AdRequest$ErrorCode;->INTERNAL_ERROR:Lcom/inmobi/androidsdk/AdRequest$ErrorCode;

    invoke-static {v0, v1, v2}, Lcom/inmobi/androidsdk/InterstitialView;->a(Lcom/inmobi/androidsdk/InterstitialView;ILcom/inmobi/androidsdk/AdRequest$ErrorCode;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string v1, "[InMobi]-[Network]-4.4.1"

    const-string v2, "Exception handling message in Interstitial"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :catch_2
    move-exception v4

    :try_start_5
    const-string v4, "[InMobi]-[Network]-4.4.1"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Error creating metric logs for fetch_complete at "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_1
    const/16 v1, 0x132

    invoke-virtual {p0, v1}, Lcom/inmobi/androidsdk/InterstitialView$c;->removeMessages(I)V

    sget-object v1, Lcom/inmobi/androidsdk/InterstitialView$State;->INIT:Lcom/inmobi/androidsdk/InterstitialView$State;

    invoke-static {v0, v1}, Lcom/inmobi/androidsdk/InterstitialView;->a(Lcom/inmobi/androidsdk/InterstitialView;Lcom/inmobi/androidsdk/InterstitialView$State;)Lcom/inmobi/androidsdk/InterstitialView$State;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/inmobi/androidsdk/AdRequest$ErrorCode;

    const/16 v2, 0x65

    invoke-static {v0, v2, v1}, Lcom/inmobi/androidsdk/InterstitialView;->a(Lcom/inmobi/androidsdk/InterstitialView;ILcom/inmobi/androidsdk/AdRequest$ErrorCode;)V

    goto/16 :goto_0

    :pswitch_2
    const/16 v1, 0x133

    invoke-virtual {p0, v1}, Lcom/inmobi/androidsdk/InterstitialView$c;->removeMessages(I)V

    const/16 v1, 0x12f

    invoke-virtual {p0, v1}, Lcom/inmobi/androidsdk/InterstitialView$c;->removeMessages(I)V

    sget-object v1, Lcom/inmobi/androidsdk/InterstitialView$State;->INIT:Lcom/inmobi/androidsdk/InterstitialView$State;

    invoke-static {v0, v1}, Lcom/inmobi/androidsdk/InterstitialView;->a(Lcom/inmobi/androidsdk/InterstitialView;Lcom/inmobi/androidsdk/InterstitialView$State;)Lcom/inmobi/androidsdk/InterstitialView$State;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/inmobi/androidsdk/InterstitialView;->a(Lcom/inmobi/androidsdk/InterstitialView;Lcom/inmobi/re/container/IMWebView;)Lcom/inmobi/re/container/IMWebView;

    const/16 v1, 0x65

    sget-object v2, Lcom/inmobi/androidsdk/AdRequest$ErrorCode;->INTERNAL_ERROR:Lcom/inmobi/androidsdk/AdRequest$ErrorCode;

    invoke-static {v0, v1, v2}, Lcom/inmobi/androidsdk/InterstitialView;->a(Lcom/inmobi/androidsdk/InterstitialView;ILcom/inmobi/androidsdk/AdRequest$ErrorCode;)V

    goto/16 :goto_0

    :pswitch_3
    const/16 v1, 0x136

    invoke-virtual {p0, v1}, Lcom/inmobi/androidsdk/InterstitialView$c;->removeMessages(I)V

    const/16 v1, 0x12f

    invoke-virtual {p0, v1}, Lcom/inmobi/androidsdk/InterstitialView$c;->removeMessages(I)V

    sget-object v1, Lcom/inmobi/androidsdk/InterstitialView$State;->INIT:Lcom/inmobi/androidsdk/InterstitialView$State;

    invoke-static {v0, v1}, Lcom/inmobi/androidsdk/InterstitialView;->a(Lcom/inmobi/androidsdk/InterstitialView;Lcom/inmobi/androidsdk/InterstitialView$State;)Lcom/inmobi/androidsdk/InterstitialView$State;

    invoke-static {v0}, Lcom/inmobi/androidsdk/InterstitialView;->f(Lcom/inmobi/androidsdk/InterstitialView;)Lcom/inmobi/re/container/IMWebView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/re/container/IMWebView;->cancelLoad()V

    invoke-static {v0}, Lcom/inmobi/androidsdk/InterstitialView;->f(Lcom/inmobi/androidsdk/InterstitialView;)Lcom/inmobi/re/container/IMWebView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/re/container/IMWebView;->stopLoading()V

    invoke-static {v0}, Lcom/inmobi/androidsdk/InterstitialView;->f(Lcom/inmobi/androidsdk/InterstitialView;)Lcom/inmobi/re/container/IMWebView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/re/container/IMWebView;->deinit()V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/inmobi/androidsdk/InterstitialView;->a(Lcom/inmobi/androidsdk/InterstitialView;Lcom/inmobi/re/container/IMWebView;)Lcom/inmobi/re/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/InterstitialView;->d(Lcom/inmobi/androidsdk/InterstitialView;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0}, Lcom/inmobi/androidsdk/InterstitialView;->j(Lcom/inmobi/androidsdk/InterstitialView;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :try_start_6
    const-string v4, "ad"

    invoke-static {v0}, Lcom/inmobi/androidsdk/InterstitialView;->e(Lcom/inmobi/androidsdk/InterstitialView;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "t"

    invoke-virtual {v3, v4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :goto_2
    :try_start_7
    invoke-static {}, Lcom/inmobi/androidsdk/bootstrapper/Initializer;->getLogger()Lcom/inmobi/commons/metric/Logger;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/metric/EventLog;

    sget-object v4, Lcom/inmobi/androidsdk/bootstrapper/NetworkEventType;->RENDER_TIMEOUT:Lcom/inmobi/androidsdk/bootstrapper/NetworkEventType;

    invoke-direct {v2, v4, v3}, Lcom/inmobi/commons/metric/EventLog;-><init>(Lcom/inmobi/commons/metric/EventType;Lorg/json/JSONObject;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/metric/Logger;->logEvent(Lcom/inmobi/commons/metric/EventLog;)V

    :cond_5
    const/16 v1, 0x65

    sget-object v2, Lcom/inmobi/androidsdk/AdRequest$ErrorCode;->AD_RENDERING_TIMEOUT:Lcom/inmobi/androidsdk/AdRequest$ErrorCode;

    invoke-static {v0, v1, v2}, Lcom/inmobi/androidsdk/InterstitialView;->a(Lcom/inmobi/androidsdk/InterstitialView;ILcom/inmobi/androidsdk/AdRequest$ErrorCode;)V

    goto/16 :goto_0

    :catch_3
    move-exception v1

    const-string v1, "[InMobi]-[Network]-4.4.1"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Error creating metric logs for fetch_complete at "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_4
    const/16 v1, 0x134

    invoke-virtual {p0, v1}, Lcom/inmobi/androidsdk/InterstitialView$c;->removeMessages(I)V

    const/16 v1, 0x135

    invoke-virtual {p0, v1}, Lcom/inmobi/androidsdk/InterstitialView$c;->removeMessages(I)V

    sget-object v1, Lcom/inmobi/androidsdk/InterstitialView$State;->INIT:Lcom/inmobi/androidsdk/InterstitialView$State;

    invoke-static {v0, v1}, Lcom/inmobi/androidsdk/InterstitialView;->a(Lcom/inmobi/androidsdk/InterstitialView;Lcom/inmobi/androidsdk/InterstitialView$State;)Lcom/inmobi/androidsdk/InterstitialView$State;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0}, Lcom/inmobi/androidsdk/InterstitialView;->c(Lcom/inmobi/androidsdk/InterstitialView;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-static {v0}, Lcom/inmobi/androidsdk/InterstitialView;->d(Lcom/inmobi/androidsdk/InterstitialView;)Z

    move-result v3

    if-eqz v3, :cond_6

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    :try_start_8
    const-string v4, "t"

    invoke-virtual {v3, v4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "m"

    const/4 v2, 0x1

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    :goto_3
    :try_start_9
    invoke-static {}, Lcom/inmobi/androidsdk/bootstrapper/Initializer;->getLogger()Lcom/inmobi/commons/metric/Logger;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/metric/EventLog;

    sget-object v4, Lcom/inmobi/androidsdk/bootstrapper/NetworkEventType;->CONNECT_ERROR:Lcom/inmobi/androidsdk/bootstrapper/NetworkEventType;

    invoke-direct {v2, v4, v3}, Lcom/inmobi/commons/metric/EventLog;-><init>(Lcom/inmobi/commons/metric/EventType;Lorg/json/JSONObject;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/metric/Logger;->logEvent(Lcom/inmobi/commons/metric/EventLog;)V

    :cond_6
    invoke-static {v0}, Lcom/inmobi/androidsdk/InterstitialView;->k(Lcom/inmobi/androidsdk/InterstitialView;)Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->doCancel()V

    const/16 v1, 0x65

    sget-object v2, Lcom/inmobi/androidsdk/AdRequest$ErrorCode;->AD_FETCH_TIMEOUT:Lcom/inmobi/androidsdk/AdRequest$ErrorCode;

    invoke-static {v0, v1, v2}, Lcom/inmobi/androidsdk/InterstitialView;->a(Lcom/inmobi/androidsdk/InterstitialView;ILcom/inmobi/androidsdk/AdRequest$ErrorCode;)V

    goto/16 :goto_0

    :catch_4
    move-exception v1

    const-string v1, "[InMobi]-[Network]-4.4.1"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Error creating metric logs for error at "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :pswitch_5
    invoke-static {v0}, Lcom/inmobi/androidsdk/InterstitialView;->d(Lcom/inmobi/androidsdk/InterstitialView;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0}, Lcom/inmobi/androidsdk/InterstitialView;->j(Lcom/inmobi/androidsdk/InterstitialView;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    :try_start_a
    const-string v4, "ad"

    invoke-static {v0}, Lcom/inmobi/androidsdk/InterstitialView;->e(Lcom/inmobi/androidsdk/InterstitialView;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "t"

    invoke-virtual {v3, v4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    :goto_4
    :try_start_b
    invoke-static {}, Lcom/inmobi/androidsdk/bootstrapper/Initializer;->getLogger()Lcom/inmobi/commons/metric/Logger;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/metric/EventLog;

    sget-object v4, Lcom/inmobi/androidsdk/bootstrapper/NetworkEventType;->RENDER_COMPLETE:Lcom/inmobi/androidsdk/bootstrapper/NetworkEventType;

    invoke-direct {v2, v4, v3}, Lcom/inmobi/commons/metric/EventLog;-><init>(Lcom/inmobi/commons/metric/EventType;Lorg/json/JSONObject;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/metric/Logger;->logEvent(Lcom/inmobi/commons/metric/EventLog;)V

    :cond_7
    const/16 v1, 0x133

    invoke-virtual {p0, v1}, Lcom/inmobi/androidsdk/InterstitialView$c;->removeMessages(I)V

    sget-object v1, Lcom/inmobi/androidsdk/InterstitialView$State;->READY:Lcom/inmobi/androidsdk/InterstitialView$State;

    invoke-static {v0, v1}, Lcom/inmobi/androidsdk/InterstitialView;->a(Lcom/inmobi/androidsdk/InterstitialView;Lcom/inmobi/androidsdk/InterstitialView$State;)Lcom/inmobi/androidsdk/InterstitialView$State;

    const/16 v1, 0x64

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/inmobi/androidsdk/InterstitialView;->a(Lcom/inmobi/androidsdk/InterstitialView;ILcom/inmobi/androidsdk/AdRequest$ErrorCode;)V

    goto/16 :goto_0

    :catch_5
    move-exception v1

    const-string v1, "[InMobi]-[Network]-4.4.1"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Error creating metric logs for RENDER_COMPLETE at "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :pswitch_6
    sget-object v1, Lcom/inmobi/androidsdk/InterstitialView$State;->INIT:Lcom/inmobi/androidsdk/InterstitialView$State;

    invoke-static {v0, v1}, Lcom/inmobi/androidsdk/InterstitialView;->a(Lcom/inmobi/androidsdk/InterstitialView;Lcom/inmobi/androidsdk/InterstitialView$State;)Lcom/inmobi/androidsdk/InterstitialView$State;

    const/16 v1, 0x67

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/inmobi/androidsdk/InterstitialView;->a(Lcom/inmobi/androidsdk/InterstitialView;ILcom/inmobi/androidsdk/AdRequest$ErrorCode;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/inmobi/androidsdk/InterstitialView;->a(Lcom/inmobi/androidsdk/InterstitialView;Lcom/inmobi/re/container/IMWebView;)Lcom/inmobi/re/container/IMWebView;

    goto/16 :goto_0

    :pswitch_7
    sget-object v1, Lcom/inmobi/androidsdk/InterstitialView$State;->ACTIVE:Lcom/inmobi/androidsdk/InterstitialView$State;

    invoke-static {v0, v1}, Lcom/inmobi/androidsdk/InterstitialView;->a(Lcom/inmobi/androidsdk/InterstitialView;Lcom/inmobi/androidsdk/InterstitialView$State;)Lcom/inmobi/androidsdk/InterstitialView$State;

    const/16 v1, 0x66

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/inmobi/androidsdk/InterstitialView;->a(Lcom/inmobi/androidsdk/InterstitialView;ILcom/inmobi/androidsdk/AdRequest$ErrorCode;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x12f
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
