.class public Lae/gov/mol/helper/PostParseGet;
.super Ljava/lang/Object;
.source "PostParseGet.java"


# static fields
.field private static final TIMEOUT:I = 0x2710


# instance fields
.field WebURL:Ljava/lang/String;

.field public isDeviceToken:Z

.field public isNetError:Z

.field public isOtherError:Z

.field public isTimeOutError:Z

.field mConnectivityManager:Landroid/net/ConnectivityManager;

.field public mContext:Landroid/content/Context;

.field mFillObject:Ljava/lang/Object;

.field mGson:Lcom/google/gson/Gson;

.field mNetworkInfo:Landroid/net/NetworkInfo;

.field nameValuePairs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-boolean v4, p0, Lae/gov/mol/helper/PostParseGet;->isNetError:Z

    .line 53
    iput-boolean v4, p0, Lae/gov/mol/helper/PostParseGet;->isOtherError:Z

    .line 54
    iput-boolean v4, p0, Lae/gov/mol/helper/PostParseGet;->isDeviceToken:Z

    .line 55
    iput-boolean v4, p0, Lae/gov/mol/helper/PostParseGet;->isTimeOutError:Z

    .line 65
    const-string v2, ""

    iput-object v2, p0, Lae/gov/mol/helper/PostParseGet;->WebURL:Ljava/lang/String;

    .line 67
    iput-object p1, p0, Lae/gov/mol/helper/PostParseGet;->mContext:Landroid/content/Context;

    .line 68
    iget-object v2, p0, Lae/gov/mol/helper/PostParseGet;->mContext:Landroid/content/Context;

    const-string v3, "Storage"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 69
    .local v1, "settings1":Landroid/content/SharedPreferences;
    const-string v2, "newmobilepath"

    const-string v3, "NOt Available"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "path":Ljava/lang/String;
    const-string v2, "newmobileversion"

    const-string v3, "1.0"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 74
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    iput-object v2, p0, Lae/gov/mol/helper/PostParseGet;->mGson:Lcom/google/gson/Gson;

    .line 75
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lae/gov/mol/helper/PostParseGet;->mContext:Landroid/content/Context;

    const v4, 0x7f0900be

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lae/gov/mol/helper/PostParseGet;->WebURL:Ljava/lang/String;

    .line 76
    return-void
.end method


