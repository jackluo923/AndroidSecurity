.class public final Lcom/google/analytics/containertag/proto/Serving$Property;
.super Lcom/google/b/a/a/d;


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Serving$Property;


# instance fields
.field public key:I

.field public value:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/analytics/containertag/proto/Serving$Property;

    sput-object v0, Lcom/google/analytics/containertag/proto/Serving$Property;->EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Serving$Property;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/b/a/a/d;-><init>()V

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Property;->key:I

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Property;->value:I

    return-void
.end method

.method public static parseFrom(Lcom/google/b/a/a/a;)Lcom/google/analytics/containertag/proto/Serving$Property;
    .locals 1

    new-instance v0, Lcom/google/analytics/containertag/proto/Serving$Property;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Serving$Property;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/analytics/containertag/proto/Serving$Property;->mergeFrom(Lcom/google/b/a/a/a;)Lcom/google/analytics/containertag/proto/Serving$Property;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/analytics/containertag/proto/Serving$Property;
    .locals 1

    new-instance v0, Lcom/google/analytics/containertag/proto/Serving$Property;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Serving$Property;-><init>()V

    invoke-static {v0, p0}, Lcom/google/b/a/a/h;->mergeFrom(Lcom/google/b/a/a/h;[B)Lcom/google/b/a/a/h;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/containertag/proto/Serving$Property;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/analytics/containertag/proto/Serving$Property;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Property;->key:I

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Property;->value:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Property;->unknownFieldData:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Property;->cachedSize:I

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
    instance-of v2, p1, Lcom/google/analytics/containertag/proto/Serving$Property;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/analytics/containertag/proto/Serving$Property;

    iget v2, p0, Lcom/google/analytics/containertag/proto/Serving$Property;->key:I

    iget v3, p1, Lcom/google/analytics/containertag/proto/Serving$Property;->key:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/analytics/containertag/proto/Serving$Property;->value:I

    iget v3, p1, Lcom/google/analytics/containertag/proto/Serving$Property;->value:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Property;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/google/analytics/containertag/proto/Serving$Property;->unknownFieldData:Ljava/util/List;

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Property;->unknownFieldData:Ljava/util/List;

    iget-object v3, p1, Lcom/google/analytics/containertag/proto/Serving$Property;->unknownFieldData:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0
.end method

.method public final getSerializedSize()I
    .locals 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$Property;->key:I

    invoke-static {v0, v1}, Lcom/google/b/a/a/b;->b(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/analytics/containertag/proto/Serving$Property;->value:I

    invoke-static {v1, v2}, Lcom/google/b/a/a/b;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Property;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/b/a/a/k;->a(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Property;->cachedSize:I

    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Property;->key:I

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$Property;->value:I

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Property;->unknownFieldData:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Property;->unknownFieldData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public final mergeFrom(Lcom/google/b/a/a/a;)Lcom/google/analytics/containertag/proto/Serving$Property;
    .locals 2

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/b/a/a/a;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Property;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Property;->unknownFieldData:Ljava/util/List;

    :cond_1
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Property;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/b/a/a/k;->a(Ljava/util/List;Lcom/google/b/a/a/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/b/a/a/a;->c()I

    move-result v0

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Property;->key:I

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/b/a/a/a;->c()I

    move-result v0

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Property;->value:I

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/b/a/a/a;)Lcom/google/b/a/a/h;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/analytics/containertag/proto/Serving$Property;->mergeFrom(Lcom/google/b/a/a/a;)Lcom/google/analytics/containertag/proto/Serving$Property;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/b/a/a/b;)V
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$Property;->key:I

    invoke-virtual {p1, v0, v1}, Lcom/google/b/a/a/b;->a(II)V

    const/4 v0, 0x2

    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$Property;->value:I

    invoke-virtual {p1, v0, v1}, Lcom/google/b/a/a/b;->a(II)V

    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Property;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/b/a/a/k;->a(Ljava/util/List;Lcom/google/b/a/a/b;)V

    return-void
.end method
