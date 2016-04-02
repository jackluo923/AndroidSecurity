.class public Lmobi/monaca/framework/view/MonacaPageGingerbreadWebViewClient;
.super Lorg/apache/cordova/CordovaWebViewClient;
.source "MonacaPageGingerbreadWebViewClient.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected isRemote:Z

.field protected monacaPage:Lmobi/monaca/framework/MonacaPageActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lmobi/monaca/framework/view/MonacaPageGingerbreadWebViewClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/monaca/framework/view/MonacaPageGingerbreadWebViewClient;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lmobi/monaca/framework/MonacaPageActivity;Lorg/apache/cordova/CordovaWebView;)V
    .locals 0
    .param p1, "monacaPage"    # Lmobi/monaca/framework/MonacaPageActivity;
    .param p2, "webView"    # Lorg/apache/cordova/CordovaWebView;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lorg/apache/cordova/CordovaWebViewClient;-><init>(Lorg/apache/cordova/api/CordovaInterface;Lorg/apache/cordova/CordovaWebView;)V

    .line 36
    iput-object p1, p0, Lmobi/monaca/framework/view/MonacaPageGingerbreadWebViewClient;->monacaPage:Lmobi/monaca/framework/MonacaPageActivity;

    .line 37
    return-void
.end method


# virtual methods
.method public doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "isReload"    # Z

    .prologue
    .line 66
    invoke-super {p0, p1, p2, p3}, Lorg/apache/cordova/CordovaWebViewClient;->doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 67
    return-void
.end method

.method public onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "dontResend"    # Landroid/os/Message;
    .param p3, "resend"    # Landroid/os/Message;

    .prologue
    .line 77
    invoke-super {p0, p1, p2, p3}, Lorg/apache/cordova/CordovaWebViewClient;->onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V

    .line 78
    return-void
.end method

