.class public Lcom/inmobi/androidsdk/impl/imai/IMAIController;
.super Ljava/lang/Object;


# static fields
.field public static final IMAI_BRIDGE:Ljava/lang/String; = "imaiController"


# instance fields
.field private transient a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/inmobi/re/container/IMWebView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/inmobi/re/container/IMWebView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/inmobi/androidsdk/impl/imai/IMAICore;->initialize()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/impl/imai/IMAIController;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public getPlatformVersion()Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "[InMobi]-[Network]-4.4.1"

    const-string v1, "get platform version"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "[InMobi]-[Network]-4.4.1"

    const-string v1, "get sdk version"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/inmobi/commons/InMobi;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public log(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "[InMobi]-[Network]-4.4.1"

    invoke-static {v0, p1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public openEmbedded(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Lcom/inmobi/commons/internal/ApiStatCollector;->getLogger()Lcom/inmobi/commons/metric/Logger;

    move-result-object v0

    new-instance v1, Lcom/inmobi/commons/metric/EventLog;

    new-instance v2, Lcom/inmobi/commons/internal/ApiStatCollector$ApiEventType;

    const/16 v3, 0x3e9

    invoke-direct {v2, v3}, Lcom/inmobi/commons/internal/ApiStatCollector$ApiEventType;-><init>(I)V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/inmobi/commons/metric/EventLog;-><init>(Lcom/inmobi/commons/metric/EventType;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/metric/Logger;->logEvent(Lcom/inmobi/commons/metric/EventLog;)V

    :try_start_0
    const-string v0, "[InMobi]-[Network]-4.4.1"

    const-string v1, "IMAI open Embedded"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/inmobi/androidsdk/impl/imai/IMAICore;->validateURL(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/imai/IMAIController;->a:Ljava/lang/ref/WeakReference;

    const-string v1, "Null url passed"

    const-string v2, "openEmbedded"

    invoke-static {v0, v1, v2, p1}, Lcom/inmobi/androidsdk/impl/imai/IMAICore;->fireErrorEvent(Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "https"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/imai/IMAIController;->a:Ljava/lang/ref/WeakReference;

    invoke-static {v0, p1}, Lcom/inmobi/androidsdk/impl/imai/IMAICore;->launchEmbeddedBrowser(Ljava/lang/ref/WeakReference;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/imai/IMAIController;->a:Ljava/lang/ref/WeakReference;

    invoke-static {v0, p1}, Lcom/inmobi/androidsdk/impl/imai/IMAICore;->fireOpenEmbeddedSuccessful(Ljava/lang/ref/WeakReference;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/inmobi/androidsdk/impl/imai/IMAIController;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "openEmbedded"

    invoke-static {v1, v2, v3, p1}, Lcom/inmobi/androidsdk/impl/imai/IMAICore;->fireErrorEvent(Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "[InMobi]-[Network]-4.4.1"

    const-string v2, "IMAI openEmbedded failed"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/inmobi/androidsdk/impl/imai/IMAIController;->openExternal(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public openExternal(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Lcom/inmobi/commons/internal/ApiStatCollector;->getLogger()Lcom/inmobi/commons/metric/Logger;

    move-result-object v0

    new-instance v1, Lcom/inmobi/commons/metric/EventLog;

    new-instance v2, Lcom/inmobi/commons/internal/ApiStatCollector$ApiEventType;

    const/16 v3, 0x3ea

    invoke-direct {v2, v3}, Lcom/inmobi/commons/internal/ApiStatCollector$ApiEventType;-><init>(I)V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/inmobi/commons/metric/EventLog;-><init>(Lcom/inmobi/commons/metric/EventType;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/metric/Logger;->logEvent(Lcom/inmobi/commons/metric/EventLog;)V

    :try_start_0
    const-string v0, "[InMobi]-[Network]-4.4.1"

    const-string v1, "IMAI open external"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/inmobi/androidsdk/impl/imai/IMAICore;->validateURL(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/imai/IMAIController;->a:Ljava/lang/ref/WeakReference;

    const-string v1, "Null url passed"

    const-string v2, "openExternal"

    invoke-static {v0, v1, v2, p1}, Lcom/inmobi/androidsdk/impl/imai/IMAICore;->fireErrorEvent(Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Lcom/inmobi/androidsdk/impl/imai/IMAICore;->launchExternalApp(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/imai/IMAIController;->a:Ljava/lang/ref/WeakReference;

    invoke-static {v0, p1}, Lcom/inmobi/androidsdk/impl/imai/IMAICore;->fireOpenExternalSuccessful(Ljava/lang/ref/WeakReference;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/inmobi/androidsdk/impl/imai/IMAIController;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "openExternal"

    invoke-static {v1, v2, v3, p1}, Lcom/inmobi/androidsdk/impl/imai/IMAICore;->fireErrorEvent(Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "[InMobi]-[Network]-4.4.1"

    const-string v2, "IMAI openExternal failed"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public ping(Ljava/lang/String;Z)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Lcom/inmobi/commons/internal/ApiStatCollector;->getLogger()Lcom/inmobi/commons/metric/Logger;

    move-result-object v0

    new-instance v1, Lcom/inmobi/commons/metric/EventLog;

    new-instance v2, Lcom/inmobi/commons/internal/ApiStatCollector$ApiEventType;

    const/16 v3, 0x3eb

    invoke-direct {v2, v3}, Lcom/inmobi/commons/internal/ApiStatCollector$ApiEventType;-><init>(I)V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/inmobi/commons/metric/EventLog;-><init>(Lcom/inmobi/commons/metric/EventType;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/metric/Logger;->logEvent(Lcom/inmobi/commons/metric/EventLog;)V

    :try_start_0
    const-string v0, "[InMobi]-[Network]-4.4.1"

    const-string v1, "IMAI ping"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/inmobi/androidsdk/impl/imai/IMAICore;->validateURL(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/imai/IMAIController;->a:Ljava/lang/ref/WeakReference;

    const-string v1, "Null url passed"

    const-string v2, "ping"

    invoke-static {v0, v1, v2, p1}, Lcom/inmobi/androidsdk/impl/imai/IMAICore;->fireErrorEvent(Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "https"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/imai/IMAIController;->a:Ljava/lang/ref/WeakReference;

    invoke-static {v0, p1, p2}, Lcom/inmobi/androidsdk/impl/imai/IMAICore;->ping(Ljava/lang/ref/WeakReference;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/inmobi/androidsdk/impl/imai/IMAIController;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ping"

    invoke-static {v1, v2, v3, p1}, Lcom/inmobi/androidsdk/impl/imai/IMAICore;->fireErrorEvent(Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "[InMobi]-[Network]-4.4.1"

    const-string v2, "IMAI ping failed"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/imai/IMAIController;->a:Ljava/lang/ref/WeakReference;

    const-string v1, "Invalid url passed"

    const-string v2, "ping"

    invoke-static {v0, v1, v2, p1}, Lcom/inmobi/androidsdk/impl/imai/IMAICore;->fireErrorEvent(Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public pingInWebView(Ljava/lang/String;Z)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Lcom/inmobi/commons/internal/ApiStatCollector;->getLogger()Lcom/inmobi/commons/metric/Logger;

    move-result-object v0

    new-instance v1, Lcom/inmobi/commons/metric/EventLog;

    new-instance v2, Lcom/inmobi/commons/internal/ApiStatCollector$ApiEventType;

    const/16 v3, 0x3ec

    invoke-direct {v2, v3}, Lcom/inmobi/commons/internal/ApiStatCollector$ApiEventType;-><init>(I)V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/inmobi/commons/metric/EventLog;-><init>(Lcom/inmobi/commons/metric/EventType;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/metric/Logger;->logEvent(Lcom/inmobi/commons/metric/EventLog;)V

    :try_start_0
    const-string v0, "[InMobi]-[Network]-4.4.1"

    const-string v1, "IMAI ping in webview"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/inmobi/androidsdk/impl/imai/IMAICore;->validateURL(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/imai/IMAIController;->a:Ljava/lang/ref/WeakReference;

    const-string v1, "Null url passed"

    const-string v2, "pingInWebView"

    invoke-static {v0, v1, v2, p1}, Lcom/inmobi/androidsdk/impl/imai/IMAICore;->fireErrorEvent(Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "https"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/imai/IMAIController;->a:Ljava/lang/ref/WeakReference;

    invoke-static {v0, p1, p2}, Lcom/inmobi/androidsdk/impl/imai/IMAICore;->pingInWebview(Ljava/lang/ref/WeakReference;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/inmobi/androidsdk/impl/imai/IMAIController;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "pingInWebView"

    invoke-static {v1, v2, v3, p1}, Lcom/inmobi/androidsdk/impl/imai/IMAICore;->fireErrorEvent(Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "[InMobi]-[Network]-4.4.1"

    const-string v2, "IMAI pingInWebView failed"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/imai/IMAIController;->a:Ljava/lang/ref/WeakReference;

    const-string v1, "Invalid url passed"

    const-string v2, "pingInWebView"

    invoke-static {v0, v1, v2, p1}, Lcom/inmobi/androidsdk/impl/imai/IMAICore;->fireErrorEvent(Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
