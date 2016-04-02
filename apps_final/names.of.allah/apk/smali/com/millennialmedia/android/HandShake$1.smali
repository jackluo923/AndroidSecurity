.class Lcom/millennialmedia/android/HandShake$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/android/HandShake;

.field final synthetic val$isInitialize:Z


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/HandShake;Z)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/android/HandShake$1;->this$0:Lcom/millennialmedia/android/HandShake;

    iput-boolean p2, p0, Lcom/millennialmedia/android/HandShake$1;->val$isInitialize:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    const/16 v10, 0xc8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/millennialmedia/android/HandShake$1;->this$0:Lcom/millennialmedia/android/HandShake;

    # getter for: Lcom/millennialmedia/android/HandShake;->contextRef:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lcom/millennialmedia/android/HandShake;->access$000(Lcom/millennialmedia/android/HandShake;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/millennialmedia/android/HandShake$1;->this$0:Lcom/millennialmedia/android/HandShake;

    # getter for: Lcom/millennialmedia/android/HandShake;->appContextRef:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lcom/millennialmedia/android/HandShake;->access$100(Lcom/millennialmedia/android/HandShake;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    move-object v4, v0

    :goto_0
    if-nez v4, :cond_1

    :cond_0
    :goto_1
    return-void

    :cond_1
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    const-string v1, "ua"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "Android:"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/millennialmedia/android/HandShake$1;->this$0:Lcom/millennialmedia/android/HandShake;

    # invokes: Lcom/millennialmedia/android/HandShake;->isFirstLaunch(Landroid/content/Context;)Z
    invoke-static {v1, v4}, Lcom/millennialmedia/android/HandShake;->access$200(Lcom/millennialmedia/android/HandShake;Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v1

    if-eqz v1, :cond_2

    :try_start_1
    const-string v3, "firstlaunch"

    const-string v6, "1"

    invoke-interface {v0, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-boolean v3, p0, Lcom/millennialmedia/android/HandShake$1;->val$isInitialize:Z

    if-eqz v3, :cond_3

    const-string v3, "init"

    const-string v6, "1"

    invoke-interface {v0, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-static {v4, v0}, Lcom/millennialmedia/android/MMSDK;->insertUrlCommonValues(Landroid/content/Context;Ljava/util/Map;)V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    const-string v6, "&%s=%s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v9, "UTF-8"

    invoke-static {v0, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v0

    :goto_3
    :try_start_2
    const-string v2, "Could not get a handshake. %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Lcom/millennialmedia/android/MMSDK$Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/millennialmedia/android/HandShake$1;->this$0:Lcom/millennialmedia/android/HandShake;

    # invokes: Lcom/millennialmedia/android/HandShake;->sentFirstLaunch(Landroid/content/Context;)V
    invoke-static {v1, v4}, Lcom/millennialmedia/android/HandShake;->access$1000(Lcom/millennialmedia/android/HandShake;Landroid/content/Context;)V

    :cond_4
    throw v0

    :cond_5
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/millennialmedia/android/HandShake;->handShakeURL:Ljava/lang/String;
    invoke-static {}, Lcom/millennialmedia/android/HandShake;->access$300()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lcom/millennialmedia/android/HandShake;->apid:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Performing handshake: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-static {v3, v6}, Lcom/millennialmedia/android/MMSDK$Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v3, 0x0

    :try_start_4
    new-instance v6, Lcom/millennialmedia/android/HttpGetRequest;

    invoke-direct {v6}, Lcom/millennialmedia/android/HttpGetRequest;-><init>()V

    invoke-virtual {v6, v0}, Lcom/millennialmedia/android/HttpGetRequest;->get(Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v3

    :goto_5
    if-eqz v3, :cond_6

    :try_start_5
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v0

    if-eq v0, v10, :cond_7

    :cond_6
    :try_start_6
    # getter for: Lcom/millennialmedia/android/HandShake;->handShakeURL:Ljava/lang/String;
    invoke-static {}, Lcom/millennialmedia/android/HandShake;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v6, "https://"

    const-string v7, "http://"

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/millennialmedia/android/HandShake;->handShakeURL:Ljava/lang/String;
    invoke-static {v0}, Lcom/millennialmedia/android/HandShake;->access$302(Ljava/lang/String;)Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/millennialmedia/android/HandShake;->handShakeURL:Ljava/lang/String;
    invoke-static {}, Lcom/millennialmedia/android/HandShake;->access$300()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v6, Lcom/millennialmedia/android/HandShake;->apid:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "Performing handshake (HTTP Fallback): %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    invoke-static {v6, v7}, Lcom/millennialmedia/android/MMSDK$Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v6, Lcom/millennialmedia/android/HttpGetRequest;

    invoke-direct {v6}, Lcom/millennialmedia/android/HttpGetRequest;-><init>()V

    invoke-virtual {v6, v0}, Lcom/millennialmedia/android/HttpGetRequest;->get(Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v3

    :cond_7
    :goto_6
    if-eqz v3, :cond_8

    :try_start_7
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v0

    if-eq v0, v10, :cond_9

    :cond_8
    :try_start_8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "http://ads.mp.mydas.mobi/appConfigServlet?apid="

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/millennialmedia/android/HandShake;->apid:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "Performing handshake (HTTP Fallback Original): %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-static {v5, v6}, Lcom/millennialmedia/android/MMSDK$Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v5, Lcom/millennialmedia/android/HttpGetRequest;

    invoke-direct {v5}, Lcom/millennialmedia/android/HttpGetRequest;-><init>()V

    invoke-virtual {v5, v0}, Lcom/millennialmedia/android/HttpGetRequest;->get(Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result-object v0

    :goto_7
    if-eqz v0, :cond_a

    :try_start_9
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    if-ne v3, v10, :cond_a

    iget-object v2, p0, Lcom/millennialmedia/android/HandShake$1;->this$0:Lcom/millennialmedia/android/HandShake;

    iget-object v3, p0, Lcom/millennialmedia/android/HandShake$1;->this$0:Lcom/millennialmedia/android/HandShake;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/android/HttpGetRequest;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/millennialmedia/android/HandShake;->parseJson(Ljava/lang/String;)Lorg/json/JSONObject;
    invoke-static {v3, v0}, Lcom/millennialmedia/android/HandShake;->access$400(Lcom/millennialmedia/android/HandShake;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    # invokes: Lcom/millennialmedia/android/HandShake;->deserializeFromObj(Lorg/json/JSONObject;)V
    invoke-static {v2, v0}, Lcom/millennialmedia/android/HandShake;->access$500(Lcom/millennialmedia/android/HandShake;Lorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/millennialmedia/android/HandShake$1;->this$0:Lcom/millennialmedia/android/HandShake;

    # invokes: Lcom/millennialmedia/android/HandShake;->saveHandShake(Landroid/content/Context;)V
    invoke-static {v0, v4}, Lcom/millennialmedia/android/HandShake;->access$600(Lcom/millennialmedia/android/HandShake;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/millennialmedia/android/HandShake$1;->this$0:Lcom/millennialmedia/android/HandShake;

    # getter for: Lcom/millennialmedia/android/HandShake;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/millennialmedia/android/HandShake;->access$900(Lcom/millennialmedia/android/HandShake;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/millennialmedia/android/HandShake$1;->this$0:Lcom/millennialmedia/android/HandShake;

    # getter for: Lcom/millennialmedia/android/HandShake;->updateHandShakeRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/millennialmedia/android/HandShake;->access$700(Lcom/millennialmedia/android/HandShake;)Ljava/lang/Runnable;

    move-result-object v2

    iget-object v3, p0, Lcom/millennialmedia/android/HandShake$1;->this$0:Lcom/millennialmedia/android/HandShake;

    # getter for: Lcom/millennialmedia/android/HandShake;->handShakeCallback:J
    invoke-static {v3}, Lcom/millennialmedia/android/HandShake;->access$800(Lcom/millennialmedia/android/HandShake;)J

    move-result-wide v5

    invoke-virtual {v0, v2, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string v0, "Obtained a new handshake"

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->v(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :goto_8
    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/HandShake$1;->this$0:Lcom/millennialmedia/android/HandShake;

    # invokes: Lcom/millennialmedia/android/HandShake;->sentFirstLaunch(Landroid/content/Context;)V
    invoke-static {v0, v4}, Lcom/millennialmedia/android/HandShake;->access$1000(Lcom/millennialmedia/android/HandShake;Landroid/content/Context;)V

    goto/16 :goto_1

    :catch_1
    move-exception v0

    :try_start_a
    const-string v6, "Could not get a handshake. %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v8

    invoke-static {v6, v7}, Lcom/millennialmedia/android/MMSDK$Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_5

    :catch_2
    move-exception v0

    :goto_9
    :try_start_b
    const-string v2, "Could not get a handshake. %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Lcom/millennialmedia/android/MMSDK$Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_1

    :catch_3
    move-exception v0

    :try_start_c
    const-string v6, "Could not get a handshake. %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v8

    invoke-static {v6, v7}, Lcom/millennialmedia/android/MMSDK$Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_6

    :catch_4
    move-exception v0

    const-string v5, "Could not get a handshake. %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v7

    invoke-static {v5, v6}, Lcom/millennialmedia/android/MMSDK$Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :cond_9
    move-object v0, v3

    goto/16 :goto_7

    :cond_a
    move v1, v2

    goto :goto_8

    :catchall_1
    move-exception v0

    move v1, v2

    goto/16 :goto_4

    :catch_5
    move-exception v0

    move v1, v2

    goto :goto_9

    :catch_6
    move-exception v0

    move v1, v2

    goto/16 :goto_3

    :cond_b
    move-object v4, v0

    goto/16 :goto_0
.end method
