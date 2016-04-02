.class public final Lcom/google/analytics/containertag/proto/Serving$CacheOption;
.super Lcom/google/b/a/a/d;


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Serving$CacheOption;


# instance fields
.field public expirationSeconds:I

.field public gcacheExpirationSeconds:I

.field public level:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    sput-object v0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/b/a/a/d;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->level:I

    iput v1, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->expirationSeconds:I

    iput v1, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->gcacheExpirationSeconds:I

    return-void
.end method

.method public static parseFrom(Lcom/google/b/a/a/a;)Lcom/google/analytics/containertag/proto/Serving$CacheOption;
    .locals 1

    new-instance v0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Serving$CacheOption;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->mergeFrom(Lcom/google/b/a/a/a;)Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/analytics/containertag/proto/Serving$CacheOption;
    .locals 1

    new-instance v0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Serving$CacheOption;-><init>()V

    invoke-static {v0, p0}, Lcom/google/b/a/a/h;->mergeFrom(Lcom/google/b/a/a/h;[B)Lcom/google/b/a/a/h;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/analytics/containertag/proto/Serving$CacheOption;
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->level:I

    iput v1, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->expirationSeconds:I

    iput v1, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->gcacheExpirationSeconds:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->unknownFieldData:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->cachedSize:I

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
    instance-of v2, p1, Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    iget v2, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->level:I

    iget v3, p1, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->level:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->expirationSeconds:I

    iget v3, p1, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->expirationSeconds:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->gcacheExpirationSeconds:I

    iget v3, p1, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->gcacheExpirationSeconds:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->unknownFieldData:Ljava/util/List;

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->unknownFieldData:Ljava/util/List;

    iget-object v3, p1, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->unknownFieldData:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0
.end method

.method public final getSerializedSize()I
    .locals 3

    const/4 v2, 0x1

    const/4 v0, 0x0

    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->level:I

    if-eq v1, v2, :cond_0

    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->level:I

    invoke-static {v2, v0}, Lcom/google/b/a/a/b;->b(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    :cond_0
    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->expirationSeconds:I

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->expirationSeconds:I

    invoke-static {v1, v2}, Lcom/google/b/a/a/b;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->gcacheExpirationSeconds:I

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    iget v2, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->gcacheExpirationSeconds:I

    invoke-static {v1, v2}, Lcom/google/b/a/a/b;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/b/a/a/k;->a(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->cachedSize:I

    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->level:I

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->expirationSeconds:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->gcacheExpirationSeconds:I

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->unknownFieldData:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->unknownFieldData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public final mergeFrom(Lcom/google/b/a/a/a;)Lcom/google/analytics/containertag/proto/Serving$CacheOption;
    .locals 3

    const/4 v2, 0x1

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/b/a/a/a;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->unknownFieldData:Ljava/util/List;

    :cond_1
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/b/a/a/k;->a(Ljava/util/List;Lcom/google/b/a/a/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/b/a/a/a;->c()I

    move-result v0

    if-eq v0, v2, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    :cond_2
    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->level:I

    goto :goto_0

    :cond_3
    iput v2, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->level:I

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/b/a/a/a;->c()I

    move-result v0

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->expirationSeconds:I

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/b/a/a/a;->c()I

    move-result v0

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->gcacheExpirationSeconds:I

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/b/a/a/a;)Lcom/google/b/a/a/h;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->mergeFrom(Lcom/google/b/a/a/a;)Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/b/a/a/b;)V
    .locals 2

    const/4 v1, 0x1

    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->level:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->level:I

    invoke-virtual {p1, v1, v0}, Lcom/google/b/a/a/b;->a(II)V

    :cond_0
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->expirationSeconds:I

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->expirationSeconds:I

    invoke-virtual {p1, v0, v1}, Lcom/google/b/a/a/b;->a(II)V

    :cond_1
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->gcacheExpirationSeconds:I

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->gcacheExpirationSeconds:I

    invoke-virtual {p1, v0, v1}, Lcom/google/b/a/a/b;->a(II)V

    :cond_2
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/b/a/a/k;->a(Ljava/util/List;Lcom/google/b/a/a/b;)V

    return-void
.end method
