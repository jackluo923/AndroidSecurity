.class public Lcom/millennialmedia/android/MMBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;


# static fields
.field public static final ACTION_DISPLAY_STARTED:Ljava/lang/String; = "millennialmedia.action.ACTION_DISPLAY_STARTED"

.field public static final ACTION_FETCH_FAILED:Ljava/lang/String; = "millennialmedia.action.ACTION_FETCH_FAILED"

.field public static final ACTION_FETCH_STARTED_CACHING:Ljava/lang/String; = "millennialmedia.action.ACTION_FETCH_STARTED_CACHING"

.field public static final ACTION_FETCH_SUCCEEDED:Ljava/lang/String; = "millennialmedia.action.ACTION_FETCH_SUCCEEDED"

.field public static final ACTION_GETAD_FAILED:Ljava/lang/String; = "millennialmedia.action.ACTION_GETAD_FAILED"

.field public static final ACTION_GETAD_SUCCEEDED:Ljava/lang/String; = "millennialmedia.action.ACTION_GETAD_SUCCEEDED"

.field public static final ACTION_INTENT_STARTED:Ljava/lang/String; = "millennialmedia.action.ACTION_INTENT_STARTED"

.field public static final ACTION_OVERLAY_CLOSED:Ljava/lang/String; = "millennialmedia.action.ACTION_OVERLAY_CLOSED"

.field public static final ACTION_OVERLAY_OPENED:Ljava/lang/String; = "millennialmedia.action.ACTION_OVERLAY_OPENED"

.field public static final ACTION_OVERLAY_TAP:Ljava/lang/String; = "millennialmedia.action.ACTION_OVERLAY_TAP"

.field public static final CATEGORY_SDK:Ljava/lang/String; = "millennialmedia.category.CATEGORY_SDK"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static createIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "millennialmedia.category.CATEGORY_SDK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string v1, "millennialmedia.action.ACTION_DISPLAY_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "millennialmedia.action.ACTION_FETCH_FAILED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "millennialmedia.action.ACTION_FETCH_SUCCEEDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "millennialmedia.action.ACTION_FETCH_STARTED_CACHING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "millennialmedia.action.ACTION_GETAD_FAILED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "millennialmedia.action.ACTION_GETAD_SUCCEEDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "millennialmedia.action.ACTION_INTENT_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "millennialmedia.action.ACTION_OVERLAY_CLOSED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "millennialmedia.action.ACTION_OVERLAY_OPENED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "millennialmedia.action.ACTION_OVERLAY_TAP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public displayStarted(Lcom/millennialmedia/android/MMAd;)V
    .locals 1

    const-string v0, "Millennial Media display started."

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->i(Ljava/lang/String;)V

    return-void
.end method

.method public fetchFailure(Lcom/millennialmedia/android/MMAd;)V
    .locals 1

    const-string v0, "Millennial Media fetch failed."

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->i(Ljava/lang/String;)V

    return-void
.end method

.method public fetchFinishedCaching(Lcom/millennialmedia/android/MMAd;)V
    .locals 1

    const-string v0, "Millennial Media fetch finished caching."

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->i(Ljava/lang/String;)V

    return-void
.end method

.method public fetchStartedCaching(Lcom/millennialmedia/android/MMAd;)V
    .locals 1

    const-string v0, "Millennial Media fetch started caching."

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->i(Ljava/lang/String;)V

    return-void
.end method

.method public getAdFailure(Lcom/millennialmedia/android/MMAd;)V
    .locals 1

    const-string v0, "Millennial Media ad Failure."

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->i(Ljava/lang/String;)V

    return-void
.end method

.method public getAdSuccess(Lcom/millennialmedia/android/MMAd;)V
    .locals 1

    const-string v0, "Millennial Media ad Success."

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->i(Ljava/lang/String;)V

    return-void
.end method

.method public intentStarted(Lcom/millennialmedia/android/MMAd;Ljava/lang/String;)V
    .locals 2

    if-eqz p2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Millennial Media started intent: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->i(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    const-wide/16 v6, -0x4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v0, "packageName"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "internalId"

    invoke-virtual {p2, v0, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    cmp-long v1, v3, v6

    if-eqz v1, :cond_2

    invoke-static {v3, v4}, Lcom/millennialmedia/android/MMAdImplController;->getAdImplWithId(J)Lcom/millennialmedia/android/MMAdImpl;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/millennialmedia/android/MMAdImpl;->getCallingAd()Lcom/millennialmedia/android/MMAd;

    move-result-object v0

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v1, " @@ Intent - Ad in receiver = "

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v0, :cond_3

    const-string v1, " null"

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/millennialmedia/android/MMSDK$Log;->v(Ljava/lang/String;)V

    const-string v1, "millennialmedia.action.ACTION_OVERLAY_OPENED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMBroadcastReceiver;->overlayOpened(Lcom/millennialmedia/android/MMAd;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_4
    const-string v1, "millennialmedia.action.ACTION_OVERLAY_CLOSED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMBroadcastReceiver;->overlayClosed(Lcom/millennialmedia/android/MMAd;)V

    goto :goto_0

    :cond_5
    const-string v1, "millennialmedia.action.ACTION_OVERLAY_TAP"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMBroadcastReceiver;->overlayTap(Lcom/millennialmedia/android/MMAd;)V

    goto :goto_0

    :cond_6
    const-string v1, "millennialmedia.action.ACTION_DISPLAY_STARTED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMBroadcastReceiver;->displayStarted(Lcom/millennialmedia/android/MMAd;)V

    goto :goto_0

    :cond_7
    const-string v1, "millennialmedia.action.ACTION_FETCH_FAILED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMBroadcastReceiver;->fetchFailure(Lcom/millennialmedia/android/MMAd;)V

    goto :goto_0

    :cond_8
    const-string v1, "millennialmedia.action.ACTION_FETCH_SUCCEEDED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMBroadcastReceiver;->fetchFinishedCaching(Lcom/millennialmedia/android/MMAd;)V

    goto :goto_0

    :cond_9
    const-string v1, "millennialmedia.action.ACTION_FETCH_STARTED_CACHING"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMBroadcastReceiver;->fetchStartedCaching(Lcom/millennialmedia/android/MMAd;)V

    goto :goto_0

    :cond_a
    const-string v1, "millennialmedia.action.ACTION_GETAD_FAILED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMBroadcastReceiver;->getAdFailure(Lcom/millennialmedia/android/MMAd;)V

    goto/16 :goto_0

    :cond_b
    const-string v1, "millennialmedia.action.ACTION_GETAD_SUCCEEDED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMBroadcastReceiver;->getAdSuccess(Lcom/millennialmedia/android/MMAd;)V

    goto/16 :goto_0

    :cond_c
    const-string v1, "millennialmedia.action.ACTION_INTENT_STARTED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "intentType"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/millennialmedia/android/MMBroadcastReceiver;->intentStarted(Lcom/millennialmedia/android/MMAd;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public overlayClosed(Lcom/millennialmedia/android/MMAd;)V
    .locals 1

    const-string v0, "Millennial Media overlay closed."

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->i(Ljava/lang/String;)V

    return-void
.end method

.method public overlayOpened(Lcom/millennialmedia/android/MMAd;)V
    .locals 1

    const-string v0, "Millennial Media overlay opened."

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->i(Ljava/lang/String;)V

    return-void
.end method

.method public overlayTap(Lcom/millennialmedia/android/MMAd;)V
    .locals 1

    const-string v0, "Millennial Media overlay Tap."

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->i(Ljava/lang/String;)V

    return-void
.end method
