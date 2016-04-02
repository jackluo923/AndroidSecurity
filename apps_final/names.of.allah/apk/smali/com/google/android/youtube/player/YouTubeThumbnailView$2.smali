.class final Lcom/google/android/youtube/player/YouTubeThumbnailView$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/youtube/player/internal/t$b;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/player/YouTubeThumbnailView$OnInitializedListener;

.field final synthetic b:Lcom/google/android/youtube/player/YouTubeThumbnailView;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/player/YouTubeThumbnailView;Lcom/google/android/youtube/player/YouTubeThumbnailView$OnInitializedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/youtube/player/YouTubeThumbnailView$2;->b:Lcom/google/android/youtube/player/YouTubeThumbnailView;

    iput-object p2, p0, Lcom/google/android/youtube/player/YouTubeThumbnailView$2;->a:Lcom/google/android/youtube/player/YouTubeThumbnailView$OnInitializedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/player/YouTubeInitializationResult;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/youtube/player/YouTubeThumbnailView$2;->a:Lcom/google/android/youtube/player/YouTubeThumbnailView$OnInitializedListener;

    iget-object v1, p0, Lcom/google/android/youtube/player/YouTubeThumbnailView$2;->b:Lcom/google/android/youtube/player/YouTubeThumbnailView;

    invoke-interface {v0, v1, p1}, Lcom/google/android/youtube/player/YouTubeThumbnailView$OnInitializedListener;->onInitializationFailure(Lcom/google/android/youtube/player/YouTubeThumbnailView;Lcom/google/android/youtube/player/YouTubeInitializationResult;)V

    iget-object v0, p0, Lcom/google/android/youtube/player/YouTubeThumbnailView$2;->b:Lcom/google/android/youtube/player/YouTubeThumbnailView;

    invoke-static {v0}, Lcom/google/android/youtube/player/YouTubeThumbnailView;->b(Lcom/google/android/youtube/player/YouTubeThumbnailView;)Lcom/google/android/youtube/player/internal/b;

    return-void
.end method
