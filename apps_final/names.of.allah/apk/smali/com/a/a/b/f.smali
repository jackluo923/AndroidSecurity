.class public Lcom/a/a/b/f;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String;

.field private static volatile f:Lcom/a/a/b/f;


# instance fields
.field private b:Lcom/a/a/b/g;

.field private c:Lcom/a/a/b/i;

.field private final d:Lcom/a/a/b/a/d;

.field private final e:Lcom/a/a/b/c/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/a/a/b/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/a/a/b/f;->a:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/a/a/b/a/l;

    invoke-direct {v0}, Lcom/a/a/b/a/l;-><init>()V

    iput-object v0, p0, Lcom/a/a/b/f;->d:Lcom/a/a/b/a/d;

    new-instance v0, Lcom/a/a/b/c/c;

    invoke-direct {v0}, Lcom/a/a/b/c/c;-><init>()V

    iput-object v0, p0, Lcom/a/a/b/f;->e:Lcom/a/a/b/c/a;

    return-void
.end method

.method public static a()Lcom/a/a/b/f;
    .locals 2

    sget-object v0, Lcom/a/a/b/f;->f:Lcom/a/a/b/f;

    if-nez v0, :cond_1

    const-class v1, Lcom/a/a/b/f;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/a/a/b/f;->f:Lcom/a/a/b/f;

    if-nez v0, :cond_0

    new-instance v0, Lcom/a/a/b/f;

    invoke-direct {v0}, Lcom/a/a/b/f;-><init>()V

    sput-object v0, Lcom/a/a/b/f;->f:Lcom/a/a/b/f;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/a/a/b/f;->f:Lcom/a/a/b/f;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private e()V
    .locals 2

    iget-object v0, p0, Lcom/a/a/b/f;->b:Lcom/a/a/b/g;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ImageLoader must be init with configuration before using"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/a/a/b/g;)V
    .locals 2

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ImageLoader configuration can not be initialized with null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/a/a/b/f;->b:Lcom/a/a/b/g;

    if-nez v0, :cond_2

    iget-boolean v0, p1, Lcom/a/a/b/g;->u:Z

    if-eqz v0, :cond_1

    const-string v0, "Initialize ImageLoader with configuration"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/a/a/c/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    new-instance v0, Lcom/a/a/b/i;

    invoke-direct {v0, p1}, Lcom/a/a/b/i;-><init>(Lcom/a/a/b/g;)V

    iput-object v0, p0, Lcom/a/a/b/f;->c:Lcom/a/a/b/i;

    iput-object p1, p0, Lcom/a/a/b/f;->b:Lcom/a/a/b/g;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    const-string v0, "Try to initialize ImageLoader which had already been initialized before. To re-init ImageLoader with new configuration call ImageLoader.destroy() at first."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/a/a/c/d;->c(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/a/a/b/d;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/a/a/b/f;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/a/a/b/d;Lcom/a/a/b/a/d;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/a/a/b/d;Lcom/a/a/b/a/d;)V
    .locals 11

    const/4 v10, -0x2

    const/4 v9, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/a/a/b/f;->e()V

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrong arguments were passed to displayImage() method (ImageView reference must not be null)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p4, :cond_15

    iget-object v6, p0, Lcom/a/a/b/f;->d:Lcom/a/a/b/a/d;

    :goto_0
    if-nez p3, :cond_14

    iget-object v0, p0, Lcom/a/a/b/f;->b:Lcom/a/a/b/g;

    iget-object v5, v0, Lcom/a/a/b/g;->t:Lcom/a/a/b/d;

    :goto_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/a/a/b/f;->c:Lcom/a/a/b/i;

    invoke-virtual {v0, p2}, Lcom/a/a/b/i;->b(Landroid/widget/ImageView;)V

    invoke-interface {v6}, Lcom/a/a/b/a/d;->a()V

    iget v0, v5, Lcom/a/a/b/d;->b:I

    if-eqz v0, :cond_1

    :goto_2
    if-eqz v1, :cond_2

    iget v0, v5, Lcom/a/a/b/d;->b:I

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_3
    invoke-interface {v6, p1, p2, v9}, Lcom/a/a/b/a/d;->a(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V

    :goto_4
    return-void

    :cond_1
    move v1, v2

    goto :goto_2

    :cond_2
    invoke-virtual {p2, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/a/a/b/f;->b:Lcom/a/a/b/g;

    iget v3, v0, Lcom/a/a/b/g;->b:I

    iget-object v0, p0, Lcom/a/a/b/f;->b:Lcom/a/a/b/g;

    iget v0, v0, Lcom/a/a/b/g;->c:I

    invoke-virtual {p2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    invoke-virtual {p2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    if-eqz v8, :cond_a

    iget v4, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v4, v10, :cond_a

    move v4, v2

    :goto_5
    if-gtz v4, :cond_4

    if-eqz v8, :cond_4

    iget v4, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_4
    if-gtz v4, :cond_5

    const-string v4, "mMaxWidth"

    invoke-static {p2, v4}, Lcom/a/a/c/a;->a(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v4

    :cond_5
    if-gtz v4, :cond_13

    :goto_6
    if-gtz v3, :cond_12

    iget v3, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    move v4, v3

    :goto_7
    if-eqz v8, :cond_b

    iget v3, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v3, v10, :cond_b

    move v3, v2

    :goto_8
    if-gtz v3, :cond_6

    if-eqz v8, :cond_6

    iget v3, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_6
    if-gtz v3, :cond_7

    const-string v3, "mMaxHeight"

    invoke-static {p2, v3}, Lcom/a/a/c/a;->a(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v3

    :cond_7
    if-gtz v3, :cond_11

    :goto_9
    if-gtz v0, :cond_8

    iget v0, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    :cond_8
    new-instance v3, Lcom/a/a/b/a/f;

    invoke-direct {v3, v4, v0}, Lcom/a/a/b/a/f;-><init>(II)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "_"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, v3, Lcom/a/a/b/a/f;->a:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "x"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, v3, Lcom/a/a/b/a/f;->b:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/a/a/b/f;->c:Lcom/a/a/b/i;

    iget-object v0, v0, Lcom/a/a/b/i;->e:Ljava/util/Map;

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v6}, Lcom/a/a/b/a/d;->a()V

    iget-object v0, p0, Lcom/a/a/b/f;->b:Lcom/a/a/b/g;

    iget-object v0, v0, Lcom/a/a/b/g;->p:Lcom/a/a/a/b/c;

    invoke-interface {v0, v4}, Lcom/a/a/a/b/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/graphics/Bitmap;

    if-eqz v8, :cond_d

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/a/a/b/f;->b:Lcom/a/a/b/g;

    iget-boolean v0, v0, Lcom/a/a/b/g;->u:Z

    if-eqz v0, :cond_9

    const-string v0, "Load image from memory cache [%s]"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v4, v1, v2

    invoke-static {v0, v1}, Lcom/a/a/c/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_9
    invoke-virtual {v5}, Lcom/a/a/b/d;->a()Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Lcom/a/a/b/k;

    iget-object v1, p0, Lcom/a/a/b/f;->c:Lcom/a/a/b/i;

    invoke-virtual {v1, p1}, Lcom/a/a/b/i;->a(Ljava/lang/String;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v7

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v7}, Lcom/a/a/b/k;-><init>(Ljava/lang/String;Landroid/widget/ImageView;Lcom/a/a/b/a/f;Ljava/lang/String;Lcom/a/a/b/d;Lcom/a/a/b/a/d;Ljava/util/concurrent/locks/ReentrantLock;)V

    new-instance v1, Lcom/a/a/b/o;

    iget-object v2, p0, Lcom/a/a/b/f;->c:Lcom/a/a/b/i;

    invoke-virtual {v5}, Lcom/a/a/b/d;->b()Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v1, v2, v8, v0, v3}, Lcom/a/a/b/o;-><init>(Lcom/a/a/b/i;Landroid/graphics/Bitmap;Lcom/a/a/b/k;Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/a/a/b/f;->c:Lcom/a/a/b/i;

    invoke-virtual {v0}, Lcom/a/a/b/i;->a()V

    iget-object v0, v0, Lcom/a/a/b/i;->c:Ljava/util/concurrent/Executor;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_4

    :cond_a
    invoke-virtual {p2}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    goto/16 :goto_5

    :cond_b
    invoke-virtual {p2}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    goto/16 :goto_8

    :cond_c
    iget-object v0, v5, Lcom/a/a/b/d;->m:Lcom/a/a/b/c/a;

    sget-object v1, Lcom/a/a/b/a/g;->c:Lcom/a/a/b/a/g;

    invoke-interface {v0, v8, p2}, Lcom/a/a/b/c/a;->a(Landroid/graphics/Bitmap;Landroid/widget/ImageView;)Landroid/graphics/Bitmap;

    invoke-interface {v6, p1, p2, v8}, Lcom/a/a/b/a/d;->a(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V

    goto/16 :goto_4

    :cond_d
    iget v0, v5, Lcom/a/a/b/d;->a:I

    if-eqz v0, :cond_f

    move v0, v1

    :goto_a
    if-eqz v0, :cond_10

    iget v0, v5, Lcom/a/a/b/d;->a:I

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_e
    :goto_b
    new-instance v0, Lcom/a/a/b/k;

    iget-object v1, p0, Lcom/a/a/b/f;->c:Lcom/a/a/b/i;

    invoke-virtual {v1, p1}, Lcom/a/a/b/i;->a(Ljava/lang/String;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v7

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v7}, Lcom/a/a/b/k;-><init>(Ljava/lang/String;Landroid/widget/ImageView;Lcom/a/a/b/a/f;Ljava/lang/String;Lcom/a/a/b/d;Lcom/a/a/b/a/d;Ljava/util/concurrent/locks/ReentrantLock;)V

    new-instance v1, Lcom/a/a/b/l;

    iget-object v2, p0, Lcom/a/a/b/f;->c:Lcom/a/a/b/i;

    invoke-virtual {v5}, Lcom/a/a/b/d;->b()Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lcom/a/a/b/l;-><init>(Lcom/a/a/b/i;Lcom/a/a/b/k;Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/a/a/b/f;->c:Lcom/a/a/b/i;

    iget-object v2, v0, Lcom/a/a/b/i;->d:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/a/a/b/j;

    invoke-direct {v3, v0, v1}, Lcom/a/a/b/j;-><init>(Lcom/a/a/b/i;Lcom/a/a/b/l;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_4

    :cond_f
    move v0, v2

    goto :goto_a

    :cond_10
    iget-boolean v0, v5, Lcom/a/a/b/d;->d:Z

    if-eqz v0, :cond_e

    invoke-virtual {p2, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_b

    :cond_11
    move v0, v3

    goto/16 :goto_9

    :cond_12
    move v4, v3

    goto/16 :goto_7

    :cond_13
    move v3, v4

    goto/16 :goto_6

    :cond_14
    move-object v5, p3

    goto/16 :goto_1

    :cond_15
    move-object v6, p4

    goto/16 :goto_0
.end method

.method public final b()V
    .locals 1

    invoke-direct {p0}, Lcom/a/a/b/f;->e()V

    iget-object v0, p0, Lcom/a/a/b/f;->b:Lcom/a/a/b/g;

    iget-object v0, v0, Lcom/a/a/b/g;->p:Lcom/a/a/a/b/c;

    invoke-interface {v0}, Lcom/a/a/a/b/c;->b()V

    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lcom/a/a/b/f;->c:Lcom/a/a/b/i;

    iget-object v0, v0, Lcom/a/a/b/i;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public final d()V
    .locals 4

    iget-object v0, p0, Lcom/a/a/b/f;->c:Lcom/a/a/b/i;

    iget-object v1, v0, Lcom/a/a/b/i;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lcom/a/a/b/i;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, v0, Lcom/a/a/b/i;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
