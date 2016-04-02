.class Lcom/millennialmedia/android/Utils$IntentUtils;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static fixDataAndTypeForVideo(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    const-string v1, "class"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ".mp4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ".3gp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ".mkv"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "content.once"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "video/*"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    return-void
.end method

.method static getIntentForUri(Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;)Landroid/content/Intent;
    .locals 10

    const/4 v1, 0x0

    const/4 v9, -0x1

    const/4 v8, 0x1

    const/4 v7, 0x0

    if-nez p0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    iget-object v3, p0, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->destinationUri:Landroid/net/Uri;

    iget-object v0, p0, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->weakContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_12

    if-eqz v3, :cond_11

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_11

    const-string v1, "market"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Creating Android Market intent."

    invoke-static {v1}, Lcom/millennialmedia/android/MMSDK$Log;->v(Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v2, "market"

    iget-wide v4, p0, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->creatorAdImplInternalId:J

    invoke-static {v0, v2, v4, v5}, Lcom/millennialmedia/android/MMSDK$Event;->intentStarted(Landroid/content/Context;Ljava/lang/String;J)V

    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_10

    const-string v1, "%s resolved to Intent: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v3, v2, v7

    aput-object v0, v2, v8

    invoke-static {v1, v2}, Lcom/millennialmedia/android/MMSDK$Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    move-object v1, v0

    goto :goto_0

    :cond_1
    const-string v1, "rtsp"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "Creating streaming video player intent."

    invoke-static {v1}, Lcom/millennialmedia/android/MMSDK$Log;->v(Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/millennialmedia/android/MMActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v0, "class"

    const-string v2, "com.millennialmedia.android.VideoPlayerActivity"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object v0, v1

    goto :goto_1

    :cond_2
    const-string v1, "tel"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "Creating telephone intent."

    invoke-static {v1}, Lcom/millennialmedia/android/MMSDK$Log;->v(Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DIAL"

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v2, "tel"

    iget-wide v4, p0, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->creatorAdImplInternalId:J

    invoke-static {v0, v2, v4, v5}, Lcom/millennialmedia/android/MMSDK$Event;->intentStarted(Landroid/content/Context;Ljava/lang/String;J)V

    move-object v0, v1

    goto :goto_1

    :cond_3
    const-string v1, "sms"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "Creating txt message intent."

    invoke-static {v1}, Lcom/millennialmedia/android/MMSDK$Log;->v(Ljava/lang/String;)V

    new-instance v2, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    const-string v4, "?body="

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v9, :cond_4

    invoke-virtual {v1, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_4
    const/16 v5, 0x2c

    const/16 v6, 0x3b

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    const-string v5, "address"

    invoke-virtual {v2, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eq v4, v9, :cond_5

    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v4, v4, 0x6

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "sms_body"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_5
    const-string v1, "vnd.android-dir/mms-sms"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "sms"

    iget-wide v4, p0, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->creatorAdImplInternalId:J

    invoke-static {v0, v1, v4, v5}, Lcom/millennialmedia/android/MMSDK$Event;->intentStarted(Landroid/content/Context;Ljava/lang/String;J)V

    move-object v0, v2

    goto/16 :goto_1

    :cond_6
    const-string v1, "mailto"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v2, "email"

    iget-wide v4, p0, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->creatorAdImplInternalId:J

    invoke-static {v0, v2, v4, v5}, Lcom/millennialmedia/android/MMSDK$Event;->intentStarted(Landroid/content/Context;Ljava/lang/String;J)V

    move-object v0, v1

    goto/16 :goto_1

    :cond_7
    const-string v1, "geo"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "Creating Google Maps intent."

    invoke-static {v1}, Lcom/millennialmedia/android/MMSDK$Log;->v(Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v2, "geo"

    iget-wide v4, p0, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->creatorAdImplInternalId:J

    invoke-static {v0, v2, v4, v5}, Lcom/millennialmedia/android/MMSDK$Event;->intentStarted(Landroid/content/Context;Ljava/lang/String;J)V

    move-object v0, v1

    goto/16 :goto_1

    :cond_8
    const-string v1, "https"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "Creating launch browser intent."

    invoke-static {v1}, Lcom/millennialmedia/android/MMSDK$Log;->v(Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v2, "browser"

    iget-wide v4, p0, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->creatorAdImplInternalId:J

    invoke-static {v0, v2, v4, v5}, Lcom/millennialmedia/android/MMSDK$Event;->intentStarted(Landroid/content/Context;Ljava/lang/String;J)V

    move-object v0, v1

    goto/16 :goto_1

    :cond_9
    const-string v1, "mmbrowser"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    const-string v2, "://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "//"

    const-string v4, "://"

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_a
    const-string v2, "MMBrowser - Creating launch browser intent."

    invoke-static {v2}, Lcom/millennialmedia/android/MMSDK$Log;->v(Ljava/lang/String;)V

    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v2, v4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "browser"

    iget-wide v4, p0, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->creatorAdImplInternalId:J

    invoke-static {v0, v1, v4, v5}, Lcom/millennialmedia/android/MMSDK$Event;->intentStarted(Landroid/content/Context;Ljava/lang/String;J)V

    move-object v0, v2

    goto/16 :goto_1

    :cond_b
    const-string v1, "http"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".mp4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".3gp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    :cond_c
    const-string v1, "Creating video player intent."

    invoke-static {v1}, Lcom/millennialmedia/android/MMSDK$Log;->v(Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/millennialmedia/android/MMActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v2, "class"

    const-string v4, "com.millennialmedia.android.VideoPlayerActivity"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "streamingVideo"

    iget-wide v4, p0, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->creatorAdImplInternalId:J

    invoke-static {v0, v2, v4, v5}, Lcom/millennialmedia/android/MMSDK$Event;->intentStarted(Landroid/content/Context;Ljava/lang/String;J)V

    move-object v0, v1

    goto/16 :goto_1

    :cond_d
    invoke-virtual {p0}, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->canOpenOverlay()Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v1, "Creating launch overlay intent."

    invoke-static {v1}, Lcom/millennialmedia/android/MMSDK$Log;->v(Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/millennialmedia/android/MMActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "class"

    const-class v2, Lcom/millennialmedia/android/AdViewOverlayActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto/16 :goto_0

    :cond_e
    const-string v1, "Creating launch browser intent."

    invoke-static {v1}, Lcom/millennialmedia/android/MMSDK$Log;->v(Ljava/lang/String;)V

    const-string v1, "browser"

    iget-wide v4, p0, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->creatorAdImplInternalId:J

    invoke-static {v0, v1, v4, v5}, Lcom/millennialmedia/android/MMSDK$Event;->intentStarted(Landroid/content/Context;Ljava/lang/String;J)V

    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v1, v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object v0, v1

    goto/16 :goto_1

    :cond_f
    const-string v0, "Creating intent for unrecognized URI. %s"

    new-array v1, v8, [Ljava/lang/Object;

    aput-object v3, v1, v7

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMSDK$Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v1, v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object v0, v1

    goto/16 :goto_1

    :cond_10
    const-string v1, "%s"

    new-array v2, v8, [Ljava/lang/Object;

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Lcom/millennialmedia/android/MMSDK$Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_11
    move-object v0, v1

    goto/16 :goto_1

    :cond_12
    move-object v0, v1

    goto/16 :goto_2
.end method

.method static startActionView(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-static {p0, v0}, Lcom/millennialmedia/android/Utils$IntentUtils;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static startActivity(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    instance-of v0, p0, Landroid/app/Activity;

    if-nez v0, :cond_0

    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_0
    invoke-static {p0, p1}, Lcom/millennialmedia/android/Utils$IntentUtils;->fixDataAndTypeForVideo(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static startAdViewOverlayActivity(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/millennialmedia/android/MMActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "class"

    const-string v2, "com.millennialmedia.android.AdViewOverlayActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0, v0}, Lcom/millennialmedia/android/Utils$IntentUtils;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static startAdViewOverlayActivity(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-class v0, Lcom/millennialmedia/android/MMActivity;

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v0, "class"

    const-string v1, "com.millennialmedia.android.AdViewOverlayActivity"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0, p1}, Lcom/millennialmedia/android/Utils$IntentUtils;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static startAdViewOverlayActivityWithData(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/millennialmedia/android/MMActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "class"

    const-string v2, "com.millennialmedia.android.AdViewOverlayActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-static {p0, v0}, Lcom/millennialmedia/android/Utils$IntentUtils;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static startCachedVideoPlayerActivity(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-class v0, Lcom/millennialmedia/android/MMActivity;

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v0, "class"

    const-string v1, "com.millennialmedia.android.CachedVideoPlayerActivity"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0, p1}, Lcom/millennialmedia/android/Utils$IntentUtils;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static startPickerActivity(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/millennialmedia/android/MMActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v1, "type"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "class"

    const-string v2, "com.millennialmedia.android.BridgeMMMedia$PickerActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0, v0}, Lcom/millennialmedia/android/Utils$IntentUtils;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static startVideoPlayerActivityWithData(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/millennialmedia/android/MMActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v1, "class"

    const-string v2, "com.millennialmedia.android.VideoPlayerActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0, v0}, Lcom/millennialmedia/android/Utils$IntentUtils;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static startVideoPlayerActivityWithData(Landroid/content/Context;Ljava/io/File;)V
    .locals 1

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/millennialmedia/android/Utils$IntentUtils;->startVideoPlayerActivityWithData(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method

.method static startVideoPlayerActivityWithData(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/millennialmedia/android/Utils$IntentUtils;->startVideoPlayerActivityWithData(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method
