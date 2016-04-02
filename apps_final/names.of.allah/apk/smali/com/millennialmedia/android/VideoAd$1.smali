.class Lcom/millennialmedia/android/VideoAd$1;
.super Lcom/millennialmedia/android/AdCache$Iterator;


# instance fields
.field hasSharedVideoFile:Z

.field final synthetic this$0:Lcom/millennialmedia/android/VideoAd;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/VideoAd;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/millennialmedia/android/VideoAd$1;->this$0:Lcom/millennialmedia/android/VideoAd;

    iput-object p2, p0, Lcom/millennialmedia/android/VideoAd$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/millennialmedia/android/AdCache$Iterator;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/millennialmedia/android/VideoAd$1;->hasSharedVideoFile:Z

    return-void
.end method


# virtual methods
.method callback(Lcom/millennialmedia/android/CachedAd;)Z
    .locals 2

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/millennialmedia/android/VideoAd;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/millennialmedia/android/VideoAd;

    # getter for: Lcom/millennialmedia/android/VideoAd;->videoFileId:Ljava/lang/String;
    invoke-static {v0}, Lcom/millennialmedia/android/VideoAd;->access$000(Lcom/millennialmedia/android/VideoAd;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/android/VideoAd$1;->this$0:Lcom/millennialmedia/android/VideoAd;

    # getter for: Lcom/millennialmedia/android/VideoAd;->videoFileId:Ljava/lang/String;
    invoke-static {v1}, Lcom/millennialmedia/android/VideoAd;->access$000(Lcom/millennialmedia/android/VideoAd;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/millennialmedia/android/VideoAd$1;->hasSharedVideoFile:Z

    :cond_0
    invoke-super {p0, p1}, Lcom/millennialmedia/android/AdCache$Iterator;->callback(Lcom/millennialmedia/android/CachedAd;)Z

    move-result v0

    return v0
.end method

.method done()V
    .locals 2

    iget-boolean v0, p0, Lcom/millennialmedia/android/VideoAd$1;->hasSharedVideoFile:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/VideoAd$1;->this$0:Lcom/millennialmedia/android/VideoAd;

    iget-object v1, p0, Lcom/millennialmedia/android/VideoAd$1;->val$context:Landroid/content/Context;

    # invokes: Lcom/millennialmedia/android/VideoAd;->deleteVideoFile(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/millennialmedia/android/VideoAd;->access$100(Lcom/millennialmedia/android/VideoAd;Landroid/content/Context;)V

    :cond_0
    invoke-super {p0}, Lcom/millennialmedia/android/AdCache$Iterator;->done()V

    return-void
.end method
