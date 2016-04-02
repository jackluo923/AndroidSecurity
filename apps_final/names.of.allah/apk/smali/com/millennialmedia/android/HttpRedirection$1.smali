.class final Lcom/millennialmedia/android/HttpRedirection$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$listenerReference:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/android/HttpRedirection$1;->val$listenerReference:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private handleDestinationUri(Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;)V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p1, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->weakContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_4

    iget-object v2, p1, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->destinationUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "mmvideo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {p1}, Lcom/millennialmedia/android/Utils$IntentUtils;->getIntentForUri(Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;)Landroid/content/Intent;

    move-result-object v1

    :cond_0
    :goto_0
    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->getOverlaySettings()Lcom/millennialmedia/android/OverlaySettings;

    move-result-object v2

    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    iget-object v3, p1, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->orientation:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p1, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->orientation:Ljava/lang/String;

    iput-object v3, v2, Lcom/millennialmedia/android/OverlaySettings;->orientation:Ljava/lang/String;

    :cond_1
    const-string v3, "settings"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_2
    const-string v2, "class"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    const-class v3, Lcom/millennialmedia/android/AdViewOverlayActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    :try_start_0
    iget-object v2, p1, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->destinationUri:Landroid/net/Uri;

    invoke-virtual {p1, v2}, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->isActivityStartable(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {v0, v1}, Lcom/millennialmedia/android/Utils$IntentUtils;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    iget-object v0, p1, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->destinationUri:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->startingActivity(Landroid/net/Uri;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_1
    return-void

    :cond_5
    iget-object v2, p1, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->destinationUri:Landroid/net/Uri;

    invoke-virtual {p1, v2}, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->isHandlingMMVideo(Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p1, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->destinationUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, p1}, Lcom/millennialmedia/android/VideoAd;->playAd(Landroid/content/Context;Ljava/lang/String;Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;)V

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "No activity found for %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p1, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->destinationUri:Landroid/net/Uri;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMSDK$Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/millennialmedia/android/HttpRedirection$1;->val$listenerReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->url:Ljava/lang/String;

    invoke-static {v1}, Lcom/millennialmedia/android/HttpRedirection;->navigateRedirects(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v0, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->destinationUri:Landroid/net/Uri;

    iget-object v2, v0, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->destinationUri:Landroid/net/Uri;

    if-eqz v2, :cond_1

    invoke-direct {p0, v0}, Lcom/millennialmedia/android/HttpRedirection$1;->handleDestinationUri(Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "Could not start activity for %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Lcom/millennialmedia/android/MMSDK$Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
