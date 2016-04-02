.class Lcom/millennialmedia/android/AdCacheThreadPool$AdCacheTask;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/millennialmedia/android/AdCacheThreadPool$AdCacheTask;",
        ">;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private ad:Lcom/millennialmedia/android/CachedAd;

.field private adName:Ljava/lang/String;

.field private contextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private listenerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/millennialmedia/android/AdCache$AdCacheTaskListener;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/millennialmedia/android/AdCacheThreadPool;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/AdCacheThreadPool;Landroid/content/Context;Ljava/lang/String;Lcom/millennialmedia/android/CachedAd;Lcom/millennialmedia/android/AdCache$AdCacheTaskListener;)V
    .locals 2

    iput-object p1, p0, Lcom/millennialmedia/android/AdCacheThreadPool$AdCacheTask;->this$0:Lcom/millennialmedia/android/AdCacheThreadPool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/millennialmedia/android/AdCacheThreadPool$AdCacheTask;->contextRef:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lcom/millennialmedia/android/AdCacheThreadPool$AdCacheTask;->adName:Ljava/lang/String;

    iput-object p4, p0, Lcom/millennialmedia/android/AdCacheThreadPool$AdCacheTask;->ad:Lcom/millennialmedia/android/CachedAd;

    if-eqz p5, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/millennialmedia/android/AdCacheThreadPool$AdCacheTask;->listenerRef:Ljava/lang/ref/WeakReference;

    :cond_0
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/millennialmedia/android/AdCacheThreadPool$AdCacheTask;)I
    .locals 2

    iget-object v0, p0, Lcom/millennialmedia/android/AdCacheThreadPool$AdCacheTask;->ad:Lcom/millennialmedia/android/CachedAd;

    iget v0, v0, Lcom/millennialmedia/android/CachedAd;->downloadPriority:I

    iget-object v1, p1, Lcom/millennialmedia/android/AdCacheThreadPool$AdCacheTask;->ad:Lcom/millennialmedia/android/CachedAd;

    iget v1, v1, Lcom/millennialmedia/android/CachedAd;->downloadPriority:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/millennialmedia/android/AdCacheThreadPool$AdCacheTask;

    invoke-virtual {p0, p1}, Lcom/millennialmedia/android/AdCacheThreadPool$AdCacheTask;->compareTo(Lcom/millennialmedia/android/AdCacheThreadPool$AdCacheTask;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lcom/millennialmedia/android/AdCacheThreadPool$AdCacheTask;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/millennialmedia/android/AdCacheThreadPool$AdCacheTask;

    iget-object v0, p0, Lcom/millennialmedia/android/AdCacheThreadPool$AdCacheTask;->ad:Lcom/millennialmedia/android/CachedAd;

    iget-object v1, p1, Lcom/millennialmedia/android/AdCacheThreadPool$AdCacheTask;->ad:Lcom/millennialmedia/android/CachedAd;

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/CachedAd;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public run()V
    .locals 7

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/millennialmedia/android/AdCacheThreadPool$AdCacheTask;->listenerRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/millennialmedia/android/AdCacheThreadPool$AdCacheTask;->listenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/AdCache$AdCacheTaskListener;

    move-object v3, v0

    :goto_0
    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/AdCacheThreadPool$AdCacheTask;->ad:Lcom/millennialmedia/android/CachedAd;

    invoke-interface {v3, v0}, Lcom/millennialmedia/android/AdCache$AdCacheTaskListener;->downloadStart(Lcom/millennialmedia/android/CachedAd;)V

    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/android/AdCacheThreadPool$AdCacheTask;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/millennialmedia/android/HandShake;->sharedHandShake(Landroid/content/Context;)Lcom/millennialmedia/android/HandShake;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/android/AdCacheThreadPool$AdCacheTask;->adName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/HandShake;->lockAdTypeDownload(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/millennialmedia/android/AdCacheThreadPool$AdCacheTask;->ad:Lcom/millennialmedia/android/CachedAd;

    iget-object v0, p0, Lcom/millennialmedia/android/AdCacheThreadPool$AdCacheTask;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v1, v0}, Lcom/millennialmedia/android/CachedAd;->download(Landroid/content/Context;)Z

    move-result v4

    iget-object v0, p0, Lcom/millennialmedia/android/AdCacheThreadPool$AdCacheTask;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/millennialmedia/android/HandShake;->sharedHandShake(Landroid/content/Context;)Lcom/millennialmedia/android/HandShake;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/android/AdCacheThreadPool$AdCacheTask;->adName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/HandShake;->unlockAdTypeDownload(Ljava/lang/String;)V

    if-nez v4, :cond_3

    iget-object v0, p0, Lcom/millennialmedia/android/AdCacheThreadPool$AdCacheTask;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/millennialmedia/android/AdCacheThreadPool$AdCacheTask;->adName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/millennialmedia/android/AdCache;->getIncompleteDownload(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/millennialmedia/android/AdCacheThreadPool$AdCacheTask;->ad:Lcom/millennialmedia/android/CachedAd;

    invoke-virtual {v1}, Lcom/millennialmedia/android/CachedAd;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/millennialmedia/android/AdCacheThreadPool$AdCacheTask;->ad:Lcom/millennialmedia/android/CachedAd;

    iget-object v0, p0, Lcom/millennialmedia/android/AdCacheThreadPool$AdCacheTask;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v1, v0}, Lcom/millennialmedia/android/CachedAd;->delete(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/millennialmedia/android/AdCacheThreadPool$AdCacheTask;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/millennialmedia/android/AdCacheThreadPool$AdCacheTask;->adName:Ljava/lang/String;

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_1
    move-object v6, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v6

    :goto_2
    invoke-static {v2, v1, v0}, Lcom/millennialmedia/android/AdCache;->setIncompleteDownload(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    if-eqz v3, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/android/AdCacheThreadPool$AdCacheTask;->ad:Lcom/millennialmedia/android/CachedAd;

    invoke-interface {v3, v0, v4}, Lcom/millennialmedia/android/AdCache$AdCacheTaskListener;->downloadCompleted(Lcom/millennialmedia/android/CachedAd;Z)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/millennialmedia/android/AdCacheThreadPool$AdCacheTask;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/millennialmedia/android/AdCacheThreadPool$AdCacheTask;->adName:Ljava/lang/String;

    iget-object v5, p0, Lcom/millennialmedia/android/AdCacheThreadPool$AdCacheTask;->ad:Lcom/millennialmedia/android/CachedAd;

    iget-boolean v5, v5, Lcom/millennialmedia/android/CachedAd;->downloadAllOrNothing:Z

    if-nez v5, :cond_4

    iget-object v2, p0, Lcom/millennialmedia/android/AdCacheThreadPool$AdCacheTask;->ad:Lcom/millennialmedia/android/CachedAd;

    invoke-virtual {v2}, Lcom/millennialmedia/android/CachedAd;->getId()Ljava/lang/String;

    move-result-object v2

    move-object v6, v2

    move-object v2, v0

    move-object v0, v6

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/millennialmedia/android/AdCacheThreadPool$AdCacheTask;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/millennialmedia/android/AdCacheThreadPool$AdCacheTask;->adName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/millennialmedia/android/AdCache;->setIncompleteDownload(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_1

    :cond_5
    move-object v3, v2

    goto/16 :goto_0
.end method
