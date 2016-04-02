.class public Lorg/apache/cordova/IceCreamCordovaWebViewClient;
.super Lorg/apache/cordova/CordovaWebViewClient;
.source "IceCreamCordovaWebViewClient.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "IceCreamCordovaWebViewClient"


# direct methods
.method public constructor <init>(Lorg/apache/cordova/api/CordovaInterface;)V
    .locals 0
    .param p1, "cordova"    # Lorg/apache/cordova/api/CordovaInterface;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lorg/apache/cordova/CordovaWebViewClient;-><init>(Lorg/apache/cordova/api/CordovaInterface;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Lorg/apache/cordova/api/CordovaInterface;Lorg/apache/cordova/CordovaWebView;)V
    .locals 0
    .param p1, "cordova"    # Lorg/apache/cordova/api/CordovaInterface;
    .param p2, "view"    # Lorg/apache/cordova/CordovaWebView;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lorg/apache/cordova/CordovaWebViewClient;-><init>(Lorg/apache/cordova/api/CordovaInterface;Lorg/apache/cordova/CordovaWebView;)V

    .line 45
    return-void
.end method

.method private static needsSpecialsInAssetUrlFix(Landroid/net/Uri;)Z
    .locals 4
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 78
    invoke-static {p0}, Lorg/apache/cordova/CordovaResourceApi;->getUriType(Landroid/net/Uri;)I

    move-result v2

    if-eq v2, v1, :cond_1

    .line 94
    :cond_0
    :goto_0
    return v0

    .line 81
    :cond_1
    invoke-virtual {p0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    :cond_2
    move v0, v1

    .line 82
    goto :goto_0

    .line 85
    :cond_3
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 89
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move v0, v1

    .line 92
    goto :goto_0

    .line 89
    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 10
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 51
    :try_start_0
    const-string v6, "http:"

    invoke-virtual {p2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "https:"

    invoke-virtual {p2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_0
    invoke-static {p2}, Lorg/apache/cordova/Config;->isUrlWhiteListed(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 52
    const-string v6, "IceCreamCordovaWebViewClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "URL blocked by whitelist: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/apache/cordova/api/LOG;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    new-instance v6, Landroid/webkit/WebResourceResponse;

    const-string v7, "text/plain"

    const-string v8, "UTF-8"

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    move-object v5, v6

    .line 73
    :cond_1
    :goto_0
    return-object v5

    .line 57
    :cond_2
    iget-object v6, p0, Lorg/apache/cordova/IceCreamCordovaWebViewClient;->appView:Lorg/apache/cordova/CordovaWebView;

    invoke-virtual {v6}, Lorg/apache/cordova/CordovaWebView;->getResourceApi()Lorg/apache/cordova/CordovaResourceApi;

    move-result-object v3

    .line 58
    .local v3, "resourceApi":Lorg/apache/cordova/CordovaResourceApi;
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 60
    .local v1, "origUri":Landroid/net/Uri;
    invoke-virtual {v3, v1}, Lorg/apache/cordova/CordovaResourceApi;->remapUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    .line 62
    .local v2, "remappedUri":Landroid/net/Uri;
    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {v1}, Lorg/apache/cordova/IceCreamCordovaWebViewClient;->needsSpecialsInAssetUrlFix(Landroid/net/Uri;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 63
    :cond_3
    const/4 v6, 0x1

    invoke-virtual {v3, v2, v6}, Lorg/apache/cordova/CordovaResourceApi;->openForRead(Landroid/net/Uri;Z)Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;

    move-result-object v4

    .line 64
    .local v4, "result":Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;
    new-instance v6, Landroid/webkit/WebResourceResponse;

    iget-object v7, v4, Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;->mimeType:Ljava/lang/String;

    const-string v8, "UTF-8"

    iget-object v9, v4, Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;->inputStream:Ljava/io/InputStream;

    invoke-direct {v6, v7, v8, v9}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v6

    goto :goto_0

    .line 68
    .end local v1    # "origUri":Landroid/net/Uri;
    .end local v2    # "remappedUri":Landroid/net/Uri;
    .end local v3    # "resourceApi":Lorg/apache/cordova/CordovaResourceApi;
    .end local v4    # "result":Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/io/IOException;
    instance-of v6, v0, Ljava/io/FileNotFoundException;

    if-nez v6, :cond_4

    .line 70
    const-string v6, "IceCreamCordovaWebViewClient"

    const-string v7, "Error occurred while loading a file (returning a 404)."

    invoke-static {v6, v7, v0}, Lorg/apache/cordova/api/LOG;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 73
    :cond_4
    new-instance v6, Landroid/webkit/WebResourceResponse;

    const-string v7, "text/plain"

    const-string v8, "UTF-8"

    invoke-direct {v6, v7, v8, v5}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    move-object v5, v6

    goto :goto_0
.end method
