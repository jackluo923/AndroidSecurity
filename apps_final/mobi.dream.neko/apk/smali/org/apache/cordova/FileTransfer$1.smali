.class Lorg/apache/cordova/FileTransfer$1;
.super Ljava/lang/Object;
.source "FileTransfer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/FileTransfer;->upload(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/api/CallbackContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/cordova/FileTransfer;

.field final synthetic val$chunkedMode:Z

.field final synthetic val$context:Lorg/apache/cordova/FileTransfer$RequestContext;

.field final synthetic val$fileKey:Ljava/lang/String;

.field final synthetic val$fileName:Ljava/lang/String;

.field final synthetic val$headers:Lorg/json/JSONObject;

.field final synthetic val$httpMethod:Ljava/lang/String;

.field final synthetic val$mimeType:Ljava/lang/String;

.field final synthetic val$objectId:Ljava/lang/String;

.field final synthetic val$params:Lorg/json/JSONObject;

.field final synthetic val$resourceApi:Lorg/apache/cordova/CordovaResourceApi;

.field final synthetic val$source:Ljava/lang/String;

.field final synthetic val$sourceUri:Landroid/net/Uri;

.field final synthetic val$target:Ljava/lang/String;

.field final synthetic val$targetUri:Landroid/net/Uri;

.field final synthetic val$trustEveryone:Z

.field final synthetic val$useHttps:Z


