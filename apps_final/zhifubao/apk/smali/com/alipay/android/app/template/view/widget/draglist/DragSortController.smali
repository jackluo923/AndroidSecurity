.class public Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;
.super Lcom/alipay/android/app/template/view/widget/draglist/SimpleFloatViewManager;
.source "DragSortController.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/view/View$OnTouchListener;


# static fields
.field public static final CLICK_REMOVE:I = 0x0

.field public static final FLING_REMOVE:I = 0x1

.field public static final MISS:I = -0x1

.field public static final ON_DOWN:I = 0x0

.field public static final ON_DRAG:I = 0x1

.field public static final ON_LONG_PRESS:I = 0x2


# instance fields
.field private a:I

.field private b:Z

.field private c:I

.field private d:Z

.field private e:Z

.field private f:Landroid/view/GestureDetector;

.field private g:Landroid/view/GestureDetector;

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:[I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:Z

.field private r:F

.field private s:I

.field private t:I

.field private u:I

.field private v:Z

.field private w:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;

.field private x:I

.field private y:Landroid/view/GestureDetector$OnGestureListener;


# direct methods
.method public constructor <init>(Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 93
    const/4 v0, 0x1

    invoke-direct {p0, p1, v1, v1, v0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;-><init>(Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;III)V

    .line 94
    return-void
.end method

.method public constructor <init>(Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;III)V
    .locals 6

    .prologue
    .line 97
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;-><init>(Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;IIII)V

    .line 98
    return-void
.end method

.method public constructor <init>(Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;IIII)V
    .locals 7

    .prologue
    .line 101
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;-><init>(Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;IIIII)V

    .line 102
    return-void
.end method

.method public constructor <init>(Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;IIIII)V
    .locals 4

    .prologue
    const/4 v1, -0x1

    const/4 v3, 0x0

    .line 113
    invoke-direct {p0, p1}, Lcom/alipay/android/app/template/view/widget/draglist/SimpleFloatViewManager;-><init>(Landroid/widget/ListView;)V

    .line 31
    iput v3, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->a:I

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->b:Z

    .line 46
    iput-boolean v3, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->d:Z

    .line 47
    iput-boolean v3, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->e:Z

    .line 57
    iput v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->i:I

    .line 58
    iput v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->j:I

    .line 60
    iput v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->k:I

    .line 62
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->l:[I

    .line 70
    iput-boolean v3, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->q:Z

    .line 72
    const/high16 v0, 0x43fa0000    # 500.0f

    iput v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->r:F

    .line 445
    new-instance v0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController$1;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController$1;-><init>(Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;)V

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->y:Landroid/view/GestureDetector$OnGestureListener;

    .line 114
    iput-object p1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->w:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;

    .line 115
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->f:Landroid/view/GestureDetector;

    .line 116
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->y:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->g:Landroid/view/GestureDetector;

    .line 117
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->g:Landroid/view/GestureDetector;

    invoke-virtual {v0, v3}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 118
    invoke-virtual {p1}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->h:I

    .line 119
    iput p2, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->s:I

    .line 120
    iput p5, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->t:I

    .line 121
    iput p6, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->u:I

    .line 122
    invoke-virtual {p0, p4}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->setRemoveMode(I)V

    .line 123
    invoke-virtual {p0, p3}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->setDragInitMode(I)V

    .line 124
    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;)Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->d:Z

    return v0
.end method

.method static synthetic b(Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;)Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->e:Z

    return v0
.end method

.method static synthetic c(Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;)Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->w:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;

    return-object v0
.end method

.method static synthetic d(Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;)F
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->r:F

    return v0
.end method

.method static synthetic e(Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;)I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->x:I

    return v0
.end method

.method static synthetic f(Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;)V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->e:Z

    return-void
.end method


# virtual methods
.method public dragHandleHitPosition(Landroid/view/MotionEvent;)I
    .locals 1

    .prologue
    .line 314
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->s:I

    invoke-virtual {p0, p1, v0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->viewIdHitPosition(Landroid/view/MotionEvent;I)I

    move-result v0

    return v0
.end method

.method public flingHandleHitPosition(Landroid/view/MotionEvent;)I
    .locals 1

    .prologue
    .line 318
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->u:I

    invoke-virtual {p0, p1, v0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->viewIdHitPosition(Landroid/view/MotionEvent;I)I

    move-result v0

    return v0
.end method

.method public getDragInitMode()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->a:I

    return v0
.end method

.method public getRemoveMode()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->c:I

    return v0
.end method

.method public isRemoveEnabled()Z
    .locals 1

    .prologue
    .line 177
    iget-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->d:Z

    return v0
.end method

.method public isSortEnabled()Z
    .locals 1

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->b:Z

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 361
    iget-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->d:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->c:I

    if-nez v0, :cond_0

    .line 362
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->t:I

    invoke-virtual {p0, p1, v0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->viewIdHitPosition(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->k:I

    .line 365
    :cond_0
    invoke-virtual {p0, p1}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->startDragPosition(Landroid/view/MotionEvent;)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->i:I

    .line 366
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->i:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->a:I

    if-nez v0, :cond_1

    .line 367
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->i:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->m:I

    sub-int/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    iget v3, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->n:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->startDrag(III)Z

    .line 370
    :cond_1
    iput-boolean v4, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->e:Z

    .line 371
    iput-boolean v5, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->v:Z

    .line 372
    iput v4, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->x:I

    .line 373
    invoke-virtual {p0, p1}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->startFlingPosition(Landroid/view/MotionEvent;)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->j:I

    .line 375
    return v5
.end method

.method public onDragFloatView(Landroid/view/View;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 1

    .prologue
    .line 277
    iget-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->d:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->e:Z

    if-eqz v0, :cond_0

    .line 278
    iget v0, p2, Landroid/graphics/Point;->x:I

    iput v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->x:I

    .line 280
    :cond_0
    return-void
.end method

.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    .prologue
    .line 424
    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 4

    .prologue
    .line 415
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->i:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 416
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->w:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->performHapticFeedback(I)Z

    .line 417
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->i:I

    iget v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->o:I

    iget v2, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->m:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->p:I

    iget v3, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->n:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->startDrag(III)Z

    .line 419
    :cond_0
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, -0x1

    .line 381
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 382
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 383
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    .line 384
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    .line 385
    iget v4, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->m:I

    sub-int v4, v2, v4

    .line 386
    iget v5, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->n:I

    sub-int v5, v3, v5

    .line 388
    iget-boolean v6, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->v:Z

    if-eqz v6, :cond_1

    iget-boolean v6, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->q:Z

    if-nez v6, :cond_1

    iget v6, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->i:I

    if-ne v6, v7, :cond_0

    iget v6, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->j:I

    if-eq v6, v7, :cond_1

    .line 389
    :cond_0
    iget v6, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->i:I

    if-eq v6, v7, :cond_3

    .line 390
    iget v6, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->a:I

    if-ne v6, v8, :cond_2

    sub-int v1, v3, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v3, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->h:I

    if-le v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->b:Z

    if-eqz v1, :cond_2

    .line 391
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->i:I

    invoke-virtual {p0, v0, v4, v5}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->startDrag(III)Z

    .line 409
    :cond_1
    :goto_0
    return v9

    .line 393
    :cond_2
    iget v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->a:I

    if-eqz v1, :cond_1

    sub-int v0, v2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->h:I

    if-le v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->d:Z

    if-eqz v0, :cond_1

    .line 395
    iput-boolean v8, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->e:Z

    .line 396
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->j:I

    invoke-virtual {p0, v0, v4, v5}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->startDrag(III)Z

    goto :goto_0

    .line 398
    :cond_3
    iget v6, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->j:I

    if-eq v6, v7, :cond_1

    .line 399
    sub-int v0, v2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v2, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->h:I

    if-le v0, v2, :cond_4

    iget-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->d:Z

    if-eqz v0, :cond_4

    .line 400
    iput-boolean v8, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->e:Z

    .line 401
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->j:I

    invoke-virtual {p0, v0, v4, v5}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->startDrag(III)Z

    goto :goto_0

    .line 402
    :cond_4
    sub-int v0, v3, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->h:I

    if-le v0, v1, :cond_1

    .line 403
    iput-boolean v9, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->v:Z

    goto :goto_0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    .prologue
    .line 442
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    .line 430
    iget-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->d:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->c:I

    if-nez v0, :cond_0

    .line 431
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->k:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 432
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->w:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;

    iget v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->k:I

    iget-object v2, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->w:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;

    invoke-virtual {v2}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->getHeaderViewsCount()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->removeItem(I)V

    .line 435
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 239
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->w:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->isDragEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->w:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->listViewIntercepted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 268
    :cond_0
    :goto_0
    return v2

    .line 243
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->f:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 244
    iget-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->d:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->q:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->c:I

    if-ne v0, v3, :cond_2

    .line 245
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->g:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 248
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 249
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 251
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->o:I

    .line 252
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->p:I

    goto :goto_0

    .line 255
    :pswitch_2
    iget-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->d:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->e:Z

    if-eqz v0, :cond_3

    .line 256
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->x:I

    if-ltz v0, :cond_4

    iget v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->x:I

    .line 257
    :goto_1
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->w:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 258
    if-le v0, v1, :cond_3

    .line 259
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->w:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->stopDragWithVelocity(ZF)Z

    .line 263
    :cond_3
    :pswitch_3
    iput-boolean v2, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->e:Z

    .line 264
    iput-boolean v2, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->q:Z

    goto :goto_0

    .line 256
    :cond_4
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->x:I

    neg-int v0, v0

    goto :goto_1

    .line 249
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public setClickRemoveId(I)V
    .locals 0

    .prologue
    .line 207
    iput p1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->t:I

    .line 208
    return-void
.end method

.method public setDragHandleId(I)V
    .locals 0

    .prologue
    .line 187
    iput p1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->s:I

    .line 188
    return-void
.end method

.method public setDragInitMode(I)V
    .locals 0

    .prologue
    .line 138
    iput p1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->a:I

    .line 139
    return-void
.end method

.method public setFlingHandleId(I)V
    .locals 0

    .prologue
    .line 197
    iput p1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->u:I

    .line 198
    return-void
.end method

.method public setRemoveEnabled(Z)V
    .locals 0

    .prologue
    .line 173
    iput-boolean p1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->d:Z

    .line 174
    return-void
.end method

.method public setRemoveMode(I)V
    .locals 0

    .prologue
    .line 162
    iput p1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->c:I

    .line 163
    return-void
.end method

.method public setSortEnabled(Z)V
    .locals 0

    .prologue
    .line 149
    iput-boolean p1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->b:Z

    .line 150
    return-void
.end method

.method public startDrag(III)Z
    .locals 3

    .prologue
    .line 223
    const/4 v0, 0x0

    .line 224
    iget-boolean v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->b:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->e:Z

    if-nez v1, :cond_0

    .line 225
    const/16 v0, 0xc

    .line 227
    :cond_0
    iget-boolean v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->d:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->e:Z

    if-eqz v1, :cond_1

    .line 228
    or-int/lit8 v0, v0, 0x1

    .line 229
    or-int/lit8 v0, v0, 0x2

    .line 232
    :cond_1
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->w:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;

    iget-object v2, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->w:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;

    invoke-virtual {v2}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->getHeaderViewsCount()I

    move-result v2

    sub-int v2, p1, v2

    invoke-virtual {v1, v2, v0, p2, p3}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->startDrag(IIII)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->q:Z

    .line 234
    iget-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->q:Z

    return v0
.end method

.method public startDragPosition(Landroid/view/MotionEvent;)I
    .locals 1

    .prologue
    .line 296
    invoke-virtual {p0, p1}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->dragHandleHitPosition(Landroid/view/MotionEvent;)I

    move-result v0

    return v0
.end method

.method public startFlingPosition(Landroid/view/MotionEvent;)I
    .locals 2

    .prologue
    .line 300
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->flingHandleHitPosition(Landroid/view/MotionEvent;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public viewIdHitPosition(Landroid/view/MotionEvent;I)I
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v1, -0x1

    .line 322
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 323
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 325
    iget-object v3, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->w:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;

    invoke-virtual {v3, v0, v2}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->pointToPosition(II)I

    move-result v0

    .line 327
    iget-object v2, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->w:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;

    invoke-virtual {v2}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->getHeaderViewsCount()I

    move-result v2

    .line 328
    iget-object v3, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->w:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;

    invoke-virtual {v3}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->getFooterViewsCount()I

    move-result v3

    .line 329
    iget-object v4, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->w:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;

    invoke-virtual {v4}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->getCount()I

    move-result v4

    .line 334
    if-eq v0, v1, :cond_1

    if-lt v0, v2, :cond_1

    .line 335
    sub-int v2, v4, v3

    if-ge v0, v2, :cond_1

    .line 336
    iget-object v2, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->w:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;

    iget-object v3, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->w:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;

    invoke-virtual {v3}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int v3, v0, v3

    invoke-virtual {v2, v3}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 337
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v4, v2

    .line 338
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v5, v2

    .line 340
    if-nez p2, :cond_0

    move-object v2, v3

    .line 341
    :goto_0
    if-eqz v2, :cond_1

    .line 342
    iget-object v6, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->l:[I

    invoke-virtual {v2, v6}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 344
    iget-object v6, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->l:[I

    aget v6, v6, v7

    if-le v4, v6, :cond_1

    iget-object v6, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->l:[I

    aget v6, v6, v8

    if-le v5, v6, :cond_1

    .line 345
    iget-object v6, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->l:[I

    aget v6, v6, v7

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v6, v7

    if-ge v4, v6, :cond_1

    .line 346
    iget-object v4, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->l:[I

    aget v4, v4, v8

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v2, v4

    if-ge v5, v2, :cond_1

    .line 348
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v1

    iput v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->m:I

    .line 349
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v1

    iput v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->n:I

    .line 356
    :goto_1
    return v0

    .line 340
    :cond_0
    invoke-virtual {v3, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 356
    goto :goto_1
.end method
