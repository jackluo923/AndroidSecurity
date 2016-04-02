.class public Luk/co/senab/a/b/j;
.super Ljava/lang/Object;


# instance fields
.field a:Luk/co/senab/a/b/f;

.field b:Luk/co/senab/a/b/a/b;

.field public c:Landroid/app/Activity;

.field d:Landroid/view/View;

.field e:Luk/co/senab/a/b/a/a;

.field final f:I

.field g:F

.field h:F

.field i:Z

.field j:Z

.field k:Z

.field l:Landroid/view/View;

.field final m:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/view/View;",
            "Luk/co/senab/a/b/b/c;",
            ">;"
        }
    .end annotation
.end field

.field final n:Z

.field private o:Luk/co/senab/a/b/e;

.field private final p:F

.field private q:F

.field private r:F

.field private final s:I

.field private final t:Z

.field private u:Z

.field private final v:[I

.field private final w:Landroid/graphics/Rect;

.field private final x:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Luk/co/senab/a/b/h;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v3, p0, Luk/co/senab/a/b/j;->u:Z

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Luk/co/senab/a/b/j;->v:[I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Luk/co/senab/a/b/j;->w:Landroid/graphics/Rect;

    new-instance v0, Luk/co/senab/a/b/m;

    invoke-direct {v0, p0}, Luk/co/senab/a/b/m;-><init>(Luk/co/senab/a/b/j;)V

    iput-object v0, p0, Luk/co/senab/a/b/j;->x:Ljava/lang/Runnable;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "activity cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    const-string v0, "PullToRefreshAttacher"

    const-string v1, "Given null options so using default options."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Luk/co/senab/a/b/h;

    invoke-direct {p2}, Luk/co/senab/a/b/h;-><init>()V

    :cond_1
    iput-object p1, p0, Luk/co/senab/a/b/j;->c:Landroid/app/Activity;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Luk/co/senab/a/b/j;->m:Ljava/util/WeakHashMap;

    iget v0, p2, Luk/co/senab/a/b/h;->d:F

    iput v0, p0, Luk/co/senab/a/b/j;->p:F

    iget-boolean v0, p2, Luk/co/senab/a/b/h;->e:Z

    iput-boolean v0, p0, Luk/co/senab/a/b/j;->n:Z

    iget v0, p2, Luk/co/senab/a/b/h;->f:I

    iput v0, p0, Luk/co/senab/a/b/j;->s:I

    iget-boolean v0, p2, Luk/co/senab/a/b/h;->g:Z

    iput-boolean v0, p0, Luk/co/senab/a/b/j;->t:Z

    iget-object v0, p2, Luk/co/senab/a/b/h;->a:Luk/co/senab/a/b/e;

    if-eqz v0, :cond_2

    iget-object v0, p2, Luk/co/senab/a/b/h;->a:Luk/co/senab/a/b/e;

    :goto_0
    iput-object v0, p0, Luk/co/senab/a/b/j;->o:Luk/co/senab/a/b/e;

    iget-object v0, p2, Luk/co/senab/a/b/h;->c:Luk/co/senab/a/b/f;

    if-eqz v0, :cond_3

    iget-object v0, p2, Luk/co/senab/a/b/h;->c:Luk/co/senab/a/b/f;

    :goto_1
    iput-object v0, p0, Luk/co/senab/a/b/j;->a:Luk/co/senab/a/b/f;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Luk/co/senab/a/b/j;->f:I

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Luk/co/senab/a/b/j;->o:Luk/co/senab/a/b/e;

    invoke-interface {v1, p1}, Luk/co/senab/a/b/e;->a(Landroid/app/Activity;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget v2, p2, Luk/co/senab/a/b/h;->b:I

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Luk/co/senab/a/b/j;->d:Landroid/view/View;

    iget-object v1, p0, Luk/co/senab/a/b/j;->d:Landroid/view/View;

    if-nez v1, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must supply valid layout id for header."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p0}, Luk/co/senab/a/b/j;->a()Luk/co/senab/a/b/e;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Luk/co/senab/a/b/j;->b()Luk/co/senab/a/b/f;

    move-result-object v0

    goto :goto_1

    :cond_4
    iget-object v1, p0, Luk/co/senab/a/b/j;->d:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Luk/co/senab/a/b/j;->a:Luk/co/senab/a/b/f;

    iget-object v2, p0, Luk/co/senab/a/b/j;->d:Landroid/view/View;

    invoke-virtual {v1, p1, v2}, Luk/co/senab/a/b/f;->a(Landroid/app/Activity;Landroid/view/View;)V

    new-instance v1, Luk/co/senab/a/b/k;

    invoke-direct {v1, p0, v0}, Luk/co/senab/a/b/k;-><init>(Luk/co/senab/a/b/j;Landroid/view/ViewGroup;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private a(Z)Z
    .locals 1

    iget-boolean v0, p0, Luk/co/senab/a/b/j;->j:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Luk/co/senab/a/b/j;->b:Luk/co/senab/a/b/a/b;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private g()V
    .locals 1

    iget-object v0, p0, Luk/co/senab/a/b/j;->d:Landroid/view/View;

    invoke-virtual {p0, v0}, Luk/co/senab/a/b/j;->b(Landroid/view/View;)V

    iget-object v0, p0, Luk/co/senab/a/b/j;->a:Luk/co/senab/a/b/f;

    invoke-virtual {v0}, Luk/co/senab/a/b/f;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Luk/co/senab/a/b/j;->e:Luk/co/senab/a/b/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Luk/co/senab/a/b/j;->e:Luk/co/senab/a/b/a/a;

    iget-object v0, p0, Luk/co/senab/a/b/j;->d:Landroid/view/View;

    :cond_0
    return-void
.end method

.method private h()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Luk/co/senab/a/b/j;->j:Z

    iget-boolean v0, p0, Luk/co/senab/a/b/j;->t:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Luk/co/senab/a/b/j;->d:Landroid/view/View;

    iget-object v1, p0, Luk/co/senab/a/b/j;->x:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object v0, p0, Luk/co/senab/a/b/j;->a:Luk/co/senab/a/b/f;

    invoke-virtual {v0}, Luk/co/senab/a/b/f;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Luk/co/senab/a/b/j;->e:Luk/co/senab/a/b/a/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Luk/co/senab/a/b/j;->e:Luk/co/senab/a/b/a/a;

    iget-object v0, p0, Luk/co/senab/a/b/j;->d:Landroid/view/View;

    :cond_1
    return-void
.end method


# virtual methods
.method protected a()Luk/co/senab/a/b/e;
    .locals 1

    new-instance v0, Luk/co/senab/a/b/l;

    invoke-direct {v0, p0}, Luk/co/senab/a/b/l;-><init>(Luk/co/senab/a/b/j;)V

    return-object v0
.end method

.method public a(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Luk/co/senab/a/b/j;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Luk/co/senab/a/b/j;->w:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_0
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x3e8

    const/16 v4, 0x18

    const/4 v5, -0x3

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v1, p0, Luk/co/senab/a/b/j;->w:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    const/16 v1, 0x30

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v1, p0, Luk/co/senab/a/b/j;->c:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method final a(ZZ)V
    .locals 4

    invoke-virtual {p0}, Luk/co/senab/a/b/j;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Luk/co/senab/a/b/j;->j:Z

    if-eq v0, p1, :cond_0

    invoke-virtual {p0}, Luk/co/senab/a/b/j;->d()V

    if-eqz p1, :cond_4

    invoke-direct {p0, p2}, Luk/co/senab/a/b/j;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    iput-boolean v0, p0, Luk/co/senab/a/b/j;->j:Z

    if-eqz p2, :cond_2

    iget-object v0, p0, Luk/co/senab/a/b/j;->b:Luk/co/senab/a/b/a/b;

    if-eqz v0, :cond_2

    iget-object v0, p0, Luk/co/senab/a/b/j;->b:Luk/co/senab/a/b/a/b;

    invoke-interface {v0}, Luk/co/senab/a/b/a/b;->e()V

    :cond_2
    iget-object v0, p0, Luk/co/senab/a/b/j;->a:Luk/co/senab/a/b/f;

    invoke-virtual {v0}, Luk/co/senab/a/b/f;->f()V

    invoke-direct {p0}, Luk/co/senab/a/b/j;->g()V

    iget-boolean v0, p0, Luk/co/senab/a/b/j;->t:Z

    if-eqz v0, :cond_0

    iget v0, p0, Luk/co/senab/a/b/j;->s:I

    if-lez v0, :cond_3

    iget-object v0, p0, Luk/co/senab/a/b/j;->d:Landroid/view/View;

    iget-object v1, p0, Luk/co/senab/a/b/j;->x:Ljava/lang/Runnable;

    iget v2, p0, Luk/co/senab/a/b/j;->s:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Luk/co/senab/a/b/j;->d:Landroid/view/View;

    iget-object v1, p0, Luk/co/senab/a/b/j;->x:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Luk/co/senab/a/b/j;->h()V

    goto :goto_0
.end method

.method final a(Landroid/view/MotionEvent;)Z
    .locals 11

    const/4 v10, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Luk/co/senab/a/b/j;->j:Z

    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_1
    iget-boolean v0, p0, Luk/co/senab/a/b/j;->i:Z

    goto :goto_0

    :pswitch_0
    iget-boolean v0, p0, Luk/co/senab/a/b/j;->i:Z

    if-nez v0, :cond_1

    iget v0, p0, Luk/co/senab/a/b/j;->q:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget v0, p0, Luk/co/senab/a/b/j;->q:F

    sub-float v0, v4, v0

    iget v1, p0, Luk/co/senab/a/b/j;->r:F

    sub-float v1, v3, v1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_2

    iget v1, p0, Luk/co/senab/a/b/j;->f:I

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_2

    iput-boolean v10, p0, Luk/co/senab/a/b/j;->i:Z

    invoke-direct {p0}, Luk/co/senab/a/b/j;->g()V

    iput v4, p0, Luk/co/senab/a/b/j;->h:F

    goto :goto_1

    :cond_2
    iget v1, p0, Luk/co/senab/a/b/j;->f:I

    neg-int v1, v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    invoke-virtual {p0}, Luk/co/senab/a/b/j;->d()V

    goto :goto_1

    :pswitch_1
    invoke-direct {p0, v10}, Luk/co/senab/a/b/j;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Luk/co/senab/a/b/j;->m:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Luk/co/senab/a/b/j;->m:Ljava/util/WeakHashMap;

    invoke-virtual {v1, v0}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Luk/co/senab/a/b/j;->v:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v1, p0, Luk/co/senab/a/b/j;->v:[I

    aget v1, v1, v2

    iget-object v6, p0, Luk/co/senab/a/b/j;->v:[I

    aget v6, v6, v10

    iget-object v7, p0, Luk/co/senab/a/b/j;->w:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int/2addr v8, v1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v9

    add-int/2addr v9, v6

    invoke-virtual {v7, v1, v6, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v6, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    iget-object v7, p0, Luk/co/senab/a/b/j;->w:Landroid/graphics/Rect;

    invoke-virtual {v7, v6, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Luk/co/senab/a/b/j;->m:Ljava/util/WeakHashMap;

    invoke-virtual {v1, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Luk/co/senab/a/b/b/c;

    if-eqz v1, :cond_4

    iget-object v7, p0, Luk/co/senab/a/b/j;->w:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    iget-object v7, p0, Luk/co/senab/a/b/j;->w:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    invoke-interface {v1, v0, v6}, Luk/co/senab/a/b/b/c;->a(Landroid/view/View;F)Z

    move-result v1

    :goto_3
    if-eqz v1, :cond_3

    iput v3, p0, Luk/co/senab/a/b/j;->r:F

    iput v4, p0, Luk/co/senab/a/b/j;->q:F

    iput-object v0, p0, Luk/co/senab/a/b/j;->l:Landroid/view/View;

    goto :goto_2

    :cond_4
    move v1, v2

    goto :goto_3

    :pswitch_2
    invoke-virtual {p0}, Luk/co/senab/a/b/j;->d()V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected b()Luk/co/senab/a/b/f;
    .locals 1

    new-instance v0, Luk/co/senab/a/b/c;

    invoke-direct {v0}, Luk/co/senab/a/b/c;-><init>()V

    return-object v0
.end method

.method public b(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Luk/co/senab/a/b/j;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Luk/co/senab/a/b/j;->w:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v1, v1, Landroid/view/WindowManager$LayoutParams;

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v2, p0, Luk/co/senab/a/b/j;->w:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Luk/co/senab/a/b/j;->w:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v1, p0, Luk/co/senab/a/b/j;->c:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Landroid/view/WindowManager$LayoutParams;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    goto :goto_0
.end method

.method final c()V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Luk/co/senab/a/b/j;->u:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Luk/co/senab/a/b/j;->d:Landroid/view/View;

    invoke-virtual {p0, v0}, Luk/co/senab/a/b/j;->c(Landroid/view/View;)V

    iget-object v0, p0, Luk/co/senab/a/b/j;->m:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    iput-object v1, p0, Luk/co/senab/a/b/j;->c:Landroid/app/Activity;

    iput-object v1, p0, Luk/co/senab/a/b/j;->d:Landroid/view/View;

    iput-object v1, p0, Luk/co/senab/a/b/j;->e:Luk/co/senab/a/b/a/a;

    iput-object v1, p0, Luk/co/senab/a/b/j;->o:Luk/co/senab/a/b/e;

    iput-object v1, p0, Luk/co/senab/a/b/j;->a:Luk/co/senab/a/b/f;

    const/4 v0, 0x1

    iput-boolean v0, p0, Luk/co/senab/a/b/j;->u:Z

    goto :goto_0
.end method

.method public c(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Luk/co/senab/a/b/j;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method final d(Landroid/view/View;)F
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Luk/co/senab/a/b/j;->p:F

    mul-float/2addr v0, v1

    return v0
.end method

.method final d()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Luk/co/senab/a/b/j;->i:Z

    iput-boolean v0, p0, Luk/co/senab/a/b/j;->k:Z

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Luk/co/senab/a/b/j;->h:F

    iput v0, p0, Luk/co/senab/a/b/j;->g:F

    iput v0, p0, Luk/co/senab/a/b/j;->q:F

    return-void
.end method

.method final e()V
    .locals 1

    iget-boolean v0, p0, Luk/co/senab/a/b/j;->j:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Luk/co/senab/a/b/j;->h()V

    :cond_0
    return-void
.end method

.method final f()Z
    .locals 2

    iget-boolean v0, p0, Luk/co/senab/a/b/j;->u:Z

    if-eqz v0, :cond_0

    const-string v0, "PullToRefreshAttacher"

    const-string v1, "PullToRefreshAttacher is destroyed."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Luk/co/senab/a/b/j;->u:Z

    return v0
.end method