# direct methods
.method constructor <init>(Lorg/apache/cordova/FileTransfer;Lorg/apache/cordova/FileTransfer$RequestContext;Lorg/apache/cordova/CordovaResourceApi;Landroid/net/Uri;ZZLjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 280
    iput-object p1, p0, Lorg/apache/cordova/FileTransfer$1;->this$0:Lorg/apache/cordova/FileTransfer;

    iput-object p2, p0, Lorg/apache/cordova/FileTransfer$1;->val$context:Lorg/apache/cordova/FileTransfer$RequestContext;

    iput-object p3, p0, Lorg/apache/cordova/FileTransfer$1;->val$resourceApi:Lorg/apache/cordova/CordovaResourceApi;

    iput-object p4, p0, Lorg/apache/cordova/FileTransfer$1;->val$targetUri:Landroid/net/Uri;

    iput-boolean p5, p0, Lorg/apache/cordova/FileTransfer$1;->val$useHttps:Z

    iput-boolean p6, p0, Lorg/apache/cordova/FileTransfer$1;->val$trustEveryone:Z

    iput-object p7, p0, Lorg/apache/cordova/FileTransfer$1;->val$httpMethod:Ljava/lang/String;

    iput-object p8, p0, Lorg/apache/cordova/FileTransfer$1;->val$target:Ljava/lang/String;

    iput-object p9, p0, Lorg/apache/cordova/FileTransfer$1;->val$headers:Lorg/json/JSONObject;

    iput-object p10, p0, Lorg/apache/cordova/FileTransfer$1;->val$params:Lorg/json/JSONObject;

    iput-object p11, p0, Lorg/apache/cordova/FileTransfer$1;->val$fileKey:Ljava/lang/String;

    iput-object p12, p0, Lorg/apache/cordova/FileTransfer$1;->val$fileName:Ljava/lang/String;

    iput-object p13, p0, Lorg/apache/cordova/FileTransfer$1;->val$mimeType:Ljava/lang/String;

    iput-object p14, p0, Lorg/apache/cordova/FileTransfer$1;->val$sourceUri:Landroid/net/Uri;

    move/from16 v0, p15

    iput-boolean v0, p0, Lorg/apache/cordova/FileTransfer$1;->val$chunkedMode:Z

    move-object/from16 v0, p16

    iput-object v0, p0, Lorg/apache/cordova/FileTransfer$1;->val$source:Ljava/lang/String;

    move-object/from16 v0, p17

    iput-object v0, p0, Lorg/apache/cordova/FileTransfer$1;->val$objectId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 39

    .prologue
    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$1;->val$context:Lorg/apache/cordova/FileTransfer$RequestContext;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-boolean v0, v0, Lorg/apache/cordova/FileTransfer$RequestContext;->aborted:Z

    move/from16 v35, v0

    if-eqz v35, :cond_1

    .line 508
    :cond_0
    :goto_0
    return-void

    .line 285
    :cond_1
    const/4 v9, 0x0

    .line 286
    .local v9, "conn":Ljava/net/HttpURLConnection;
    const/16 v18, 0x0

    .line 287
    .local v18, "oldHostnameVerifier":Ljavax/net/ssl/HostnameVerifier;
    const/16 v19, 0x0

    .line 288
    .local v19, "oldSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    const/16 v33, 0x0

    .line 289
    .local v33, "totalBytes":I
    const/4 v13, -0x1

    .line 292
    .local v13, "fixedLength":I
    :try_start_0
    new-instance v28, Lorg/apache/cordova/FileUploadResult;

    invoke-direct/range {v28 .. v28}, Lorg/apache/cordova/FileUploadResult;-><init>()V

    .line 293
    .local v28, "result":Lorg/apache/cordova/FileUploadResult;
    new-instance v23, Lorg/apache/cordova/FileProgressResult;

    invoke-direct/range {v23 .. v23}, Lorg/apache/cordova/FileProgressResult;-><init>()V

    .line 297
    .local v23, "progress":Lorg/apache/cordova/FileProgressResult;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$1;->val$resourceApi:Lorg/apache/cordova/CordovaResourceApi;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$1;->val$targetUri:Landroid/net/Uri;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Lorg/apache/cordova/CordovaResourceApi;->createHttpConnection(Landroid/net/Uri;)Ljava/net/HttpURLConnection;

    move-result-object v9

    .line 298
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/cordova/FileTransfer$1;->val$useHttps:Z

    move/from16 v35, v0

    if-eqz v35, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/cordova/FileTransfer$1;->val$trustEveryone:Z

    move/from16 v35, v0

    if-eqz v35, :cond_2

    .line 300
    move-object v0, v9

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v14, v0

    .line 301
    .local v14, "https":Ljavax/net/ssl/HttpsURLConnection;
    # invokes: Lorg/apache/cordova/FileTransfer;->trustAllHosts(Ljavax/net/ssl/HttpsURLConnection;)Ljavax/net/ssl/SSLSocketFactory;
    invoke-static {v14}, Lorg/apache/cordova/FileTransfer;->access$000(Ljavax/net/ssl/HttpsURLConnection;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v19

    .line 303
    invoke-virtual {v14}, Ljavax/net/ssl/HttpsURLConnection;->getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v18

    .line 305
    # getter for: Lorg/apache/cordova/FileTransfer;->DO_NOT_VERIFY:Ljavax/net/ssl/HostnameVerifier;
    invoke-static {}, Lorg/apache/cordova/FileTransfer;->access$100()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v14, v0}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 309
    .end local v14    # "https":Ljavax/net/ssl/HttpsURLConnection;
    :cond_2
    const/16 v35, 0x1

    move/from16 v0, v35

    invoke-virtual {v9, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 312
    const/16 v35, 0x1

    move/from16 v0, v35

    invoke-virtual {v9, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 315
    const/16 v35, 0x0

    move/from16 v0, v35

    invoke-virtual {v9, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$1;->val$httpMethod:Ljava/lang/String;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    invoke-virtual {v9, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 319
    const-string v35, "Content-Type"

    const-string v36, "multipart/form-data;boundary=+++++"

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v9, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$1;->val$target:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 323
    .local v10, "cookie":Ljava/lang/String;
    if-eqz v10, :cond_3

    .line 324
    const-string v35, "Cookie"

    move-object/from16 v0, v35

    invoke-virtual {v9, v0, v10}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$1;->val$headers:Lorg/json/JSONObject;

    move-object/from16 v35, v0

    if-eqz v35, :cond_4

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$1;->val$headers:Lorg/json/JSONObject;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    # invokes: Lorg/apache/cordova/FileTransfer;->addHeadersToRequest(Ljava/net/URLConnection;Lorg/json/JSONObject;)V
    invoke-static {v9, v0}, Lorg/apache/cordova/FileTransfer;->access$200(Ljava/net/URLConnection;Lorg/json/JSONObject;)V

    .line 336
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_b

    .line 338
    .local v3, "beforeData":Ljava/lang/StringBuilder;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$1;->val$params:Lorg/json/JSONObject;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_5
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v35

    if-eqz v35, :cond_6

    .line 339
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    .line 340
    .local v17, "key":Ljava/lang/Object;
    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    const-string v36, "headers"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_5

    .line 342
    const-string v35, "--"

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "+++++"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "\r\n"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    const-string v35, "Content-Disposition: form-data; name=\""

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const/16 v36, 0x22

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 344
    const-string v35, "\r\n"

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "\r\n"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$1;->val$params:Lorg/json/JSONObject;

    move-object/from16 v35, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    const-string v35, "\r\n"

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_b

    goto :goto_1

    .line 349
    .end local v16    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v17    # "key":Ljava/lang/Object;
    :catch_0
    move-exception v11

    .line 350
    .local v11, "e":Lorg/json/JSONException;
    :try_start_2
    const-string v35, "FileTransfer"

    invoke-virtual {v11}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-static {v0, v1, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 353
    .end local v11    # "e":Lorg/json/JSONException;
    :cond_6
    const-string v35, "--"

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "+++++"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "\r\n"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    const-string v35, "Content-Disposition: form-data; name=\""

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$1;->val$fileKey:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "\";"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    const-string v35, " filename=\""

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$1;->val$fileName:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const/16 v36, 0x22

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "\r\n"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    const-string v35, "Content-Type: "

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$1;->val$mimeType:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "\r\n"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "\r\n"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    const-string v36, "UTF-8"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 358
    .local v4, "beforeDataBytes":[B
    const-string v35, "\r\n--+++++--\r\n"

    const-string v36, "UTF-8"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v32

    .line 362
    .local v32, "tailParamsBytes":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$1;->val$resourceApi:Lorg/apache/cordova/CordovaResourceApi;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$1;->val$sourceUri:Landroid/net/Uri;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Lorg/apache/cordova/CordovaResourceApi;->openForRead(Landroid/net/Uri;)Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;

    move-result-object v25

    .line 364
    .local v25, "readResult":Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;
    array-length v0, v4

    move/from16 v35, v0

    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v36, v0

    add-int v30, v35, v36

    .line 365
    .local v30, "stringLength":I
    move-object/from16 v0, v25

    iget-wide v0, v0, Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;->length:J

    move-wide/from16 v35, v0

    const-wide/16 v37, 0x0

    cmp-long v35, v35, v37

    if-ltz v35, :cond_7

    .line 366
    move-object/from16 v0, v25

    iget-wide v0, v0, Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;->length:J

    move-wide/from16 v35, v0

    move-wide/from16 v0, v35

    long-to-int v0, v0

    move/from16 v35, v0

    add-int v13, v35, v30

    .line 367
    const/16 v35, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/apache/cordova/FileProgressResult;->setLengthComputable(Z)V

    .line 368
    int-to-long v0, v13

    move-wide/from16 v35, v0

    move-object/from16 v0, v23

    move-wide/from16 v1, v35

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/FileProgressResult;->setTotal(J)V

    .line 370
    :cond_7
    const-string v35, "FileTransfer"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "Content Length: "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/cordova/FileTransfer$1;->val$chunkedMode:Z

    move/from16 v35, v0

    if-eqz v35, :cond_a

    sget v35, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v36, 0x8

    move/from16 v0, v35

    move/from16 v1, v36

    if-lt v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/cordova/FileTransfer$1;->val$useHttps:Z

    move/from16 v35, v0

    if-eqz v35, :cond_a

    :cond_8
    const/16 v34, 0x1

    .line 375
    .local v34, "useChunkedMode":Z
    :goto_2
    if-nez v34, :cond_9

    const/16 v35, -0x1

    move/from16 v0, v35

    if-ne v13, v0, :cond_b

    :cond_9
    const/16 v34, 0x1

    .line 377
    :goto_3
    if-eqz v34, :cond_c

    .line 378
    const/16 v35, 0x4000

    move/from16 v0, v35

    invoke-virtual {v9, v0}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    .line 381
    const-string v35, "Transfer-Encoding"

    const-string v36, "chunked"

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v9, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    :goto_4
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->connect()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_b

    .line 388
    const/16 v29, 0x0

    .line 390
    .local v29, "sendStream":Ljava/io/OutputStream;
    :try_start_3
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v29

    .line 391
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$1;->val$context:Lorg/apache/cordova/FileTransfer$RequestContext;

    move-object/from16 v36, v0

    monitor-enter v36
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 392
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$1;->val$context:Lorg/apache/cordova/FileTransfer$RequestContext;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-boolean v0, v0, Lorg/apache/cordova/FileTransfer$RequestContext;->aborted:Z

    move/from16 v35, v0

    if-eqz v35, :cond_d

    .line 393
    monitor-exit v36
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 434
    :try_start_5
    move-object/from16 v0, v25

    iget-object v0, v0, Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;->inputStream:Ljava/io/InputStream;

    move-object/from16 v35, v0

    # invokes: Lorg/apache/cordova/FileTransfer;->safeClose(Ljava/io/Closeable;)V
    invoke-static/range {v35 .. v35}, Lorg/apache/cordova/FileTransfer;->access$300(Ljava/io/Closeable;)V

    .line 435
    # invokes: Lorg/apache/cordova/FileTransfer;->safeClose(Ljava/io/Closeable;)V
    invoke-static/range {v29 .. v29}, Lorg/apache/cordova/FileTransfer;->access$300(Ljava/io/Closeable;)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_b

    .line 494
    # getter for: Lorg/apache/cordova/FileTransfer;->activeRequests:Ljava/util/HashMap;
    invoke-static {}, Lorg/apache/cordova/FileTransfer;->access$600()Ljava/util/HashMap;

    move-result-object v36

    monitor-enter v36

    .line 495
    :try_start_6
    # getter for: Lorg/apache/cordova/FileTransfer;->activeRequests:Ljava/util/HashMap;
    invoke-static {}, Lorg/apache/cordova/FileTransfer;->access$600()Ljava/util/HashMap;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$1;->val$objectId:Ljava/lang/String;

    move-object/from16 v37, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    monitor-exit v36
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 498
    if-eqz v9, :cond_0

    .line 501
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/cordova/FileTransfer$1;->val$trustEveryone:Z

    move/from16 v35, v0

    if-eqz v35, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/cordova/FileTransfer$1;->val$useHttps:Z

    move/from16 v35, v0

    if-eqz v35, :cond_0

    move-object v14, v9

    .line 502
    check-cast v14, Ljavax/net/ssl/HttpsURLConnection;

    .line 503
    .restart local v14    # "https":Ljavax/net/ssl/HttpsURLConnection;
    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 504
    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    goto/16 :goto_0

    .line 374
    .end local v14    # "https":Ljavax/net/ssl/HttpsURLConnection;
    .end local v29    # "sendStream":Ljava/io/OutputStream;
    .end local v34    # "useChunkedMode":Z
    :cond_a
    const/16 v34, 0x0

    goto/16 :goto_2

    .line 375
    .restart local v34    # "useChunkedMode":Z
    :cond_b
    const/16 v34, 0x0

    goto :goto_3

    .line 383
    :cond_c
    :try_start_7
    invoke-virtual {v9, v13}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_b

    goto :goto_4

    .line 476
    .end local v3    # "beforeData":Ljava/lang/StringBuilder;
    .end local v4    # "beforeDataBytes":[B
    .end local v10    # "cookie":Ljava/lang/String;
    .end local v23    # "progress":Lorg/apache/cordova/FileProgressResult;
    .end local v25    # "readResult":Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;
    .end local v28    # "result":Lorg/apache/cordova/FileUploadResult;
    .end local v30    # "stringLength":I
    .end local v32    # "tailParamsBytes":[B
    .end local v34    # "useChunkedMode":Z
    :catch_1
    move-exception v11

    .line 477
    .local v11, "e":Ljava/io/FileNotFoundException;
    :try_start_8
    sget v35, Lorg/apache/cordova/FileTransfer;->FILE_NOT_FOUND_ERR:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$1;->val$source:Ljava/lang/String;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$1;->val$target:Ljava/lang/String;

    move-object/from16 v37, v0

    move/from16 v0, v35

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    # invokes: Lorg/apache/cordova/FileTransfer;->createFileTransferError(ILjava/lang/String;Ljava/lang/String;Ljava/net/URLConnection;)Lorg/json/JSONObject;
    invoke-static {v0, v1, v2, v9}, Lorg/apache/cordova/FileTransfer;->access$500(ILjava/lang/String;Ljava/lang/String;Ljava/net/URLConnection;)Lorg/json/JSONObject;

    move-result-object v12

    .line 478
    .local v12, "error":Lorg/json/JSONObject;
    const-string v35, "FileTransfer"

    invoke-virtual {v12}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-static {v0, v1, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 479
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$1;->val$context:Lorg/apache/cordova/FileTransfer$RequestContext;

    move-object/from16 v35, v0

    new-instance v36, Lorg/apache/cordova/api/PluginResult;

    sget-object v37, Lorg/apache/cordova/api/PluginResult$Status;->IO_EXCEPTION:Lorg/apache/cordova/api/PluginResult$Status;

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    invoke-direct {v0, v1, v12}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONObject;)V

    invoke-virtual/range {v35 .. v36}, Lorg/apache/cordova/FileTransfer$RequestContext;->sendPluginResult(Lorg/apache/cordova/api/PluginResult;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_b

    .line 494
    # getter for: Lorg/apache/cordova/FileTransfer;->activeRequests:Ljava/util/HashMap;
    invoke-static {}, Lorg/apache/cordova/FileTransfer;->access$600()Ljava/util/HashMap;

    move-result-object v36

    monitor-enter v36

    .line 495
    :try_start_9
    # getter for: Lorg/apache/cordova/FileTransfer;->activeRequests:Ljava/util/HashMap;
    invoke-static {}, Lorg/apache/cordova/FileTransfer;->access$600()Ljava/util/HashMap;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$1;->val$objectId:Ljava/lang/String;

    move-object/from16 v37, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    monitor-exit v36
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    .line 498
    if-eqz v9, :cond_0

    .line 501
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/cordova/FileTransfer$1;->val$trustEveryone:Z

    move/from16 v35, v0

    if-eqz v35, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/cordova/FileTransfer$1;->val$useHttps:Z

    move/from16 v35, v0

    if-eqz v35, :cond_0

    move-object v14, v9

    .line 502
    check-cast v14, Ljavax/net/ssl/HttpsURLConnection;

    .line 503
    .restart local v14    # "https":Ljavax/net/ssl/HttpsURLConnection;
    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 504
    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    goto/16 :goto_0

    .line 496
    .end local v11    # "e":Ljava/io/FileNotFoundException;
    .end local v12    # "error":Lorg/json/JSONObject;
    .end local v14    # "https":Ljavax/net/ssl/HttpsURLConnection;
    .restart local v3    # "beforeData":Ljava/lang/StringBuilder;
    .restart local v4    # "beforeDataBytes":[B
    .restart local v10    # "cookie":Ljava/lang/String;
    .restart local v23    # "progress":Lorg/apache/cordova/FileProgressResult;
    .restart local v25    # "readResult":Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;
    .restart local v28    # "result":Lorg/apache/cordova/FileUploadResult;
    .restart local v29    # "sendStream":Ljava/io/OutputStream;
    .restart local v30    # "stringLength":I
    .restart local v32    # "tailParamsBytes":[B
    .restart local v34    # "useChunkedMode":Z
    :catchall_0
    move-exception v35

    :try_start_a
    monitor-exit v36
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    throw v35

    .line 395
    :cond_d
    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$1;->val$context:Lorg/apache/cordova/FileTransfer$RequestContext;

    move-object/from16 v35, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v35

    iput-object v0, v1, Lorg/apache/cordova/FileTransfer$RequestContext;->currentOutputStream:Ljava/io/OutputStream;

    .line 396
    monitor-exit v36
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 398
    :try_start_c
    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/io/OutputStream;->write([B)V

    .line 399
    array-length v0, v4

    move/from16 v35, v0

    add-int v33, v33, v35

    .line 402
    move-object/from16 v0, v25

    iget-object v0, v0, Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;->inputStream:Ljava/io/InputStream;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Ljava/io/InputStream;->available()I

    move-result v7

    .line 403
    .local v7, "bytesAvailable":I
    const/16 v35, 0x4000

    move/from16 v0, v35

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 404
    .local v6, "bufferSize":I
    new-array v5, v6, [B

    .line 407
    .local v5, "buffer":[B
    move-object/from16 v0, v25

    iget-object v0, v0, Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;->inputStream:Ljava/io/InputStream;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-virtual {v0, v5, v1, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v8

    .line 409
    .local v8, "bytesRead":I
    const-wide/16 v21, 0x0

    .line 410
    .local v21, "prevBytesRead":J
    :goto_5
    if-lez v8, :cond_f

    .line 411
    move/from16 v0, v33

    int-to-long v0, v0

    move-wide/from16 v35, v0

    move-object/from16 v0, v28

    move-wide/from16 v1, v35

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/FileUploadResult;->setBytesSent(J)V

    .line 412
    const/16 v35, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v35

    invoke-virtual {v0, v5, v1, v8}, Ljava/io/OutputStream;->write([BII)V

    .line 413
    add-int v33, v33, v8

    .line 414
    move/from16 v0, v33

    int-to-long v0, v0

    move-wide/from16 v35, v0

    const-wide/32 v37, 0x19000

    add-long v37, v37, v21

    cmp-long v35, v35, v37

    if-lez v35, :cond_e

    .line 415
    move/from16 v0, v33

    int-to-long v0, v0

    move-wide/from16 v21, v0

    .line 416
    const-string v35, "FileTransfer"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "Uploaded "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, " of "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, " bytes"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    :cond_e
    move-object/from16 v0, v25

    iget-object v0, v0, Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;->inputStream:Ljava/io/InputStream;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Ljava/io/InputStream;->available()I

    move-result v7

    .line 419
    const/16 v35, 0x4000

    move/from16 v0, v35

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 420
    move-object/from16 v0, v25

    iget-object v0, v0, Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;->inputStream:Ljava/io/InputStream;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-virtual {v0, v5, v1, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v8

    .line 423
    move/from16 v0, v33

    int-to-long v0, v0

    move-wide/from16 v35, v0

    move-object/from16 v0, v23

    move-wide/from16 v1, v35

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/FileProgressResult;->setLoaded(J)V

    .line 424
    new-instance v24, Lorg/apache/cordova/api/PluginResult;

    sget-object v35, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-virtual/range {v23 .. v23}, Lorg/apache/cordova/FileProgressResult;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v36

    move-object/from16 v0, v24

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-direct {v0, v1, v2}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONObject;)V

    .line 425
    .local v24, "progressResult":Lorg/apache/cordova/api/PluginResult;
    const/16 v35, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/apache/cordova/api/PluginResult;->setKeepCallback(Z)V

    .line 426
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$1;->val$context:Lorg/apache/cordova/FileTransfer$RequestContext;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/apache/cordova/FileTransfer$RequestContext;->sendPluginResult(Lorg/apache/cordova/api/PluginResult;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto/16 :goto_5

    .line 434
    .end local v5    # "buffer":[B
    .end local v6    # "bufferSize":I
    .end local v7    # "bytesAvailable":I
    .end local v8    # "bytesRead":I
    .end local v21    # "prevBytesRead":J
    .end local v24    # "progressResult":Lorg/apache/cordova/api/PluginResult;
    :catchall_1
    move-exception v35

    :try_start_d
    move-object/from16 v0, v25

    iget-object v0, v0, Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;->inputStream:Ljava/io/InputStream;

    move-object/from16 v36, v0

    # invokes: Lorg/apache/cordova/FileTransfer;->safeClose(Ljava/io/Closeable;)V
    invoke-static/range {v36 .. v36}, Lorg/apache/cordova/FileTransfer;->access$300(Ljava/io/Closeable;)V

    .line 435
    # invokes: Lorg/apache/cordova/FileTransfer;->safeClose(Ljava/io/Closeable;)V
    invoke-static/range {v29 .. v29}, Lorg/apache/cordova/FileTransfer;->access$300(Ljava/io/Closeable;)V

    throw v35
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_d} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_b

    .line 480
    .end local v3    # "beforeData":Ljava/lang/StringBuilder;
    .end local v4    # "beforeDataBytes":[B
    .end local v10    # "cookie":Ljava/lang/String;
    .end local v23    # "progress":Lorg/apache/cordova/FileProgressResult;
    .end local v25    # "readResult":Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;
    .end local v28    # "result":Lorg/apache/cordova/FileUploadResult;
    .end local v29    # "sendStream":Ljava/io/OutputStream;
    .end local v30    # "stringLength":I
    .end local v32    # "tailParamsBytes":[B
    .end local v34    # "useChunkedMode":Z
    :catch_2
    move-exception v11

    .line 481
    .local v11, "e":Ljava/io/IOException;
    :try_start_e
    sget v35, Lorg/apache/cordova/FileTransfer;->CONNECTION_ERR:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$1;->val$source:Ljava/lang/String;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$1;->val$target:Ljava/lang/String;

    move-object/from16 v37, v0

    move/from16 v0, v35

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    # invokes: Lorg/apache/cordova/FileTransfer;->createFileTransferError(ILjava/lang/String;Ljava/lang/String;Ljava/net/URLConnection;)Lorg/json/JSONObject;
    invoke-static {v0, v1, v2, v9}, Lorg/apache/cordova/FileTransfer;->access$500(ILjava/lang/String;Ljava/lang/String;Ljava/net/URLConnection;)Lorg/json/JSONObject;

    move-result-object v12

    .line 482
    .restart local v12    # "error":Lorg/json/JSONObject;
    const-string v35, "FileTransfer"

    invoke-virtual {v12}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-static {v0, v1, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 483
    const-string v35, "FileTransfer"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "Failed after uploading "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, " of "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, " bytes."

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$1;->val$context:Lorg/apache/cordova/FileTransfer$RequestContext;

    move-object/from16 v35, v0

    new-instance v36, Lorg/apache/cordova/api/PluginResult;

    sget-object v37, Lorg/apache/cordova/api/PluginResult$Status;->IO_EXCEPTION:Lorg/apache/cordova/api/PluginResult$Status;

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    invoke-direct {v0, v1, v12}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONObject;)V

    invoke-virtual/range {v35 .. v36}, Lorg/apache/cordova/FileTransfer$RequestContext;->sendPluginResult(Lorg/apache/cordova/api/PluginResult;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_b

    .line 494
    # getter for: Lorg/apache/cordova/FileTransfer;->activeRequests:Ljava/util/HashMap;
    invoke-static {}, Lorg/apache/cordova/FileTransfer;->access$600()Ljava/util/HashMap;

    move-result-object v36

    monitor-enter v36

    .line 495
    :try_start_f
    # getter for: Lorg/apache/cordova/FileTransfer;->activeRequests:Ljava/util/HashMap;
    invoke-static {}, Lorg/apache/cordova/FileTransfer;->access$600()Ljava/util/HashMap;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$1;->val$objectId:Ljava/lang/String;

    move-object/from16 v37, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    monitor-exit v36
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    .line 498
    if-eqz v9, :cond_0

    .line 501
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/cordova/FileTransfer$1;->val$trustEveryone:Z

    move/from16 v35, v0

    if-eqz v35, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/cordova/FileTransfer$1;->val$useHttps:Z

    move/from16 v35, v0

    if-eqz v35, :cond_0

    move-object v14, v9

    .line 502
    check-cast v14, Ljavax/net/ssl/HttpsURLConnection;

    .line 503
    .restart local v14    # "https":Ljavax/net/ssl/HttpsURLConnection;
    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 504
    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    goto/16 :goto_0

    .line 396
    .end local v11    # "e":Ljava/io/IOException;
    .end local v12    # "error":Lorg/json/JSONObject;
    .end local v14    # "https":Ljavax/net/ssl/HttpsURLConnection;
    .restart local v3    # "beforeData":Ljava/lang/StringBuilder;
    .restart local v4    # "beforeDataBytes":[B
    .restart local v10    # "cookie":Ljava/lang/String;
    .restart local v23    # "progress":Lorg/apache/cordova/FileProgressResult;
    .restart local v25    # "readResult":Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;
    .restart local v28    # "result":Lorg/apache/cordova/FileUploadResult;
    .restart local v29    # "sendStream":Ljava/io/OutputStream;
    .restart local v30    # "stringLength":I
    .restart local v32    # "tailParamsBytes":[B
    .restart local v34    # "useChunkedMode":Z
    :catchall_2
    move-exception v35

    :try_start_10
    monitor-exit v36
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    :try_start_11
    throw v35

    .line 430
    .restart local v5    # "buffer":[B
    .restart local v6    # "bufferSize":I
    .restart local v7    # "bytesAvailable":I
    .restart local v8    # "bytesRead":I
    .restart local v21    # "prevBytesRead":J
    :cond_f
    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 431
    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v35, v0

    add-int v33, v33, v35

    .line 432
    invoke-virtual/range {v29 .. v29}, Ljava/io/OutputStream;->flush()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 434
    :try_start_12
    move-object/from16 v0, v25

    iget-object v0, v0, Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;->inputStream:Ljava/io/InputStream;

    move-object/from16 v35, v0

    # invokes: Lorg/apache/cordova/FileTransfer;->safeClose(Ljava/io/Closeable;)V
    invoke-static/range {v35 .. v35}, Lorg/apache/cordova/FileTransfer;->access$300(Ljava/io/Closeable;)V

    .line 435
    # invokes: Lorg/apache/cordova/FileTransfer;->safeClose(Ljava/io/Closeable;)V
    invoke-static/range {v29 .. v29}, Lorg/apache/cordova/FileTransfer;->access$300(Ljava/io/Closeable;)V

    .line 437
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$1;->val$context:Lorg/apache/cordova/FileTransfer$RequestContext;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    move-object/from16 v0, v36

    move-object/from16 v1, v35

    iput-object v0, v1, Lorg/apache/cordova/FileTransfer$RequestContext;->currentOutputStream:Ljava/io/OutputStream;

    .line 438
    const-string v35, "FileTransfer"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "Sent "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, " of "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v26

    .line 443
    .local v26, "responseCode":I
    const-string v35, "FileTransfer"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "response code: "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    const-string v35, "FileTransfer"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "response headers: "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_12} :catch_1
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_2
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_12} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_4
    .catchall {:try_start_12 .. :try_end_12} :catchall_b

    .line 445
    const/4 v15, 0x0

    .line 447
    .local v15, "inStream":Lorg/apache/cordova/FileTransfer$TrackingInputStream;
    :try_start_13
    # invokes: Lorg/apache/cordova/FileTransfer;->getInputStream(Ljava/net/URLConnection;)Lorg/apache/cordova/FileTransfer$TrackingInputStream;
    invoke-static {v9}, Lorg/apache/cordova/FileTransfer;->access$400(Ljava/net/URLConnection;)Lorg/apache/cordova/FileTransfer$TrackingInputStream;

    move-result-object v15

    .line 448
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$1;->val$context:Lorg/apache/cordova/FileTransfer$RequestContext;

    move-object/from16 v36, v0

    monitor-enter v36
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    .line 449
    :try_start_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$1;->val$context:Lorg/apache/cordova/FileTransfer$RequestContext;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-boolean v0, v0, Lorg/apache/cordova/FileTransfer$RequestContext;->aborted:Z

    move/from16 v35, v0

    if-eqz v35, :cond_10

    .line 450
    monitor-exit v36
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    .line 464
    :try_start_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$1;->val$context:Lorg/apache/cordova/FileTransfer$RequestContext;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    move-object/from16 v0, v36

    move-object/from16 v1, v35

    iput-object v0, v1, Lorg/apache/cordova/FileTransfer$RequestContext;->currentInputStream:Ljava/io/InputStream;

    .line 465
    # invokes: Lorg/apache/cordova/FileTransfer;->safeClose(Ljava/io/Closeable;)V
    invoke-static {v15}, Lorg/apache/cordova/FileTransfer;->access$300(Ljava/io/Closeable;)V
    :try_end_15
    .catch Ljava/io/FileNotFoundException; {:try_start_15 .. :try_end_15} :catch_1
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_2
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_15} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_4
    .catchall {:try_start_15 .. :try_end_15} :catchall_b

    .line 494
    # getter for: Lorg/apache/cordova/FileTransfer;->activeRequests:Ljava/util/HashMap;
    invoke-static {}, Lorg/apache/cordova/FileTransfer;->access$600()Ljava/util/HashMap;

    move-result-object v36

    monitor-enter v36

    .line 495
    :try_start_16
    # getter for: Lorg/apache/cordova/FileTransfer;->activeRequests:Ljava/util/HashMap;
    invoke-static {}, Lorg/apache/cordova/FileTransfer;->access$600()Ljava/util/HashMap;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$1;->val$objectId:Ljava/lang/String;

    move-object/from16 v37, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    monitor-exit v36
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    .line 498
    if-eqz v9, :cond_0

    .line 501
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/cordova/FileTransfer$1;->val$trustEveryone:Z

    move/from16 v35, v0

    if-eqz v35, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/cordova/FileTransfer$1;->val$useHttps:Z

    move/from16 v35, v0

    if-eqz v35, :cond_0

    move-object v14, v9

    .line 502
    check-cast v14, Ljavax/net/ssl/HttpsURLConnection;

    .line 503
    .restart local v14    # "https":Ljavax/net/ssl/HttpsURLConnection;
    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 504
    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    goto/16 :goto_0

    .line 496
    .end local v14    # "https":Ljavax/net/ssl/HttpsURLConnection;
    :catchall_3
    move-exception v35

    :try_start_17
    monitor-exit v36
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_3

    throw v35

    .line 452
    :cond_10
    :try_start_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$1;->val$context:Lorg/apache/cordova/FileTransfer$RequestContext;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iput-object v15, v0, Lorg/apache/cordova/FileTransfer$RequestContext;->currentInputStream:Ljava/io/InputStream;

    .line 453
    monitor-exit v36
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_5

    .line 455
    :try_start_19
    new-instance v20, Ljava/io/ByteArrayOutputStream;

    const/16 v35, 0x400

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v36

    invoke-static/range {v35 .. v36}, Ljava/lang/Math;->max(II)I

    move-result v35

    move-object/from16 v0, v20

    move/from16 v1, v35

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 456
    .local v20, "out":Ljava/io/ByteArrayOutputStream;
    const/16 v35, 0x400

    move/from16 v0, v35

    new-array v5, v0, [B

    .line 457
    const/4 v8, 0x0

    .line 459
    :goto_6
    invoke-virtual {v15, v5}, Lorg/apache/cordova/FileTransfer$TrackingInputStream;->read([B)I

    move-result v8

    if-lez v8, :cond_11

    .line 460
    const/16 v35, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v35

    invoke-virtual {v0, v5, v1, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_4

    goto :goto_6

    .line 464
    .end local v20    # "out":Ljava/io/ByteArrayOutputStream;
    :catchall_4
    move-exception v35

    :try_start_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$1;->val$context:Lorg/apache/cordova/FileTransfer$RequestContext;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, v36

    iput-object v0, v1, Lorg/apache/cordova/FileTransfer$RequestContext;->currentInputStream:Ljava/io/InputStream;

    .line 465
    # invokes: Lorg/apache/cordova/FileTransfer;->safeClose(Ljava/io/Closeable;)V
    invoke-static {v15}, Lorg/apache/cordova/FileTransfer;->access$300(Ljava/io/Closeable;)V

    throw v35
    :try_end_1a
    .catch Ljava/io/FileNotFoundException; {:try_start_1a .. :try_end_1a} :catch_1
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_2
    .catch Lorg/json/JSONException; {:try_start_1a .. :try_end_1a} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_4
    .catchall {:try_start_1a .. :try_end_1a} :catchall_b

    .line 485
    .end local v3    # "beforeData":Ljava/lang/StringBuilder;
    .end local v4    # "beforeDataBytes":[B
    .end local v5    # "buffer":[B
    .end local v6    # "bufferSize":I
    .end local v7    # "bytesAvailable":I
    .end local v8    # "bytesRead":I
    .end local v10    # "cookie":Ljava/lang/String;
    .end local v15    # "inStream":Lorg/apache/cordova/FileTransfer$TrackingInputStream;
    .end local v21    # "prevBytesRead":J
    .end local v23    # "progress":Lorg/apache/cordova/FileProgressResult;
    .end local v25    # "readResult":Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;
    .end local v26    # "responseCode":I
    .end local v28    # "result":Lorg/apache/cordova/FileUploadResult;
    .end local v29    # "sendStream":Ljava/io/OutputStream;
    .end local v30    # "stringLength":I
    .end local v32    # "tailParamsBytes":[B
    .end local v34    # "useChunkedMode":Z
    :catch_3
    move-exception v11

    .line 486
    .local v11, "e":Lorg/json/JSONException;
    :try_start_1b
    const-string v35, "FileTransfer"

    invoke-virtual {v11}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-static {v0, v1, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 487
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$1;->val$context:Lorg/apache/cordova/FileTransfer$RequestContext;

    move-object/from16 v35, v0

    new-instance v36, Lorg/apache/cordova/api/PluginResult;

    sget-object v37, Lorg/apache/cordova/api/PluginResult$Status;->JSON_EXCEPTION:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-direct/range {v36 .. v37}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;)V

    invoke-virtual/range {v35 .. v36}, Lorg/apache/cordova/FileTransfer$RequestContext;->sendPluginResult(Lorg/apache/cordova/api/PluginResult;)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_b

    .line 494
    # getter for: Lorg/apache/cordova/FileTransfer;->activeRequests:Ljava/util/HashMap;
    invoke-static {}, Lorg/apache/cordova/FileTransfer;->access$600()Ljava/util/HashMap;

    move-result-object v36

    monitor-enter v36

    .line 495
    :try_start_1c
    # getter for: Lorg/apache/cordova/FileTransfer;->activeRequests:Ljava/util/HashMap;
    invoke-static {}, Lorg/apache/cordova/FileTransfer;->access$600()Ljava/util/HashMap;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$1;->val$objectId:Ljava/lang/String;

    move-object/from16 v37, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    monitor-exit v36
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_9

    .line 498
    if-eqz v9, :cond_0

    .line 501
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/cordova/FileTransfer$1;->val$trustEveryone:Z

    move/from16 v35, v0

    if-eqz v35, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/cordova/FileTransfer$1;->val$useHttps:Z

    move/from16 v35, v0

    if-eqz v35, :cond_0

    move-object v14, v9

    .line 502
    check-cast v14, Ljavax/net/ssl/HttpsURLConnection;

    .line 503
    .restart local v14    # "https":Ljavax/net/ssl/HttpsURLConnection;
    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 504
    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    goto/16 :goto_0

    .line 453
    .end local v11    # "e":Lorg/json/JSONException;
    .end local v14    # "https":Ljavax/net/ssl/HttpsURLConnection;
    .restart local v3    # "beforeData":Ljava/lang/StringBuilder;
    .restart local v4    # "beforeDataBytes":[B
    .restart local v5    # "buffer":[B
    .restart local v6    # "bufferSize":I
    .restart local v7    # "bytesAvailable":I
    .restart local v8    # "bytesRead":I
    .restart local v10    # "cookie":Ljava/lang/String;
    .restart local v15    # "inStream":Lorg/apache/cordova/FileTransfer$TrackingInputStream;
    .restart local v21    # "prevBytesRead":J
    .restart local v23    # "progress":Lorg/apache/cordova/FileProgressResult;
    .restart local v25    # "readResult":Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;
    .restart local v26    # "responseCode":I
    .restart local v28    # "result":Lorg/apache/cordova/FileUploadResult;
    .restart local v29    # "sendStream":Ljava/io/OutputStream;
    .restart local v30    # "stringLength":I
    .restart local v32    # "tailParamsBytes":[B
    .restart local v34    # "useChunkedMode":Z
    :catchall_5
    move-exception v35

    :try_start_1d
    monitor-exit v36
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_5

    :try_start_1e
    throw v35

    .line 462
    .restart local v20    # "out":Ljava/io/ByteArrayOutputStream;
    :cond_11
    const-string v35, "UTF-8"

    move-object/from16 v0, v20

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_4

    move-result-object v27

    .line 464
    .local v27, "responseString":Ljava/lang/String;
    :try_start_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$1;->val$context:Lorg/apache/cordova/FileTransfer$RequestContext;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    move-object/from16 v0, v36

    move-object/from16 v1, v35

    iput-object v0, v1, Lorg/apache/cordova/FileTransfer$RequestContext;->currentInputStream:Ljava/io/InputStream;

    .line 465
    # invokes: Lorg/apache/cordova/FileTransfer;->safeClose(Ljava/io/Closeable;)V
    invoke-static {v15}, Lorg/apache/cordova/FileTransfer;->access$300(Ljava/io/Closeable;)V

    .line 468
    const-string v35, "FileTransfer"

    const-string v36, "got response from server"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    const-string v35, "FileTransfer"

    const/16 v36, 0x0

    const/16 v37, 0x100

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v38

    invoke-static/range {v37 .. v38}, Ljava/lang/Math;->min(II)I

    move-result v37

    move-object/from16 v0, v27

    move/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    move-object/from16 v0, v28

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/apache/cordova/FileUploadResult;->setResponseCode(I)V

    .line 473
    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/apache/cordova/FileUploadResult;->setResponse(Ljava/lang/String;)V

    .line 475
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$1;->val$context:Lorg/apache/cordova/FileTransfer$RequestContext;

    move-object/from16 v35, v0

    new-instance v36, Lorg/apache/cordova/api/PluginResult;

    sget-object v37, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-virtual/range {v28 .. v28}, Lorg/apache/cordova/FileUploadResult;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v38

    invoke-direct/range {v36 .. v38}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONObject;)V

    invoke-virtual/range {v35 .. v36}, Lorg/apache/cordova/FileTransfer$RequestContext;->sendPluginResult(Lorg/apache/cordova/api/PluginResult;)V
    :try_end_1f
    .catch Ljava/io/FileNotFoundException; {:try_start_1f .. :try_end_1f} :catch_1
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_2
    .catch Lorg/json/JSONException; {:try_start_1f .. :try_end_1f} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_4
    .catchall {:try_start_1f .. :try_end_1f} :catchall_b

    .line 494
    # getter for: Lorg/apache/cordova/FileTransfer;->activeRequests:Ljava/util/HashMap;
    invoke-static {}, Lorg/apache/cordova/FileTransfer;->access$600()Ljava/util/HashMap;

    move-result-object v36

    monitor-enter v36

    .line 495
    :try_start_20
    # getter for: Lorg/apache/cordova/FileTransfer;->activeRequests:Ljava/util/HashMap;
    invoke-static {}, Lorg/apache/cordova/FileTransfer;->access$600()Ljava/util/HashMap;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$1;->val$objectId:Ljava/lang/String;

    move-object/from16 v37, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    monitor-exit v36
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_6

    .line 498
    if-eqz v9, :cond_0

    .line 501
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/cordova/FileTransfer$1;->val$trustEveryone:Z

    move/from16 v35, v0

    if-eqz v35, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/cordova/FileTransfer$1;->val$useHttps:Z

    move/from16 v35, v0

    if-eqz v35, :cond_0

    move-object v14, v9

    .line 502
    check-cast v14, Ljavax/net/ssl/HttpsURLConnection;

    .line 503
    .restart local v14    # "https":Ljavax/net/ssl/HttpsURLConnection;
    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 504
    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    goto/16 :goto_0

    .line 496
    .end local v14    # "https":Ljavax/net/ssl/HttpsURLConnection;
    :catchall_6
    move-exception v35

    :try_start_21
    monitor-exit v36
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_6

    throw v35

    .end local v3    # "beforeData":Ljava/lang/StringBuilder;
    .end local v4    # "beforeDataBytes":[B
    .end local v5    # "buffer":[B
    .end local v6    # "bufferSize":I
    .end local v7    # "bytesAvailable":I
    .end local v8    # "bytesRead":I
    .end local v10    # "cookie":Ljava/lang/String;
    .end local v15    # "inStream":Lorg/apache/cordova/FileTransfer$TrackingInputStream;
    .end local v20    # "out":Ljava/io/ByteArrayOutputStream;
    .end local v21    # "prevBytesRead":J
    .end local v23    # "progress":Lorg/apache/cordova/FileProgressResult;
    .end local v25    # "readResult":Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;
    .end local v26    # "responseCode":I
    .end local v27    # "responseString":Ljava/lang/String;
    .end local v28    # "result":Lorg/apache/cordova/FileUploadResult;
    .end local v29    # "sendStream":Ljava/io/OutputStream;
    .end local v30    # "stringLength":I
    .end local v32    # "tailParamsBytes":[B
    .end local v34    # "useChunkedMode":Z
    .local v11, "e":Ljava/io/FileNotFoundException;
    .restart local v12    # "error":Lorg/json/JSONObject;
    :catchall_7
    move-exception v35

    :try_start_22
    monitor-exit v36
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_7

    throw v35

    .local v11, "e":Ljava/io/IOException;
    :catchall_8
    move-exception v35

    :try_start_23
    monitor-exit v36
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_8

    throw v35

    .end local v12    # "error":Lorg/json/JSONObject;
    .local v11, "e":Lorg/json/JSONException;
    :catchall_9
    move-exception v35

    :try_start_24
    monitor-exit v36
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_9

    throw v35

    .line 488
    .end local v11    # "e":Lorg/json/JSONException;
    :catch_4
    move-exception v31

    .line 490
    .local v31, "t":Ljava/lang/Throwable;
    :try_start_25
    sget v35, Lorg/apache/cordova/FileTransfer;->CONNECTION_ERR:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$1;->val$source:Ljava/lang/String;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$1;->val$target:Ljava/lang/String;

    move-object/from16 v37, v0

    move/from16 v0, v35

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    # invokes: Lorg/apache/cordova/FileTransfer;->createFileTransferError(ILjava/lang/String;Ljava/lang/String;Ljava/net/URLConnection;)Lorg/json/JSONObject;
    invoke-static {v0, v1, v2, v9}, Lorg/apache/cordova/FileTransfer;->access$500(ILjava/lang/String;Ljava/lang/String;Ljava/net/URLConnection;)Lorg/json/JSONObject;

    move-result-object v12

    .line 491
    .restart local v12    # "error":Lorg/json/JSONObject;
    const-string v35, "FileTransfer"

    invoke-virtual {v12}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    move-object/from16 v2, v31

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 492
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$1;->val$context:Lorg/apache/cordova/FileTransfer$RequestContext;

    move-object/from16 v35, v0

    new-instance v36, Lorg/apache/cordova/api/PluginResult;

    sget-object v37, Lorg/apache/cordova/api/PluginResult$Status;->IO_EXCEPTION:Lorg/apache/cordova/api/PluginResult$Status;

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    invoke-direct {v0, v1, v12}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONObject;)V

    invoke-virtual/range {v35 .. v36}, Lorg/apache/cordova/FileTransfer$RequestContext;->sendPluginResult(Lorg/apache/cordova/api/PluginResult;)V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_b

    .line 494
    # getter for: Lorg/apache/cordova/FileTransfer;->activeRequests:Ljava/util/HashMap;
    invoke-static {}, Lorg/apache/cordova/FileTransfer;->access$600()Ljava/util/HashMap;

    move-result-object v36

    monitor-enter v36

    .line 495
    :try_start_26
    # getter for: Lorg/apache/cordova/FileTransfer;->activeRequests:Ljava/util/HashMap;
    invoke-static {}, Lorg/apache/cordova/FileTransfer;->access$600()Ljava/util/HashMap;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$1;->val$objectId:Ljava/lang/String;

    move-object/from16 v37, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    monitor-exit v36
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_a

    .line 498
    if-eqz v9, :cond_0

    .line 501
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/cordova/FileTransfer$1;->val$trustEveryone:Z

    move/from16 v35, v0

    if-eqz v35, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/cordova/FileTransfer$1;->val$useHttps:Z

    move/from16 v35, v0

    if-eqz v35, :cond_0

    move-object v14, v9

    .line 502
    check-cast v14, Ljavax/net/ssl/HttpsURLConnection;

    .line 503
    .restart local v14    # "https":Ljavax/net/ssl/HttpsURLConnection;
    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 504
    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    goto/16 :goto_0

    .line 496
    .end local v14    # "https":Ljavax/net/ssl/HttpsURLConnection;
    :catchall_a
    move-exception v35

    :try_start_27
    monitor-exit v36
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_a

    throw v35

    .line 494
    .end local v12    # "error":Lorg/json/JSONObject;
    .end local v31    # "t":Ljava/lang/Throwable;
    :catchall_b
    move-exception v35

    # getter for: Lorg/apache/cordova/FileTransfer;->activeRequests:Ljava/util/HashMap;
    invoke-static {}, Lorg/apache/cordova/FileTransfer;->access$600()Ljava/util/HashMap;

    move-result-object v36

    monitor-enter v36

    .line 495
    :try_start_28
    # getter for: Lorg/apache/cordova/FileTransfer;->activeRequests:Ljava/util/HashMap;
    invoke-static {}, Lorg/apache/cordova/FileTransfer;->access$600()Ljava/util/HashMap;

    move-result-object v37

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$1;->val$objectId:Ljava/lang/String;

    move-object/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    monitor-exit v36
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_c

    .line 498
    if-eqz v9, :cond_12

    .line 501
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/cordova/FileTransfer$1;->val$trustEveryone:Z

    move/from16 v36, v0

    if-eqz v36, :cond_12

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/cordova/FileTransfer$1;->val$useHttps:Z

    move/from16 v36, v0

    if-eqz v36, :cond_12

    move-object v14, v9

    .line 502
    check-cast v14, Ljavax/net/ssl/HttpsURLConnection;

    .line 503
    .restart local v14    # "https":Ljavax/net/ssl/HttpsURLConnection;
    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 504
    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 505
    .end local v14    # "https":Ljavax/net/ssl/HttpsURLConnection;
    :cond_12
    throw v35

    .line 496
    :catchall_c
    move-exception v35

    :try_start_29
    monitor-exit v36
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_c

    throw v35
.end method
