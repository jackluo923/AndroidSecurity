.class Ljp/innovationplus/ipp/client/_HttpURLConnection;
.super Ljava/lang/Object;
.source "_HttpURLConnection.java"


# static fields
.field private static final IPP_BASE_URL:Ljava/lang/String; = "https://iddata-commons.org/IPP_ClientAPIServer"

.field private static final IPP_KIT_VERSION_NUMBER:Ljava/lang/String; = "0.8.0a"

.field static final TAG:Ljava/lang/String; = "IPPKit"


# instance fields
.field private debugMessage:Z

.field protected httpHeader:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation
.end field

.field protected mContext:Landroid/content/Context;

.field protected resourcePath:Ljava/lang/String;

.field protected timeout:I


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljp/innovationplus/ipp/client/_HttpURLConnection;->debugMessage:Z

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljp/innovationplus/ipp/client/_HttpURLConnection;->httpHeader:Ljava/util/List;

    .line 84
    const/16 v0, 0x1388

    iput v0, p0, Ljp/innovationplus/ipp/client/_HttpURLConnection;->timeout:I

    .line 85
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourcePath"    # Ljava/lang/String;

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljp/innovationplus/ipp/client/_HttpURLConnection;->debugMessage:Z

    .line 96
    iput-object p1, p0, Ljp/innovationplus/ipp/client/_HttpURLConnection;->mContext:Landroid/content/Context;

    .line 97
    iput-object p2, p0, Ljp/innovationplus/ipp/client/_HttpURLConnection;->resourcePath:Ljava/lang/String;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljp/innovationplus/ipp/client/_HttpURLConnection;->httpHeader:Ljava/util/List;

    .line 99
    const/16 v0, 0x1388

    iput v0, p0, Ljp/innovationplus/ipp/client/_HttpURLConnection;->timeout:I

    .line 100
    return-void
.end method

