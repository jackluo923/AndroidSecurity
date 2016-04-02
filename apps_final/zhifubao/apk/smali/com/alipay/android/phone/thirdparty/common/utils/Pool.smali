.class public abstract Lcom/alipay/android/phone/thirdparty/common/utils/Pool;
.super Ljava/lang/Object;


# instance fields
.field protected final freeObjects:Ljava/util/ArrayDeque;

.field public final max:I

.field public peak:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x10

    const v1, 0x7fffffff

    invoke-direct {p0, v0, v1}, Lcom/alipay/android/phone/thirdparty/common/utils/Pool;-><init>(II)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const v0, 0x7fffffff

    invoke-direct {p0, p1, v0}, Lcom/alipay/android/phone/thirdparty/common/utils/Pool;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0, p1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/android/phone/thirdparty/common/utils/Pool;->freeObjects:Ljava/util/ArrayDeque;

    iput p2, p0, Lcom/alipay/android/phone/thirdparty/common/utils/Pool;->max:I

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/thirdparty/common/utils/Pool;->freeObjects:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    return-void
.end method

.method public free(Ljava/lang/Object;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "object cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/thirdparty/common/utils/Pool;->freeObjects:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    iget v1, p0, Lcom/alipay/android/phone/thirdparty/common/utils/Pool;->max:I

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/alipay/android/phone/thirdparty/common/utils/Pool;->freeObjects:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/alipay/android/phone/thirdparty/common/utils/Pool;->peak:I

    iget-object v1, p0, Lcom/alipay/android/phone/thirdparty/common/utils/Pool;->freeObjects:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/phone/thirdparty/common/utils/Pool;->peak:I

    :cond_1
    instance-of v0, p1, Lcom/alipay/android/phone/thirdparty/common/utils/Pool$Poolable;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/alipay/android/phone/thirdparty/common/utils/Pool$Poolable;

    invoke-interface {p1}, Lcom/alipay/android/phone/thirdparty/common/utils/Pool$Poolable;->reset()V

    :cond_2
    return-void
.end method

.method public freeAll(Ljava/util/List;)V
    .locals 5

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "object cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v2, p0, Lcom/alipay/android/phone/thirdparty/common/utils/Pool;->freeObjects:Ljava/util/ArrayDeque;

    iget v3, p0, Lcom/alipay/android/phone/thirdparty/common/utils/Pool;->max:I

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->size()I

    move-result v4

    if-ge v4, v3, :cond_1

    invoke-virtual {v2, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    :cond_1
    instance-of v4, v0, Lcom/alipay/android/phone/thirdparty/common/utils/Pool$Poolable;

    if-eqz v4, :cond_2

    check-cast v0, Lcom/alipay/android/phone/thirdparty/common/utils/Pool$Poolable;

    invoke-interface {v0}, Lcom/alipay/android/phone/thirdparty/common/utils/Pool$Poolable;->reset()V

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/alipay/android/phone/thirdparty/common/utils/Pool;->peak:I

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/phone/thirdparty/common/utils/Pool;->peak:I

    return-void
.end method

.method public getFree()I
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/thirdparty/common/utils/Pool;->freeObjects:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    return v0
.end method

.method protected abstract newObject()Ljava/lang/Object;
.end method

.method public obtain()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/thirdparty/common/utils/Pool;->freeObjects:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/android/phone/thirdparty/common/utils/Pool;->newObject()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/thirdparty/common/utils/Pool;->freeObjects:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
