.class public Lcom/taobao/android/dexposed/XposedBridge$CopyOnWriteSortedSet;
.super Ljava/lang/Object;
.source "XposedBridge.java"


# instance fields
.field private volatile transient elements:[Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 348
    # getter for: Lcom/taobao/android/dexposed/XposedBridge;->EMPTY_ARRAY:[Ljava/lang/Object;
    invoke-static {}, Lcom/taobao/android/dexposed/XposedBridge;->access$100()[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/android/dexposed/XposedBridge$CopyOnWriteSortedSet;->elements:[Ljava/lang/Object;

    return-void
.end method

.method private indexOf(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 380
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/taobao/android/dexposed/XposedBridge$CopyOnWriteSortedSet;->elements:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 381
    iget-object v1, p0, Lcom/taobao/android/dexposed/XposedBridge$CopyOnWriteSortedSet;->elements:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 384
    :goto_1
    return v0

    .line 380
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 384
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized add(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 351
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/taobao/android/dexposed/XposedBridge$CopyOnWriteSortedSet;->indexOf(Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 352
    if-ltz v1, :cond_0

    .line 360
    :goto_0
    monitor-exit p0

    return v0

    .line 355
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/taobao/android/dexposed/XposedBridge$CopyOnWriteSortedSet;->elements:[Ljava/lang/Object;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 356
    iget-object v1, p0, Lcom/taobao/android/dexposed/XposedBridge$CopyOnWriteSortedSet;->elements:[Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/taobao/android/dexposed/XposedBridge$CopyOnWriteSortedSet;->elements:[Ljava/lang/Object;

    array-length v4, v4

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 357
    iget-object v1, p0, Lcom/taobao/android/dexposed/XposedBridge$CopyOnWriteSortedSet;->elements:[Ljava/lang/Object;

    array-length v1, v1

    aput-object p1, v0, v1

    .line 358
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 359
    iput-object v0, p0, Lcom/taobao/android/dexposed/XposedBridge$CopyOnWriteSortedSet;->elements:[Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 360
    const/4 v0, 0x1

    goto :goto_0

    .line 351
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clear()V
    .locals 1

    .prologue
    .line 376
    monitor-enter p0

    :try_start_0
    # getter for: Lcom/taobao/android/dexposed/XposedBridge;->EMPTY_ARRAY:[Ljava/lang/Object;
    invoke-static {}, Lcom/taobao/android/dexposed/XposedBridge;->access$100()[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/android/dexposed/XposedBridge$CopyOnWriteSortedSet;->elements:[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 377
    monitor-exit p0

    return-void

    .line 376
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSnapshot()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lcom/taobao/android/dexposed/XposedBridge$CopyOnWriteSortedSet;->elements:[Ljava/lang/Object;

    return-object v0
.end method

.method public declared-synchronized remove(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 364
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/taobao/android/dexposed/XposedBridge$CopyOnWriteSortedSet;->indexOf(Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 365
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 372
    :goto_0
    monitor-exit p0

    return v0

    .line 368
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/taobao/android/dexposed/XposedBridge$CopyOnWriteSortedSet;->elements:[Ljava/lang/Object;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 369
    iget-object v2, p0, Lcom/taobao/android/dexposed/XposedBridge$CopyOnWriteSortedSet;->elements:[Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 370
    iget-object v2, p0, Lcom/taobao/android/dexposed/XposedBridge$CopyOnWriteSortedSet;->elements:[Ljava/lang/Object;

    add-int/lit8 v3, v1, 0x1

    iget-object v4, p0, Lcom/taobao/android/dexposed/XposedBridge$CopyOnWriteSortedSet;->elements:[Ljava/lang/Object;

    array-length v4, v4

    sub-int/2addr v4, v1

    add-int/lit8 v4, v4, -0x1

    invoke-static {v2, v3, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 371
    iput-object v0, p0, Lcom/taobao/android/dexposed/XposedBridge$CopyOnWriteSortedSet;->elements:[Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 372
    const/4 v0, 0x1

    goto :goto_0

    .line 364
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
