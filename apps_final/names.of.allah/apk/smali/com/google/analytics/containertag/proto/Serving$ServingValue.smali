.class public final Lcom/google/analytics/containertag/proto/Serving$ServingValue;
.super Lcom/google/b/a/a/d;


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Serving$ServingValue;

.field public static final ext:Lcom/google/b/a/a/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/b/a/a/e",
            "<",
            "Lcom/google/analytics/containertag/proto/Serving$ServingValue;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public listItem:[I

.field public macroNameReference:I

.field public macroReference:I

.field public mapKey:[I

.field public mapValue:[I

.field public tagReference:I

.field public templateToken:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/analytics/containertag/proto/Serving$ServingValue;

    sput-object v0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Serving$ServingValue;

    const/16 v0, 0x65

    new-instance v1, Lcom/google/analytics/containertag/proto/Serving$ServingValue$1;

    invoke-direct {v1}, Lcom/google/analytics/containertag/proto/Serving$ServingValue$1;-><init>()V

    invoke-static {v0, v1}, Lcom/google/b/a/a/e;->a(ILcom/google/b/a/a/f;)Lcom/google/b/a/a/e;

    move-result-object v0

    sput-object v0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->ext:Lcom/google/b/a/a/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/b/a/a/d;-><init>()V

    sget-object v0, Lcom/google/b/a/a/k;->e:[I

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->listItem:[I

    sget-object v0, Lcom/google/b/a/a/k;->e:[I

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapKey:[I

    sget-object v0, Lcom/google/b/a/a/k;->e:[I

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapValue:[I

    iput v1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->macroReference:I

    sget-object v0, Lcom/google/b/a/a/k;->e:[I

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->templateToken:[I

    iput v1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->macroNameReference:I

    iput v1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->tagReference:I

    return-void
.end method

.method public static parseFrom(Lcom/google/b/a/a/a;)Lcom/google/analytics/containertag/proto/Serving$ServingValue;
    .locals 1

    new-instance v0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Serving$ServingValue;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mergeFrom(Lcom/google/b/a/a/a;)Lcom/google/analytics/containertag/proto/Serving$ServingValue;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/analytics/containertag/proto/Serving$ServingValue;
    .locals 1

    new-instance v0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Serving$ServingValue;-><init>()V

    invoke-static {v0, p0}, Lcom/google/b/a/a/h;->mergeFrom(Lcom/google/b/a/a/h;[B)Lcom/google/b/a/a/h;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/analytics/containertag/proto/Serving$ServingValue;
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/google/b/a/a/k;->e:[I

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->listItem:[I

    sget-object v0, Lcom/google/b/a/a/k;->e:[I

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapKey:[I

    sget-object v0, Lcom/google/b/a/a/k;->e:[I

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapValue:[I

    iput v1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->macroReference:I

    sget-object v0, Lcom/google/b/a/a/k;->e:[I

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->templateToken:[I

    iput v1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->macroNameReference:I

    iput v1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->tagReference:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->unknownFieldData:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->cachedSize:I

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
    instance-of v2, p1, Lcom/google/analytics/containertag/proto/Serving$ServingValue;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/analytics/containertag/proto/Serving$ServingValue;

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->listItem:[I

    iget-object v3, p1, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->listItem:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapKey:[I

    iget-object v3, p1, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapKey:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapValue:[I

    iget-object v3, p1, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapValue:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->macroReference:I

    iget v3, p1, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->macroReference:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->templateToken:[I

    iget-object v3, p1, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->templateToken:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->macroNameReference:I

    iget v3, p1, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->macroNameReference:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->tagReference:I

    iget v3, p1, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->tagReference:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->unknownFieldData:Ljava/util/List;

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->unknownFieldData:Ljava/util/List;

    iget-object v3, p1, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->unknownFieldData:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0
.end method

.method public final getSerializedSize()I
    .locals 7

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->listItem:[I

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->listItem:[I

    array-length v0, v0

    if-lez v0, :cond_a

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->listItem:[I

    array-length v4, v3

    move v0, v1

    move v2, v1

    :goto_0
    if-ge v0, v4, :cond_0

    aget v5, v3, v0

    invoke-static {v5}, Lcom/google/b/a/a/b;->b(I)I

    move-result v5

    add-int/2addr v2, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v2, 0x0

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->listItem:[I

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    :goto_1
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapKey:[I

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapKey:[I

    array-length v2, v2

    if-lez v2, :cond_2

    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapKey:[I

    array-length v5, v4

    move v2, v1

    move v3, v1

    :goto_2
    if-ge v2, v5, :cond_1

    aget v6, v4, v2

    invoke-static {v6}, Lcom/google/b/a/a/b;->b(I)I

    move-result v6

    add-int/2addr v3, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    add-int/2addr v0, v3

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapKey:[I

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    :cond_2
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapValue:[I

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapValue:[I

    array-length v2, v2

    if-lez v2, :cond_4

    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapValue:[I

    array-length v5, v4

    move v2, v1

    move v3, v1

    :goto_3
    if-ge v2, v5, :cond_3

    aget v6, v4, v2

    invoke-static {v6}, Lcom/google/b/a/a/b;->b(I)I

    move-result v6

    add-int/2addr v3, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    add-int/2addr v0, v3

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapValue:[I

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    :cond_4
    iget v2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->macroReference:I

    if-eqz v2, :cond_5

    const/4 v2, 0x4

    iget v3, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->macroReference:I

    invoke-static {v2, v3}, Lcom/google/b/a/a/b;->b(II)I

    move-result v2

    add-int/2addr v0, v2

    :cond_5
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->templateToken:[I

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->templateToken:[I

    array-length v2, v2

    if-lez v2, :cond_7

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->templateToken:[I

    array-length v4, v3

    move v2, v1

    :goto_4
    if-ge v1, v4, :cond_6

    aget v5, v3, v1

    invoke-static {v5}, Lcom/google/b/a/a/b;->b(I)I

    move-result v5

    add-int/2addr v2, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_6
    add-int/2addr v0, v2

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->templateToken:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    :cond_7
    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->macroNameReference:I

    if-eqz v1, :cond_8

    const/4 v1, 0x6

    iget v2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->macroNameReference:I

    invoke-static {v1, v2}, Lcom/google/b/a/a/b;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->tagReference:I

    if-eqz v1, :cond_9

    const/4 v1, 0x7

    iget v2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->tagReference:I

    invoke-static {v1, v2}, Lcom/google/b/a/a/b;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/b/a/a/k;->a(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->cachedSize:I

    return v0

    :cond_a
    move v0, v1

    goto/16 :goto_1
.end method

.method public final hashCode()I
    .locals 4

    const/4 v1, 0x0

    const/16 v0, 0x11

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->listItem:[I

    if-nez v2, :cond_4

    const/16 v2, 0x20f

    :cond_0
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapKey:[I

    if-nez v0, :cond_5

    mul-int/lit8 v2, v2, 0x1f

    :cond_1
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapValue:[I

    if-nez v0, :cond_6

    mul-int/lit8 v2, v2, 0x1f

    :cond_2
    mul-int/lit8 v0, v2, 0x1f

    iget v2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->macroReference:I

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->templateToken:[I

    if-nez v2, :cond_7

    mul-int/lit8 v2, v0, 0x1f

    :cond_3
    mul-int/lit8 v0, v2, 0x1f

    iget v2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->macroNameReference:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->tagReference:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_8

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_4
    move v2, v0

    move v0, v1

    :goto_1
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->listItem:[I

    array-length v3, v3

    if-ge v0, v3, :cond_0

    mul-int/lit8 v2, v2, 0x1f

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->listItem:[I

    aget v3, v3, v0

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    move v0, v1

    :goto_2
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapKey:[I

    array-length v3, v3

    if-ge v0, v3, :cond_1

    mul-int/lit8 v2, v2, 0x1f

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapKey:[I

    aget v3, v3, v0

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    move v0, v1

    :goto_3
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapValue:[I

    array-length v3, v3

    if-ge v0, v3, :cond_2

    mul-int/lit8 v2, v2, 0x1f

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapValue:[I

    aget v3, v3, v0

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    move v2, v0

    move v0, v1

    :goto_4
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->templateToken:[I

    array-length v3, v3

    if-ge v0, v3, :cond_3

    mul-int/lit8 v2, v2, 0x1f

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->templateToken:[I

    aget v3, v3, v0

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_8
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->unknownFieldData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method public final mergeFrom(Lcom/google/b/a/a/a;)Lcom/google/analytics/containertag/proto/Serving$ServingValue;
    .locals 4

    const/4 v3, 0x0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/b/a/a/a;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->unknownFieldData:Ljava/util/List;

    :cond_1
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/b/a/a/k;->a(Ljava/util/List;Lcom/google/b/a/a/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    const/16 v0, 0x8

    invoke-static {p1, v0}, Lcom/google/b/a/a/k;->a(Lcom/google/b/a/a/a;I)I

    move-result v1

    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->listItem:[I

    array-length v0, v0

    add-int/2addr v1, v0

    new-array v1, v1, [I

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->listItem:[I

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->listItem:[I

    :goto_1
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->listItem:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->listItem:[I

    invoke-virtual {p1}, Lcom/google/b/a/a/a;->c()I

    move-result v2

    aput v2, v1, v0

    invoke-virtual {p1}, Lcom/google/b/a/a/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->listItem:[I

    invoke-virtual {p1}, Lcom/google/b/a/a/a;->c()I

    move-result v2

    aput v2, v1, v0

    goto :goto_0

    :sswitch_2
    const/16 v0, 0x10

    invoke-static {p1, v0}, Lcom/google/b/a/a/k;->a(Lcom/google/b/a/a/a;I)I

    move-result v1

    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapKey:[I

    array-length v0, v0

    add-int/2addr v1, v0

    new-array v1, v1, [I

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapKey:[I

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapKey:[I

    :goto_2
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapKey:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapKey:[I

    invoke-virtual {p1}, Lcom/google/b/a/a/a;->c()I

    move-result v2

    aput v2, v1, v0

    invoke-virtual {p1}, Lcom/google/b/a/a/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapKey:[I

    invoke-virtual {p1}, Lcom/google/b/a/a/a;->c()I

    move-result v2

    aput v2, v1, v0

    goto :goto_0

    :sswitch_3
    const/16 v0, 0x18

    invoke-static {p1, v0}, Lcom/google/b/a/a/k;->a(Lcom/google/b/a/a/a;I)I

    move-result v1

    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapValue:[I

    array-length v0, v0

    add-int/2addr v1, v0

    new-array v1, v1, [I

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapValue:[I

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapValue:[I

    :goto_3
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapValue:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapValue:[I

    invoke-virtual {p1}, Lcom/google/b/a/a/a;->c()I

    move-result v2

    aput v2, v1, v0

    invoke-virtual {p1}, Lcom/google/b/a/a/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapValue:[I

    invoke-virtual {p1}, Lcom/google/b/a/a/a;->c()I

    move-result v2

    aput v2, v1, v0

    goto/16 :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/b/a/a/a;->c()I

    move-result v0

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->macroReference:I

    goto/16 :goto_0

    :sswitch_5
    const/16 v0, 0x28

    invoke-static {p1, v0}, Lcom/google/b/a/a/k;->a(Lcom/google/b/a/a/a;I)I

    move-result v1

    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->templateToken:[I

    array-length v0, v0

    add-int/2addr v1, v0

    new-array v1, v1, [I

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->templateToken:[I

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->templateToken:[I

    :goto_4
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->templateToken:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_5

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->templateToken:[I

    invoke-virtual {p1}, Lcom/google/b/a/a/a;->c()I

    move-result v2

    aput v2, v1, v0

    invoke-virtual {p1}, Lcom/google/b/a/a/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->templateToken:[I

    invoke-virtual {p1}, Lcom/google/b/a/a/a;->c()I

    move-result v2

    aput v2, v1, v0

    goto/16 :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/b/a/a/a;->c()I

    move-result v0

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->macroNameReference:I

    goto/16 :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/b/a/a/a;->c()I

    move-result v0

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->tagReference:I

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
    .end sparse-switch
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/b/a/a/a;)Lcom/google/b/a/a/h;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mergeFrom(Lcom/google/b/a/a/a;)Lcom/google/analytics/containertag/proto/Serving$ServingValue;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/b/a/a/b;)V
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->listItem:[I

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->listItem:[I

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget v4, v2, v1

    const/4 v5, 0x1

    invoke-virtual {p1, v5, v4}, Lcom/google/b/a/a/b;->a(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapKey:[I

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapKey:[I

    array-length v3, v2

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_1

    aget v4, v2, v1

    const/4 v5, 0x2

    invoke-virtual {p1, v5, v4}, Lcom/google/b/a/a/b;->a(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapValue:[I

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapValue:[I

    array-length v3, v2

    move v1, v0

    :goto_2
    if-ge v1, v3, :cond_2

    aget v4, v2, v1

    const/4 v5, 0x3

    invoke-virtual {p1, v5, v4}, Lcom/google/b/a/a/b;->a(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->macroReference:I

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    iget v2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->macroReference:I

    invoke-virtual {p1, v1, v2}, Lcom/google/b/a/a/b;->a(II)V

    :cond_3
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->templateToken:[I

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->templateToken:[I

    array-length v2, v1

    :goto_3
    if-ge v0, v2, :cond_4

    aget v3, v1, v0

    const/4 v4, 0x5

    invoke-virtual {p1, v4, v3}, Lcom/google/b/a/a/b;->a(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->macroNameReference:I

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->macroNameReference:I

    invoke-virtual {p1, v0, v1}, Lcom/google/b/a/a/b;->a(II)V

    :cond_5
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->tagReference:I

    if-eqz v0, :cond_6

    const/4 v0, 0x7

    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->tagReference:I

    invoke-virtual {p1, v0, v1}, Lcom/google/b/a/a/b;->a(II)V

    :cond_6
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/b/a/a/k;->a(Ljava/util/List;Lcom/google/b/a/a/b;)V

    return-void
.end method
