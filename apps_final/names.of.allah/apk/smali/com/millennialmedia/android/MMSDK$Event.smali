.class Lcom/millennialmedia/android/MMSDK$Event;
.super Ljava/lang/Object;


# static fields
.field public static final INTENT_EMAIL:Ljava/lang/String; = "email"

.field public static final INTENT_EXTERNAL_BROWSER:Ljava/lang/String; = "browser"

.field public static final INTENT_MAPS:Ljava/lang/String; = "geo"

.field public static final INTENT_MARKET:Ljava/lang/String; = "market"

.field public static final INTENT_PHONE_CALL:Ljava/lang/String; = "tel"

.field public static final INTENT_STREAMING_VIDEO:Ljava/lang/String; = "streamingVideo"

.field public static final INTENT_TXT_MESSAGE:Ljava/lang/String; = "sms"

.field private static final KEY_ERROR:Ljava/lang/String; = "error"

.field static final KEY_INTENT_TYPE:Ljava/lang/String; = "intentType"

.field static final KEY_INTERNAL_ID:Ljava/lang/String; = "internalId"

.field static final KEY_PACKAGE_NAME:Ljava/lang/String; = "packageName"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static displayStarted(Lcom/millennialmedia/android/MMAdImpl;)V
    .locals 4

    # getter for: Lcom/millennialmedia/android/MMSDK;->isBroadcastingEvents:Z
    invoke-static {}, Lcom/millennialmedia/android/MMSDK;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "millennialmedia.action.ACTION_DISPLAY_STARTED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/millennialmedia/android/MMAdImpl;->internalId:J

    invoke-static {v0, v1, v2, v3}, Lcom/millennialmedia/android/MMSDK$Event;->sendIntent(Landroid/content/Context;Landroid/content/Intent;J)V

    :cond_0
    invoke-static {p0}, Lcom/millennialmedia/android/MMSDK$Event;->overlayOpened(Lcom/millennialmedia/android/MMAdImpl;)V

    return-void
.end method

.method static fetchStartedCaching(Lcom/millennialmedia/android/MMAdImpl;)V
    .locals 4

    new-instance v0, Lcom/millennialmedia/android/MMSDK$Event$2;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/MMSDK$Event$2;-><init>(Lcom/millennialmedia/android/MMAdImpl;)V

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK;->runOnUiThread(Ljava/lang/Runnable;)V

    # getter for: Lcom/millennialmedia/android/MMSDK;->isBroadcastingEvents:Z
    invoke-static {}, Lcom/millennialmedia/android/MMSDK;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "millennialmedia.action.ACTION_FETCH_STARTED_CACHING"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/millennialmedia/android/MMAdImpl;->internalId:J

    invoke-static {v0, v1, v2, v3}, Lcom/millennialmedia/android/MMSDK$Event;->sendIntent(Landroid/content/Context;Landroid/content/Intent;J)V

    :cond_0
    return-void
.end method

