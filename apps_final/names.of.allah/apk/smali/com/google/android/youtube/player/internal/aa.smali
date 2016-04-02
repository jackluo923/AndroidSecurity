.class public final Lcom/google/android/youtube/player/internal/aa;
.super Lcom/google/android/youtube/player/internal/y;


# static fields
.field private static final a:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Landroid/content/res/Resources;

.field private final c:Landroid/view/LayoutInflater;

.field private final d:Landroid/content/res/Resources$Theme;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Landroid/util/AttributeSet;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/youtube/player/internal/aa;->a:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/content/res/Resources;Ljava/lang/ClassLoader;I)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/android/youtube/player/internal/y;-><init>(Landroid/app/Activity;)V

    const-string v0, "resources cannot be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/player/internal/ac;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Resources;

    iput-object v0, p0, Lcom/google/android/youtube/player/internal/aa;->b:Landroid/content/res/Resources;

    const-string v0, "layout_inflater"

    invoke-super {p0, v0}, Lcom/google/android/youtube/player/internal/y;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    invoke-virtual {v0, p0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    new-instance v1, Lcom/google/android/youtube/player/internal/aa$a;

    invoke-direct {v1, p3}, Lcom/google/android/youtube/player/internal/aa$a;-><init>(Ljava/lang/ClassLoader;)V

    invoke-virtual {v0, v1}, Landroid/view/LayoutInflater;->setFactory(Landroid/view/LayoutInflater$Factory;)V

    iput-object v0, p0, Lcom/google/android/youtube/player/internal/aa;->c:Landroid/view/LayoutInflater;

    invoke-virtual {p2}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/player/internal/aa;->d:Landroid/content/res/Resources$Theme;

    iget-object v0, p0, Lcom/google/android/youtube/player/internal/aa;->d:Landroid/content/res/Resources$Theme;

    const/4 v1, 0x0

    invoke-virtual {v0, p4, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    return-void
.end method

.method static synthetic a()[Ljava/lang/Class;
    .locals 1

    sget-object v0, Lcom/google/android/youtube/player/internal/aa;->a:[Ljava/lang/Class;

    return-object v0
.end method


# virtual methods
.method public final getApplicationContext()Landroid/content/Context;
    .locals 1

    invoke-super {p0}, Lcom/google/android/youtube/player/internal/y;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final getBaseContext()Landroid/content/Context;
    .locals 1

    invoke-super {p0}, Lcom/google/android/youtube/player/internal/y;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final getResources()Landroid/content/res/Resources;
    .locals 1

    iget-object v0, p0, Lcom/google/android/youtube/player/internal/aa;->b:Landroid/content/res/Resources;

    return-object v0
.end method

.method public final getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const-string v0, "layout_inflater"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/youtube/player/internal/aa;->c:Landroid/view/LayoutInflater;

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/youtube/player/internal/y;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final getTheme()Landroid/content/res/Resources$Theme;
    .locals 1

    iget-object v0, p0, Lcom/google/android/youtube/player/internal/aa;->d:Landroid/content/res/Resources$Theme;

    return-object v0
.end method
