.class public Lcom/taobao/hotpatch/patch/ReadWriteSet;
.super Ljava/lang/Object;
.source "ReadWriteSet.java"


# static fields
.field private static final a:[Ljava/lang/Object;


# instance fields
.field private volatile transient b:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/taobao/hotpatch/patch/ReadWriteSet;->a:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    sget-object v0, Lcom/taobao/hotpatch/patch/ReadWriteSet;->a:[Ljava/lang/Object;

    iput-object v0, p0, Lcom/taobao/hotpatch/patch/ReadWriteSet;->b:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 10
    monitor-enter p0

    move v1, v0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/taobao/hotpatch/patch/ReadWriteSet;->b:[Ljava/lang/Object;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/taobao/hotpatch/patch/ReadWriteSet;->b:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 11
    :goto_1
    if-ltz v1, :cond_2

    .line 18
    :goto_2
    monitor-exit p0

    return v0

    .line 10
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    goto :goto_1

    .line 14
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/taobao/hotpatch/patch/ReadWriteSet;->b:[Ljava/lang/Object;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 15
    iget-object v1, p0, Lcom/taobao/hotpatch/patch/ReadWriteSet;->b:[Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/taobao/hotpatch/patch/ReadWriteSet;->b:[Ljava/lang/Object;

    array-length v4, v4

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 16
    iget-object v1, p0, Lcom/taobao/hotpatch/patch/ReadWriteSet;->b:[Ljava/lang/Object;

    array-length v1, v1

    aput-object p1, v0, v1

    .line 17
    iput-object v0, p0, Lcom/taobao/hotpatch/patch/ReadWriteSet;->b:[Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    const/4 v0, 0x1

    goto :goto_2

    .line 10
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/taobao/hotpatch/patch/ReadWriteSet;->b:[Ljava/lang/Object;

    return-object v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/taobao/hotpatch/patch/ReadWriteSet;->b:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/taobao/hotpatch/patch/ReadWriteSet;->a:[Ljava/lang/Object;

    iput-object v0, p0, Lcom/taobao/hotpatch/patch/ReadWriteSet;->b:[Ljava/lang/Object;

    .line 51
    return-void
.end method
