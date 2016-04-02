.class Lcom/millennialmedia/android/BridgeMMMedia$Audio$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/android/BridgeMMMedia$Audio;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/BridgeMMMedia$Audio;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/android/BridgeMMMedia$Audio$1;->this$0:Lcom/millennialmedia/android/BridgeMMMedia$Audio;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMMedia$Audio$1;->this$0:Lcom/millennialmedia/android/BridgeMMMedia$Audio;

    # getter for: Lcom/millennialmedia/android/BridgeMMMedia$Audio;->mediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->access$100(Lcom/millennialmedia/android/BridgeMMMedia$Audio;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMMedia$Audio$1;->this$0:Lcom/millennialmedia/android/BridgeMMMedia$Audio;

    # getter for: Lcom/millennialmedia/android/BridgeMMMedia$Audio;->mediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->access$100(Lcom/millennialmedia/android/BridgeMMMedia$Audio;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMMedia$Audio$1;->this$0:Lcom/millennialmedia/android/BridgeMMMedia$Audio;

    const/4 v1, 0x0

    # setter for: Lcom/millennialmedia/android/BridgeMMMedia$Audio;->mediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0, v1}, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->access$102(Lcom/millennialmedia/android/BridgeMMMedia$Audio;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
