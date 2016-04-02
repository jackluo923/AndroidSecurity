.class Lcom/millennialmedia/android/CachedVideoPlayerActivity$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/android/CachedVideoPlayerActivity;

.field final synthetic val$button:Lcom/millennialmedia/android/VideoImage;

.field final synthetic val$newButton:Landroid/widget/ImageButton;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/CachedVideoPlayerActivity;Landroid/widget/ImageButton;Lcom/millennialmedia/android/VideoImage;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity$2;->this$0:Lcom/millennialmedia/android/CachedVideoPlayerActivity;

    iput-object p2, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity$2;->val$newButton:Landroid/widget/ImageButton;

    iput-object p3, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity$2;->val$button:Lcom/millennialmedia/android/VideoImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity$2;->val$newButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity$2;->val$newButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity$2;->this$0:Lcom/millennialmedia/android/CachedVideoPlayerActivity;

    iget-object v0, v0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->redirectListenerImpl:Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;

    iget-object v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity$2;->val$button:Lcom/millennialmedia/android/VideoImage;

    iget-object v1, v1, Lcom/millennialmedia/android/VideoImage;->overlayOrientation:Ljava/lang/String;

    iput-object v1, v0, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->orientation:Ljava/lang/String;

    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity$2;->this$0:Lcom/millennialmedia/android/CachedVideoPlayerActivity;

    iget-object v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity$2;->val$button:Lcom/millennialmedia/android/VideoImage;

    iget-object v1, v1, Lcom/millennialmedia/android/VideoImage;->linkUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->dispatchButtonClick(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity$2;->this$0:Lcom/millennialmedia/android/CachedVideoPlayerActivity;

    iget-object v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity$2;->val$button:Lcom/millennialmedia/android/VideoImage;

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->logButtonEvent(Lcom/millennialmedia/android/VideoImage;)V

    return-void
.end method