.method private setupHTTPURLConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 1
    .param p1, "methodType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljp/innovationplus/ipp/core/IPPException;
        }
    .end annotation

    .prologue
    .line 232
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljp/innovationplus/ipp/client/_HttpURLConnection;->setupHTTPURLConnection(Ljava/lang/String;Ljava/util/List;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0
.end method

.method private setupHTTPURLConnection(Ljava/lang/String;Ljava/util/List;)Ljava/net/HttpURLConnection;
    .locals 17
    .param p1, "methodType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljp/innovationplus/ipp/core/IPPException;
        }
    .end annotation

    .prologue
    .line 243
    .local p2, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    const/4 v2, 0x0

    .line 245
    .local v2, "connection":Ljava/net/HttpURLConnection;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v13, "https://iddata-commons.org/IPP_ClientAPIServer"

    invoke-direct {v9, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 246
    .local v9, "sb":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v13, v0, Ljp/innovationplus/ipp/client/_HttpURLConnection;->resourcePath:Ljava/lang/String;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 248
    .local v8, "queryURL":Ljava/lang/String;
    const/4 v11, 0x0

    .line 250
    .local v11, "url":Ljava/net/URL;
    if-eqz p2, :cond_8

    :try_start_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_8

    .line 251
    const/4 v7, 0x0

    .line 252
    .local v7, "queryParams":Ljava/lang/String;
    const-string v13, "UTF-8"

    move-object/from16 v0, p2

    invoke-static {v0, v13}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 253
    new-instance v11, Ljava/net/URL;

    .end local v11    # "url":Ljava/net/URL;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, "?"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v13}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    .end local v7    # "queryParams":Ljava/lang/String;
    .restart local v11    # "url":Ljava/net/URL;
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v13, v0, Ljp/innovationplus/ipp/client/_HttpURLConnection;->debugMessage:Z

    if-eqz v13, :cond_0

    .line 269
    invoke-virtual {v11}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v12

    .line 270
    .local v12, "urlStr":Ljava/lang/String;
    const-string v13, "https://iddata-commons.org/IPP_ClientAPIServer"

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 271
    .local v10, "subUrl":Ljava/lang/String;
    const-string v13, "IPPKit"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Connection URL :"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    .end local v10    # "subUrl":Ljava/lang/String;
    .end local v12    # "urlStr":Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-virtual {v11}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v13

    const-string v14, "http"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 277
    invoke-virtual {v11}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v13

    move-object v0, v13

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v2, v0

    .line 279
    :cond_1
    invoke-virtual {v11}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v13

    const-string v14, "https"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 280
    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v13

    check-cast v13, Ljavax/net/ssl/SSLSocketFactory;

    invoke-static {v13}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 281
    invoke-virtual {v11}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljavax/net/ssl/HttpsURLConnection;

    .line 282
    .local v5, "httpsconn":Ljavax/net/ssl/HttpsURLConnection;
    move-object v2, v5

    .line 284
    .end local v5    # "httpsconn":Ljavax/net/ssl/HttpsURLConnection;
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v13, v0, Ljp/innovationplus/ipp/client/_HttpURLConnection;->debugMessage:Z

    if-eqz v13, :cond_3

    .line 285
    const-string v13, "IPPKit"

    const-string v14, "Connection open."

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 298
    :cond_3
    move-object/from16 v0, p0

    iget v13, v0, Ljp/innovationplus/ipp/client/_HttpURLConnection;->timeout:I

    invoke-virtual {v2, v13}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 302
    :try_start_2
    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/ProtocolException; {:try_start_2 .. :try_end_2} :catch_2

    .line 314
    const/4 v13, 0x0

    invoke-virtual {v2, v13}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 317
    const-string v13, "POST"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_4

    const-string v13, "PUT"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 318
    :cond_4
    const/4 v13, 0x1

    invoke-virtual {v2, v13}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 321
    :cond_5
    const/4 v4, 0x0

    .line 323
    .local v4, "hasApplicationId":Z
    move-object/from16 v0, p0

    iget-object v13, v0, Ljp/innovationplus/ipp/client/_HttpURLConnection;->httpHeader:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_6

    .line 324
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Ljp/innovationplus/ipp/client/_HttpURLConnection;->httpHeader:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-lt v6, v13, :cond_c

    .line 331
    .end local v6    # "i":I
    :cond_6
    const-string v13, "Content-Type"

    const-string v14, "application/json"

    invoke-virtual {v2, v13, v14}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    const-string v13, "Accept"

    const-string v14, "application/json"

    invoke-virtual {v2, v13, v14}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    if-nez v4, :cond_7

    .line 336
    const/4 v1, 0x0

    .line 338
    .local v1, "appliInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v13, v0, Ljp/innovationplus/ipp/client/_HttpURLConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Ljp/innovationplus/ipp/client/_HttpURLConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x80

    invoke-virtual {v13, v14, v15}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v1

    .line 347
    const-string v13, "X-Application-id"

    iget-object v14, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v15, "application_id"

    invoke-virtual {v14, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v13, v14}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    move-object/from16 v0, p0

    iget-boolean v13, v0, Ljp/innovationplus/ipp/client/_HttpURLConnection;->debugMessage:Z

    if-eqz v13, :cond_7

    .line 349
    const-string v13, "IPPKit"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "set Application ID : "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v15, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v16, "application_id"

    invoke-virtual/range {v15 .. v16}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    .end local v1    # "appliInfo":Landroid/content/pm/ApplicationInfo;
    :cond_7
    return-object v2

    .line 256
    .end local v4    # "hasApplicationId":Z
    :cond_8
    :try_start_4
    new-instance v11, Ljava/net/URL;

    .end local v11    # "url":Ljava/net/URL;
    invoke-direct {v11, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_0

    .restart local v11    # "url":Ljava/net/URL;
    goto/16 :goto_0

    .line 259
    .end local v11    # "url":Ljava/net/URL;
    :catch_0
    move-exception v3

    .line 260
    .local v3, "e":Ljava/net/MalformedURLException;
    move-object/from16 v0, p0

    iget-boolean v13, v0, Ljp/innovationplus/ipp/client/_HttpURLConnection;->debugMessage:Z

    if-eqz v13, :cond_9

    .line 261
    const-string v13, "IPPKit"

    const-string v14, "MalformedURLException"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    invoke-virtual {v3}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 264
    :cond_9
    new-instance v13, Ljp/innovationplus/ipp/core/IPPException;

    const/16 v14, -0x3e8

    invoke-direct {v13, v14}, Ljp/innovationplus/ipp/core/IPPException;-><init>(I)V

    throw v13

    .line 287
    .end local v3    # "e":Ljava/net/MalformedURLException;
    .restart local v11    # "url":Ljava/net/URL;
    :catch_1
    move-exception v3

    .line 289
    .local v3, "e":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-boolean v13, v0, Ljp/innovationplus/ipp/client/_HttpURLConnection;->debugMessage:Z

    if-eqz v13, :cond_a

    .line 290
    const-string v13, "IPPKit"

    const-string v14, "IOException"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 293
    :cond_a
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 294
    new-instance v13, Ljp/innovationplus/ipp/core/IPPException;

    const/16 v14, -0x3e9

    invoke-direct {v13, v14}, Ljp/innovationplus/ipp/core/IPPException;-><init>(I)V

    throw v13

    .line 304
    .end local v3    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v3

    .line 306
    .local v3, "e":Ljava/net/ProtocolException;
    move-object/from16 v0, p0

    iget-boolean v13, v0, Ljp/innovationplus/ipp/client/_HttpURLConnection;->debugMessage:Z

    if-eqz v13, :cond_b

    .line 307
    const-string v13, "IPPKit"

    const-string v14, "ProtocolException"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    invoke-virtual {v3}, Ljava/net/ProtocolException;->printStackTrace()V

    .line 310
    :cond_b
    new-instance v13, Ljp/innovationplus/ipp/core/IPPException;

    const/16 v14, -0x3ea

    invoke-direct {v13, v14}, Ljp/innovationplus/ipp/core/IPPException;-><init>(I)V

    throw v13

    .line 325
    .end local v3    # "e":Ljava/net/ProtocolException;
    .restart local v4    # "hasApplicationId":Z
    .restart local v6    # "i":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v13, v0, Ljp/innovationplus/ipp/client/_HttpURLConnection;->httpHeader:Ljava/util/List;

    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/http/NameValuePair;

    invoke-interface {v13}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "X-Application-id"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 326
    const/4 v4, 0x1

    .line 328
    :cond_d
    move-object/from16 v0, p0

    iget-object v13, v0, Ljp/innovationplus/ipp/client/_HttpURLConnection;->httpHeader:Ljava/util/List;

    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/http/NameValuePair;

    invoke-interface {v13}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v13, v0, Ljp/innovationplus/ipp/client/_HttpURLConnection;->httpHeader:Ljava/util/List;

    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/http/NameValuePair;

    invoke-interface {v13}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v14, v13}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 340
    .end local v6    # "i":I
    .restart local v1    # "appliInfo":Landroid/content/pm/ApplicationInfo;
    :catch_3
    move-exception v3

    .line 341
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object/from16 v0, p0

    iget-boolean v13, v0, Ljp/innovationplus/ipp/client/_HttpURLConnection;->debugMessage:Z

    if-eqz v13, :cond_e

    .line 342
    const-string v13, "IPPKit"

    const-string v14, "NameNotFoundException"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 345
    :cond_e
    new-instance v13, Ljp/innovationplus/ipp/core/IPPException;

    const/16 v14, -0x3eb

    invoke-direct {v13, v14}, Ljp/innovationplus/ipp/core/IPPException;-><init>(I)V

    throw v13
.end method


# virtual methods
.method protected addHTTPHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 161
    iget-object v0, p0, Ljp/innovationplus/ipp/client/_HttpURLConnection;->httpHeader:Ljava/util/List;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {v1, p1, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    return-void
.end method

.method public getVersionNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    const-string v0, "0.8.0a"

    return-object v0
.end method

.method protected declared-synchronized ippDeleteRequest(Ljava/lang/Class;Ljp/innovationplus/ipp/core/IPPQueryCallback;)V
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljp/innovationplus/ipp/core/IPPQueryCallback",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljp/innovationplus/ipp/core/IPPException;
        }
    .end annotation

    .prologue
    .line 582
    .local p1, "resultClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "callback":Ljp/innovationplus/ipp/core/IPPQueryCallback;, "Ljp/innovationplus/ipp/core/IPPQueryCallback<TT;>;"
    monitor-enter p0

    const/4 v0, 0x0

    .line 584
    .local v0, "connection":Ljava/net/HttpURLConnection;
    :try_start_0
    const-string v4, "DELETE"

    invoke-direct {p0, v4}, Ljp/innovationplus/ipp/client/_HttpURLConnection;->setupHTTPURLConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljp/innovationplus/ipp/core/IPPException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 592
    :try_start_1
    new-instance v2, Ljp/innovationplus/ipp/client/_HttpURLConnectionParam;

    invoke-direct {v2}, Ljp/innovationplus/ipp/client/_HttpURLConnectionParam;-><init>()V

    .line 593
    .local v2, "param":Ljp/innovationplus/ipp/client/_HttpURLConnectionParam;
    iput-object v0, v2, Ljp/innovationplus/ipp/client/_HttpURLConnectionParam;->httpUrlConnection:Ljava/net/HttpURLConnection;

    .line 594
    const/4 v4, 0x0

    iput-object v4, v2, Ljp/innovationplus/ipp/client/_HttpURLConnectionParam;->postData:Ljava/lang/Object;

    .line 597
    new-instance v3, Ljp/innovationplus/ipp/client/_HttpRequestTask;

    invoke-direct {v3, p1}, Ljp/innovationplus/ipp/client/_HttpRequestTask;-><init>(Ljava/lang/Class;)V

    .line 598
    .local v3, "task":Ljp/innovationplus/ipp/client/_HttpRequestTask;, "Ljp/innovationplus/ipp/client/_HttpRequestTask<TT;>;"
    invoke-virtual {v3, p2}, Ljp/innovationplus/ipp/client/_HttpRequestTask;->setOnCallBack(Ljp/innovationplus/ipp/core/IPPQueryCallback;)V

    .line 599
    iget-boolean v4, p0, Ljp/innovationplus/ipp/client/_HttpURLConnection;->debugMessage:Z

    iput-boolean v4, v3, Ljp/innovationplus/ipp/client/_HttpRequestTask;->debugMessage:Z

    .line 600
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-ge v4, v5, :cond_0

    .line 601
    const/4 v4, 0x1

    new-array v4, v4, [Ljp/innovationplus/ipp/client/_HttpURLConnectionParam;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-virtual {v3, v4}, Ljp/innovationplus/ipp/client/_HttpRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 606
    :goto_0
    monitor-exit p0

    return-void

    .line 586
    .end local v2    # "param":Ljp/innovationplus/ipp/client/_HttpURLConnectionParam;
    .end local v3    # "task":Ljp/innovationplus/ipp/client/_HttpRequestTask;, "Ljp/innovationplus/ipp/client/_HttpRequestTask<TT;>;"
    :catch_0
    move-exception v1

    .line 588
    .local v1, "e":Ljp/innovationplus/ipp/core/IPPException;
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 582
    .end local v1    # "e":Ljp/innovationplus/ipp/core/IPPException;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 604
    .restart local v2    # "param":Ljp/innovationplus/ipp/client/_HttpURLConnectionParam;
    .restart local v3    # "task":Ljp/innovationplus/ipp/client/_HttpRequestTask;, "Ljp/innovationplus/ipp/client/_HttpRequestTask<TT;>;"
    :cond_0
    :try_start_3
    sget-object v4, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljp/innovationplus/ipp/client/_HttpURLConnectionParam;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-virtual {v3, v4, v5}, Ljp/innovationplus/ipp/client/_HttpRequestTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method protected declared-synchronized ippGetRequest(Ljava/lang/Class;Ljava/util/List;Ljp/innovationplus/ipp/core/IPPQueryCallback;)V
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Ljp/innovationplus/ipp/core/IPPQueryCallback",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljp/innovationplus/ipp/core/IPPException;
        }
    .end annotation

    .prologue
    .line 383
    .local p1, "resultClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "query":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .local p3, "callback":Ljp/innovationplus/ipp/core/IPPQueryCallback;, "Ljp/innovationplus/ipp/core/IPPQueryCallback<TT;>;"
    monitor-enter p0

    const/4 v0, 0x0

    .line 385
    .local v0, "connection":Ljava/net/HttpURLConnection;
    :try_start_0
    const-string v4, "GET"

    invoke-direct {p0, v4, p2}, Ljp/innovationplus/ipp/client/_HttpURLConnection;->setupHTTPURLConnection(Ljava/lang/String;Ljava/util/List;)Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljp/innovationplus/ipp/core/IPPException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 393
    :try_start_1
    new-instance v2, Ljp/innovationplus/ipp/client/_HttpURLConnectionParam;

    invoke-direct {v2}, Ljp/innovationplus/ipp/client/_HttpURLConnectionParam;-><init>()V

    .line 394
    .local v2, "param":Ljp/innovationplus/ipp/client/_HttpURLConnectionParam;
    iput-object v0, v2, Ljp/innovationplus/ipp/client/_HttpURLConnectionParam;->httpUrlConnection:Ljava/net/HttpURLConnection;

    .line 395
    const/4 v4, 0x0

    iput-object v4, v2, Ljp/innovationplus/ipp/client/_HttpURLConnectionParam;->postData:Ljava/lang/Object;

    .line 398
    new-instance v3, Ljp/innovationplus/ipp/client/_HttpRequestTask;

    invoke-direct {v3, p1}, Ljp/innovationplus/ipp/client/_HttpRequestTask;-><init>(Ljava/lang/Class;)V

    .line 399
    .local v3, "task":Ljp/innovationplus/ipp/client/_HttpRequestTask;, "Ljp/innovationplus/ipp/client/_HttpRequestTask<TT;>;"
    invoke-virtual {v3, p3}, Ljp/innovationplus/ipp/client/_HttpRequestTask;->setOnCallBack(Ljp/innovationplus/ipp/core/IPPQueryCallback;)V

    .line 400
    iget-boolean v4, p0, Ljp/innovationplus/ipp/client/_HttpURLConnection;->debugMessage:Z

    iput-boolean v4, v3, Ljp/innovationplus/ipp/client/_HttpRequestTask;->debugMessage:Z

    .line 401
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-ge v4, v5, :cond_0

    .line 402
    const/4 v4, 0x1

    new-array v4, v4, [Ljp/innovationplus/ipp/client/_HttpURLConnectionParam;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-virtual {v3, v4}, Ljp/innovationplus/ipp/client/_HttpRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 407
    :goto_0
    monitor-exit p0

    return-void

    .line 387
    .end local v2    # "param":Ljp/innovationplus/ipp/client/_HttpURLConnectionParam;
    .end local v3    # "task":Ljp/innovationplus/ipp/client/_HttpRequestTask;, "Ljp/innovationplus/ipp/client/_HttpRequestTask<TT;>;"
    :catch_0
    move-exception v1

    .line 389
    .local v1, "e":Ljp/innovationplus/ipp/core/IPPException;
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 383
    .end local v1    # "e":Ljp/innovationplus/ipp/core/IPPException;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 405
    .restart local v2    # "param":Ljp/innovationplus/ipp/client/_HttpURLConnectionParam;
    .restart local v3    # "task":Ljp/innovationplus/ipp/client/_HttpRequestTask;, "Ljp/innovationplus/ipp/client/_HttpRequestTask<TT;>;"
    :cond_0
    :try_start_3
    sget-object v4, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljp/innovationplus/ipp/client/_HttpURLConnectionParam;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-virtual {v3, v4, v5}, Ljp/innovationplus/ipp/client/_HttpRequestTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method protected declared-synchronized ippGetRequest(Ljava/lang/Class;Ljp/innovationplus/ipp/core/IPPQueryCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljp/innovationplus/ipp/core/IPPQueryCallback",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljp/innovationplus/ipp/core/IPPException;
        }
    .end annotation

    .prologue
    .line 367
    .local p1, "resultClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "callback":Ljp/innovationplus/ipp/core/IPPQueryCallback;, "Ljp/innovationplus/ipp/core/IPPQueryCallback<TT;>;"
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0, p2}, Ljp/innovationplus/ipp/client/_HttpURLConnection;->ippGetRequest(Ljava/lang/Class;Ljava/util/List;Ljp/innovationplus/ipp/core/IPPQueryCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 368
    monitor-exit p0

    return-void

    .line 367
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized ippPostRequest(Ljava/lang/Class;Ljava/lang/Object;Ljp/innovationplus/ipp/core/IPPQueryCallback;)V
    .locals 7
    .param p2, "postData"    # Ljava/lang/Object;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Object;",
            "Ljp/innovationplus/ipp/core/IPPQueryCallback",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljp/innovationplus/ipp/core/IPPException;
        }
    .end annotation

    .prologue
    .line 423
    .local p1, "resultClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p3, "callback":Ljp/innovationplus/ipp/core/IPPQueryCallback;, "Ljp/innovationplus/ipp/core/IPPQueryCallback<TT;>;"
    monitor-enter p0

    const/4 v0, 0x0

    .line 425
    .local v0, "connection":Ljava/net/HttpURLConnection;
    :try_start_0
    const-string v4, "POST"

    invoke-direct {p0, v4}, Ljp/innovationplus/ipp/client/_HttpURLConnection;->setupHTTPURLConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljp/innovationplus/ipp/core/IPPException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 433
    :try_start_1
    new-instance v2, Ljp/innovationplus/ipp/client/_HttpURLConnectionParam;

    invoke-direct {v2}, Ljp/innovationplus/ipp/client/_HttpURLConnectionParam;-><init>()V

    .line 434
    .local v2, "param":Ljp/innovationplus/ipp/client/_HttpURLConnectionParam;
    iput-object v0, v2, Ljp/innovationplus/ipp/client/_HttpURLConnectionParam;->httpUrlConnection:Ljava/net/HttpURLConnection;

    .line 435
    iput-object p2, v2, Ljp/innovationplus/ipp/client/_HttpURLConnectionParam;->postData:Ljava/lang/Object;

    .line 438
    new-instance v3, Ljp/innovationplus/ipp/client/_HttpRequestTask;

    invoke-direct {v3, p1}, Ljp/innovationplus/ipp/client/_HttpRequestTask;-><init>(Ljava/lang/Class;)V

    .line 439
    .local v3, "task":Ljp/innovationplus/ipp/client/_HttpRequestTask;, "Ljp/innovationplus/ipp/client/_HttpRequestTask<TT;>;"
    invoke-virtual {v3, p3}, Ljp/innovationplus/ipp/client/_HttpRequestTask;->setOnCallBack(Ljp/innovationplus/ipp/core/IPPQueryCallback;)V

    .line 440
    iget-boolean v4, p0, Ljp/innovationplus/ipp/client/_HttpURLConnection;->debugMessage:Z

    iput-boolean v4, v3, Ljp/innovationplus/ipp/client/_HttpRequestTask;->debugMessage:Z

    .line 441
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-ge v4, v5, :cond_0

    .line 442
    const/4 v4, 0x1

    new-array v4, v4, [Ljp/innovationplus/ipp/client/_HttpURLConnectionParam;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-virtual {v3, v4}, Ljp/innovationplus/ipp/client/_HttpRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 447
    :goto_0
    monitor-exit p0

    return-void

    .line 427
    .end local v2    # "param":Ljp/innovationplus/ipp/client/_HttpURLConnectionParam;
    .end local v3    # "task":Ljp/innovationplus/ipp/client/_HttpRequestTask;, "Ljp/innovationplus/ipp/client/_HttpRequestTask<TT;>;"
    :catch_0
    move-exception v1

    .line 429
    .local v1, "e":Ljp/innovationplus/ipp/core/IPPException;
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 423
    .end local v1    # "e":Ljp/innovationplus/ipp/core/IPPException;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 445
    .restart local v2    # "param":Ljp/innovationplus/ipp/client/_HttpURLConnectionParam;
    .restart local v3    # "task":Ljp/innovationplus/ipp/client/_HttpRequestTask;, "Ljp/innovationplus/ipp/client/_HttpRequestTask<TT;>;"
    :cond_0
    :try_start_3
    sget-object v4, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljp/innovationplus/ipp/client/_HttpURLConnectionParam;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-virtual {v3, v4, v5}, Ljp/innovationplus/ipp/client/_HttpRequestTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method protected declared-synchronized ippPostRequest(Ljava/lang/Class;Ljava/util/Map;Ljp/innovationplus/ipp/core/IPPQueryCallback;)V
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;",
            "Ljp/innovationplus/ipp/core/IPPQueryCallback",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljp/innovationplus/ipp/core/IPPException;
        }
    .end annotation

    .prologue
    .line 463
    .local p1, "resultClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "postData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    .local p3, "callback":Ljp/innovationplus/ipp/core/IPPQueryCallback;, "Ljp/innovationplus/ipp/core/IPPQueryCallback<TT;>;"
    monitor-enter p0

    const/4 v0, 0x0

    .line 465
    .local v0, "connection":Ljava/net/HttpURLConnection;
    :try_start_0
    const-string v4, "POST"

    invoke-direct {p0, v4}, Ljp/innovationplus/ipp/client/_HttpURLConnection;->setupHTTPURLConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljp/innovationplus/ipp/core/IPPException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 473
    :try_start_1
    new-instance v2, Ljp/innovationplus/ipp/client/_HttpURLConnectionParam;

    invoke-direct {v2}, Ljp/innovationplus/ipp/client/_HttpURLConnectionParam;-><init>()V

    .line 474
    .local v2, "param":Ljp/innovationplus/ipp/client/_HttpURLConnectionParam;
    iput-object v0, v2, Ljp/innovationplus/ipp/client/_HttpURLConnectionParam;->httpUrlConnection:Ljava/net/HttpURLConnection;

    .line 475
    iput-object p2, v2, Ljp/innovationplus/ipp/client/_HttpURLConnectionParam;->postData:Ljava/lang/Object;

    .line 478
    new-instance v3, Ljp/innovationplus/ipp/client/_HttpRequestTask;

    invoke-direct {v3, p1}, Ljp/innovationplus/ipp/client/_HttpRequestTask;-><init>(Ljava/lang/Class;)V

    .line 479
    .local v3, "task":Ljp/innovationplus/ipp/client/_HttpRequestTask;, "Ljp/innovationplus/ipp/client/_HttpRequestTask<TT;>;"
    invoke-virtual {v3, p3}, Ljp/innovationplus/ipp/client/_HttpRequestTask;->setOnCallBack(Ljp/innovationplus/ipp/core/IPPQueryCallback;)V

    .line 480
    iget-boolean v4, p0, Ljp/innovationplus/ipp/client/_HttpURLConnection;->debugMessage:Z

    iput-boolean v4, v3, Ljp/innovationplus/ipp/client/_HttpRequestTask;->debugMessage:Z

    .line 481
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-ge v4, v5, :cond_0

    .line 482
    const/4 v4, 0x1

    new-array v4, v4, [Ljp/innovationplus/ipp/client/_HttpURLConnectionParam;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-virtual {v3, v4}, Ljp/innovationplus/ipp/client/_HttpRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 487
    :goto_0
    monitor-exit p0

    return-void

    .line 467
    .end local v2    # "param":Ljp/innovationplus/ipp/client/_HttpURLConnectionParam;
    .end local v3    # "task":Ljp/innovationplus/ipp/client/_HttpRequestTask;, "Ljp/innovationplus/ipp/client/_HttpRequestTask<TT;>;"
    :catch_0
    move-exception v1

    .line 469
    .local v1, "e":Ljp/innovationplus/ipp/core/IPPException;
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 463
    .end local v1    # "e":Ljp/innovationplus/ipp/core/IPPException;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 485
    .restart local v2    # "param":Ljp/innovationplus/ipp/client/_HttpURLConnectionParam;
    .restart local v3    # "task":Ljp/innovationplus/ipp/client/_HttpRequestTask;, "Ljp/innovationplus/ipp/client/_HttpRequestTask<TT;>;"
    :cond_0
    :try_start_3
    sget-object v4, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljp/innovationplus/ipp/client/_HttpURLConnectionParam;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-virtual {v3, v4, v5}, Ljp/innovationplus/ipp/client/_HttpRequestTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method protected declared-synchronized ippPutRequest(Ljava/lang/Class;Ljava/lang/Object;Ljp/innovationplus/ipp/core/IPPQueryCallback;)V
    .locals 7
    .param p2, "putData"    # Ljava/lang/Object;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Object;",
            "Ljp/innovationplus/ipp/core/IPPQueryCallback",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljp/innovationplus/ipp/core/IPPException;
        }
    .end annotation

    .prologue
    .line 503
    .local p1, "resultClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p3, "callback":Ljp/innovationplus/ipp/core/IPPQueryCallback;, "Ljp/innovationplus/ipp/core/IPPQueryCallback<TT;>;"
    monitor-enter p0

    const/4 v0, 0x0

    .line 505
    .local v0, "connection":Ljava/net/HttpURLConnection;
    :try_start_0
    const-string v4, "PUT"

    invoke-direct {p0, v4}, Ljp/innovationplus/ipp/client/_HttpURLConnection;->setupHTTPURLConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljp/innovationplus/ipp/core/IPPException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 513
    :try_start_1
    new-instance v2, Ljp/innovationplus/ipp/client/_HttpURLConnectionParam;

    invoke-direct {v2}, Ljp/innovationplus/ipp/client/_HttpURLConnectionParam;-><init>()V

    .line 514
    .local v2, "param":Ljp/innovationplus/ipp/client/_HttpURLConnectionParam;
    iput-object v0, v2, Ljp/innovationplus/ipp/client/_HttpURLConnectionParam;->httpUrlConnection:Ljava/net/HttpURLConnection;

    .line 515
    iput-object p2, v2, Ljp/innovationplus/ipp/client/_HttpURLConnectionParam;->postData:Ljava/lang/Object;

    .line 518
    new-instance v3, Ljp/innovationplus/ipp/client/_HttpRequestTask;

    invoke-direct {v3, p1}, Ljp/innovationplus/ipp/client/_HttpRequestTask;-><init>(Ljava/lang/Class;)V

    .line 519
    .local v3, "task":Ljp/innovationplus/ipp/client/_HttpRequestTask;, "Ljp/innovationplus/ipp/client/_HttpRequestTask<TT;>;"
    invoke-virtual {v3, p3}, Ljp/innovationplus/ipp/client/_HttpRequestTask;->setOnCallBack(Ljp/innovationplus/ipp/core/IPPQueryCallback;)V

    .line 520
    iget-boolean v4, p0, Ljp/innovationplus/ipp/client/_HttpURLConnection;->debugMessage:Z

    iput-boolean v4, v3, Ljp/innovationplus/ipp/client/_HttpRequestTask;->debugMessage:Z

    .line 521
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-ge v4, v5, :cond_0

    .line 522
    const/4 v4, 0x1

    new-array v4, v4, [Ljp/innovationplus/ipp/client/_HttpURLConnectionParam;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-virtual {v3, v4}, Ljp/innovationplus/ipp/client/_HttpRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 527
    :goto_0
    monitor-exit p0

    return-void

    .line 507
    .end local v2    # "param":Ljp/innovationplus/ipp/client/_HttpURLConnectionParam;
    .end local v3    # "task":Ljp/innovationplus/ipp/client/_HttpRequestTask;, "Ljp/innovationplus/ipp/client/_HttpRequestTask<TT;>;"
    :catch_0
    move-exception v1

    .line 509
    .local v1, "e":Ljp/innovationplus/ipp/core/IPPException;
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 503
    .end local v1    # "e":Ljp/innovationplus/ipp/core/IPPException;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 525
    .restart local v2    # "param":Ljp/innovationplus/ipp/client/_HttpURLConnectionParam;
    .restart local v3    # "task":Ljp/innovationplus/ipp/client/_HttpRequestTask;, "Ljp/innovationplus/ipp/client/_HttpRequestTask<TT;>;"
    :cond_0
    :try_start_3
    sget-object v4, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljp/innovationplus/ipp/client/_HttpURLConnectionParam;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-virtual {v3, v4, v5}, Ljp/innovationplus/ipp/client/_HttpRequestTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method protected declared-synchronized ippPutRequest(Ljava/lang/Class;Ljava/util/Map;Ljp/innovationplus/ipp/core/IPPQueryCallback;)V
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;",
            "Ljp/innovationplus/ipp/core/IPPQueryCallback",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljp/innovationplus/ipp/core/IPPException;
        }
    .end annotation

    .prologue
    .line 543
    .local p1, "resultClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "putData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    .local p3, "callback":Ljp/innovationplus/ipp/core/IPPQueryCallback;, "Ljp/innovationplus/ipp/core/IPPQueryCallback<TT;>;"
    monitor-enter p0

    const/4 v0, 0x0

    .line 545
    .local v0, "connection":Ljava/net/HttpURLConnection;
    :try_start_0
    const-string v4, "PUT"

    invoke-direct {p0, v4}, Ljp/innovationplus/ipp/client/_HttpURLConnection;->setupHTTPURLConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljp/innovationplus/ipp/core/IPPException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 553
    :try_start_1
    new-instance v2, Ljp/innovationplus/ipp/client/_HttpURLConnectionParam;

    invoke-direct {v2}, Ljp/innovationplus/ipp/client/_HttpURLConnectionParam;-><init>()V

    .line 554
    .local v2, "param":Ljp/innovationplus/ipp/client/_HttpURLConnectionParam;
    iput-object v0, v2, Ljp/innovationplus/ipp/client/_HttpURLConnectionParam;->httpUrlConnection:Ljava/net/HttpURLConnection;

    .line 555
    iput-object p2, v2, Ljp/innovationplus/ipp/client/_HttpURLConnectionParam;->postData:Ljava/lang/Object;

    .line 558
    new-instance v3, Ljp/innovationplus/ipp/client/_HttpRequestTask;

    invoke-direct {v3, p1}, Ljp/innovationplus/ipp/client/_HttpRequestTask;-><init>(Ljava/lang/Class;)V

    .line 559
    .local v3, "task":Ljp/innovationplus/ipp/client/_HttpRequestTask;, "Ljp/innovationplus/ipp/client/_HttpRequestTask<TT;>;"
    invoke-virtual {v3, p3}, Ljp/innovationplus/ipp/client/_HttpRequestTask;->setOnCallBack(Ljp/innovationplus/ipp/core/IPPQueryCallback;)V

    .line 560
    iget-boolean v4, p0, Ljp/innovationplus/ipp/client/_HttpURLConnection;->debugMessage:Z

    iput-boolean v4, v3, Ljp/innovationplus/ipp/client/_HttpRequestTask;->debugMessage:Z

    .line 561
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-ge v4, v5, :cond_0

    .line 562
    const/4 v4, 0x1

    new-array v4, v4, [Ljp/innovationplus/ipp/client/_HttpURLConnectionParam;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-virtual {v3, v4}, Ljp/innovationplus/ipp/client/_HttpRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 567
    :goto_0
    monitor-exit p0

    return-void

    .line 547
    .end local v2    # "param":Ljp/innovationplus/ipp/client/_HttpURLConnectionParam;
    .end local v3    # "task":Ljp/innovationplus/ipp/client/_HttpRequestTask;, "Ljp/innovationplus/ipp/client/_HttpRequestTask<TT;>;"
    :catch_0
    move-exception v1

    .line 549
    .local v1, "e":Ljp/innovationplus/ipp/core/IPPException;
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 543
    .end local v1    # "e":Ljp/innovationplus/ipp/core/IPPException;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 565
    .restart local v2    # "param":Ljp/innovationplus/ipp/client/_HttpURLConnectionParam;
    .restart local v3    # "task":Ljp/innovationplus/ipp/client/_HttpRequestTask;, "Ljp/innovationplus/ipp/client/_HttpRequestTask<TT;>;"
    :cond_0
    :try_start_3
    sget-object v4, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljp/innovationplus/ipp/client/_HttpURLConnectionParam;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-virtual {v3, v4, v5}, Ljp/innovationplus/ipp/client/_HttpRequestTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public isDebugMessage()Z
    .locals 1

    .prologue
    .line 203
    iget-boolean v0, p0, Ljp/innovationplus/ipp/client/_HttpURLConnection;->debugMessage:Z

    return v0
.end method

.method protected removeHeader(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 170
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Ljp/innovationplus/ipp/client/_HttpURLConnection;->httpHeader:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 175
    return-void

    .line 171
    :cond_0
    iget-object v1, p0, Ljp/innovationplus/ipp/client/_HttpURLConnection;->httpHeader:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/NameValuePair;

    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 172
    iget-object v1, p0, Ljp/innovationplus/ipp/client/_HttpURLConnection;->httpHeader:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 170
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setApplicationId(Ljava/lang/String;)V
    .locals 1
    .param p1, "applicationId"    # Ljava/lang/String;

    .prologue
    .line 183
    const-string v0, "X-Application-id"

    invoke-virtual {p0, v0}, Ljp/innovationplus/ipp/client/_HttpURLConnection;->removeHeader(Ljava/lang/String;)V

    .line 184
    const-string v0, "X-Application-id"

    invoke-virtual {p0, v0, p1}, Ljp/innovationplus/ipp/client/_HttpURLConnection;->addHTTPHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    return-void
.end method

.method public setAuthKey(Ljava/lang/String;)V
    .locals 1
    .param p1, "authkey"    # Ljava/lang/String;

    .prologue
    .line 193
    const-string v0, "X-Auth-key"

    invoke-virtual {p0, v0}, Ljp/innovationplus/ipp/client/_HttpURLConnection;->removeHeader(Ljava/lang/String;)V

    .line 194
    const-string v0, "X-Auth-key"

    invoke-virtual {p0, v0, p1}, Ljp/innovationplus/ipp/client/_HttpURLConnection;->addHTTPHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    return-void
.end method

.method protected setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 105
    iput-object p1, p0, Ljp/innovationplus/ipp/client/_HttpURLConnection;->mContext:Landroid/content/Context;

    .line 106
    return-void
.end method

.method public setDebugMessage(Z)V
    .locals 0
    .param p1, "debugMessage"    # Z

    .prologue
    .line 212
    iput-boolean p1, p0, Ljp/innovationplus/ipp/client/_HttpURLConnection;->debugMessage:Z

    .line 213
    return-void
.end method

.method protected setResourcePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 115
    iput-object p1, p0, Ljp/innovationplus/ipp/client/_HttpURLConnection;->resourcePath:Ljava/lang/String;

    .line 116
    return-void
.end method

.method protected setTimeout(I)V
    .locals 0
    .param p1, "time"    # I

    .prologue
    .line 125
    iput p1, p0, Ljp/innovationplus/ipp/client/_HttpURLConnection;->timeout:I

    .line 126
    return-void
.end method
