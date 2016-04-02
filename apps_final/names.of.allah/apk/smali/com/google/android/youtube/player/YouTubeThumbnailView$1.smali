.class final Lcom/google/android/youtube/player/YouTubeThumbnailView$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/youtube/player/internal/t$a;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/player/YouTubeThumbnailView$OnInitializedListener;

.field final synthetic b:Lcom/google/android/youtube/player/YouTubeThumbnailView;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/player/YouTubeThumbnailView;Lcom/google/android/youtube/player/YouTubeThumbnailView$OnInitializedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/youtube/player/YouTubeThumbnailView$1;->b:Lcom/google/android/youtube/player/YouTubeThumbnailView;

    iput-object p2, p0, Lcom/google/android/youtube/player/YouTubeThumbnailView$1;->a:Lcom/google/android/youtube/player/YouTubeThumbnailView$OnInitializedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/youtube/player/YouTubeThumbnailView$1;->b:Lcom/google/android/youtube/player/YouTubeThumbnailView;

    invoke-static {v0}, Lcom/google/android/youtube/player/YouTubeThumbnailView;->a(Lcom/google/android/youtube/player/YouTubeThumbnailView;)Lcom/google/android/youtube/player/internal/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/youtube/player/YouTubeThumbnailView$1;->b:Lcom/google/android/youtube/player/YouTubeThumbnailView;

    invoke-static {}, Lcom/google/android/youtube/player/internal/ab;->a()Lcom/google/android/youtube/player/internal/ab;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/player/YouTubeThumbnailView$1;->b:Lcom/google/android/youtube/player/YouTubeThumbnailView;

    invoke-static {v2}, Lcom/google/android/youtube/player/YouTubeThumbnailView;->a(Lcom/google/android/youtube/player/YouTubeThumbnailView;)Lcom/google/android/youtube/player/internal/b;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/google/android/youtube/player/internal/ab;->a(Lcom/google/android/youtube/player/internal/b;Lcom/google/android/youtube/player/YouTubeThumbnailView;)Lcom/google/android/youtube/player/YouTubeThumbnailLoader;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/player/YouTubeThumbnailView$1;->a:Lcom/google/android/youtube/player/YouTubeThumbnailView$OnInitializedListener;

    invoke-interface {v2, v0, v1}, Lcom/google/android/youtube/player/YouTubeThumbnailView$OnInitializedListener;->onInitializationSuccess(Lcom/google/android/youtube/player/YouTubeThumbnailView;Lcom/google/android/youtube/player/YouTubeThumbnailLoader;)V

    iget-object v0, p0, Lcom/google/android/youtube/player/YouTubeThumbnailView$1;->b:Lcom/google/android/youtube/player/YouTubeThumbnailView;

    invoke-static {v0}, Lcom/google/android/youtube/player/YouTubeThumbnailView;->b(Lcom/google/android/youtube/player/YouTubeThumbnailView;)Lcom/google/android/youtube/player/internal/b;

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/youtube/player/YouTubeThumbnailView$1;->b:Lcom/google/android/youtube/player/YouTubeThumbnailView;

    invoke-static {v0}, Lcom/google/android/youtube/player/YouTubeThumbnailView;->b(Lcom/google/android/youtube/player/YouTubeThumbnailView;)Lcom/google/android/youtube/player/internal/b;

    return-void
.end method
