.class public Lcom/taobao/android/ssologinwrapper/utils/IntHashMap;
.super Ljava/lang/Object;


# instance fields
.field private a:[Lcom/taobao/android/ssologinwrapper/utils/IntHashMap$Entry;

.field private b:I

.field private c:I

.field private d:F


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x10

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {p0, v0, v1}, Lcom/taobao/android/ssologinwrapper/utils/IntHashMap;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/high16 v0, 0x3f400000    # 0.75f

    invoke-direct {p0, p1, v0}, Lcom/taobao/android/ssologinwrapper/utils/IntHashMap;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 3

    const/high16 v0, 0x40000000    # 2.0f

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Illegal Capacity: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-le p1, v0, :cond_1

    move p1, v0

    :cond_1
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Illegal Load: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v0, 0x1

    :goto_0
    if-ge v0, p1, :cond_3

    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iput p2, p0, Lcom/taobao/android/ssologinwrapper/utils/IntHashMap;->d:F

    new-array v1, v0, [Lcom/taobao/android/ssologinwrapper/utils/IntHashMap$Entry;

    iput-object v1, p0, Lcom/taobao/android/ssologinwrapper/utils/IntHashMap;->a:[Lcom/taobao/android/ssologinwrapper/utils/IntHashMap$Entry;

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/taobao/android/ssologinwrapper/utils/IntHashMap;->c:I

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    iget-object v1, p0, Lcom/taobao/android/ssologinwrapper/utils/IntHashMap;->a:[Lcom/taobao/android/ssologinwrapper/utils/IntHashMap$Entry;

    array-length v0, v1

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    const/4 v2, 0x0

    aput-object v2, v1, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/taobao/android/ssologinwrapper/utils/IntHashMap;->b:I

    return-void
.end method

.method public containsKey(I)Z
    .locals 3

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/utils/IntHashMap;->a:[Lcom/taobao/android/ssologinwrapper/utils/IntHashMap$Entry;

    const v1, 0x7fffffff

    and-int/2addr v1, p1

    array-length v2, v0

    rem-int/2addr v1, v2

    aget-object v0, v0, v1

    :goto_0
    if-eqz v0, :cond_1

    iget v1, v0, Lcom/taobao/android/ssologinwrapper/utils/IntHashMap$Entry;->hash:I

    if-ne v1, p1, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    iget-object v0, v0, Lcom/taobao/android/ssologinwrapper/utils/IntHashMap$Entry;->next:Lcom/taobao/android/ssologinwrapper/utils/IntHashMap$Entry;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/taobao/android/ssologinwrapper/utils/IntHashMap;->a:[Lcom/taobao/android/ssologinwrapper/utils/IntHashMap$Entry;

    if-nez p1, :cond_1

    move v0, v1

    :goto_0
    array-length v3, v5

    :goto_1
    add-int/lit8 v4, v3, -0x1

    if-lez v3, :cond_5

    aget-object v3, v5, v4

    :goto_2
    if-eqz v3, :cond_4

    if-eqz v0, :cond_2

    iget-object v6, v3, Lcom/taobao/android/ssologinwrapper/utils/IntHashMap$Entry;->value:Ljava/lang/Object;

    if-nez v6, :cond_3

    :cond_0
    :goto_3
    return v1

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    iget-object v6, v3, Lcom/taobao/android/ssologinwrapper/utils/IntHashMap$Entry;->value:Ljava/lang/Object;

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    :cond_3
    iget-object v3, v3, Lcom/taobao/android/ssologinwrapper/utils/IntHashMap$Entry;->next:Lcom/taobao/android/ssologinwrapper/utils/IntHashMap$Entry;

    goto :goto_2

    :cond_4
    move v3, v4

    goto :goto_1

    :cond_5
    move v1, v2

    goto :goto_3
.end method

.method public get(I)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/utils/IntHashMap;->a:[Lcom/taobao/android/ssologinwrapper/utils/IntHashMap$Entry;

    const v1, 0x7fffffff

    and-int/2addr v1, p1

    array-length v2, v0

    rem-int/2addr v1, v2

    aget-object v0, v0, v1

    :goto_0
    if-eqz v0, :cond_1

    iget v1, v0, Lcom/taobao/android/ssologinwrapper/utils/IntHashMap$Entry;->hash:I

    if-ne v1, p1, :cond_0

    iget-object v0, v0, Lcom/taobao/android/ssologinwrapper/utils/IntHashMap$Entry;->value:Ljava/lang/Object;

    :goto_1
    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/taobao/android/ssologinwrapper/utils/IntHashMap$Entry;->next:Lcom/taobao/android/ssologinwrapper/utils/IntHashMap$Entry;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected getCapacity()I
    .locals 1

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/utils/IntHashMap;->a:[Lcom/taobao/android/ssologinwrapper/utils/IntHashMap$Entry;

    array-length v0, v0

    return v0
.end method

.method protected getThreshold()I
    .locals 1

    iget v0, p0, Lcom/taobao/android/ssologinwrapper/utils/IntHashMap;->c:I

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget v0, p0, Lcom/taobao/android/ssologinwrapper/utils/IntHashMap;->b:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keys()[I
    .locals 6

    const/4 v0, 0x0

    iget v1, p0, Lcom/taobao/android/ssologinwrapper/utils/IntHashMap;->b:I

    if-nez v1, :cond_0

    new-array v0, v0, [I

    :goto_0
    return-object v0

    :cond_0
    iget v1, p0, Lcom/taobao/android/ssologinwrapper/utils/IntHashMap;->b:I

    new-array v2, v1, [I

    move v1, v0

    :goto_1
    iget-object v3, p0, Lcom/taobao/android/ssologinwrapper/utils/IntHashMap;->a:[Lcom/taobao/android/ssologinwrapper/utils/IntHashMap$Entry;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Lcom/taobao/android/ssologinwrapper/utils/IntHashMap;->a:[Lcom/taobao/android/ssologinwrapper/utils/IntHashMap$Entry;

    aget-object v3, v3, v0

    :goto_2
    if-eqz v3, :cond_1

    add-int/lit8 v4, v1, 0x1

    iget v5, v3, Lcom/taobao/android/ssologinwrapper/utils/IntHashMap$Entry;->key:I

    aput v5, v2, v1

    iget-object v1, v3, Lcom/taobao/android/ssologinwrapper/utils/IntHashMap$Entry;->next:Lcom/taobao/android/ssologinwrapper/utils/IntHashMap$Entry;

    move-object v3, v1

    move v1, v4

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v2

    goto :goto_0
.end method

.method public put(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 5

    const v4, 0x7fffffff

    iget-object v1, p0, Lcom/taobao/android/ssologinwrapper/utils/IntHashMap;->a:[Lcom/taobao/android/ssologinwrapper/utils/IntHashMap$Entry;

    and-int v0, p1, v4

    array-length v2, v1

    rem-int/2addr v0, v2

    aget-object v2, v1, v0

    :goto_0
    if-eqz v2, :cond_1

    iget v3, v2, Lcom/taobao/android/ssologinwrapper/utils/IntHashMap$Entry;->hash:I

    if-ne v3, p1, :cond_0

    iget-object v0, v2, Lcom/taobao/android/ssologinwrapper/utils/IntHashMap$Entry;->value:Ljava/lang/Object;

    iput-object p2, v2, Lcom/taobao/android/ssologinwrapper/utils/IntHashMap$Entry;->value:Ljava/lang/Object;

    :goto_1
    return-object v0

    :cond_0
    iget-object v2, v2, Lcom/taobao/android/ssologinwrapper/utils/IntHashMap$Entry;->next:Lcom/taobao/android/ssologinwrapper/utils/IntHashMap$Entry;

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/taobao/android/ssologinwrapper/utils/IntHashMap;->b:I

    iget v3, p0, Lcom/taobao/android/ssologinwrapper/utils/IntHashMap;->c:I

    if-lt v2, v3, :cond_2

    invoke-virtual {p0}, Lcom/taobao/android/ssologinwrapper/utils/IntHashMap;->rehash()V

    iget-object v1, p0, Lcom/taobao/android/ssologinwrapper/utils/IntHashMap;->a:[Lcom/taobao/android/ssologinwrapper/utils/IntHashMap$Entry;

    and-int v0, p1, v4

    array-length v2, v1

    rem-int/2addr v0, v2

    :cond_2
    new-instance v2, Lcom/taobao/android/ssologinwrapper/utils/IntHashMap$Entry;

    aget-object v3, v1, v0

    invoke-direct {v2, p1, p1, p2, v3}, Lcom/taobao/android/ssologinwrapper/utils/IntHashMap$Entry;-><init>(IILjava/lang/Object;Lcom/taobao/android/ssologinwrapper/utils/IntHashMap$Entry;)V

    aput-object v2, v1, v0

    iget v0, p0, Lcom/taobao/android/ssologinwrapper/utils/IntHashMap;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/taobao/android/ssologinwrapper/utils/IntHashMap;->b:I

    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected rehash()V
    .locals 8

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/utils/IntHashMap;->a:[Lcom/taobao/android/ssologinwrapper/utils/IntHashMap$Entry;

    array-length v0, v0

    iget-object v3, p0, Lcom/taobao/android/ssologinwrapper/utils/IntHashMap;->a:[Lcom/taobao/android/ssologinwrapper/utils/IntHashMap$Entry;

    mul-int/lit8 v4, v0, 0x2

    new-array v5, v4, [Lcom/taobao/android/ssologinwrapper/utils/IntHashMap$Entry;

    int-to-float v1, v4

    iget v2, p0, Lcom/taobao/android/ssologinwrapper/utils/IntHashMap;->d:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/taobao/android/ssologinwrapper/utils/IntHashMap;->c:I

    iput-object v5, p0, Lcom/taobao/android/ssologinwrapper/utils/IntHashMap;->a:[Lcom/taobao/android/ssologinwrapper/utils/IntHashMap$Entry;

    :goto_0
    add-int/lit8 v2, v0, -0x1

    if-lez v0, :cond_1

    aget-object v0, v3, v2

    :goto_1
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/taobao/android/ssologinwrapper/utils/IntHashMap$Entry;->next:Lcom/taobao/android/ssologinwrapper/utils/IntHashMap$Entry;

    iget v6, v0, Lcom/taobao/android/ssologinwrapper/utils/IntHashMap$Entry;->hash:I

    const v7, 0x7fffffff

    and-int/2addr v6, v7

    rem-int/2addr v6, v4

    aget-object v7, v5, v6

    iput-object v7, v0, Lcom/taobao/android/ssologinwrapper/utils/IntHashMap$Entry;->next:Lcom/taobao/android/ssologinwrapper/utils/IntHashMap$Entry;

    aput-object v0, v5, v6

    move-object v0, v1

    goto :goto_1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    return-void
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 7

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/taobao/android/ssologinwrapper/utils/IntHashMap;->a:[Lcom/taobao/android/ssologinwrapper/utils/IntHashMap$Entry;

    const v0, 0x7fffffff

    and-int/2addr v0, p1

    array-length v2, v3

    rem-int v4, v0, v2

    aget-object v2, v3, v4

    move-object v0, v1

    :goto_0
    if-eqz v2, :cond_2

    iget v5, v2, Lcom/taobao/android/ssologinwrapper/utils/IntHashMap$Entry;->hash:I

    if-ne v5, p1, :cond_1

    if-eqz v0, :cond_0

    iget-object v3, v2, Lcom/taobao/android/ssologinwrapper/utils/IntHashMap$Entry;->next:Lcom/taobao/android/ssologinwrapper/utils/IntHashMap$Entry;

    iput-object v3, v0, Lcom/taobao/android/ssologinwrapper/utils/IntHashMap$Entry;->next:Lcom/taobao/android/ssologinwrapper/utils/IntHashMap$Entry;

    :goto_1
    iget v0, p0, Lcom/taobao/android/ssologinwrapper/utils/IntHashMap;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/taobao/android/ssologinwrapper/utils/IntHashMap;->b:I

    iget-object v0, v2, Lcom/taobao/android/ssologinwrapper/utils/IntHashMap$Entry;->value:Ljava/lang/Object;

    iput-object v1, v2, Lcom/taobao/android/ssologinwrapper/utils/IntHashMap$Entry;->value:Ljava/lang/Object;

    :goto_2
    return-object v0

    :cond_0
    iget-object v0, v2, Lcom/taobao/android/ssologinwrapper/utils/IntHashMap$Entry;->next:Lcom/taobao/android/ssologinwrapper/utils/IntHashMap$Entry;

    aput-object v0, v3, v4

    goto :goto_1

    :cond_1
    iget-object v0, v2, Lcom/taobao/android/ssologinwrapper/utils/IntHashMap$Entry;->next:Lcom/taobao/android/ssologinwrapper/utils/IntHashMap$Entry;

    move-object v6, v2

    move-object v2, v0

    move-object v0, v6

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_2
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lcom/taobao/android/ssologinwrapper/utils/IntHashMap;->b:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v0, 0x7b

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/taobao/android/ssologinwrapper/utils/IntHashMap;->keys()[I

    move-result-object v3

    const/4 v0, 0x0

    :goto_0
    array-length v1, v3

    if-ge v0, v1, :cond_2

    aget v4, v3, v0

    invoke-virtual {p0, v4}, Lcom/taobao/android/ssologinwrapper/utils/IntHashMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-lez v0, :cond_0

    const-string/jumbo v5, ", "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const/16 v5, 0x3d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    if-ne v1, p0, :cond_1

    const-string/jumbo v1, "(this Map)"

    :cond_1
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/16 v0, 0x7d

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