.method static intentStarted(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 2

    # getter for: Lcom/millennialmedia/android/MMSDK;->isBroadcastingEvents:Z
    invoke-static {}, Lcom/millennialmedia/android/MMSDK;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "millennialmedia.action.ACTION_INTENT_STARTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "intentType"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0, p2, p3}, Lcom/millennialmedia/android/MMSDK$Event;->sendIntent(Landroid/content/Context;Landroid/content/Intent;J)V

    :cond_0
    return-void
.end method

.method protected static logEvent(Ljava/lang/String;)V
    .locals 3

    const-string v0, "Logging event to: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/millennialmedia/android/MMSDK$Event$1;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/MMSDK$Event$1;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/millennialmedia/android/Utils$ThreadUtils;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static overlayClosed(Landroid/content/Context;J)V
    .locals 2

    # getter for: Lcom/millennialmedia/android/MMSDK;->isBroadcastingEvents:Z
    invoke-static {}, Lcom/millennialmedia/android/MMSDK;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "millennialmedia.action.ACTION_OVERLAY_CLOSED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, p1, p2}, Lcom/millennialmedia/android/MMSDK$Event;->sendIntent(Landroid/content/Context;Landroid/content/Intent;J)V

    :cond_0
    return-void
.end method

.method static overlayOpened(Lcom/millennialmedia/android/MMAdImpl;)V
    .locals 3

    new-instance v0, Lcom/millennialmedia/android/MMSDK$Event$3;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/MMSDK$Event$3;-><init>(Lcom/millennialmedia/android/MMAdImpl;)V

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-wide v1, p0, Lcom/millennialmedia/android/MMAdImpl;->internalId:J

    invoke-static {v0, v1, v2}, Lcom/millennialmedia/android/MMSDK$Event;->overlayOpenedBroadCast(Landroid/content/Context;J)V

    return-void
.end method

.method static overlayOpenedBroadCast(Landroid/content/Context;J)V
    .locals 2

    # getter for: Lcom/millennialmedia/android/MMSDK;->isBroadcastingEvents:Z
    invoke-static {}, Lcom/millennialmedia/android/MMSDK;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "millennialmedia.action.ACTION_OVERLAY_OPENED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, p1, p2}, Lcom/millennialmedia/android/MMSDK$Event;->sendIntent(Landroid/content/Context;Landroid/content/Intent;J)V

    :cond_0
    return-void
.end method

.method static overlayTap(Landroid/content/Context;J)V
    .locals 2

    # getter for: Lcom/millennialmedia/android/MMSDK;->isBroadcastingEvents:Z
    invoke-static {}, Lcom/millennialmedia/android/MMSDK;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "millennialmedia.action.ACTION_OVERLAY_TAP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, p1, p2}, Lcom/millennialmedia/android/MMSDK$Event;->sendIntent(Landroid/content/Context;Landroid/content/Intent;J)V

    :cond_0
    return-void
.end method

.method static requestCompleted(Lcom/millennialmedia/android/MMAdImpl;)V
    .locals 5

    new-instance v0, Lcom/millennialmedia/android/MMSDK$Event$4;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/MMSDK$Event$4;-><init>(Lcom/millennialmedia/android/MMAdImpl;)V

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK;->runOnUiThread(Ljava/lang/Runnable;)V

    # getter for: Lcom/millennialmedia/android/MMSDK;->isBroadcastingEvents:Z
    invoke-static {}, Lcom/millennialmedia/android/MMSDK;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdImpl;->getRequestCompletedAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/millennialmedia/android/MMAdImpl;->internalId:J

    invoke-static {v1, v2, v3, v4}, Lcom/millennialmedia/android/MMSDK$Event;->sendIntent(Landroid/content/Context;Landroid/content/Intent;J)V

    :cond_0
    return-void
.end method

.method static requestFailed(Lcom/millennialmedia/android/MMAdImpl;Lcom/millennialmedia/android/MMException;)V
    .locals 4

    new-instance v0, Lcom/millennialmedia/android/MMSDK$Event$5;

    invoke-direct {v0, p0, p1}, Lcom/millennialmedia/android/MMSDK$Event$5;-><init>(Lcom/millennialmedia/android/MMAdImpl;Lcom/millennialmedia/android/MMException;)V

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK;->runOnUiThread(Ljava/lang/Runnable;)V

    # getter for: Lcom/millennialmedia/android/MMSDK;->isBroadcastingEvents:Z
    invoke-static {}, Lcom/millennialmedia/android/MMSDK;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdImpl;->getRequestFailedAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "error"

    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v0

    iget-wide v2, p0, Lcom/millennialmedia/android/MMAdImpl;->internalId:J

    invoke-static {v1, v0, v2, v3}, Lcom/millennialmedia/android/MMSDK$Event;->sendIntent(Landroid/content/Context;Landroid/content/Intent;J)V

    :cond_0
    return-void
.end method

.method private static final sendIntent(Landroid/content/Context;Landroid/content/Intent;J)V
    .locals 4

    if-eqz p0, :cond_1

    const-string v0, "millennialmedia.category.CATEGORY_SDK"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-wide/16 v0, -0x4

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    const-string v0, "internalId"

    invoke-virtual {p1, v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_0
    const-string v0, "packageName"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "intentType"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, " Type[%s]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " @@ Intent: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->v(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    return-void

    :cond_2
    const-string v0, ""

    goto :goto_0
.end method
