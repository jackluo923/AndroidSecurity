.class public Lcom/alipay/android/app/ui/quickpay/data/FrameStack;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/alipay/android/app/ui/quickpay/data/MiniWindowFrame;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alipay/android/app/ui/quickpay/data/FrameChangeObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/data/FrameStack;->a:Ljava/util/Stack;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/data/FrameStack;->b:Ljava/util/ArrayList;

    return-void
.end method

.method private b(Lcom/alipay/android/app/ui/quickpay/data/MiniWindowFrame;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/data/FrameStack;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/ui/quickpay/data/FrameChangeObserver;

    invoke-interface {v0, p1}, Lcom/alipay/android/app/ui/quickpay/data/FrameChangeObserver;->a(Lcom/alipay/android/app/ui/quickpay/data/MiniWindowFrame;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private e()Lcom/alipay/android/app/ui/quickpay/data/MiniWindowFrame;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/data/FrameStack;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/ui/quickpay/data/MiniWindowFrame;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/alipay/android/app/ui/quickpay/data/MiniWindowFrame;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/data/FrameStack;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/data/FrameStack;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/ui/quickpay/data/MiniWindowFrame;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/alipay/android/app/ui/quickpay/data/FrameChangeObserver;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/data/FrameStack;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final a(Lcom/alipay/android/app/ui/quickpay/data/MiniWindowFrame;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/alipay/android/app/ui/quickpay/data/MiniWindowFrame;->a()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/data/FrameStack;->a:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-direct {p0, p1}, Lcom/alipay/android/app/ui/quickpay/data/FrameStack;->b(Lcom/alipay/android/app/ui/quickpay/data/MiniWindowFrame;)V

    goto :goto_0
.end method

.method public final b()Z
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/data/FrameStack;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    :goto_0
    if-eqz v0, :cond_3

    move v0, v2

    :goto_1
    return v0

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/data/FrameStack;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/ui/quickpay/data/MiniWindowFrame;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/data/MiniWindowFrame;->d()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/alipay/android/app/ui/quickpay/data/FrameStack;->e()Lcom/alipay/android/app/ui/quickpay/data/MiniWindowFrame;

    :cond_2
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/data/FrameStack;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/data/FrameStack;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/data/FrameStack;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/ui/quickpay/data/MiniWindowFrame;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/data/MiniWindowFrame;->f()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_4
    move v0, v2

    goto :goto_1

    :cond_5
    move-object v1, v0

    :cond_6
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/android/app/ui/quickpay/data/FrameStack;->e()Lcom/alipay/android/app/ui/quickpay/data/MiniWindowFrame;

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/data/FrameStack;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/data/FrameStack;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/ui/quickpay/data/MiniWindowFrame;
    :try_end_0
    .catch Ljava/util/EmptyStackException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/data/MiniWindowFrame;->d()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/data/MiniWindowFrame;->v()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/data/MiniWindowFrame;->w()Z
    :try_end_1
    .catch Ljava/util/EmptyStackException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    if-nez v1, :cond_5

    move-object v1, v0

    :goto_2
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/data/FrameStack;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/data/FrameStack;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/ui/quickpay/data/MiniWindowFrame;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/data/MiniWindowFrame;->u()V

    invoke-direct {p0, v0}, Lcom/alipay/android/app/ui/quickpay/data/FrameStack;->b(Lcom/alipay/android/app/ui/quickpay/data/MiniWindowFrame;)V

    :cond_7
    if-nez v1, :cond_9

    move v0, v2

    goto :goto_1

    :cond_8
    move v0, v2

    goto :goto_1

    :catch_0
    move-exception v1

    :goto_3
    invoke-static {v1}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    move-object v1, v0

    goto :goto_2

    :cond_9
    const/4 v0, 0x0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    goto :goto_3
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/data/FrameStack;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    return-void
.end method

.method public final d()Lcom/alipay/android/app/ui/quickpay/data/MiniWindowFrame;
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/data/FrameStack;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/data/FrameStack;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_0
    if-ltz v2, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/data/FrameStack;->a:Ljava/util/Stack;

    invoke-virtual {v0, v2}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/ui/quickpay/data/MiniWindowFrame;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/data/MiniWindowFrame;->a()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/data/MiniWindowFrame;->a()I

    move-result v3

    const/16 v4, 0x9

    if-eq v3, v4, :cond_1

    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :cond_1
    return-object v0
.end method
