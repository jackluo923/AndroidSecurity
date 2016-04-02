.class Lorg/apache/cordova/FileTransfer$4;
.super Ljava/lang/Object;
.source "FileTransfer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/FileTransfer;->download(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/api/CallbackContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/cordova/FileTransfer;

.field final synthetic val$context:Lorg/apache/cordova/FileTransfer$RequestContext;

.field final synthetic val$headers:Lorg/json/JSONObject;

.field final synthetic val$isLocalTransfer:Z

.field final synthetic val$objectId:Ljava/lang/String;

.field final synthetic val$resourceApi:Lorg/apache/cordova/CordovaResourceApi;

.field final synthetic val$source:Ljava/lang/String;

.field final synthetic val$sourceUri:Landroid/net/Uri;

.field final synthetic val$target:Ljava/lang/String;

.field final synthetic val$targetUri:Landroid/net/Uri;

.field final synthetic val$trustEveryone:Z

.field final synthetic val$useHttps:Z


# direct methods
.method constructor <init>(Lorg/apache/cordova/FileTransfer;Lorg/apache/cordova/FileTransfer$RequestContext;Lorg/apache/cordova/CordovaResourceApi;Landroid/net/Uri;Landroid/net/Uri;ZZZLorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 694
    iput-object p1, p0, Lorg/apache/cordova/FileTransfer$4;->this$0:Lorg/apache/cordova/FileTransfer;

    iput-object p2, p0, Lorg/apache/cordova/FileTransfer$4;->val$context:Lorg/apache/cordova/FileTransfer$RequestContext;

    iput-object p3, p0, Lorg/apache/cordova/FileTransfer$4;->val$resourceApi:Lorg/apache/cordova/CordovaResourceApi;

    iput-object p4, p0, Lorg/apache/cordova/FileTransfer$4;->val$targetUri:Landroid/net/Uri;

    iput-object p5, p0, Lorg/apache/cordova/FileTransfer$4;->val$sourceUri:Landroid/net/Uri;

    iput-boolean p6, p0, Lorg/apache/cordova/FileTransfer$4;->val$isLocalTransfer:Z

    iput-boolean p7, p0, Lorg/apache/cordova/FileTransfer$4;->val$useHttps:Z

    iput-boolean p8, p0, Lorg/apache/cordova/FileTransfer$4;->val$trustEveryone:Z

    iput-object p9, p0, Lorg/apache/cordova/FileTransfer$4;->val$headers:Lorg/json/JSONObject;

    iput-object p10, p0, Lorg/apache/cordova/FileTransfer$4;->val$target:Ljava/lang/String;

    iput-object p11, p0, Lorg/apache/cordova/FileTransfer$4;->val$source:Ljava/lang/String;

    iput-object p12, p0, Lorg/apache/cordova/FileTransfer$4;->val$objectId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 27

    .prologue
    .line 696
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$context:Lorg/apache/cordova/FileTransfer$RequestContext;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-boolean v0, v0, Lorg/apache/cordova/FileTransfer$RequestContext;->aborted:Z

    move/from16 v22, v0

    if-eqz v22, :cond_0

    .line 837
    :goto_0
    return-void

    .line 699
    :cond_0
    const/4 v5, 0x0

    .line 700
    .local v5, "connection":Ljava/net/HttpURLConnection;
    const/4 v14, 0x0

    .line 701
    .local v14, "oldHostnameVerifier":Ljavax/net/ssl/HostnameVerifier;
    const/4 v15, 0x0

    .line 702
    .local v15, "oldSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    const/4 v9, 0x0

    .line 703
    .local v9, "file":Ljava/io/File;
    const/16 v20, 0x0

    .line 704
    .local v20, "result":Lorg/apache/cordova/api/PluginResult;
    const/4 v12, 0x0

    .line 706
    .local v12, "inputStream":Lorg/apache/cordova/FileTransfer$TrackingInputStream;
    const/16 v16, 0x0

    .line 708
    .local v16, "outputStream":Ljava/io/OutputStream;
    const/16 v19, 0x0

    .line 709
    .local v19, "readResult":Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$resourceApi:Lorg/apache/cordova/CordovaResourceApi;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$targetUri:Landroid/net/Uri;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lorg/apache/cordova/CordovaResourceApi;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v16

    .line 711
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$resourceApi:Lorg/apache/cordova/CordovaResourceApi;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$targetUri:Landroid/net/Uri;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lorg/apache/cordova/CordovaResourceApi;->mapUriToFile(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v9

    .line 712
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$context:Lorg/apache/cordova/FileTransfer$RequestContext;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iput-object v9, v0, Lorg/apache/cordova/FileTransfer$RequestContext;->targetFile:Ljava/io/File;

    .line 714
    const-string v22, "FileTransfer"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Download file:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$sourceUri:Landroid/net/Uri;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    new-instance v17, Lorg/apache/cordova/FileProgressResult;

    invoke-direct/range {v17 .. v17}, Lorg/apache/cordova/FileProgressResult;-><init>()V

    .line 718
    .local v17, "progress":Lorg/apache/cordova/FileProgressResult;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$isLocalTransfer:Z

    move/from16 v22, v0

    if-eqz v22, :cond_5

    .line 719
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$resourceApi:Lorg/apache/cordova/CordovaResourceApi;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$sourceUri:Landroid/net/Uri;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lorg/apache/cordova/CordovaResourceApi;->openForRead(Landroid/net/Uri;)Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;

    move-result-object v19

    .line 720
    move-object/from16 v0, v19

    iget-wide v0, v0, Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;->length:J

    move-wide/from16 v22, v0

    const-wide/16 v24, -0x1

    cmp-long v22, v22, v24

    if-eqz v22, :cond_1

    .line 721
    const/16 v22, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/apache/cordova/FileProgressResult;->setLengthComputable(Z)V

    .line 722
    move-object/from16 v0, v19

    iget-wide v0, v0, Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;->length:J

    move-wide/from16 v22, v0

    move-object/from16 v0, v17

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/FileProgressResult;->setTotal(J)V

    .line 724
    :cond_1
    new-instance v13, Lorg/apache/cordova/FileTransfer$SimpleTrackingInputStream;

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;->inputStream:Ljava/io/InputStream;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-direct {v13, v0}, Lorg/apache/cordova/FileTransfer$SimpleTrackingInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .end local v12    # "inputStream":Lorg/apache/cordova/FileTransfer$TrackingInputStream;
    .local v13, "inputStream":Lorg/apache/cordova/FileTransfer$TrackingInputStream;
    move-object v12, v13

    .line 768
    .end local v13    # "inputStream":Lorg/apache/cordova/FileTransfer$TrackingInputStream;
    .restart local v12    # "inputStream":Lorg/apache/cordova/FileTransfer$TrackingInputStream;
    :goto_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$context:Lorg/apache/cordova/FileTransfer$RequestContext;

    move-object/from16 v23, v0

    monitor-enter v23
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 769
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$context:Lorg/apache/cordova/FileTransfer$RequestContext;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-boolean v0, v0, Lorg/apache/cordova/FileTransfer$RequestContext;->aborted:Z

    move/from16 v22, v0

    if-eqz v22, :cond_b

    .line 770
    monitor-exit v23
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 787
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$context:Lorg/apache/cordova/FileTransfer$RequestContext;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Lorg/apache/cordova/FileTransfer$RequestContext;->currentInputStream:Ljava/io/InputStream;

    .line 788
    # invokes: Lorg/apache/cordova/FileTransfer;->safeClose(Ljava/io/Closeable;)V
    invoke-static {v12}, Lorg/apache/cordova/FileTransfer;->access$300(Ljava/io/Closeable;)V

    .line 789
    # invokes: Lorg/apache/cordova/FileTransfer;->safeClose(Ljava/io/Closeable;)V
    invoke-static/range {v16 .. v16}, Lorg/apache/cordova/FileTransfer;->access$300(Ljava/io/Closeable;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 814
    # invokes: Lorg/apache/cordova/FileTransfer;->safeClose(Ljava/io/Closeable;)V
    invoke-static/range {v16 .. v16}, Lorg/apache/cordova/FileTransfer;->access$300(Ljava/io/Closeable;)V

    .line 815
    # getter for: Lorg/apache/cordova/FileTransfer;->activeRequests:Ljava/util/HashMap;
    invoke-static {}, Lorg/apache/cordova/FileTransfer;->access$600()Ljava/util/HashMap;

    move-result-object v23

    monitor-enter v23

    .line 816
    :try_start_4
    # getter for: Lorg/apache/cordova/FileTransfer;->activeRequests:Ljava/util/HashMap;
    invoke-static {}, Lorg/apache/cordova/FileTransfer;->access$600()Ljava/util/HashMap;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$objectId:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 817
    monitor-exit v23
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_8

    .line 819
    if-eqz v5, :cond_2

    .line 821
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$trustEveryone:Z

    move/from16 v22, v0

    if-eqz v22, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$useHttps:Z

    move/from16 v22, v0

    if-eqz v22, :cond_2

    move-object v11, v5

    .line 822
    check-cast v11, Ljavax/net/ssl/HttpsURLConnection;

    .line 823
    .local v11, "https":Ljavax/net/ssl/HttpsURLConnection;
    invoke-virtual {v11, v14}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 824
    invoke-virtual {v11, v15}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 828
    .end local v11    # "https":Ljavax/net/ssl/HttpsURLConnection;
    :cond_2
    if-nez v20, :cond_3

    .line 829
    new-instance v20, Lorg/apache/cordova/api/PluginResult;

    .end local v20    # "result":Lorg/apache/cordova/api/PluginResult;
    sget-object v22, Lorg/apache/cordova/api/PluginResult$Status;->ERROR:Lorg/apache/cordova/api/PluginResult$Status;

    sget v23, Lorg/apache/cordova/FileTransfer;->CONNECTION_ERR:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$source:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$target:Ljava/lang/String;

    move-object/from16 v25, v0

    move/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    # invokes: Lorg/apache/cordova/FileTransfer;->createFileTransferError(ILjava/lang/String;Ljava/lang/String;Ljava/net/URLConnection;)Lorg/json/JSONObject;
    invoke-static {v0, v1, v2, v5}, Lorg/apache/cordova/FileTransfer;->access$500(ILjava/lang/String;Ljava/lang/String;Ljava/net/URLConnection;)Lorg/json/JSONObject;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONObject;)V

    .line 832
    .restart local v20    # "result":Lorg/apache/cordova/api/PluginResult;
    :cond_3
    invoke-virtual/range {v20 .. v20}, Lorg/apache/cordova/api/PluginResult;->getStatus()I

    move-result v22

    sget-object v23, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-virtual/range {v23 .. v23}, Lorg/apache/cordova/api/PluginResult$Status;->ordinal()I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_4

    if-eqz v9, :cond_4

    .line 833
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 835
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$context:Lorg/apache/cordova/FileTransfer$RequestContext;

    move-object/from16 v22, v0

    .end local v17    # "progress":Lorg/apache/cordova/FileProgressResult;
    :goto_2
    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/apache/cordova/FileTransfer$RequestContext;->sendPluginResult(Lorg/apache/cordova/api/PluginResult;)V

    goto/16 :goto_0

    .line 728
    .restart local v17    # "progress":Lorg/apache/cordova/FileProgressResult;
    :cond_5
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$resourceApi:Lorg/apache/cordova/CordovaResourceApi;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$sourceUri:Landroid/net/Uri;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lorg/apache/cordova/CordovaResourceApi;->createHttpConnection(Landroid/net/Uri;)Ljava/net/HttpURLConnection;

    move-result-object v5

    .line 729
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$useHttps:Z

    move/from16 v22, v0

    if-eqz v22, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$trustEveryone:Z

    move/from16 v22, v0

    if-eqz v22, :cond_6

    .line 731
    move-object v0, v5

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v11, v0

    .line 732
    .restart local v11    # "https":Ljavax/net/ssl/HttpsURLConnection;
    # invokes: Lorg/apache/cordova/FileTransfer;->trustAllHosts(Ljavax/net/ssl/HttpsURLConnection;)Ljavax/net/ssl/SSLSocketFactory;
    invoke-static {v11}, Lorg/apache/cordova/FileTransfer;->access$000(Ljavax/net/ssl/HttpsURLConnection;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v15

    .line 734
    invoke-virtual {v11}, Ljavax/net/ssl/HttpsURLConnection;->getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v14

    .line 736
    # getter for: Lorg/apache/cordova/FileTransfer;->DO_NOT_VERIFY:Ljavax/net/ssl/HostnameVerifier;
    invoke-static {}, Lorg/apache/cordova/FileTransfer;->access$100()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 739
    .end local v11    # "https":Ljavax/net/ssl/HttpsURLConnection;
    :cond_6
    const-string v22, "GET"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 742
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$sourceUri:Landroid/net/Uri;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 743
    .local v6, "cookie":Ljava/lang/String;
    if-eqz v6, :cond_7

    .line 745
    const-string v22, "cookie"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    :cond_7
    const-string v22, "Accept-Encoding"

    const-string v23, "gzip"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v5, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$headers:Lorg/json/JSONObject;

    move-object/from16 v22, v0

    if-eqz v22, :cond_8

    .line 753
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$headers:Lorg/json/JSONObject;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    # invokes: Lorg/apache/cordova/FileTransfer;->addHeadersToRequest(Ljava/net/URLConnection;Lorg/json/JSONObject;)V
    invoke-static {v5, v0}, Lorg/apache/cordova/FileTransfer;->access$200(Ljava/net/URLConnection;Lorg/json/JSONObject;)V

    .line 756
    :cond_8
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->connect()V

    .line 758
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_9

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v22

    const-string v23, "gzip"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_a

    .line 761
    :cond_9
    const/16 v22, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/apache/cordova/FileProgressResult;->setLengthComputable(Z)V

    .line 762
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v22

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, v17

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/FileProgressResult;->setTotal(J)V

    .line 764
    :cond_a
    # invokes: Lorg/apache/cordova/FileTransfer;->getInputStream(Ljava/net/URLConnection;)Lorg/apache/cordova/FileTransfer$TrackingInputStream;
    invoke-static {v5}, Lorg/apache/cordova/FileTransfer;->access$400(Ljava/net/URLConnection;)Lorg/apache/cordova/FileTransfer$TrackingInputStream;
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result-object v12

    goto/16 :goto_1

    .line 772
    .end local v6    # "cookie":Ljava/lang/String;
    :cond_b
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$context:Lorg/apache/cordova/FileTransfer$RequestContext;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iput-object v12, v0, Lorg/apache/cordova/FileTransfer$RequestContext;->currentInputStream:Ljava/io/InputStream;

    .line 773
    monitor-exit v23
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 776
    const/16 v22, 0x4000

    :try_start_7
    move/from16 v0, v22

    new-array v3, v0, [B

    .line 777
    .local v3, "buffer":[B
    const/4 v4, 0x0

    .line 778
    .local v4, "bytesRead":I
    :goto_3
    invoke-virtual {v12, v3}, Lorg/apache/cordova/FileTransfer$TrackingInputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_e

    .line 779
    const/16 v22, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v3, v1, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 781
    invoke-virtual {v12}, Lorg/apache/cordova/FileTransfer$TrackingInputStream;->getTotalRawBytesRead()J

    move-result-wide v22

    move-object/from16 v0, v17

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/FileProgressResult;->setLoaded(J)V

    .line 782
    new-instance v18, Lorg/apache/cordova/api/PluginResult;

    sget-object v22, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-virtual/range {v17 .. v17}, Lorg/apache/cordova/FileProgressResult;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v23

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONObject;)V

    .line 783
    .local v18, "progressResult":Lorg/apache/cordova/api/PluginResult;
    const/16 v22, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/apache/cordova/api/PluginResult;->setKeepCallback(Z)V

    .line 784
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$context:Lorg/apache/cordova/FileTransfer$RequestContext;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/apache/cordova/FileTransfer$RequestContext;->sendPluginResult(Lorg/apache/cordova/api/PluginResult;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_3

    .line 787
    .end local v3    # "buffer":[B
    .end local v4    # "bytesRead":I
    .end local v18    # "progressResult":Lorg/apache/cordova/api/PluginResult;
    :catchall_0
    move-exception v22

    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$context:Lorg/apache/cordova/FileTransfer$RequestContext;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lorg/apache/cordova/FileTransfer$RequestContext;->currentInputStream:Ljava/io/InputStream;

    .line 788
    # invokes: Lorg/apache/cordova/FileTransfer;->safeClose(Ljava/io/Closeable;)V
    invoke-static {v12}, Lorg/apache/cordova/FileTransfer;->access$300(Ljava/io/Closeable;)V

    .line 789
    # invokes: Lorg/apache/cordova/FileTransfer;->safeClose(Ljava/io/Closeable;)V
    invoke-static/range {v16 .. v16}, Lorg/apache/cordova/FileTransfer;->access$300(Ljava/io/Closeable;)V

    .line 787
    throw v22
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 798
    .end local v17    # "progress":Lorg/apache/cordova/FileProgressResult;
    :catch_0
    move-exception v7

    .line 799
    .local v7, "e":Ljava/io/FileNotFoundException;
    :try_start_9
    sget v22, Lorg/apache/cordova/FileTransfer;->FILE_NOT_FOUND_ERR:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$source:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$target:Ljava/lang/String;

    move-object/from16 v24, v0

    move/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    # invokes: Lorg/apache/cordova/FileTransfer;->createFileTransferError(ILjava/lang/String;Ljava/lang/String;Ljava/net/URLConnection;)Lorg/json/JSONObject;
    invoke-static {v0, v1, v2, v5}, Lorg/apache/cordova/FileTransfer;->access$500(ILjava/lang/String;Ljava/lang/String;Ljava/net/URLConnection;)Lorg/json/JSONObject;

    move-result-object v8

    .line 800
    .local v8, "error":Lorg/json/JSONObject;
    const-string v22, "FileTransfer"

    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 801
    new-instance v21, Lorg/apache/cordova/api/PluginResult;

    sget-object v22, Lorg/apache/cordova/api/PluginResult$Status;->IO_EXCEPTION:Lorg/apache/cordova/api/PluginResult$Status;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v8}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONObject;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 814
    .end local v20    # "result":Lorg/apache/cordova/api/PluginResult;
    .local v21, "result":Lorg/apache/cordova/api/PluginResult;
    # invokes: Lorg/apache/cordova/FileTransfer;->safeClose(Ljava/io/Closeable;)V
    invoke-static/range {v16 .. v16}, Lorg/apache/cordova/FileTransfer;->access$300(Ljava/io/Closeable;)V

    .line 815
    # getter for: Lorg/apache/cordova/FileTransfer;->activeRequests:Ljava/util/HashMap;
    invoke-static {}, Lorg/apache/cordova/FileTransfer;->access$600()Ljava/util/HashMap;

    move-result-object v23

    monitor-enter v23

    .line 816
    :try_start_a
    # getter for: Lorg/apache/cordova/FileTransfer;->activeRequests:Ljava/util/HashMap;
    invoke-static {}, Lorg/apache/cordova/FileTransfer;->access$600()Ljava/util/HashMap;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$objectId:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 817
    monitor-exit v23
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 819
    if-eqz v5, :cond_c

    .line 821
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$trustEveryone:Z

    move/from16 v22, v0

    if-eqz v22, :cond_c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$useHttps:Z

    move/from16 v22, v0

    if-eqz v22, :cond_c

    move-object v11, v5

    .line 822
    check-cast v11, Ljavax/net/ssl/HttpsURLConnection;

    .line 823
    .restart local v11    # "https":Ljavax/net/ssl/HttpsURLConnection;
    invoke-virtual {v11, v14}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 824
    invoke-virtual {v11, v15}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 828
    .end local v11    # "https":Ljavax/net/ssl/HttpsURLConnection;
    :cond_c
    if-nez v21, :cond_1e

    .line 829
    new-instance v20, Lorg/apache/cordova/api/PluginResult;

    sget-object v22, Lorg/apache/cordova/api/PluginResult$Status;->ERROR:Lorg/apache/cordova/api/PluginResult$Status;

    sget v23, Lorg/apache/cordova/FileTransfer;->CONNECTION_ERR:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$source:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$target:Ljava/lang/String;

    move-object/from16 v25, v0

    move/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    # invokes: Lorg/apache/cordova/FileTransfer;->createFileTransferError(ILjava/lang/String;Ljava/lang/String;Ljava/net/URLConnection;)Lorg/json/JSONObject;
    invoke-static {v0, v1, v2, v5}, Lorg/apache/cordova/FileTransfer;->access$500(ILjava/lang/String;Ljava/lang/String;Ljava/net/URLConnection;)Lorg/json/JSONObject;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONObject;)V

    .line 832
    .end local v21    # "result":Lorg/apache/cordova/api/PluginResult;
    .restart local v20    # "result":Lorg/apache/cordova/api/PluginResult;
    :goto_4
    invoke-virtual/range {v20 .. v20}, Lorg/apache/cordova/api/PluginResult;->getStatus()I

    move-result v22

    sget-object v23, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-virtual/range {v23 .. v23}, Lorg/apache/cordova/api/PluginResult$Status;->ordinal()I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_d

    if-eqz v9, :cond_d

    .line 833
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 835
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$context:Lorg/apache/cordova/FileTransfer$RequestContext;

    move-object/from16 v22, v0

    goto/16 :goto_2

    .line 773
    .end local v7    # "e":Ljava/io/FileNotFoundException;
    .end local v8    # "error":Lorg/json/JSONObject;
    .restart local v17    # "progress":Lorg/apache/cordova/FileProgressResult;
    :catchall_1
    move-exception v22

    :try_start_b
    monitor-exit v23
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :try_start_c
    throw v22
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 787
    .restart local v3    # "buffer":[B
    .restart local v4    # "bytesRead":I
    :cond_e
    :try_start_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$context:Lorg/apache/cordova/FileTransfer$RequestContext;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Lorg/apache/cordova/FileTransfer$RequestContext;->currentInputStream:Ljava/io/InputStream;

    .line 788
    # invokes: Lorg/apache/cordova/FileTransfer;->safeClose(Ljava/io/Closeable;)V
    invoke-static {v12}, Lorg/apache/cordova/FileTransfer;->access$300(Ljava/io/Closeable;)V

    .line 789
    # invokes: Lorg/apache/cordova/FileTransfer;->safeClose(Ljava/io/Closeable;)V
    invoke-static/range {v16 .. v16}, Lorg/apache/cordova/FileTransfer;->access$300(Ljava/io/Closeable;)V

    .line 792
    const-string v22, "FileTransfer"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Saved file: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$target:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    invoke-static {v9}, Lorg/apache/cordova/FileUtils;->getEntry(Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v10

    .line 797
    .local v10, "fileEntry":Lorg/json/JSONObject;
    new-instance v21, Lorg/apache/cordova/api/PluginResult;

    sget-object v22, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v10}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONObject;)V
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_d} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 814
    .end local v20    # "result":Lorg/apache/cordova/api/PluginResult;
    .restart local v21    # "result":Lorg/apache/cordova/api/PluginResult;
    # invokes: Lorg/apache/cordova/FileTransfer;->safeClose(Ljava/io/Closeable;)V
    invoke-static/range {v16 .. v16}, Lorg/apache/cordova/FileTransfer;->access$300(Ljava/io/Closeable;)V

    .line 815
    # getter for: Lorg/apache/cordova/FileTransfer;->activeRequests:Ljava/util/HashMap;
    invoke-static {}, Lorg/apache/cordova/FileTransfer;->access$600()Ljava/util/HashMap;

    move-result-object v23

    monitor-enter v23

    .line 816
    :try_start_e
    # getter for: Lorg/apache/cordova/FileTransfer;->activeRequests:Ljava/util/HashMap;
    invoke-static {}, Lorg/apache/cordova/FileTransfer;->access$600()Ljava/util/HashMap;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$objectId:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 817
    monitor-exit v23
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_9

    .line 819
    if-eqz v5, :cond_f

    .line 821
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$trustEveryone:Z

    move/from16 v22, v0

    if-eqz v22, :cond_f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$useHttps:Z

    move/from16 v22, v0

    if-eqz v22, :cond_f

    move-object v11, v5

    .line 822
    check-cast v11, Ljavax/net/ssl/HttpsURLConnection;

    .line 823
    .restart local v11    # "https":Ljavax/net/ssl/HttpsURLConnection;
    invoke-virtual {v11, v14}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 824
    invoke-virtual {v11, v15}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 828
    .end local v11    # "https":Ljavax/net/ssl/HttpsURLConnection;
    :cond_f
    if-nez v21, :cond_1a

    .line 829
    new-instance v20, Lorg/apache/cordova/api/PluginResult;

    sget-object v22, Lorg/apache/cordova/api/PluginResult$Status;->ERROR:Lorg/apache/cordova/api/PluginResult$Status;

    sget v23, Lorg/apache/cordova/FileTransfer;->CONNECTION_ERR:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$source:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$target:Ljava/lang/String;

    move-object/from16 v25, v0

    move/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    # invokes: Lorg/apache/cordova/FileTransfer;->createFileTransferError(ILjava/lang/String;Ljava/lang/String;Ljava/net/URLConnection;)Lorg/json/JSONObject;
    invoke-static {v0, v1, v2, v5}, Lorg/apache/cordova/FileTransfer;->access$500(ILjava/lang/String;Ljava/lang/String;Ljava/net/URLConnection;)Lorg/json/JSONObject;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONObject;)V

    .line 832
    .end local v21    # "result":Lorg/apache/cordova/api/PluginResult;
    .restart local v20    # "result":Lorg/apache/cordova/api/PluginResult;
    :goto_5
    invoke-virtual/range {v20 .. v20}, Lorg/apache/cordova/api/PluginResult;->getStatus()I

    move-result v22

    sget-object v23, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-virtual/range {v23 .. v23}, Lorg/apache/cordova/api/PluginResult$Status;->ordinal()I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_10

    if-eqz v9, :cond_10

    .line 833
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 835
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$context:Lorg/apache/cordova/FileTransfer$RequestContext;

    move-object/from16 v22, v0

    goto/16 :goto_2

    .line 802
    .end local v3    # "buffer":[B
    .end local v4    # "bytesRead":I
    .end local v10    # "fileEntry":Lorg/json/JSONObject;
    .end local v17    # "progress":Lorg/apache/cordova/FileProgressResult;
    :catch_1
    move-exception v7

    .line 803
    .local v7, "e":Ljava/io/IOException;
    :try_start_f
    sget v22, Lorg/apache/cordova/FileTransfer;->CONNECTION_ERR:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$source:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$target:Ljava/lang/String;

    move-object/from16 v24, v0

    move/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    # invokes: Lorg/apache/cordova/FileTransfer;->createFileTransferError(ILjava/lang/String;Ljava/lang/String;Ljava/net/URLConnection;)Lorg/json/JSONObject;
    invoke-static {v0, v1, v2, v5}, Lorg/apache/cordova/FileTransfer;->access$500(ILjava/lang/String;Ljava/lang/String;Ljava/net/URLConnection;)Lorg/json/JSONObject;

    move-result-object v8

    .line 804
    .restart local v8    # "error":Lorg/json/JSONObject;
    const-string v22, "FileTransfer"

    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 805
    new-instance v21, Lorg/apache/cordova/api/PluginResult;

    sget-object v22, Lorg/apache/cordova/api/PluginResult$Status;->IO_EXCEPTION:Lorg/apache/cordova/api/PluginResult$Status;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v8}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONObject;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 814
    .end local v20    # "result":Lorg/apache/cordova/api/PluginResult;
    .restart local v21    # "result":Lorg/apache/cordova/api/PluginResult;
    # invokes: Lorg/apache/cordova/FileTransfer;->safeClose(Ljava/io/Closeable;)V
    invoke-static/range {v16 .. v16}, Lorg/apache/cordova/FileTransfer;->access$300(Ljava/io/Closeable;)V

    .line 815
    # getter for: Lorg/apache/cordova/FileTransfer;->activeRequests:Ljava/util/HashMap;
    invoke-static {}, Lorg/apache/cordova/FileTransfer;->access$600()Ljava/util/HashMap;

    move-result-object v23

    monitor-enter v23

    .line 816
    :try_start_10
    # getter for: Lorg/apache/cordova/FileTransfer;->activeRequests:Ljava/util/HashMap;
    invoke-static {}, Lorg/apache/cordova/FileTransfer;->access$600()Ljava/util/HashMap;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$objectId:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 817
    monitor-exit v23
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    .line 819
    if-eqz v5, :cond_11

    .line 821
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$trustEveryone:Z

    move/from16 v22, v0

    if-eqz v22, :cond_11

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$useHttps:Z

    move/from16 v22, v0

    if-eqz v22, :cond_11

    move-object v11, v5

    .line 822
    check-cast v11, Ljavax/net/ssl/HttpsURLConnection;

    .line 823
    .restart local v11    # "https":Ljavax/net/ssl/HttpsURLConnection;
    invoke-virtual {v11, v14}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 824
    invoke-virtual {v11, v15}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 828
    .end local v11    # "https":Ljavax/net/ssl/HttpsURLConnection;
    :cond_11
    if-nez v21, :cond_1d

    .line 829
    new-instance v20, Lorg/apache/cordova/api/PluginResult;

    sget-object v22, Lorg/apache/cordova/api/PluginResult$Status;->ERROR:Lorg/apache/cordova/api/PluginResult$Status;

    sget v23, Lorg/apache/cordova/FileTransfer;->CONNECTION_ERR:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$source:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$target:Ljava/lang/String;

    move-object/from16 v25, v0

    move/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    # invokes: Lorg/apache/cordova/FileTransfer;->createFileTransferError(ILjava/lang/String;Ljava/lang/String;Ljava/net/URLConnection;)Lorg/json/JSONObject;
    invoke-static {v0, v1, v2, v5}, Lorg/apache/cordova/FileTransfer;->access$500(ILjava/lang/String;Ljava/lang/String;Ljava/net/URLConnection;)Lorg/json/JSONObject;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONObject;)V

    .line 832
    .end local v21    # "result":Lorg/apache/cordova/api/PluginResult;
    .restart local v20    # "result":Lorg/apache/cordova/api/PluginResult;
    :goto_6
    invoke-virtual/range {v20 .. v20}, Lorg/apache/cordova/api/PluginResult;->getStatus()I

    move-result v22

    sget-object v23, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-virtual/range {v23 .. v23}, Lorg/apache/cordova/api/PluginResult$Status;->ordinal()I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_12

    if-eqz v9, :cond_12

    .line 833
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 835
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$context:Lorg/apache/cordova/FileTransfer$RequestContext;

    move-object/from16 v22, v0

    goto/16 :goto_2

    .line 806
    .end local v7    # "e":Ljava/io/IOException;
    .end local v8    # "error":Lorg/json/JSONObject;
    :catch_2
    move-exception v7

    .line 807
    .local v7, "e":Lorg/json/JSONException;
    :try_start_11
    const-string v22, "FileTransfer"

    invoke-virtual {v7}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 808
    new-instance v21, Lorg/apache/cordova/api/PluginResult;

    sget-object v22, Lorg/apache/cordova/api/PluginResult$Status;->JSON_EXCEPTION:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-direct/range {v21 .. v22}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    .line 814
    .end local v20    # "result":Lorg/apache/cordova/api/PluginResult;
    .restart local v21    # "result":Lorg/apache/cordova/api/PluginResult;
    # invokes: Lorg/apache/cordova/FileTransfer;->safeClose(Ljava/io/Closeable;)V
    invoke-static/range {v16 .. v16}, Lorg/apache/cordova/FileTransfer;->access$300(Ljava/io/Closeable;)V

    .line 815
    # getter for: Lorg/apache/cordova/FileTransfer;->activeRequests:Ljava/util/HashMap;
    invoke-static {}, Lorg/apache/cordova/FileTransfer;->access$600()Ljava/util/HashMap;

    move-result-object v23

    monitor-enter v23

    .line 816
    :try_start_12
    # getter for: Lorg/apache/cordova/FileTransfer;->activeRequests:Ljava/util/HashMap;
    invoke-static {}, Lorg/apache/cordova/FileTransfer;->access$600()Ljava/util/HashMap;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$objectId:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 817
    monitor-exit v23
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    .line 819
    if-eqz v5, :cond_13

    .line 821
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$trustEveryone:Z

    move/from16 v22, v0

    if-eqz v22, :cond_13

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$useHttps:Z

    move/from16 v22, v0

    if-eqz v22, :cond_13

    move-object v11, v5

    .line 822
    check-cast v11, Ljavax/net/ssl/HttpsURLConnection;

    .line 823
    .restart local v11    # "https":Ljavax/net/ssl/HttpsURLConnection;
    invoke-virtual {v11, v14}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 824
    invoke-virtual {v11, v15}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 828
    .end local v11    # "https":Ljavax/net/ssl/HttpsURLConnection;
    :cond_13
    if-nez v21, :cond_1c

    .line 829
    new-instance v20, Lorg/apache/cordova/api/PluginResult;

    sget-object v22, Lorg/apache/cordova/api/PluginResult$Status;->ERROR:Lorg/apache/cordova/api/PluginResult$Status;

    sget v23, Lorg/apache/cordova/FileTransfer;->CONNECTION_ERR:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$source:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$target:Ljava/lang/String;

    move-object/from16 v25, v0

    move/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    # invokes: Lorg/apache/cordova/FileTransfer;->createFileTransferError(ILjava/lang/String;Ljava/lang/String;Ljava/net/URLConnection;)Lorg/json/JSONObject;
    invoke-static {v0, v1, v2, v5}, Lorg/apache/cordova/FileTransfer;->access$500(ILjava/lang/String;Ljava/lang/String;Ljava/net/URLConnection;)Lorg/json/JSONObject;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONObject;)V

    .line 832
    .end local v21    # "result":Lorg/apache/cordova/api/PluginResult;
    .restart local v20    # "result":Lorg/apache/cordova/api/PluginResult;
    :goto_7
    invoke-virtual/range {v20 .. v20}, Lorg/apache/cordova/api/PluginResult;->getStatus()I

    move-result v22

    sget-object v23, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-virtual/range {v23 .. v23}, Lorg/apache/cordova/api/PluginResult$Status;->ordinal()I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_14

    if-eqz v9, :cond_14

    .line 833
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 835
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$context:Lorg/apache/cordova/FileTransfer$RequestContext;

    move-object/from16 v22, v0

    goto/16 :goto_2

    .line 809
    .end local v7    # "e":Lorg/json/JSONException;
    :catch_3
    move-exception v7

    .line 810
    .local v7, "e":Ljava/lang/Throwable;
    :try_start_13
    sget v22, Lorg/apache/cordova/FileTransfer;->CONNECTION_ERR:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$source:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$target:Ljava/lang/String;

    move-object/from16 v24, v0

    move/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    # invokes: Lorg/apache/cordova/FileTransfer;->createFileTransferError(ILjava/lang/String;Ljava/lang/String;Ljava/net/URLConnection;)Lorg/json/JSONObject;
    invoke-static {v0, v1, v2, v5}, Lorg/apache/cordova/FileTransfer;->access$500(ILjava/lang/String;Ljava/lang/String;Ljava/net/URLConnection;)Lorg/json/JSONObject;

    move-result-object v8

    .line 811
    .restart local v8    # "error":Lorg/json/JSONObject;
    const-string v22, "FileTransfer"

    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 812
    new-instance v21, Lorg/apache/cordova/api/PluginResult;

    sget-object v22, Lorg/apache/cordova/api/PluginResult$Status;->IO_EXCEPTION:Lorg/apache/cordova/api/PluginResult$Status;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v8}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONObject;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    .line 814
    .end local v20    # "result":Lorg/apache/cordova/api/PluginResult;
    .restart local v21    # "result":Lorg/apache/cordova/api/PluginResult;
    # invokes: Lorg/apache/cordova/FileTransfer;->safeClose(Ljava/io/Closeable;)V
    invoke-static/range {v16 .. v16}, Lorg/apache/cordova/FileTransfer;->access$300(Ljava/io/Closeable;)V

    .line 815
    # getter for: Lorg/apache/cordova/FileTransfer;->activeRequests:Ljava/util/HashMap;
    invoke-static {}, Lorg/apache/cordova/FileTransfer;->access$600()Ljava/util/HashMap;

    move-result-object v23

    monitor-enter v23

    .line 816
    :try_start_14
    # getter for: Lorg/apache/cordova/FileTransfer;->activeRequests:Ljava/util/HashMap;
    invoke-static {}, Lorg/apache/cordova/FileTransfer;->access$600()Ljava/util/HashMap;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$objectId:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 817
    monitor-exit v23
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    .line 819
    if-eqz v5, :cond_15

    .line 821
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$trustEveryone:Z

    move/from16 v22, v0

    if-eqz v22, :cond_15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$useHttps:Z

    move/from16 v22, v0

    if-eqz v22, :cond_15

    move-object v11, v5

    .line 822
    check-cast v11, Ljavax/net/ssl/HttpsURLConnection;

    .line 823
    .restart local v11    # "https":Ljavax/net/ssl/HttpsURLConnection;
    invoke-virtual {v11, v14}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 824
    invoke-virtual {v11, v15}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 828
    .end local v11    # "https":Ljavax/net/ssl/HttpsURLConnection;
    :cond_15
    if-nez v21, :cond_1b

    .line 829
    new-instance v20, Lorg/apache/cordova/api/PluginResult;

    sget-object v22, Lorg/apache/cordova/api/PluginResult$Status;->ERROR:Lorg/apache/cordova/api/PluginResult$Status;

    sget v23, Lorg/apache/cordova/FileTransfer;->CONNECTION_ERR:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$source:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$target:Ljava/lang/String;

    move-object/from16 v25, v0

    move/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    # invokes: Lorg/apache/cordova/FileTransfer;->createFileTransferError(ILjava/lang/String;Ljava/lang/String;Ljava/net/URLConnection;)Lorg/json/JSONObject;
    invoke-static {v0, v1, v2, v5}, Lorg/apache/cordova/FileTransfer;->access$500(ILjava/lang/String;Ljava/lang/String;Ljava/net/URLConnection;)Lorg/json/JSONObject;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONObject;)V

    .line 832
    .end local v21    # "result":Lorg/apache/cordova/api/PluginResult;
    .restart local v20    # "result":Lorg/apache/cordova/api/PluginResult;
    :goto_8
    invoke-virtual/range {v20 .. v20}, Lorg/apache/cordova/api/PluginResult;->getStatus()I

    move-result v22

    sget-object v23, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-virtual/range {v23 .. v23}, Lorg/apache/cordova/api/PluginResult$Status;->ordinal()I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_16

    if-eqz v9, :cond_16

    .line 833
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 835
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$context:Lorg/apache/cordova/FileTransfer$RequestContext;

    move-object/from16 v22, v0

    goto/16 :goto_2

    .line 814
    .end local v7    # "e":Ljava/lang/Throwable;
    .end local v8    # "error":Lorg/json/JSONObject;
    :catchall_2
    move-exception v22

    # invokes: Lorg/apache/cordova/FileTransfer;->safeClose(Ljava/io/Closeable;)V
    invoke-static/range {v16 .. v16}, Lorg/apache/cordova/FileTransfer;->access$300(Ljava/io/Closeable;)V

    .line 815
    # getter for: Lorg/apache/cordova/FileTransfer;->activeRequests:Ljava/util/HashMap;
    invoke-static {}, Lorg/apache/cordova/FileTransfer;->access$600()Ljava/util/HashMap;

    move-result-object v23

    monitor-enter v23

    .line 816
    :try_start_15
    # getter for: Lorg/apache/cordova/FileTransfer;->activeRequests:Ljava/util/HashMap;
    invoke-static {}, Lorg/apache/cordova/FileTransfer;->access$600()Ljava/util/HashMap;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$objectId:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 817
    monitor-exit v23
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    .line 819
    if-eqz v5, :cond_17

    .line 821
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$trustEveryone:Z

    move/from16 v23, v0

    if-eqz v23, :cond_17

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$useHttps:Z

    move/from16 v23, v0

    if-eqz v23, :cond_17

    move-object v11, v5

    .line 822
    check-cast v11, Ljavax/net/ssl/HttpsURLConnection;

    .line 823
    .restart local v11    # "https":Ljavax/net/ssl/HttpsURLConnection;
    invoke-virtual {v11, v14}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 824
    invoke-virtual {v11, v15}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 828
    .end local v11    # "https":Ljavax/net/ssl/HttpsURLConnection;
    :cond_17
    if-nez v20, :cond_18

    .line 829
    new-instance v20, Lorg/apache/cordova/api/PluginResult;

    .end local v20    # "result":Lorg/apache/cordova/api/PluginResult;
    sget-object v23, Lorg/apache/cordova/api/PluginResult$Status;->ERROR:Lorg/apache/cordova/api/PluginResult$Status;

    sget v24, Lorg/apache/cordova/FileTransfer;->CONNECTION_ERR:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$source:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$target:Ljava/lang/String;

    move-object/from16 v26, v0

    move/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    # invokes: Lorg/apache/cordova/FileTransfer;->createFileTransferError(ILjava/lang/String;Ljava/lang/String;Ljava/net/URLConnection;)Lorg/json/JSONObject;
    invoke-static {v0, v1, v2, v5}, Lorg/apache/cordova/FileTransfer;->access$500(ILjava/lang/String;Ljava/lang/String;Ljava/net/URLConnection;)Lorg/json/JSONObject;

    move-result-object v24

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONObject;)V

    .line 832
    .restart local v20    # "result":Lorg/apache/cordova/api/PluginResult;
    :cond_18
    invoke-virtual/range {v20 .. v20}, Lorg/apache/cordova/api/PluginResult;->getStatus()I

    move-result v23

    sget-object v24, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-virtual/range {v24 .. v24}, Lorg/apache/cordova/api/PluginResult$Status;->ordinal()I

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_19

    if-eqz v9, :cond_19

    .line 833
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 835
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$4;->val$context:Lorg/apache/cordova/FileTransfer$RequestContext;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/apache/cordova/FileTransfer$RequestContext;->sendPluginResult(Lorg/apache/cordova/api/PluginResult;)V

    .line 814
    throw v22

    .line 817
    :catchall_3
    move-exception v22

    :try_start_16
    monitor-exit v23
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    throw v22

    .end local v20    # "result":Lorg/apache/cordova/api/PluginResult;
    .local v7, "e":Ljava/io/FileNotFoundException;
    .restart local v8    # "error":Lorg/json/JSONObject;
    .restart local v21    # "result":Lorg/apache/cordova/api/PluginResult;
    :catchall_4
    move-exception v22

    :try_start_17
    monitor-exit v23
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    throw v22

    .local v7, "e":Ljava/io/IOException;
    :catchall_5
    move-exception v22

    :try_start_18
    monitor-exit v23
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_5

    throw v22

    .end local v8    # "error":Lorg/json/JSONObject;
    .local v7, "e":Lorg/json/JSONException;
    :catchall_6
    move-exception v22

    :try_start_19
    monitor-exit v23
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_6

    throw v22

    .local v7, "e":Ljava/lang/Throwable;
    .restart local v8    # "error":Lorg/json/JSONObject;
    :catchall_7
    move-exception v22

    :try_start_1a
    monitor-exit v23
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_7

    throw v22

    .end local v7    # "e":Ljava/lang/Throwable;
    .end local v8    # "error":Lorg/json/JSONObject;
    .end local v21    # "result":Lorg/apache/cordova/api/PluginResult;
    .restart local v17    # "progress":Lorg/apache/cordova/FileProgressResult;
    .restart local v20    # "result":Lorg/apache/cordova/api/PluginResult;
    :catchall_8
    move-exception v22

    :try_start_1b
    monitor-exit v23
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_8

    throw v22

    .end local v20    # "result":Lorg/apache/cordova/api/PluginResult;
    .restart local v3    # "buffer":[B
    .restart local v4    # "bytesRead":I
    .restart local v10    # "fileEntry":Lorg/json/JSONObject;
    .restart local v21    # "result":Lorg/apache/cordova/api/PluginResult;
    :catchall_9
    move-exception v22

    :try_start_1c
    monitor-exit v23
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_9

    throw v22

    :cond_1a
    move-object/from16 v20, v21

    .end local v21    # "result":Lorg/apache/cordova/api/PluginResult;
    .restart local v20    # "result":Lorg/apache/cordova/api/PluginResult;
    goto/16 :goto_5

    .end local v3    # "buffer":[B
    .end local v4    # "bytesRead":I
    .end local v10    # "fileEntry":Lorg/json/JSONObject;
    .end local v17    # "progress":Lorg/apache/cordova/FileProgressResult;
    .end local v20    # "result":Lorg/apache/cordova/api/PluginResult;
    .restart local v7    # "e":Ljava/lang/Throwable;
    .restart local v8    # "error":Lorg/json/JSONObject;
    .restart local v21    # "result":Lorg/apache/cordova/api/PluginResult;
    :cond_1b
    move-object/from16 v20, v21

    .end local v21    # "result":Lorg/apache/cordova/api/PluginResult;
    .restart local v20    # "result":Lorg/apache/cordova/api/PluginResult;
    goto/16 :goto_8

    .end local v8    # "error":Lorg/json/JSONObject;
    .end local v20    # "result":Lorg/apache/cordova/api/PluginResult;
    .local v7, "e":Lorg/json/JSONException;
    .restart local v21    # "result":Lorg/apache/cordova/api/PluginResult;
    :cond_1c
    move-object/from16 v20, v21

    .end local v21    # "result":Lorg/apache/cordova/api/PluginResult;
    .restart local v20    # "result":Lorg/apache/cordova/api/PluginResult;
    goto/16 :goto_7

    .end local v20    # "result":Lorg/apache/cordova/api/PluginResult;
    .local v7, "e":Ljava/io/IOException;
    .restart local v8    # "error":Lorg/json/JSONObject;
    .restart local v21    # "result":Lorg/apache/cordova/api/PluginResult;
    :cond_1d
    move-object/from16 v20, v21

    .end local v21    # "result":Lorg/apache/cordova/api/PluginResult;
    .restart local v20    # "result":Lorg/apache/cordova/api/PluginResult;
    goto/16 :goto_6

    .end local v20    # "result":Lorg/apache/cordova/api/PluginResult;
    .local v7, "e":Ljava/io/FileNotFoundException;
    .restart local v21    # "result":Lorg/apache/cordova/api/PluginResult;
    :cond_1e
    move-object/from16 v20, v21

    .end local v21    # "result":Lorg/apache/cordova/api/PluginResult;
    .restart local v20    # "result":Lorg/apache/cordova/api/PluginResult;
    goto/16 :goto_4
.end method
