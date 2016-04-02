.class public Lmobi/monaca/framework/view/MonacaPageHoneyCombWebViewClient;
.super Lmobi/monaca/framework/view/MonacaPageGingerbreadWebViewClient;
.source "MonacaPageHoneyCombWebViewClient.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lmobi/monaca/framework/view/MonacaPageHoneyCombWebViewClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/monaca/framework/view/MonacaPageHoneyCombWebViewClient;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lmobi/monaca/framework/MonacaPageActivity;Lorg/apache/cordova/CordovaWebView;)V
    .locals 0
    .param p1, "monacaPage"    # Lmobi/monaca/framework/MonacaPageActivity;
    .param p2, "cordovaWebView"    # Lorg/apache/cordova/CordovaWebView;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lmobi/monaca/framework/view/MonacaPageGingerbreadWebViewClient;-><init>(Lmobi/monaca/framework/MonacaPageActivity;Lorg/apache/cordova/CordovaWebView;)V

    .line 28
    return-void
.end method


# virtual methods
.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 9
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 32
    iget-object v1, p0, Lmobi/monaca/framework/view/MonacaPageHoneyCombWebViewClient;->monacaPage:Lmobi/monaca/framework/MonacaPageActivity;

    invoke-virtual {v1}, Lmobi/monaca/framework/MonacaPageActivity;->getApplication()Landroid/app/Application;

    move-result-object v7

    check-cast v7, Lmobi/monaca/framework/MonacaApplication;

    .line 33
    .local v7, "app":Lmobi/monaca/framework/MonacaApplication;
    invoke-virtual {v7, p2}, Lmobi/monaca/framework/MonacaApplication;->allowAccess(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 35
    new-instance v0, Lmobi/monaca/utils/log/LogItem;

    invoke-static {}, Lmobi/monaca/utils/TimeStamp;->getCurrentTimeStamp()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lmobi/monaca/utils/log/LogItem$Source;->SYSTEM:Lmobi/monaca/utils/log/LogItem$Source;

    sget-object v3, Lmobi/monaca/utils/log/LogItem$LogLevel;->ERROR:Lmobi/monaca/utils/log/LogItem$LogLevel;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lmobi/monaca/framework/view/MonacaPageHoneyCombWebViewClient;->monacaPage:Lmobi/monaca/framework/MonacaPageActivity;

    sget v6, Lmobi/monaca/framework/psedo/R$string;->error_notallowed:I

    invoke-virtual {v5, v6}, Lmobi/monaca/framework/MonacaPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lmobi/monaca/utils/log/LogItem;-><init>(Ljava/lang/String;Lmobi/monaca/utils/log/LogItem$Source;Lmobi/monaca/utils/log/LogItem$LogLevel;Ljava/lang/String;Ljava/lang/String;I)V

    .line 36
    .local v0, "logItem":Lmobi/monaca/utils/log/LogItem;
    iget-object v1, p0, Lmobi/monaca/framework/view/MonacaPageHoneyCombWebViewClient;->monacaPage:Lmobi/monaca/framework/MonacaPageActivity;

    invoke-virtual {v1}, Lmobi/monaca/framework/MonacaPageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lmobi/monaca/framework/util/MyLog;->sendBroadcastDebugLog(Landroid/content/Context;Lmobi/monaca/utils/log/LogItem;)V

    .line 37
    new-instance v8, Landroid/webkit/WebResourceResponse;

    iget-object v1, p0, Lmobi/monaca/framework/view/MonacaPageHoneyCombWebViewClient;->monacaPage:Lmobi/monaca/framework/MonacaPageActivity;

    sget v2, Lmobi/monaca/framework/psedo/R$string;->mine_type:I

    invoke-virtual {v1, v2}, Lmobi/monaca/framework/MonacaPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lmobi/monaca/framework/view/MonacaPageHoneyCombWebViewClient;->monacaPage:Lmobi/monaca/framework/MonacaPageActivity;

    sget v3, Lmobi/monaca/framework/psedo/R$string;->encoding:I

    invoke-virtual {v2, v3}, Lmobi/monaca/framework/MonacaPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/ByteArrayInputStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lmobi/monaca/framework/view/MonacaPageHoneyCombWebViewClient;->monacaPage:Lmobi/monaca/framework/MonacaPageActivity;

    sget v6, Lmobi/monaca/framework/psedo/R$string;->error_notallowed:I

    invoke-virtual {v5, v6}, Lmobi/monaca/framework/MonacaPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v8, v1, v2, v3}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    .line 44
    .end local v0    # "logItem":Lmobi/monaca/utils/log/LogItem;
    :goto_0
    return-object v8

    :cond_0
    invoke-super {p0, p1, p2}, Lmobi/monaca/framework/view/MonacaPageGingerbreadWebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v8

    goto :goto_0
.end method
