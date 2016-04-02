.class public abstract Lcom/google/android/youtube/player/internal/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/youtube/player/YouTubeThumbnailLoader;


# instance fields
.field private final a:Lcom/google/android/youtube/player/YouTubeThumbnailView;

.field private b:Lcom/google/android/youtube/player/YouTubeThumbnailLoader$OnThumbnailLoadedListener;

.field private c:Z

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/player/YouTubeThumbnailView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "thumbnailView cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/player/internal/ac;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/player/YouTubeThumbnailView;

    iput-object v0, p0, Lcom/google/android/youtube/player/internal/a;->a:Lcom/google/android/youtube/player/YouTubeThumbnailView;

    return-void
.end method

.method private h()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/youtube/player/internal/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This YouTubeThumbnailLoader has been released"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/youtube/player/internal/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/youtube/player/internal/a;->a:Lcom/google/android/youtube/player/YouTubeThumbnailView;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/player/YouTubeThumbnailView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/google/android/youtube/player/internal/a;->b:Lcom/google/android/youtube/player/YouTubeThumbnailLoader$OnThumbnailLoadedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/youtube/player/internal/a;->b:Lcom/google/android/youtube/player/YouTubeThumbnailLoader$OnThumbnailLoadedListener;

    iget-object v1, p0, Lcom/google/android/youtube/player/internal/a;->a:Lcom/google/android/youtube/player/YouTubeThumbnailView;

    invoke-interface {v0, v1, p2}, Lcom/google/android/youtube/player/YouTubeThumbnailLoader$OnThumbnailLoadedListener;->onThumbnailLoaded(Lcom/google/android/youtube/player/YouTubeThumbnailView;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public abstract a(Ljava/lang/String;)V
.end method

.method public abstract a(Ljava/lang/String;I)V
.end method

.method protected a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/youtube/player/internal/a;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract b()V
.end method

.method public final b(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/youtube/player/internal/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/youtube/player/internal/a;->b:Lcom/google/android/youtube/player/YouTubeThumbnailLoader$OnThumbnailLoadedListener;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {p1}, Lcom/google/android/youtube/player/YouTubeThumbnailLoader$ErrorReason;->valueOf(Ljava/lang/String;)Lcom/google/android/youtube/player/YouTubeThumbnailLoader$ErrorReason;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/google/android/youtube/player/internal/a;->b:Lcom/google/android/youtube/player/YouTubeThumbnailLoader$OnThumbnailLoadedListener;

    iget-object v2, p0, Lcom/google/android/youtube/player/internal/a;->a:Lcom/google/android/youtube/player/YouTubeThumbnailView;

    invoke-interface {v1, v2, v0}, Lcom/google/android/youtube/player/YouTubeThumbnailLoader$OnThumbnailLoadedListener;->onThumbnailError(Lcom/google/android/youtube/player/YouTubeThumbnailView;Lcom/google/android/youtube/player/YouTubeThumbnailLoader$ErrorReason;)V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    sget-object v0, Lcom/google/android/youtube/player/YouTubeThumbnailLoader$ErrorReason;->UNKNOWN:Lcom/google/android/youtube/player/YouTubeThumbnailLoader$ErrorReason;

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v0, Lcom/google/android/youtube/player/YouTubeThumbnailLoader$ErrorReason;->UNKNOWN:Lcom/google/android/youtube/player/YouTubeThumbnailLoader$ErrorReason;

    goto :goto_0
.end method

.method public abstract c()V
.end method

.method public abstract d()V
.end method

.method public abstract e()Z
.end method

.method public abstract f()Z
.end method

.method public final first()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/youtube/player/internal/a;->h()V

    iget-boolean v0, p0, Lcom/google/android/youtube/player/internal/a;->c:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must call setPlaylist first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/youtube/player/internal/a;->d()V

    return-void
.end method

.method public abstract g()V
.end method

.method public final hasNext()Z
    .locals 1

    invoke-direct {p0}, Lcom/google/android/youtube/player/internal/a;->h()V

    invoke-virtual {p0}, Lcom/google/android/youtube/player/internal/a;->e()Z

    move-result v0

    return v0
.end method

.method public final hasPrevious()Z
    .locals 1

    invoke-direct {p0}, Lcom/google/android/youtube/player/internal/a;->h()V

    invoke-virtual {p0}, Lcom/google/android/youtube/player/internal/a;->f()Z

    move-result v0

    return v0
.end method

.method public final next()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/youtube/player/internal/a;->h()V

    iget-boolean v0, p0, Lcom/google/android/youtube/player/internal/a;->c:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must call setPlaylist first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/youtube/player/internal/a;->e()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Called next at end of playlist"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/youtube/player/internal/a;->b()V

    return-void
.end method

.method public final previous()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/youtube/player/internal/a;->h()V

    iget-boolean v0, p0, Lcom/google/android/youtube/player/internal/a;->c:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must call setPlaylist first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/youtube/player/internal/a;->f()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Called previous at start of playlist"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/youtube/player/internal/a;->c()V

    return-void
.end method

.method public final release()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/youtube/player/internal/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/player/internal/a;->d:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/player/internal/a;->b:Lcom/google/android/youtube/player/YouTubeThumbnailLoader$OnThumbnailLoadedListener;

    invoke-virtual {p0}, Lcom/google/android/youtube/player/internal/a;->g()V

    :cond_0
    return-void
.end method

.method public final setOnThumbnailLoadedListener(Lcom/google/android/youtube/player/YouTubeThumbnailLoader$OnThumbnailLoadedListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/youtube/player/internal/a;->h()V

    iput-object p1, p0, Lcom/google/android/youtube/player/internal/a;->b:Lcom/google/android/youtube/player/YouTubeThumbnailLoader$OnThumbnailLoadedListener;

    return-void
.end method

.method public final setPlaylist(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/youtube/player/internal/a;->setPlaylist(Ljava/lang/String;I)V

    return-void
.end method

.method public final setPlaylist(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/youtube/player/internal/a;->h()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/player/internal/a;->c:Z

    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/player/internal/a;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public final setVideo(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/youtube/player/internal/a;->h()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/player/internal/a;->c:Z

    invoke-virtual {p0, p1}, Lcom/google/android/youtube/player/internal/a;->a(Ljava/lang/String;)V

    return-void
.end method
