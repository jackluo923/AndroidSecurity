.class Lcom/millennialmedia/android/MMWebView$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/android/MMWebView;

.field final synthetic val$adImpl:Lcom/millennialmedia/android/MMAdImpl;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/MMWebView;Lcom/millennialmedia/android/MMAdImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/android/MMWebView$5;->this$0:Lcom/millennialmedia/android/MMWebView;

    iput-object p2, p0, Lcom/millennialmedia/android/MMWebView$5;->val$adImpl:Lcom/millennialmedia/android/MMAdImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized run()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/android/MMWebView$5;->this$0:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMWebView;->buildDrawingCache()V

    iget-object v0, p0, Lcom/millennialmedia/android/MMWebView$5;->this$0:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMWebView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/android/MMWebView$5;->val$adImpl:Lcom/millennialmedia/android/MMAdImpl;

    invoke-virtual {v1, v0}, Lcom/millennialmedia/android/MMAdImpl;->prepareTransition(Landroid/graphics/Bitmap;)V

    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/android/MMWebView$5;->this$0:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMWebView;->destroyDrawingCache()V

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
