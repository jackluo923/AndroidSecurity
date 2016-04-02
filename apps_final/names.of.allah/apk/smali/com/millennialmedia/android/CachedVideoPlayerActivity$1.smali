.class Lcom/millennialmedia/android/CachedVideoPlayerActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/android/CachedVideoPlayerActivity;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/CachedVideoPlayerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity$1;->this$0:Lcom/millennialmedia/android/CachedVideoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity$1;->this$0:Lcom/millennialmedia/android/CachedVideoPlayerActivity;

    invoke-virtual {v0}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->dismiss()V

    return-void
.end method
