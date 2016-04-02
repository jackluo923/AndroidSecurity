.class public abstract Lcom/alipay/mobile/common/task/pipeline/Pool;
.super Ljava/lang/Object;
.source "Pool.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final freeObjects:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<TT;>;"
        }
    .end annotation
.end field

.field public final max:I

.field public peak:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 25
    const/16 v0, 0x10

    const v1, 0x7fffffff

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/common/task/pipeline/Pool;-><init>(II)V

    .line 26
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 30
    const v0, 0x7fffffff

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/common/task/pipeline/Pool;-><init>(II)V

    .line 31
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0, p1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/mobile/common/task/pipeline/Pool;->freeObjects:Ljava/util/ArrayDeque;

    .line 36
    iput p2, p0, Lcom/alipay/mobile/common/task/pipeline/Pool;->max:I

    .line 37
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/alipay/mobile/common/task/pipeline/Pool;->freeObjects:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 76
    return-void
.end method

.method public free(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 50
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "object cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/task/pipeline/Pool;->freeObjects:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    iget v1, p0, Lcom/alipay/mobile/common/task/pipeline/Pool;->max:I

    if-ge v0, v1, :cond_1

    .line 52
    iget-object v0, p0, Lcom/alipay/mobile/common/task/pipeline/Pool;->freeObjects:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 53
    iget v0, p0, Lcom/alipay/mobile/common/task/pipeline/Pool;->peak:I

    iget-object v1, p0, Lcom/alipay/mobile/common/task/pipeline/Pool;->freeObjects:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/common/task/pipeline/Pool;->peak:I

    .line 55
    :cond_1
    instance-of v0, p1, Lcom/alipay/mobile/common/task/pipeline/Pool$Poolable;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/alipay/mobile/common/task/pipeline/Pool$Poolable;

    invoke-interface {p1}, Lcom/alipay/mobile/common/task/pipeline/Pool$Poolable;->reset()V

    .line 56
    :cond_2
    return-void
.end method

.method public freeAll(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 61
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "object cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_0
    iget-object v2, p0, Lcom/alipay/mobile/common/task/pipeline/Pool;->freeObjects:Ljava/util/ArrayDeque;

    .line 63
    iget v3, p0, Lcom/alipay/mobile/common/task/pipeline/Pool;->max:I

    .line 64
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 65
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 66
    if-eqz v0, :cond_2

    .line 67
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->size()I

    move-result v4

    if-ge v4, v3, :cond_1

    invoke-virtual {v2, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 68
    :cond_1
    instance-of v4, v0, Lcom/alipay/mobile/common/task/pipeline/Pool$Poolable;

    if-eqz v4, :cond_2

    check-cast v0, Lcom/alipay/mobile/common/task/pipeline/Pool$Poolable;

    invoke-interface {v0}, Lcom/alipay/mobile/common/task/pipeline/Pool$Poolable;->reset()V

    .line 64
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 70
    :cond_3
    iget v0, p0, Lcom/alipay/mobile/common/task/pipeline/Pool;->peak:I

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/common/task/pipeline/Pool;->peak:I

    .line 71
    return-void
.end method

.method public getFree()I
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alipay/mobile/common/task/pipeline/Pool;->freeObjects:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    return v0
.end method

.method protected abstract newObject()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public obtain()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alipay/mobile/common/task/pipeline/Pool;->freeObjects:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/common/task/pipeline/Pool;->newObject()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/task/pipeline/Pool;->freeObjects:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