# virtual methods
.method public PostHttp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "mUrl"    # Ljava/lang/String;
    .param p2, "mSoapEnv"    # Ljava/lang/String;
    .param p3, "mSoapAction"    # Ljava/lang/String;
    .param p4, "mMethodName"    # Ljava/lang/String;

    .prologue
    .line 484
    const/16 v6, 0x2710

    .line 486
    .local v6, "timeoutConnection":I
    const/4 v2, 0x0

    .line 489
    .local v2, "httpclient":Lorg/apache/http/client/HttpClient;
    const/4 v8, 0x0

    iput-boolean v8, p0, Lae/gov/mol/helper/PostParseGet;->isOtherError:Z

    .line 490
    const-string v3, ""

    .line 491
    .local v3, "mNameSpace":Ljava/lang/String;
    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    .line 492
    const-string v8, ""

    invoke-virtual {p3, p4, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 496
    :cond_0
    invoke-virtual {p0}, Lae/gov/mol/helper/PostParseGet;->check_Internet()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 500
    :try_start_0
    new-instance v4, Lorg/ksoap2/serialization/SoapObject;

    invoke-direct {v4, v3, p4}, Lorg/ksoap2/serialization/SoapObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    .local v4, "request":Lorg/ksoap2/serialization/SoapObject;
    const-string v8, "XMLInput"

    invoke-virtual {v4, v8, p2}, Lorg/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lorg/ksoap2/serialization/SoapObject;

    .line 505
    new-instance v7, Lorg/ksoap2/transport/HttpTransportSE;

    const/16 v8, 0x2710

    invoke-direct {v7, p1, v8}, Lorg/ksoap2/transport/HttpTransportSE;-><init>(Ljava/lang/String;I)V

    .line 507
    .local v7, "transporter":Lorg/ksoap2/transport/HttpTransportSE;
    new-instance v1, Lorg/ksoap2/serialization/SoapSerializationEnvelope;

    .line 508
    const/16 v8, 0x78

    .line 507
    invoke-direct {v1, v8}, Lorg/ksoap2/serialization/SoapSerializationEnvelope;-><init>(I)V

    .line 510
    .local v1, "envelope":Lorg/ksoap2/serialization/SoapSerializationEnvelope;
    const/4 v8, 0x1

    new-array v8, v8, [Lorg/kxml2/kdom/Element;

    iput-object v8, v1, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->headerOut:[Lorg/kxml2/kdom/Element;

    .line 511
    iget-object v8, v1, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->headerOut:[Lorg/kxml2/kdom/Element;

    const/4 v9, 0x0

    invoke-static {}, Lae/gov/mol/webservices/WebServiceResponse;->buildAuthHeader()Lorg/kxml2/kdom/Element;

    move-result-object v10

    aput-object v10, v8, v9

    .line 513
    const/4 v8, 0x1

    iput-boolean v8, v1, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->dotNet:Z

    .line 514
    invoke-virtual {v1, v4}, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->setOutputSoapObject(Ljava/lang/Object;)V

    .line 516
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v1}, Lorg/ksoap2/transport/HttpTransportSE;->call(Ljava/lang/String;Lorg/ksoap2/SoapEnvelope;)V

    .line 518
    invoke-virtual {v1}, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->getResponse()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 519
    .local v5, "res":Ljava/lang/String;
    invoke-static {v5}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 533
    .end local v1    # "envelope":Lorg/ksoap2/serialization/SoapSerializationEnvelope;
    .end local v4    # "request":Lorg/ksoap2/serialization/SoapObject;
    .end local v5    # "res":Ljava/lang/String;
    .end local v7    # "transporter":Lorg/ksoap2/transport/HttpTransportSE;
    :goto_0
    return-object v5

    .line 524
    :catch_0
    move-exception v0

    .line 525
    .local v0, "e":Lorg/apache/http/conn/ConnectTimeoutException;
    const/4 v8, 0x0

    iput-boolean v8, p0, Lae/gov/mol/helper/PostParseGet;->isTimeOutError:Z

    .line 526
    invoke-virtual {v0}, Lorg/apache/http/conn/ConnectTimeoutException;->printStackTrace()V

    .line 533
    .end local v0    # "e":Lorg/apache/http/conn/ConnectTimeoutException;
    :cond_1
    :goto_1
    const/4 v5, 0x0

    goto :goto_0

    .line 528
    :catch_1
    move-exception v0

    .line 529
    .local v0, "e":Ljava/lang/Exception;
    const/4 v8, 0x1

    iput-boolean v8, p0, Lae/gov/mol/helper/PostParseGet;->isOtherError:Z

    .line 530
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public PostHttpURLJson(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 281
    const/4 v2, 0x0

    .line 282
    .local v2, "httpclient":Lorg/apache/http/client/HttpClient;
    const/4 v5, 0x0

    .line 284
    .local v5, "response":Lorg/apache/http/HttpResponse;
    iput-boolean v8, p0, Lae/gov/mol/helper/PostParseGet;->isOtherError:Z

    .line 288
    invoke-virtual {p0}, Lae/gov/mol/helper/PostParseGet;->check_Internet()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 292
    :try_start_0
    new-instance v4, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v4, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 293
    .local v4, "httppost":Lorg/apache/http/client/methods/HttpPost;
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 294
    .local v1, "httpParameters":Lorg/apache/http/params/HttpParams;
    const/16 v6, 0x2710

    invoke-static {v1, v6}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 295
    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V
    :try_end_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 296
    .end local v2    # "httpclient":Lorg/apache/http/client/HttpClient;
    .local v3, "httpclient":Lorg/apache/http/client/HttpClient;
    :try_start_1
    const-string v6, "Content-Type"

    const-string v7, "text/xml; charset=utf-8"

    invoke-virtual {v4, v6, v7}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    invoke-interface {v3, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 302
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v6

    move-object v2, v3

    .line 314
    .end local v1    # "httpParameters":Lorg/apache/http/params/HttpParams;
    .end local v3    # "httpclient":Lorg/apache/http/client/HttpClient;
    .end local v4    # "httppost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v2    # "httpclient":Lorg/apache/http/client/HttpClient;
    :goto_0
    return-object v6

    .line 305
    :catch_0
    move-exception v0

    .line 306
    .local v0, "e":Lorg/apache/http/conn/ConnectTimeoutException;
    :goto_1
    iput-boolean v8, p0, Lae/gov/mol/helper/PostParseGet;->isTimeOutError:Z

    .line 307
    invoke-virtual {v0}, Lorg/apache/http/conn/ConnectTimeoutException;->printStackTrace()V

    .line 314
    .end local v0    # "e":Lorg/apache/http/conn/ConnectTimeoutException;
    :cond_0
    :goto_2
    const/4 v6, 0x0

    goto :goto_0

    .line 309
    :catch_1
    move-exception v0

    .line 310
    .local v0, "e":Ljava/lang/Exception;
    :goto_3
    const/4 v6, 0x1

    iput-boolean v6, p0, Lae/gov/mol/helper/PostParseGet;->isOtherError:Z

    .line 311
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 309
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "httpclient":Lorg/apache/http/client/HttpClient;
    .restart local v1    # "httpParameters":Lorg/apache/http/params/HttpParams;
    .restart local v3    # "httpclient":Lorg/apache/http/client/HttpClient;
    .restart local v4    # "httppost":Lorg/apache/http/client/methods/HttpPost;
    :catch_2
    move-exception v0

    move-object v2, v3

    .end local v3    # "httpclient":Lorg/apache/http/client/HttpClient;
    .restart local v2    # "httpclient":Lorg/apache/http/client/HttpClient;
    goto :goto_3

    .line 305
    .end local v2    # "httpclient":Lorg/apache/http/client/HttpClient;
    .restart local v3    # "httpclient":Lorg/apache/http/client/HttpClient;
    :catch_3
    move-exception v0

    move-object v2, v3

    .end local v3    # "httpclient":Lorg/apache/http/client/HttpClient;
    .restart local v2    # "httpclient":Lorg/apache/http/client/HttpClient;
    goto :goto_1
.end method

.method public UploadImage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "mUrl"    # Ljava/lang/String;
    .param p2, "mXmlInput"    # Ljava/lang/String;
    .param p3, "mBinaryBase64"    # Ljava/lang/String;
    .param p4, "mNameSpace"    # Ljava/lang/String;
    .param p5, "mMethodName"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 328
    iput-boolean v8, p0, Lae/gov/mol/helper/PostParseGet;->isOtherError:Z

    .line 329
    invoke-virtual {p0}, Lae/gov/mol/helper/PostParseGet;->check_Internet()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 346
    :try_start_0
    new-instance v2, Lorg/ksoap2/serialization/SoapObject;

    invoke-direct {v2, p4, p5}, Lorg/ksoap2/serialization/SoapObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    .local v2, "request":Lorg/ksoap2/serialization/SoapObject;
    const-string v5, "XMLInput"

    invoke-virtual {v2, v5, p2}, Lorg/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lorg/ksoap2/serialization/SoapObject;

    .line 350
    const-string v5, "binaryFile"

    invoke-virtual {v2, v5, p3}, Lorg/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lorg/ksoap2/serialization/SoapObject;

    .line 352
    new-instance v4, Lorg/ksoap2/transport/HttpTransportSE;

    const/16 v5, 0x2710

    invoke-direct {v4, p1, v5}, Lorg/ksoap2/transport/HttpTransportSE;-><init>(Ljava/lang/String;I)V

    .line 354
    .local v4, "transporter":Lorg/ksoap2/transport/HttpTransportSE;
    new-instance v1, Lorg/ksoap2/serialization/SoapSerializationEnvelope;

    .line 355
    const/16 v5, 0x6e

    .line 354
    invoke-direct {v1, v5}, Lorg/ksoap2/serialization/SoapSerializationEnvelope;-><init>(I)V

    .line 357
    .local v1, "envelope":Lorg/ksoap2/serialization/SoapSerializationEnvelope;
    const/4 v5, 0x1

    new-array v5, v5, [Lorg/kxml2/kdom/Element;

    iput-object v5, v1, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->headerOut:[Lorg/kxml2/kdom/Element;

    .line 358
    iget-object v5, v1, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->headerOut:[Lorg/kxml2/kdom/Element;

    const/4 v6, 0x0

    invoke-static {}, Lae/gov/mol/webservices/WebServiceResponse;->buildAuthHeader()Lorg/kxml2/kdom/Element;

    move-result-object v7

    aput-object v7, v5, v6

    .line 360
    const/4 v5, 0x1

    iput-boolean v5, v1, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->dotNet:Z

    .line 361
    invoke-virtual {v1, v2}, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->setOutputSoapObject(Ljava/lang/Object;)V

    .line 363
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Lorg/ksoap2/transport/HttpTransportSE;->call(Ljava/lang/String;Lorg/ksoap2/SoapEnvelope;)V

    .line 367
    invoke-virtual {v1}, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->getResponse()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 368
    .local v3, "res":Ljava/lang/String;
    invoke-static {v3}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 382
    .end local v1    # "envelope":Lorg/ksoap2/serialization/SoapSerializationEnvelope;
    .end local v2    # "request":Lorg/ksoap2/serialization/SoapObject;
    .end local v3    # "res":Ljava/lang/String;
    .end local v4    # "transporter":Lorg/ksoap2/transport/HttpTransportSE;
    :goto_0
    return-object v3

    .line 372
    :catch_0
    move-exception v0

    .line 373
    .local v0, "e":Lorg/apache/http/conn/ConnectTimeoutException;
    iput-boolean v8, p0, Lae/gov/mol/helper/PostParseGet;->isTimeOutError:Z

    .line 374
    invoke-virtual {v0}, Lorg/apache/http/conn/ConnectTimeoutException;->printStackTrace()V

    .line 382
    .end local v0    # "e":Lorg/apache/http/conn/ConnectTimeoutException;
    :cond_0
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 376
    :catch_1
    move-exception v0

    .line 377
    .local v0, "e":Ljava/lang/Exception;
    iput-boolean v9, p0, Lae/gov/mol/helper/PostParseGet;->isOtherError:Z

    .line 378
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public check_Internet()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 544
    iget-object v0, p0, Lae/gov/mol/helper/PostParseGet;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lae/gov/mol/helper/PostParseGet;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 545
    iget-object v0, p0, Lae/gov/mol/helper/PostParseGet;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/helper/PostParseGet;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 547
    iget-object v0, p0, Lae/gov/mol/helper/PostParseGet;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lae/gov/mol/helper/PostParseGet;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 549
    iput-boolean v2, p0, Lae/gov/mol/helper/PostParseGet;->isNetError:Z

    move v0, v1

    .line 555
    :goto_0
    return v0

    .line 554
    :cond_0
    iput-boolean v1, p0, Lae/gov/mol/helper/PostParseGet;->isNetError:Z

    move v0, v2

    .line 555
    goto :goto_0
.end method

.method public getAllService(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 597
    iget-object v0, p0, Lae/gov/mol/helper/PostParseGet;->mContext:Landroid/content/Context;

    const v1, 0x7f0900be

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lae/gov/mol/helper/PostParseGet;->postHttpURLJson(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getAllServiceKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 605
    iget-object v0, p0, Lae/gov/mol/helper/PostParseGet;->mContext:Landroid/content/Context;

    const v1, 0x7f0900c0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lae/gov/mol/helper/PostParseGet;->postHttpURLJson(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getContactUsArrayList(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "Culture"    # Ljava/lang/String;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 588
    iget-object v0, p0, Lae/gov/mol/helper/PostParseGet;->mContext:Landroid/content/Context;

    const v1, 0x7f0900bd

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p2}, Lae/gov/mol/helper/PostParseGet;->postHttpURLJson(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getHttpURLJson(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 233
    const/4 v2, 0x0

    .line 234
    .local v2, "httpclient":Lorg/apache/http/client/HttpClient;
    const/4 v5, 0x0

    .line 236
    .local v5, "response":Lorg/apache/http/HttpResponse;
    iput-boolean v8, p0, Lae/gov/mol/helper/PostParseGet;->isOtherError:Z

    .line 240
    invoke-virtual {p0}, Lae/gov/mol/helper/PostParseGet;->check_Internet()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 244
    :try_start_0
    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v4, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 245
    .local v4, "mHttpGet":Lorg/apache/http/client/methods/HttpGet;
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 246
    .local v1, "httpParameters":Lorg/apache/http/params/HttpParams;
    const/16 v6, 0x2710

    invoke-static {v1, v6}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 247
    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V
    :try_end_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 248
    .end local v2    # "httpclient":Lorg/apache/http/client/HttpClient;
    .local v3, "httpclient":Lorg/apache/http/client/HttpClient;
    :try_start_1
    const-string v6, "Content-Type"

    const-string v7, "text/xml; charset=utf-8"

    invoke-virtual {v4, v6, v7}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    invoke-interface {v3, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 252
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v6

    move-object v2, v3

    .line 263
    .end local v1    # "httpParameters":Lorg/apache/http/params/HttpParams;
    .end local v3    # "httpclient":Lorg/apache/http/client/HttpClient;
    .end local v4    # "mHttpGet":Lorg/apache/http/client/methods/HttpGet;
    .restart local v2    # "httpclient":Lorg/apache/http/client/HttpClient;
    :goto_0
    return-object v6

    .line 254
    :catch_0
    move-exception v0

    .line 255
    .local v0, "e":Lorg/apache/http/conn/ConnectTimeoutException;
    :goto_1
    iput-boolean v8, p0, Lae/gov/mol/helper/PostParseGet;->isTimeOutError:Z

    .line 256
    invoke-virtual {v0}, Lorg/apache/http/conn/ConnectTimeoutException;->printStackTrace()V

    .line 263
    .end local v0    # "e":Lorg/apache/http/conn/ConnectTimeoutException;
    :cond_0
    :goto_2
    const/4 v6, 0x0

    goto :goto_0

    .line 258
    :catch_1
    move-exception v0

    .line 259
    .local v0, "e":Ljava/lang/Exception;
    :goto_3
    const/4 v6, 0x1

    iput-boolean v6, p0, Lae/gov/mol/helper/PostParseGet;->isOtherError:Z

    .line 260
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 258
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "httpclient":Lorg/apache/http/client/HttpClient;
    .restart local v1    # "httpParameters":Lorg/apache/http/params/HttpParams;
    .restart local v3    # "httpclient":Lorg/apache/http/client/HttpClient;
    .restart local v4    # "mHttpGet":Lorg/apache/http/client/methods/HttpGet;
    :catch_2
    move-exception v0

    move-object v2, v3

    .end local v3    # "httpclient":Lorg/apache/http/client/HttpClient;
    .restart local v2    # "httpclient":Lorg/apache/http/client/HttpClient;
    goto :goto_3

    .line 254
    .end local v2    # "httpclient":Lorg/apache/http/client/HttpClient;
    .restart local v3    # "httpclient":Lorg/apache/http/client/HttpClient;
    :catch_3
    move-exception v0

    move-object v2, v3

    .end local v3    # "httpclient":Lorg/apache/http/client/HttpClient;
    .restart local v2    # "httpclient":Lorg/apache/http/client/HttpClient;
    goto :goto_1
.end method

.method public getMasterDataList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 17
    .param p1, "mUrl"    # Ljava/lang/String;
    .param p2, "mXmlInput"    # Ljava/lang/String;
    .param p3, "mNameSpace"    # Ljava/lang/String;
    .param p4, "mMethodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lae/gov/mol/vo/MasterDataListVo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 396
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lae/gov/mol/helper/PostParseGet;->isOtherError:Z

    .line 397
    const/4 v4, 0x0

    .line 398
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lae/gov/mol/vo/MasterDataListVo;>;"
    invoke-virtual/range {p0 .. p0}, Lae/gov/mol/helper/PostParseGet;->check_Internet()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 403
    :try_start_0
    new-instance v6, Lorg/ksoap2/serialization/SoapObject;

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-direct {v6, v0, v1}, Lorg/ksoap2/serialization/SoapObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    .local v6, "request":Lorg/ksoap2/serialization/SoapObject;
    const-string v12, "XMLInput"

    move-object/from16 v0, p2

    invoke-virtual {v6, v12, v0}, Lorg/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lorg/ksoap2/serialization/SoapObject;

    .line 405
    new-instance v10, Lorg/ksoap2/transport/HttpTransportSE;

    const/16 v12, 0x2710

    move-object/from16 v0, p1

    invoke-direct {v10, v0, v12}, Lorg/ksoap2/transport/HttpTransportSE;-><init>(Ljava/lang/String;I)V

    .line 406
    .local v10, "transporter":Lorg/ksoap2/transport/HttpTransportSE;
    new-instance v3, Lorg/ksoap2/serialization/SoapSerializationEnvelope;

    .line 407
    const/16 v12, 0x6e

    .line 406
    invoke-direct {v3, v12}, Lorg/ksoap2/serialization/SoapSerializationEnvelope;-><init>(I)V

    .line 409
    .local v3, "envelope":Lorg/ksoap2/serialization/SoapSerializationEnvelope;
    const/4 v12, 0x1

    new-array v12, v12, [Lorg/kxml2/kdom/Element;

    iput-object v12, v3, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->headerOut:[Lorg/kxml2/kdom/Element;

    .line 410
    iget-object v12, v3, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->headerOut:[Lorg/kxml2/kdom/Element;

    const/4 v13, 0x0

    invoke-static {}, Lae/gov/mol/webservices/WebServiceResponse;->buildAuthHeader()Lorg/kxml2/kdom/Element;

    move-result-object v14

    aput-object v14, v12, v13

    .line 412
    const/4 v12, 0x1

    iput-boolean v12, v3, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->dotNet:Z

    .line 413
    invoke-virtual {v3, v6}, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->setOutputSoapObject(Ljava/lang/Object;)V

    .line 414
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p4

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12, v3}, Lorg/ksoap2/transport/HttpTransportSE;->call(Ljava/lang/String;Lorg/ksoap2/SoapEnvelope;)V

    .line 416
    invoke-virtual {v3}, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->getResponse()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 417
    .local v7, "res":Ljava/lang/String;
    invoke-static {v7}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    .line 440
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 442
    .end local v4    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lae/gov/mol/vo/MasterDataListVo;>;"
    .local v5, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lae/gov/mol/vo/MasterDataListVo;>;"
    :try_start_1
    const-string v12, "</SearchData>"

    invoke-virtual {v7, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 443
    .local v9, "rows":[Ljava/lang/String;
    array-length v13, v9

    const/4 v12, 0x0

    :goto_0
    if-lt v12, v13, :cond_0

    move-object v4, v5

    .line 464
    .end local v3    # "envelope":Lorg/ksoap2/serialization/SoapSerializationEnvelope;
    .end local v5    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lae/gov/mol/vo/MasterDataListVo;>;"
    .end local v6    # "request":Lorg/ksoap2/serialization/SoapObject;
    .end local v7    # "res":Ljava/lang/String;
    .end local v9    # "rows":[Ljava/lang/String;
    .end local v10    # "transporter":Lorg/ksoap2/transport/HttpTransportSE;
    :goto_1
    return-object v5

    .line 443
    .restart local v3    # "envelope":Lorg/ksoap2/serialization/SoapSerializationEnvelope;
    .restart local v5    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lae/gov/mol/vo/MasterDataListVo;>;"
    .restart local v6    # "request":Lorg/ksoap2/serialization/SoapObject;
    .restart local v7    # "res":Ljava/lang/String;
    .restart local v9    # "rows":[Ljava/lang/String;
    .restart local v10    # "transporter":Lorg/ksoap2/transport/HttpTransportSE;
    :cond_0
    aget-object v8, v9, v12

    .line 444
    .local v8, "row":Ljava/lang/String;
    new-instance v11, Lae/gov/mol/vo/MasterDataListVo;

    invoke-direct {v11}, Lae/gov/mol/vo/MasterDataListVo;-><init>()V

    .line 445
    .local v11, "vo":Lae/gov/mol/vo/MasterDataListVo;
    const-string v14, "<CODE>"

    invoke-virtual {v8, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    const-string v15, "</CODE>"

    invoke-virtual {v8, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v8, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    const-string v15, "<CODE>"

    const-string v16, ""

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Lae/gov/mol/vo/MasterDataListVo;->setCode(Ljava/lang/String;)V

    .line 446
    const-string v14, "<DESCRIPTION>"

    invoke-virtual {v8, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    const-string v15, "</DESCRIPTION>"

    invoke-virtual {v8, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v8, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    const-string v15, "<DESCRIPTION>"

    const-string v16, ""

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Lae/gov/mol/vo/MasterDataListVo;->setDescription(Ljava/lang/String;)V

    .line 447
    invoke-virtual {v11}, Lae/gov/mol/vo/MasterDataListVo;->getDescription()Ljava/lang/String;

    move-result-object v14

    const-string v15, "&amp;"

    const-string v16, " & "

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Lae/gov/mol/vo/MasterDataListVo;->setDescription(Ljava/lang/String;)V

    .line 448
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 443
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 454
    .end local v3    # "envelope":Lorg/ksoap2/serialization/SoapSerializationEnvelope;
    .end local v5    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lae/gov/mol/vo/MasterDataListVo;>;"
    .end local v6    # "request":Lorg/ksoap2/serialization/SoapObject;
    .end local v7    # "res":Ljava/lang/String;
    .end local v8    # "row":Ljava/lang/String;
    .end local v9    # "rows":[Ljava/lang/String;
    .end local v10    # "transporter":Lorg/ksoap2/transport/HttpTransportSE;
    .end local v11    # "vo":Lae/gov/mol/vo/MasterDataListVo;
    .restart local v4    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lae/gov/mol/vo/MasterDataListVo;>;"
    :catch_0
    move-exception v2

    .line 455
    .local v2, "e":Lorg/apache/http/conn/ConnectTimeoutException;
    :goto_2
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lae/gov/mol/helper/PostParseGet;->isTimeOutError:Z

    .line 456
    invoke-virtual {v2}, Lorg/apache/http/conn/ConnectTimeoutException;->printStackTrace()V

    .end local v2    # "e":Lorg/apache/http/conn/ConnectTimeoutException;
    :cond_1
    :goto_3
    move-object v5, v4

    .line 464
    .local v5, "list":Ljava/lang/Object;, "Ljava/util/ArrayList<Lae/gov/mol/vo/MasterDataListVo;>;"
    goto :goto_1

    .line 458
    .end local v5    # "list":Ljava/lang/Object;, "Ljava/util/ArrayList<Lae/gov/mol/vo/MasterDataListVo;>;"
    :catch_1
    move-exception v2

    .line 459
    .local v2, "e":Ljava/lang/Exception;
    :goto_4
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lae/gov/mol/helper/PostParseGet;->isOtherError:Z

    .line 460
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 458
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lae/gov/mol/vo/MasterDataListVo;>;"
    .restart local v3    # "envelope":Lorg/ksoap2/serialization/SoapSerializationEnvelope;
    .local v5, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lae/gov/mol/vo/MasterDataListVo;>;"
    .restart local v6    # "request":Lorg/ksoap2/serialization/SoapObject;
    .restart local v7    # "res":Ljava/lang/String;
    .restart local v10    # "transporter":Lorg/ksoap2/transport/HttpTransportSE;
    :catch_2
    move-exception v2

    move-object v4, v5

    .end local v5    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lae/gov/mol/vo/MasterDataListVo;>;"
    .restart local v4    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lae/gov/mol/vo/MasterDataListVo;>;"
    goto :goto_4

    .line 454
    .end local v4    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lae/gov/mol/vo/MasterDataListVo;>;"
    .restart local v5    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lae/gov/mol/vo/MasterDataListVo;>;"
    :catch_3
    move-exception v2

    move-object v4, v5

    .end local v5    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lae/gov/mol/vo/MasterDataListVo;>;"
    .restart local v4    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lae/gov/mol/vo/MasterDataListVo;>;"
    goto :goto_2
.end method

.method public getMinistersNewsDetail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "ParentId"    # Ljava/lang/String;
    .param p2, "Culture"    # Ljava/lang/String;
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 579
    iget-object v0, p0, Lae/gov/mol/helper/PostParseGet;->mContext:Landroid/content/Context;

    const v1, 0x7f0900bc

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p3}, Lae/gov/mol/helper/PostParseGet;->postHttpURLJson(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getMinistersNewsList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "Pagesize"    # Ljava/lang/String;
    .param p2, "Culture"    # Ljava/lang/String;
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 568
    iget-object v0, p0, Lae/gov/mol/helper/PostParseGet;->mContext:Landroid/content/Context;

    const v1, 0x7f0900bb

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p3}, Lae/gov/mol/helper/PostParseGet;->postHttpURLJson(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getmFillObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lae/gov/mol/helper/PostParseGet;->mFillObject:Ljava/lang/Object;

    return-object v0
.end method

.method public isDeviceToken()Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lae/gov/mol/helper/PostParseGet;->isDeviceToken:Z

    return v0
.end method

.method public postHttpURLJson(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "mObject"    # Ljava/lang/Object;

    .prologue
    const/4 v9, 0x0

    .line 171
    const/4 v3, 0x0

    .line 172
    .local v3, "httpclient":Lorg/apache/http/client/HttpClient;
    const/4 v6, 0x0

    .line 173
    .local v6, "response":Lorg/apache/http/HttpResponse;
    const-string v0, ""

    .line 174
    .local v0, "data":Ljava/lang/String;
    iput-boolean v9, p0, Lae/gov/mol/helper/PostParseGet;->isOtherError:Z

    .line 176
    const/4 v7, 0x0

    iput-object v7, p0, Lae/gov/mol/helper/PostParseGet;->mFillObject:Ljava/lang/Object;

    .line 178
    invoke-virtual {p0}, Lae/gov/mol/helper/PostParseGet;->check_Internet()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 181
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v7

    iput-object v7, p0, Lae/gov/mol/helper/PostParseGet;->mFillObject:Ljava/lang/Object;

    .line 183
    new-instance v5, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v5, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 184
    .local v5, "httppost":Lorg/apache/http/client/methods/HttpPost;
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 185
    .local v2, "httpParameters":Lorg/apache/http/params/HttpParams;
    const/16 v7, 0x2710

    invoke-static {v2, v7}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 186
    new-instance v4, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v4, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V
    :try_end_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 188
    .end local v3    # "httpclient":Lorg/apache/http/client/HttpClient;
    .local v4, "httpclient":Lorg/apache/http/client/HttpClient;
    :try_start_1
    const-string v7, "Content-Type"

    const-string v8, "application/json; charset=utf-8"

    invoke-virtual {v5, v7, v8}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-interface {v4, v5}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 193
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    invoke-static {v7}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v0

    .line 197
    const-string v7, "["

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 198
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "{\"resources\": "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "}"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 201
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Final Data :"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    .line 202
    iget-object v7, p0, Lae/gov/mol/helper/PostParseGet;->mGson:Lcom/google/gson/Gson;

    iget-object v8, p0, Lae/gov/mol/helper/PostParseGet;->mFillObject:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v7, v0, v8}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, p0, Lae/gov/mol/helper/PostParseGet;->mFillObject:Ljava/lang/Object;
    :try_end_1
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object v3, v4

    .line 213
    .end local v2    # "httpParameters":Lorg/apache/http/params/HttpParams;
    .end local v4    # "httpclient":Lorg/apache/http/client/HttpClient;
    .end local v5    # "httppost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v3    # "httpclient":Lorg/apache/http/client/HttpClient;
    :cond_1
    :goto_0
    iget-object v7, p0, Lae/gov/mol/helper/PostParseGet;->mFillObject:Ljava/lang/Object;

    return-object v7

    .line 204
    :catch_0
    move-exception v1

    .line 205
    .local v1, "e":Lorg/apache/http/conn/ConnectTimeoutException;
    :goto_1
    iput-boolean v9, p0, Lae/gov/mol/helper/PostParseGet;->isTimeOutError:Z

    .line 206
    invoke-virtual {v1}, Lorg/apache/http/conn/ConnectTimeoutException;->printStackTrace()V

    goto :goto_0

    .line 208
    .end local v1    # "e":Lorg/apache/http/conn/ConnectTimeoutException;
    :catch_1
    move-exception v1

    .line 209
    .local v1, "e":Ljava/lang/Exception;
    :goto_2
    const/4 v7, 0x1

    iput-boolean v7, p0, Lae/gov/mol/helper/PostParseGet;->isOtherError:Z

    .line 210
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 208
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "httpclient":Lorg/apache/http/client/HttpClient;
    .restart local v2    # "httpParameters":Lorg/apache/http/params/HttpParams;
    .restart local v4    # "httpclient":Lorg/apache/http/client/HttpClient;
    .restart local v5    # "httppost":Lorg/apache/http/client/methods/HttpPost;
    :catch_2
    move-exception v1

    move-object v3, v4

    .end local v4    # "httpclient":Lorg/apache/http/client/HttpClient;
    .restart local v3    # "httpclient":Lorg/apache/http/client/HttpClient;
    goto :goto_2

    .line 204
    .end local v3    # "httpclient":Lorg/apache/http/client/HttpClient;
    .restart local v4    # "httpclient":Lorg/apache/http/client/HttpClient;
    :catch_3
    move-exception v1

    move-object v3, v4

    .end local v4    # "httpclient":Lorg/apache/http/client/HttpClient;
    .restart local v3    # "httpclient":Lorg/apache/http/client/HttpClient;
    goto :goto_1
.end method

.method public postHttpURLJson(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "mObject"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .local p2, "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    const/4 v9, 0x0

    .line 109
    const/4 v3, 0x0

    .line 110
    .local v3, "httpclient":Lorg/apache/http/client/HttpClient;
    const/4 v6, 0x0

    .line 111
    .local v6, "response":Lorg/apache/http/HttpResponse;
    const-string v0, ""

    .line 112
    .local v0, "data":Ljava/lang/String;
    iput-boolean v9, p0, Lae/gov/mol/helper/PostParseGet;->isOtherError:Z

    .line 114
    const/4 v7, 0x0

    iput-object v7, p0, Lae/gov/mol/helper/PostParseGet;->mFillObject:Ljava/lang/Object;

    .line 116
    invoke-virtual {p0}, Lae/gov/mol/helper/PostParseGet;->check_Internet()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 119
    :try_start_0
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v7

    iput-object v7, p0, Lae/gov/mol/helper/PostParseGet;->mFillObject:Ljava/lang/Object;

    .line 121
    new-instance v5, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v5, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 122
    .local v5, "httppost":Lorg/apache/http/client/methods/HttpPost;
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 123
    .local v2, "httpParameters":Lorg/apache/http/params/HttpParams;
    const/16 v7, 0x2710

    invoke-static {v2, v7}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 124
    new-instance v4, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v4, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V
    :try_end_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 126
    .end local v3    # "httpclient":Lorg/apache/http/client/HttpClient;
    .local v4, "httpclient":Lorg/apache/http/client/HttpClient;
    if-eqz p2, :cond_0

    .line 127
    :try_start_1
    new-instance v7, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-direct {v7, p2}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V

    invoke-virtual {v5, v7}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 131
    :cond_0
    invoke-interface {v4, v5}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 132
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    invoke-static {v7}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v0

    .line 136
    const-string v7, "["

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 137
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "{\"resources\": "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "}"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 140
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Final Data :"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    .line 141
    iget-object v7, p0, Lae/gov/mol/helper/PostParseGet;->mGson:Lcom/google/gson/Gson;

    iget-object v8, p0, Lae/gov/mol/helper/PostParseGet;->mFillObject:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v7, v0, v8}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, p0, Lae/gov/mol/helper/PostParseGet;->mFillObject:Ljava/lang/Object;
    :try_end_1
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object v3, v4

    .line 152
    .end local v2    # "httpParameters":Lorg/apache/http/params/HttpParams;
    .end local v4    # "httpclient":Lorg/apache/http/client/HttpClient;
    .end local v5    # "httppost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v3    # "httpclient":Lorg/apache/http/client/HttpClient;
    :cond_2
    :goto_0
    iget-object v7, p0, Lae/gov/mol/helper/PostParseGet;->mFillObject:Ljava/lang/Object;

    return-object v7

    .line 143
    :catch_0
    move-exception v1

    .line 144
    .local v1, "e":Lorg/apache/http/conn/ConnectTimeoutException;
    :goto_1
    iput-boolean v9, p0, Lae/gov/mol/helper/PostParseGet;->isTimeOutError:Z

    .line 145
    invoke-virtual {v1}, Lorg/apache/http/conn/ConnectTimeoutException;->printStackTrace()V

    goto :goto_0

    .line 147
    .end local v1    # "e":Lorg/apache/http/conn/ConnectTimeoutException;
    :catch_1
    move-exception v1

    .line 148
    .local v1, "e":Ljava/lang/Exception;
    :goto_2
    const/4 v7, 0x1

    iput-boolean v7, p0, Lae/gov/mol/helper/PostParseGet;->isOtherError:Z

    .line 149
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 147
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "httpclient":Lorg/apache/http/client/HttpClient;
    .restart local v2    # "httpParameters":Lorg/apache/http/params/HttpParams;
    .restart local v4    # "httpclient":Lorg/apache/http/client/HttpClient;
    .restart local v5    # "httppost":Lorg/apache/http/client/methods/HttpPost;
    :catch_2
    move-exception v1

    move-object v3, v4

    .end local v4    # "httpclient":Lorg/apache/http/client/HttpClient;
    .restart local v3    # "httpclient":Lorg/apache/http/client/HttpClient;
    goto :goto_2

    .line 143
    .end local v3    # "httpclient":Lorg/apache/http/client/HttpClient;
    .restart local v4    # "httpclient":Lorg/apache/http/client/HttpClient;
    :catch_3
    move-exception v1

    move-object v3, v4

    .end local v4    # "httpclient":Lorg/apache/http/client/HttpClient;
    .restart local v3    # "httpclient":Lorg/apache/http/client/HttpClient;
    goto :goto_1
.end method

.method public setDeviceToken(Z)V
    .locals 0
    .param p1, "isDeviceToken"    # Z

    .prologue
    .line 91
    iput-boolean p1, p0, Lae/gov/mol/helper/PostParseGet;->isDeviceToken:Z

    .line 92
    return-void
.end method

.method public setmFillObject(Ljava/lang/Object;)V
    .locals 0
    .param p1, "mFillObject"    # Ljava/lang/Object;

    .prologue
    .line 83
    iput-object p1, p0, Lae/gov/mol/helper/PostParseGet;->mFillObject:Ljava/lang/Object;

    .line 84
    return-void
.end method
