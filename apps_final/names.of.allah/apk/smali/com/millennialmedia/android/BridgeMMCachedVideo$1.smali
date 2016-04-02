.class Lcom/millennialmedia/android/BridgeMMCachedVideo$1;
.super Lcom/millennialmedia/android/AdCache$Iterator;


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/android/BridgeMMCachedVideo;

.field final synthetic val$array:Lorg/json/JSONArray;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/BridgeMMCachedVideo;Landroid/content/Context;Lorg/json/JSONArray;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/android/BridgeMMCachedVideo$1;->this$0:Lcom/millennialmedia/android/BridgeMMCachedVideo;

    iput-object p2, p0, Lcom/millennialmedia/android/BridgeMMCachedVideo$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/millennialmedia/android/BridgeMMCachedVideo$1;->val$array:Lorg/json/JSONArray;

    invoke-direct {p0}, Lcom/millennialmedia/android/AdCache$Iterator;-><init>()V

    return-void
.end method


# virtual methods
.method callback(Lcom/millennialmedia/android/CachedAd;)Z
    .locals 2

    instance-of v0, p1, Lcom/millennialmedia/android/VideoAd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMCachedVideo$1;->val$context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/millennialmedia/android/CachedAd;->isOnDisk(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/millennialmedia/android/CachedAd;->isExpired()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMCachedVideo$1;->val$array:Lorg/json/JSONArray;

    invoke-virtual {p1}, Lcom/millennialmedia/android/CachedAd;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