.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 71
    iget-object v0, p0, Lmobi/monaca/framework/view/MonacaPageGingerbreadWebViewClient;->monacaPage:Lmobi/monaca/framework/MonacaPageActivity;

    invoke-virtual {v0, p1, p2}, Lmobi/monaca/framework/MonacaPageActivity;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 72
    invoke-super {p0, p1, p2}, Lorg/apache/cordova/CordovaWebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 82
    iget-object v0, p0, Lmobi/monaca/framework/view/MonacaPageGingerbreadWebViewClient;->monacaPage:Lmobi/monaca/framework/MonacaPageActivity;

    invoke-virtual {v0, p1, p2}, Lmobi/monaca/framework/MonacaPageActivity;->onPageFinished(Landroid/view/View;Ljava/lang/String;)V

    .line 83
    invoke-super {p0, p1, p2}, Lorg/apache/cordova/CordovaWebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 88
    iget-object v0, p0, Lmobi/monaca/framework/view/MonacaPageGingerbreadWebViewClient;->monacaPage:Lmobi/monaca/framework/MonacaPageActivity;

    invoke-virtual {v0, p1, p2}, Lmobi/monaca/framework/MonacaPageActivity;->onPageStarted(Landroid/view/View;Ljava/lang/String;)V

    .line 89
    invoke-super {p0, p1, p2, p3}, Lorg/apache/cordova/CordovaWebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 90
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 98
    iget-object v0, p0, Lmobi/monaca/framework/view/MonacaPageGingerbreadWebViewClient;->monacaPage:Lmobi/monaca/framework/MonacaPageActivity;

    invoke-virtual {v0, p1, p2, p3, p4}, Lmobi/monaca/framework/MonacaPageActivity;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 100
    const/16 v0, -0xe

    if-eq p2, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 101
    :cond_0
    iget-object v0, p0, Lmobi/monaca/framework/view/MonacaPageGingerbreadWebViewClient;->monacaPage:Lmobi/monaca/framework/MonacaPageActivity;

    invoke-virtual {v0, p4}, Lmobi/monaca/framework/MonacaPageActivity;->push404Page(Ljava/lang/String;)V

    .line 105
    :goto_0
    return-void

    .line 103
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/cordova/CordovaWebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/HttpAuthHandler;
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "realm"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 117
    invoke-virtual {p1, p3, p4}, Landroid/webkit/WebView;->getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, "up":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    aget-object v1, v0, v3

    if-eqz v1, :cond_0

    aget-object v1, v0, v4

    if-eqz v1, :cond_0

    .line 120
    aget-object v1, v0, v3

    aget-object v2, v0, v4

    invoke-virtual {p2, v1, v2}, Landroid/webkit/HttpAuthHandler;->proceed(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :goto_0
    return-void

    .line 122
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/cordova/CordovaWebViewClient;->onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/SslErrorHandler;
    .param p3, "error"    # Landroid/net/http/SslError;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 110
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 111
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 10
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "uri"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x1

    .line 41
    iget-object v1, p0, Lmobi/monaca/framework/view/MonacaPageGingerbreadWebViewClient;->monacaPage:Lmobi/monaca/framework/MonacaPageActivity;

    invoke-virtual {v1}, Lmobi/monaca/framework/MonacaPageActivity;->getApplication()Landroid/app/Application;

    move-result-object v7

    check-cast v7, Lmobi/monaca/framework/MonacaApplication;

    .line 42
    .local v7, "app":Lmobi/monaca/framework/MonacaApplication;
    invoke-virtual {v7, p2}, Lmobi/monaca/framework/MonacaApplication;->allowAccess(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 43
    new-instance v0, Lmobi/monaca/utils/log/LogItem;

    invoke-static {}, Lmobi/monaca/utils/TimeStamp;->getCurrentTimeStamp()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lmobi/monaca/utils/log/LogItem$Source;->SYSTEM:Lmobi/monaca/utils/log/LogItem$Source;

    sget-object v3, Lmobi/monaca/utils/log/LogItem$LogLevel;->ERROR:Lmobi/monaca/utils/log/LogItem$LogLevel;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lmobi/monaca/framework/view/MonacaPageGingerbreadWebViewClient;->monacaPage:Lmobi/monaca/framework/MonacaPageActivity;

    sget v9, Lmobi/monaca/framework/psedo/R$string;->error_notallowed:I

    invoke-virtual {v5, v9}, Lmobi/monaca/framework/MonacaPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-direct/range {v0 .. v6}, Lmobi/monaca/utils/log/LogItem;-><init>(Ljava/lang/String;Lmobi/monaca/utils/log/LogItem$Source;Lmobi/monaca/utils/log/LogItem$LogLevel;Ljava/lang/String;Ljava/lang/String;I)V

    .line 45
    .local v0, "logItem":Lmobi/monaca/utils/log/LogItem;
    iget-object v1, p0, Lmobi/monaca/framework/view/MonacaPageGingerbreadWebViewClient;->monacaPage:Lmobi/monaca/framework/MonacaPageActivity;

    invoke-virtual {v1}, Lmobi/monaca/framework/MonacaPageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lmobi/monaca/framework/util/MyLog;->sendBroadcastDebugLog(Landroid/content/Context;Lmobi/monaca/utils/log/LogItem;)V

    move v6, v8

    .line 61
    .end local v0    # "logItem":Lmobi/monaca/utils/log/LogItem;
    :cond_0
    :goto_0
    return v6

    .line 48
    :cond_1
    if-eqz p2, :cond_0

    .line 49
    sget v1, Lmobi/monaca/framework/psedo/R$string;->raw_home_url:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 51
    iget-object v1, p0, Lmobi/monaca/framework/view/MonacaPageGingerbreadWebViewClient;->monacaPage:Lmobi/monaca/framework/MonacaPageActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lmobi/monaca/framework/MonacaPageActivity;->goHomeAsync(Lorg/json/JSONObject;)V

    move v6, v8

    .line 52
    goto :goto_0

    .line 53
    :cond_2
    iget-object v1, p0, Lmobi/monaca/framework/view/MonacaPageGingerbreadWebViewClient;->monacaPage:Lmobi/monaca/framework/MonacaPageActivity;

    invoke-static {v1, p2}, Lmobi/monaca/framework/util/UrlUtil;->isMonacaUri(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p2}, Lmobi/monaca/framework/util/UrlUtil;->isEmbedding(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 55
    iget-object v1, p0, Lmobi/monaca/framework/view/MonacaPageGingerbreadWebViewClient;->monacaPage:Lmobi/monaca/framework/MonacaPageActivity;

    invoke-virtual {v1, p2, v8}, Lmobi/monaca/framework/MonacaPageActivity;->loadUri(Ljava/lang/String;Z)V

    move v6, v8

    .line 56
    goto :goto_0

    .line 58
    :cond_3
    invoke-super {p0, p1, p2}, Lorg/apache/cordova/CordovaWebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v6

    goto :goto_0
.end method
