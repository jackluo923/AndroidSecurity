.class public final Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
.super Lcom/google/b/a/a/d;


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;


# instance fields
.field public function:I

.field public liveOnly:Z

.field public name:I

.field public property:[I

.field public serverSide:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    sput-object v0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/b/a/a/d;-><init>()V

    sget-object v0, Lcom/google/b/a/a/k;->e:[I

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->property:[I

    iput v1, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->function:I

    iput v1, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->name:I

    iput-boolean v1, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->liveOnly:Z

    iput-boolean v1, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->serverSide:Z

    return-void
.end method

.method public static parseFrom(Lcom/google/b/a/a/a;)Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    .locals 1

    new-instance v0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->mergeFrom(Lcom/google/b/a/a/a;)Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    .locals 1

    new-instance v0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;-><init>()V

    invoke-static {v0, p0}, Lcom/google/b/a/a/h;->mergeFrom(Lcom/google/b/a/a/h;[B)Lcom/google/b/a/a/h;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/google/b/a/a/k;->e:[I

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->property:[I

    iput v1, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->function:I

    iput v1, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->name:I

    iput-boolean v1, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->liveOnly:Z

    iput-boolean v1, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->serverSide:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->unknownFieldData:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->cachedSize:I

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->property:[I

    iget-object v3, p1, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->property:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->function:I

    iget v3, p1, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->function:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->name:I

    iget v3, p1, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->name:I

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->liveOnly:Z

    iget-boolean v3, p1, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->liveOnly:Z

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->serverSide:Z

    iget-boolean v3, p1, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->serverSide:Z

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->unknownFieldData:Ljava/util/List;

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->unknownFieldData:Ljava/util/List;

    iget-object v3, p1, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->unknownFieldData:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0
.end method

.method public final getSerializedSize()I
    .locals 6

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->serverSide:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    iget-boolean v2, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->serverSide:Z

    invoke-static {v0}, Lcom/google/b/a/a/b;->d(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x0

    :goto_0
    const/4 v2, 0x2

    iget v3, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->function:I

    invoke-static {v2, v3}, Lcom/google/b/a/a/b;->b(II)I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->property:[I

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->property:[I

    array-length v2, v2

    if-lez v2, :cond_1

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->property:[I

    array-length v4, v3

    move v2, v1

    :goto_1
    if-ge v1, v4, :cond_0

    aget v5, v3, v1

    invoke-static {v5}, Lcom/google/b/a/a/b;->b(I)I

    move-result v5

    add-int/2addr v2, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    add-int/2addr v0, v2

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->property:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    :cond_1
    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->name:I

    if-eqz v1, :cond_2

    const/4 v1, 0x4

    iget v2, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->name:I

    invoke-static {v1, v2}, Lcom/google/b/a/a/b;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-boolean v1, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->liveOnly:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x6

    iget-boolean v2, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->liveOnly:Z

    invoke-static {v1}, Lcom/google/b/a/a/b;->d(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/b/a/a/k;->a(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->cachedSize:I

    return v0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 6

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/16 v0, 0x11

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->property:[I

    if-nez v2, :cond_1

    const/16 v2, 0x20f

    :cond_0
    mul-int/lit8 v0, v2, 0x1f

    iget v2, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->function:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->name:I

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v0, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->liveOnly:Z

    if-eqz v0, :cond_2

    move v0, v3

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->serverSide:Z

    if-eqz v2, :cond_3

    :goto_1
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_4

    :goto_2
    add-int/2addr v0, v1

    return v0

    :cond_1
    move v2, v0

    move v0, v1

    :goto_3
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->property:[I

    array-length v5, v5

    if-ge v0, v5, :cond_0

    mul-int/lit8 v2, v2, 0x1f

    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->property:[I

    aget v5, v5, v0

    add-int/2addr v2, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_2
    move v0, v4

    goto :goto_0

    :cond_3
    move v3, v4

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->unknownFieldData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    goto :goto_2
.end method

.method public final mergeFrom(Lcom/google/b/a/a/a;)Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    .locals 4

    const/4 v3, 0x0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/b/a/a/a;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->unknownFieldData:Ljava/util/List;

    :cond_1
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/b/a/a/k;->a(Ljava/util/List;Lcom/google/b/a/a/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/b/a/a/a;->d()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->serverSide:Z

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/b/a/a/a;->c()I

    move-result v0

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->function:I

    goto :goto_0

    :sswitch_3
    const/16 v0, 0x18

    invoke-static {p1, v0}, Lcom/google/b/a/a/k;->a(Lcom/google/b/a/a/a;I)I

    move-result v1

    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->property:[I

    array-length v0, v0

    add-int/2addr v1, v0

    new-array v1, v1, [I

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->property:[I

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->property:[I

    :goto_1
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->property:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->property:[I

    invoke-virtual {p1}, Lcom/google/b/a/a/a;->c()I

    move-result v2

    aput v2, v1, v0

    invoke-virtual {p1}, Lcom/google/b/a/a/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->property:[I

    invoke-virtual {p1}, Lcom/google/b/a/a/a;->c()I

    move-result v2

    aput v2, v1, v0

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/b/a/a/a;->c()I

    move-result v0

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->name:I

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/b/a/a/a;->d()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->liveOnly:Z

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x30 -> :sswitch_5
    .end sparse-switch
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/b/a/a/a;)Lcom/google/b/a/a/h;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->mergeFrom(Lcom/google/b/a/a/a;)Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/b/a/a/b;)V
    .locals 5

    iget-boolean v0, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->serverSide:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->serverSide:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/b/a/a/b;->a(IZ)V

    :cond_0
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->function:I

    invoke-virtual {p1, v0, v1}, Lcom/google/b/a/a/b;->a(II)V

    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->property:[I

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->property:[I

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget v3, v1, v0

    const/4 v4, 0x3

    invoke-virtual {p1, v4, v3}, Lcom/google/b/a/a/b;->a(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->name:I

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->name:I

    invoke-virtual {p1, v0, v1}, Lcom/google/b/a/a/b;->a(II)V

    :cond_2
    iget-boolean v0, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->liveOnly:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x6

    iget-boolean v1, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->liveOnly:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/b/a/a/b;->a(IZ)V

    :cond_3
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/b/a/a/k;->a(Ljava/util/List;Lcom/google/b/a/a/b;)V

    return-void
.end method
