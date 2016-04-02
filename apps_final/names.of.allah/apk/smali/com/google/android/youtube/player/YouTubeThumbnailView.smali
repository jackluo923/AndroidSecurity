.class public final Lcom/google/android/youtube/player/YouTubeThumbnailView;
.super Landroid/widget/ImageView;


# instance fields
.field private a:Lcom/google/android/youtube/player/internal/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/youtube/player/YouTubeThumbnailView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/youtube/player/YouTubeThumbnailView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/player/YouTubeThumbnailView;)Lcom/google/android/youtube/player/internal/b;
    .locals 1

    iget-object v0, p0, Lcom/google/android/youtube/player/YouTubeThumbnailView;->a:Lcom/google/android/youtube/player/internal/b;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/youtube/player/YouTubeThumbnailView;)Lcom/google/android/youtube/player/internal/b;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/player/YouTubeThumbnailView;->a:Lcom/google/android/youtube/player/internal/b;

    return-object v0
.end method


# virtual methods
.method public final initialize(Ljava/lang/String;Lcom/google/android/youtube/player/YouTubeThumbnailView$OnInitializedListener;)V
    .locals 4

    new-instance v0, Lcom/google/android/youtube/player/YouTubeThumbnailView$1;

    invoke-direct {v0, p0, p2}, Lcom/google/android/youtube/player/YouTubeThumbnailView$1;-><init>(Lcom/google/android/youtube/player/YouTubeThumbnailView;Lcom/google/android/youtube/player/YouTubeThumbnailView$OnInitializedListener;)V

    new-instance v1, Lcom/google/android/youtube/player/YouTubeThumbnailView$2;

    invoke-direct {v1, p0, p2}, Lcom/google/android/youtube/player/YouTubeThumbnailView$2;-><init>(Lcom/google/android/youtube/player/YouTubeThumbnailView;Lcom/google/android/youtube/player/YouTubeThumbnailView$OnInitializedListener;)V

    invoke-static {}, Lcom/google/android/youtube/player/internal/ab;->a()Lcom/google/android/youtube/player/internal/ab;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/youtube/player/YouTubeThumbnailView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, p1, v0, v1}, Lcom/google/android/youtube/player/internal/ab;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/youtube/player/internal/t$a;Lcom/google/android/youtube/player/internal/t$b;)Lcom/google/android/youtube/player/internal/b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/player/YouTubeThumbnailView;->a:Lcom/google/android/youtube/player/internal/b;

    iget-object v0, p0, Lcom/google/android/youtube/player/YouTubeThumbnailView;->a:Lcom/google/android/youtube/player/internal/b;

    invoke-interface {v0}, Lcom/google/android/youtube/player/internal/b;->e()V

    return-void
.end method
