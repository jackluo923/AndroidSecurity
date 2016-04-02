.class final Lcom/millennialmedia/android/AdCache$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/android/AdCache$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    const-string v0, "AdCache"

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/millennialmedia/android/AdCache$3;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/millennialmedia/android/AdCache;->cleanUpExpiredAds(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/millennialmedia/android/AdCache$3;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/millennialmedia/android/AdCache;->cleanupCache(Landroid/content/Context;)V

    return-void
.end method
