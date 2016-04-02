.class public Lorg/aspectj/runtime/internal/cflowstack/ThreadCounterImpl11;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/aspectj/runtime/internal/cflowstack/ThreadCounter;


# instance fields
.field private a:Ljava/util/Hashtable;

.field private b:Ljava/lang/Thread;

.field private c:Lorg/aspectj/runtime/internal/cflowstack/ThreadCounterImpl11$Counter;

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/aspectj/runtime/internal/cflowstack/ThreadCounterImpl11;->a:Ljava/util/Hashtable;

    const/4 v0, 0x0

    iput v0, p0, Lorg/aspectj/runtime/internal/cflowstack/ThreadCounterImpl11;->d:I

    return-void
.end method

.method private declared-synchronized a()Lorg/aspectj/runtime/internal/cflowstack/ThreadCounterImpl11$Counter;
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lorg/aspectj/runtime/internal/cflowstack/ThreadCounterImpl11;->b:Ljava/lang/Thread;

    if-eq v0, v1, :cond_4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lorg/aspectj/runtime/internal/cflowstack/ThreadCounterImpl11;->b:Ljava/lang/Thread;

    iget-object v0, p0, Lorg/aspectj/runtime/internal/cflowstack/ThreadCounterImpl11;->a:Ljava/util/Hashtable;

    iget-object v1, p0, Lorg/aspectj/runtime/internal/cflowstack/ThreadCounterImpl11;->b:Ljava/lang/Thread;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/aspectj/runtime/internal/cflowstack/ThreadCounterImpl11$Counter;

    iput-object v0, p0, Lorg/aspectj/runtime/internal/cflowstack/ThreadCounterImpl11;->c:Lorg/aspectj/runtime/internal/cflowstack/ThreadCounterImpl11$Counter;

    iget-object v0, p0, Lorg/aspectj/runtime/internal/cflowstack/ThreadCounterImpl11;->c:Lorg/aspectj/runtime/internal/cflowstack/ThreadCounterImpl11$Counter;

    if-nez v0, :cond_0

    new-instance v0, Lorg/aspectj/runtime/internal/cflowstack/ThreadCounterImpl11$Counter;

    invoke-direct {v0}, Lorg/aspectj/runtime/internal/cflowstack/ThreadCounterImpl11$Counter;-><init>()V

    iput-object v0, p0, Lorg/aspectj/runtime/internal/cflowstack/ThreadCounterImpl11;->c:Lorg/aspectj/runtime/internal/cflowstack/ThreadCounterImpl11$Counter;

    iget-object v0, p0, Lorg/aspectj/runtime/internal/cflowstack/ThreadCounterImpl11;->a:Ljava/util/Hashtable;

    iget-object v1, p0, Lorg/aspectj/runtime/internal/cflowstack/ThreadCounterImpl11;->b:Ljava/lang/Thread;

    iget-object v2, p0, Lorg/aspectj/runtime/internal/cflowstack/ThreadCounterImpl11;->c:Lorg/aspectj/runtime/internal/cflowstack/ThreadCounterImpl11$Counter;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget v0, p0, Lorg/aspectj/runtime/internal/cflowstack/ThreadCounterImpl11;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/aspectj/runtime/internal/cflowstack/ThreadCounterImpl11;->d:I

    const/4 v0, 0x1

    iget-object v1, p0, Lorg/aspectj/runtime/internal/cflowstack/ThreadCounterImpl11;->a:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Lorg/aspectj/runtime/internal/cflowstack/ThreadCounterImpl11;->d:I

    const/16 v2, 0x64

    const/16 v3, 0x4e20

    div-int v0, v3, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-le v1, v0, :cond_4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lorg/aspectj/runtime/internal/cflowstack/ThreadCounterImpl11;->a:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    iget-object v2, p0, Lorg/aspectj/runtime/internal/cflowstack/ThreadCounterImpl11;->a:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    iput v0, p0, Lorg/aspectj/runtime/internal/cflowstack/ThreadCounterImpl11;->d:I

    :cond_4
    iget-object v0, p0, Lorg/aspectj/runtime/internal/cflowstack/ThreadCounterImpl11;->c:Lorg/aspectj/runtime/internal/cflowstack/ThreadCounterImpl11$Counter;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0
.end method


# virtual methods
.method public dec()V
    .locals 2

    invoke-direct {p0}, Lorg/aspectj/runtime/internal/cflowstack/ThreadCounterImpl11;->a()Lorg/aspectj/runtime/internal/cflowstack/ThreadCounterImpl11$Counter;

    move-result-object v0

    iget v1, v0, Lorg/aspectj/runtime/internal/cflowstack/ThreadCounterImpl11$Counter;->value:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lorg/aspectj/runtime/internal/cflowstack/ThreadCounterImpl11$Counter;->value:I

    return-void
.end method

.method public inc()V
    .locals 2

    invoke-direct {p0}, Lorg/aspectj/runtime/internal/cflowstack/ThreadCounterImpl11;->a()Lorg/aspectj/runtime/internal/cflowstack/ThreadCounterImpl11$Counter;

    move-result-object v0

    iget v1, v0, Lorg/aspectj/runtime/internal/cflowstack/ThreadCounterImpl11$Counter;->value:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lorg/aspectj/runtime/internal/cflowstack/ThreadCounterImpl11$Counter;->value:I

    return-void
.end method

.method public isNotZero()Z
    .locals 1

    invoke-direct {p0}, Lorg/aspectj/runtime/internal/cflowstack/ThreadCounterImpl11;->a()Lorg/aspectj/runtime/internal/cflowstack/ThreadCounterImpl11$Counter;

    move-result-object v0

    iget v0, v0, Lorg/aspectj/runtime/internal/cflowstack/ThreadCounterImpl11$Counter;->value:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeThreadCounter()V
    .locals 0

    return-void
.end method
