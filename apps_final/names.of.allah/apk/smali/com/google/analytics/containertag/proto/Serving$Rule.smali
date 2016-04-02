.class public final Lcom/google/analytics/containertag/proto/Serving$Rule;
.super Lcom/google/b/a/a/d;


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Serving$Rule;


# instance fields
.field public addMacro:[I

.field public addMacroRuleName:[I

.field public addTag:[I

.field public addTagRuleName:[I

.field public negativePredicate:[I

.field public positivePredicate:[I

.field public removeMacro:[I

.field public removeMacroRuleName:[I

.field public removeTag:[I

.field public removeTagRuleName:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/analytics/containertag/proto/Serving$Rule;

    sput-object v0, Lcom/google/analytics/containertag/proto/Serving$Rule;->EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/b/a/a/d;-><init>()V

    sget-object v0, Lcom/google/b/a/a/k;->e:[I

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->positivePredicate:[I

    sget-object v0, Lcom/google/b/a/a/k;->e:[I

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->negativePredicate:[I

    sget-object v0, Lcom/google/b/a/a/k;->e:[I

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTag:[I

    sget-object v0, Lcom/google/b/a/a/k;->e:[I

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTag:[I

    sget-object v0, Lcom/google/b/a/a/k;->e:[I

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTagRuleName:[I

    sget-object v0, Lcom/google/b/a/a/k;->e:[I

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTagRuleName:[I

    sget-object v0, Lcom/google/b/a/a/k;->e:[I

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacro:[I

    sget-object v0, Lcom/google/b/a/a/k;->e:[I

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacro:[I

    sget-object v0, Lcom/google/b/a/a/k;->e:[I

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacroRuleName:[I

    sget-object v0, Lcom/google/b/a/a/k;->e:[I

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacroRuleName:[I

    return-void
.end method

.method public static parseFrom(Lcom/google/b/a/a/a;)Lcom/google/analytics/containertag/proto/Serving$Rule;
    .locals 1

    new-instance v0, Lcom/google/analytics/containertag/proto/Serving$Rule;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Serving$Rule;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/analytics/containertag/proto/Serving$Rule;->mergeFrom(Lcom/google/b/a/a/a;)Lcom/google/analytics/containertag/proto/Serving$Rule;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/analytics/containertag/proto/Serving$Rule;
    .locals 1

    new-instance v0, Lcom/google/analytics/containertag/proto/Serving$Rule;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Serving$Rule;-><init>()V

    invoke-static {v0, p0}, Lcom/google/b/a/a/h;->mergeFrom(Lcom/google/b/a/a/h;[B)Lcom/google/b/a/a/h;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/containertag/proto/Serving$Rule;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/analytics/containertag/proto/Serving$Rule;
    .locals 1

    sget-object v0, Lcom/google/b/a/a/k;->e:[I

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->positivePredicate:[I

    sget-object v0, Lcom/google/b/a/a/k;->e:[I

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->negativePredicate:[I

    sget-object v0, Lcom/google/b/a/a/k;->e:[I

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTag:[I

    sget-object v0, Lcom/google/b/a/a/k;->e:[I

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTag:[I

    sget-object v0, Lcom/google/b/a/a/k;->e:[I

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTagRuleName:[I

    sget-object v0, Lcom/google/b/a/a/k;->e:[I

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTagRuleName:[I

    sget-object v0, Lcom/google/b/a/a/k;->e:[I

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacro:[I

    sget-object v0, Lcom/google/b/a/a/k;->e:[I

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacro:[I

    sget-object v0, Lcom/google/b/a/a/k;->e:[I

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacroRuleName:[I

    sget-object v0, Lcom/google/b/a/a/k;->e:[I

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacroRuleName:[I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->unknownFieldData:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->cachedSize:I

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
    instance-of v2, p1, Lcom/google/analytics/containertag/proto/Serving$Rule;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/analytics/containertag/proto/Serving$Rule;

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->positivePredicate:[I

    iget-object v3, p1, Lcom/google/analytics/containertag/proto/Serving$Rule;->positivePredicate:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->negativePredicate:[I

    iget-object v3, p1, Lcom/google/analytics/containertag/proto/Serving$Rule;->negativePredicate:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTag:[I

    iget-object v3, p1, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTag:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTag:[I

    iget-object v3, p1, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTag:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTagRuleName:[I

    iget-object v3, p1, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTagRuleName:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTagRuleName:[I

    iget-object v3, p1, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTagRuleName:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacro:[I

    iget-object v3, p1, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacro:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacro:[I

    iget-object v3, p1, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacro:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacroRuleName:[I

    iget-object v3, p1, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacroRuleName:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacroRuleName:[I

    iget-object v3, p1, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacroRuleName:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/google/analytics/containertag/proto/Serving$Rule;->unknownFieldData:Ljava/util/List;

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->unknownFieldData:Ljava/util/List;

    iget-object v3, p1, Lcom/google/analytics/containertag/proto/Serving$Rule;->unknownFieldData:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_0
.end method

.method public final getSerializedSize()I
    .locals 7

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->positivePredicate:[I

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->positivePredicate:[I

    array-length v0, v0

    if-lez v0, :cond_13

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->positivePredicate:[I

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

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->positivePredicate:[I

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    :goto_1
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->negativePredicate:[I

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->negativePredicate:[I

    array-length v2, v2

    if-lez v2, :cond_2

    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->negativePredicate:[I

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

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->negativePredicate:[I

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    :cond_2
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTag:[I

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTag:[I

    array-length v2, v2

    if-lez v2, :cond_4

    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTag:[I

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

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTag:[I

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    :cond_4
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTag:[I

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTag:[I

    array-length v2, v2

    if-lez v2, :cond_6

    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTag:[I

    array-length v5, v4

    move v2, v1

    move v3, v1

    :goto_4
    if-ge v2, v5, :cond_5

    aget v6, v4, v2

    invoke-static {v6}, Lcom/google/b/a/a/b;->b(I)I

    move-result v6

    add-int/2addr v3, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_5
    add-int/2addr v0, v3

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTag:[I

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    :cond_6
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTagRuleName:[I

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTagRuleName:[I

    array-length v2, v2

    if-lez v2, :cond_8

    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTagRuleName:[I

    array-length v5, v4

    move v2, v1

    move v3, v1

    :goto_5
    if-ge v2, v5, :cond_7

    aget v6, v4, v2

    invoke-static {v6}, Lcom/google/b/a/a/b;->b(I)I

    move-result v6

    add-int/2addr v3, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_7
    add-int/2addr v0, v3

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTagRuleName:[I

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    :cond_8
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTagRuleName:[I

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTagRuleName:[I

    array-length v2, v2

    if-lez v2, :cond_a

    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTagRuleName:[I

    array-length v5, v4

    move v2, v1

    move v3, v1

    :goto_6
    if-ge v2, v5, :cond_9

    aget v6, v4, v2

    invoke-static {v6}, Lcom/google/b/a/a/b;->b(I)I

    move-result v6

    add-int/2addr v3, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_9
    add-int/2addr v0, v3

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTagRuleName:[I

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    :cond_a
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacro:[I

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacro:[I

    array-length v2, v2

    if-lez v2, :cond_c

    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacro:[I

    array-length v5, v4

    move v2, v1

    move v3, v1

    :goto_7
    if-ge v2, v5, :cond_b

    aget v6, v4, v2

    invoke-static {v6}, Lcom/google/b/a/a/b;->b(I)I

    move-result v6

    add-int/2addr v3, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_b
    add-int/2addr v0, v3

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacro:[I

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    :cond_c
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacro:[I

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacro:[I

    array-length v2, v2

    if-lez v2, :cond_e

    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacro:[I

    array-length v5, v4

    move v2, v1

    move v3, v1

    :goto_8
    if-ge v2, v5, :cond_d

    aget v6, v4, v2

    invoke-static {v6}, Lcom/google/b/a/a/b;->b(I)I

    move-result v6

    add-int/2addr v3, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_d
    add-int/2addr v0, v3

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacro:[I

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    :cond_e
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacroRuleName:[I

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacroRuleName:[I

    array-length v2, v2

    if-lez v2, :cond_10

    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacroRuleName:[I

    array-length v5, v4

    move v2, v1

    move v3, v1

    :goto_9
    if-ge v2, v5, :cond_f

    aget v6, v4, v2

    invoke-static {v6}, Lcom/google/b/a/a/b;->b(I)I

    move-result v6

    add-int/2addr v3, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_f
    add-int/2addr v0, v3

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacroRuleName:[I

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    :cond_10
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacroRuleName:[I

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacroRuleName:[I

    array-length v2, v2

    if-lez v2, :cond_12

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacroRuleName:[I

    array-length v4, v3

    move v2, v1

    :goto_a
    if-ge v1, v4, :cond_11

    aget v5, v3, v1

    invoke-static {v5}, Lcom/google/b/a/a/b;->b(I)I

    move-result v5

    add-int/2addr v2, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_11
    add-int/2addr v0, v2

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacroRuleName:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    :cond_12
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/b/a/a/k;->a(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->cachedSize:I

    return v0

    :cond_13
    move v0, v1

    goto/16 :goto_1
.end method

.method public final hashCode()I
    .locals 4

    const/4 v1, 0x0

    const/16 v0, 0x11

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->positivePredicate:[I

    if-nez v2, :cond_a

    const/16 v2, 0x20f

    :cond_0
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->negativePredicate:[I

    if-nez v0, :cond_b

    mul-int/lit8 v2, v2, 0x1f

    :cond_1
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTag:[I

    if-nez v0, :cond_c

    mul-int/lit8 v2, v2, 0x1f

    :cond_2
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTag:[I

    if-nez v0, :cond_d

    mul-int/lit8 v2, v2, 0x1f

    :cond_3
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTagRuleName:[I

    if-nez v0, :cond_e

    mul-int/lit8 v2, v2, 0x1f

    :cond_4
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTagRuleName:[I

    if-nez v0, :cond_f

    mul-int/lit8 v2, v2, 0x1f

    :cond_5
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacro:[I

    if-nez v0, :cond_10

    mul-int/lit8 v2, v2, 0x1f

    :cond_6
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacro:[I

    if-nez v0, :cond_11

    mul-int/lit8 v2, v2, 0x1f

    :cond_7
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacroRuleName:[I

    if-nez v0, :cond_12

    mul-int/lit8 v2, v2, 0x1f

    :cond_8
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacroRuleName:[I

    if-nez v0, :cond_13

    mul-int/lit8 v2, v2, 0x1f

    :cond_9
    mul-int/lit8 v0, v2, 0x1f

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_14

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_a
    move v2, v0

    move v0, v1

    :goto_1
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->positivePredicate:[I

    array-length v3, v3

    if-ge v0, v3, :cond_0

    mul-int/lit8 v2, v2, 0x1f

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->positivePredicate:[I

    aget v3, v3, v0

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_b
    move v0, v1

    :goto_2
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->negativePredicate:[I

    array-length v3, v3

    if-ge v0, v3, :cond_1

    mul-int/lit8 v2, v2, 0x1f

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->negativePredicate:[I

    aget v3, v3, v0

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_c
    move v0, v1

    :goto_3
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTag:[I

    array-length v3, v3

    if-ge v0, v3, :cond_2

    mul-int/lit8 v2, v2, 0x1f

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTag:[I

    aget v3, v3, v0

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_d
    move v0, v1

    :goto_4
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTag:[I

    array-length v3, v3

    if-ge v0, v3, :cond_3

    mul-int/lit8 v2, v2, 0x1f

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTag:[I

    aget v3, v3, v0

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_e
    move v0, v1

    :goto_5
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTagRuleName:[I

    array-length v3, v3

    if-ge v0, v3, :cond_4

    mul-int/lit8 v2, v2, 0x1f

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTagRuleName:[I

    aget v3, v3, v0

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_f
    move v0, v1

    :goto_6
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTagRuleName:[I

    array-length v3, v3

    if-ge v0, v3, :cond_5

    mul-int/lit8 v2, v2, 0x1f

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTagRuleName:[I

    aget v3, v3, v0

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_10
    move v0, v1

    :goto_7
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacro:[I

    array-length v3, v3

    if-ge v0, v3, :cond_6

    mul-int/lit8 v2, v2, 0x1f

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacro:[I

    aget v3, v3, v0

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_11
    move v0, v1

    :goto_8
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacro:[I

    array-length v3, v3

    if-ge v0, v3, :cond_7

    mul-int/lit8 v2, v2, 0x1f

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacro:[I

    aget v3, v3, v0

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_12
    move v0, v1

    :goto_9
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacroRuleName:[I

    array-length v3, v3

    if-ge v0, v3, :cond_8

    mul-int/lit8 v2, v2, 0x1f

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacroRuleName:[I

    aget v3, v3, v0

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_13
    move v0, v1

    :goto_a
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacroRuleName:[I

    array-length v3, v3

    if-ge v0, v3, :cond_9

    mul-int/lit8 v2, v2, 0x1f

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacroRuleName:[I

    aget v3, v3, v0

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_14
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->unknownFieldData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    goto/16 :goto_0
.end method

.method public final mergeFrom(Lcom/google/b/a/a/a;)Lcom/google/analytics/containertag/proto/Serving$Rule;
    .locals 4

    const/4 v3, 0x0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/b/a/a/a;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->unknownFieldData:Ljava/util/List;

    :cond_1
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/b/a/a/k;->a(Ljava/util/List;Lcom/google/b/a/a/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    const/16 v0, 0x8

    invoke-static {p1, v0}, Lcom/google/b/a/a/k;->a(Lcom/google/b/a/a/a;I)I

    move-result v1

    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->positivePredicate:[I

    array-length v0, v0

    add-int/2addr v1, v0

    new-array v1, v1, [I

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->positivePredicate:[I

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->positivePredicate:[I

    :goto_1
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->positivePredicate:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->positivePredicate:[I

    invoke-virtual {p1}, Lcom/google/b/a/a/a;->c()I

    move-result v2

    aput v2, v1, v0

    invoke-virtual {p1}, Lcom/google/b/a/a/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->positivePredicate:[I

    invoke-virtual {p1}, Lcom/google/b/a/a/a;->c()I

    move-result v2

    aput v2, v1, v0

    goto :goto_0

    :sswitch_2
    const/16 v0, 0x10

    invoke-static {p1, v0}, Lcom/google/b/a/a/k;->a(Lcom/google/b/a/a/a;I)I

    move-result v1

    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->negativePredicate:[I

    array-length v0, v0

    add-int/2addr v1, v0

    new-array v1, v1, [I

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->negativePredicate:[I

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->negativePredicate:[I

    :goto_2
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->negativePredicate:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->negativePredicate:[I

    invoke-virtual {p1}, Lcom/google/b/a/a/a;->c()I

    move-result v2

    aput v2, v1, v0

    invoke-virtual {p1}, Lcom/google/b/a/a/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->negativePredicate:[I

    invoke-virtual {p1}, Lcom/google/b/a/a/a;->c()I

    move-result v2

    aput v2, v1, v0

    goto :goto_0

    :sswitch_3
    const/16 v0, 0x18

    invoke-static {p1, v0}, Lcom/google/b/a/a/k;->a(Lcom/google/b/a/a/a;I)I

    move-result v1

    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTag:[I

    array-length v0, v0

    add-int/2addr v1, v0

    new-array v1, v1, [I

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTag:[I

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTag:[I

    :goto_3
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTag:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTag:[I

    invoke-virtual {p1}, Lcom/google/b/a/a/a;->c()I

    move-result v2

    aput v2, v1, v0

    invoke-virtual {p1}, Lcom/google/b/a/a/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTag:[I

    invoke-virtual {p1}, Lcom/google/b/a/a/a;->c()I

    move-result v2

    aput v2, v1, v0

    goto/16 :goto_0

    :sswitch_4
    const/16 v0, 0x20

    invoke-static {p1, v0}, Lcom/google/b/a/a/k;->a(Lcom/google/b/a/a/a;I)I

    move-result v1

    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTag:[I

    array-length v0, v0

    add-int/2addr v1, v0

    new-array v1, v1, [I

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTag:[I

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTag:[I

    :goto_4
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTag:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_5

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTag:[I

    invoke-virtual {p1}, Lcom/google/b/a/a/a;->c()I

    move-result v2

    aput v2, v1, v0

    invoke-virtual {p1}, Lcom/google/b/a/a/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTag:[I

    invoke-virtual {p1}, Lcom/google/b/a/a/a;->c()I

    move-result v2

    aput v2, v1, v0

    goto/16 :goto_0

    :sswitch_5
    const/16 v0, 0x28

    invoke-static {p1, v0}, Lcom/google/b/a/a/k;->a(Lcom/google/b/a/a/a;I)I

    move-result v1

    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTagRuleName:[I

    array-length v0, v0

    add-int/2addr v1, v0

    new-array v1, v1, [I

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTagRuleName:[I

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTagRuleName:[I

    :goto_5
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTagRuleName:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_6

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTagRuleName:[I

    invoke-virtual {p1}, Lcom/google/b/a/a/a;->c()I

    move-result v2

    aput v2, v1, v0

    invoke-virtual {p1}, Lcom/google/b/a/a/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_6
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTagRuleName:[I

    invoke-virtual {p1}, Lcom/google/b/a/a/a;->c()I

    move-result v2

    aput v2, v1, v0

    goto/16 :goto_0

    :sswitch_6
    const/16 v0, 0x30

    invoke-static {p1, v0}, Lcom/google/b/a/a/k;->a(Lcom/google/b/a/a/a;I)I

    move-result v1

    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTagRuleName:[I

    array-length v0, v0

    add-int/2addr v1, v0

    new-array v1, v1, [I

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTagRuleName:[I

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTagRuleName:[I

    :goto_6
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTagRuleName:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_7

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTagRuleName:[I

    invoke-virtual {p1}, Lcom/google/b/a/a/a;->c()I

    move-result v2

    aput v2, v1, v0

    invoke-virtual {p1}, Lcom/google/b/a/a/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_7
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTagRuleName:[I

    invoke-virtual {p1}, Lcom/google/b/a/a/a;->c()I

    move-result v2

    aput v2, v1, v0

    goto/16 :goto_0

    :sswitch_7
    const/16 v0, 0x38

    invoke-static {p1, v0}, Lcom/google/b/a/a/k;->a(Lcom/google/b/a/a/a;I)I

    move-result v1

    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacro:[I

    array-length v0, v0

    add-int/2addr v1, v0

    new-array v1, v1, [I

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacro:[I

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacro:[I

    :goto_7
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacro:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_8

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacro:[I

    invoke-virtual {p1}, Lcom/google/b/a/a/a;->c()I

    move-result v2

    aput v2, v1, v0

    invoke-virtual {p1}, Lcom/google/b/a/a/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_8
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacro:[I

    invoke-virtual {p1}, Lcom/google/b/a/a/a;->c()I

    move-result v2

    aput v2, v1, v0

    goto/16 :goto_0

    :sswitch_8
    const/16 v0, 0x40

    invoke-static {p1, v0}, Lcom/google/b/a/a/k;->a(Lcom/google/b/a/a/a;I)I

    move-result v1

    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacro:[I

    array-length v0, v0

    add-int/2addr v1, v0

    new-array v1, v1, [I

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacro:[I

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacro:[I

    :goto_8
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacro:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_9

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacro:[I

    invoke-virtual {p1}, Lcom/google/b/a/a/a;->c()I

    move-result v2

    aput v2, v1, v0

    invoke-virtual {p1}, Lcom/google/b/a/a/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_9
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacro:[I

    invoke-virtual {p1}, Lcom/google/b/a/a/a;->c()I

    move-result v2

    aput v2, v1, v0

    goto/16 :goto_0

    :sswitch_9
    const/16 v0, 0x48

    invoke-static {p1, v0}, Lcom/google/b/a/a/k;->a(Lcom/google/b/a/a/a;I)I

    move-result v1

    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacroRuleName:[I

    array-length v0, v0

    add-int/2addr v1, v0

    new-array v1, v1, [I

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacroRuleName:[I

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacroRuleName:[I

    :goto_9
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacroRuleName:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_a

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacroRuleName:[I

    invoke-virtual {p1}, Lcom/google/b/a/a/a;->c()I

    move-result v2

    aput v2, v1, v0

    invoke-virtual {p1}, Lcom/google/b/a/a/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_a
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacroRuleName:[I

    invoke-virtual {p1}, Lcom/google/b/a/a/a;->c()I

    move-result v2

    aput v2, v1, v0

    goto/16 :goto_0

    :sswitch_a
    const/16 v0, 0x50

    invoke-static {p1, v0}, Lcom/google/b/a/a/k;->a(Lcom/google/b/a/a/a;I)I

    move-result v1

    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacroRuleName:[I

    array-length v0, v0

    add-int/2addr v1, v0

    new-array v1, v1, [I

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacroRuleName:[I

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacroRuleName:[I

    :goto_a
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacroRuleName:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_b

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacroRuleName:[I

    invoke-virtual {p1}, Lcom/google/b/a/a/a;->c()I

    move-result v2

    aput v2, v1, v0

    invoke-virtual {p1}, Lcom/google/b/a/a/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_b
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacroRuleName:[I

    invoke-virtual {p1}, Lcom/google/b/a/a/a;->c()I

    move-result v2

    aput v2, v1, v0

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
        0x40 -> :sswitch_8
        0x48 -> :sswitch_9
        0x50 -> :sswitch_a
    .end sparse-switch
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/b/a/a/a;)Lcom/google/b/a/a/h;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/analytics/containertag/proto/Serving$Rule;->mergeFrom(Lcom/google/b/a/a/a;)Lcom/google/analytics/containertag/proto/Serving$Rule;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/b/a/a/b;)V
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->positivePredicate:[I

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->positivePredicate:[I

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
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->negativePredicate:[I

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->negativePredicate:[I

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
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTag:[I

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTag:[I

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
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTag:[I

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTag:[I

    array-length v3, v2

    move v1, v0

    :goto_3
    if-ge v1, v3, :cond_3

    aget v4, v2, v1

    const/4 v5, 0x4

    invoke-virtual {p1, v5, v4}, Lcom/google/b/a/a/b;->a(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTagRuleName:[I

    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTagRuleName:[I

    array-length v3, v2

    move v1, v0

    :goto_4
    if-ge v1, v3, :cond_4

    aget v4, v2, v1

    const/4 v5, 0x5

    invoke-virtual {p1, v5, v4}, Lcom/google/b/a/a/b;->a(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_4
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTagRuleName:[I

    if-eqz v1, :cond_5

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTagRuleName:[I

    array-length v3, v2

    move v1, v0

    :goto_5
    if-ge v1, v3, :cond_5

    aget v4, v2, v1

    const/4 v5, 0x6

    invoke-virtual {p1, v5, v4}, Lcom/google/b/a/a/b;->a(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_5
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacro:[I

    if-eqz v1, :cond_6

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacro:[I

    array-length v3, v2

    move v1, v0

    :goto_6
    if-ge v1, v3, :cond_6

    aget v4, v2, v1

    const/4 v5, 0x7

    invoke-virtual {p1, v5, v4}, Lcom/google/b/a/a/b;->a(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_6
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacro:[I

    if-eqz v1, :cond_7

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacro:[I

    array-length v3, v2

    move v1, v0

    :goto_7
    if-ge v1, v3, :cond_7

    aget v4, v2, v1

    const/16 v5, 0x8

    invoke-virtual {p1, v5, v4}, Lcom/google/b/a/a/b;->a(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_7
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacroRuleName:[I

    if-eqz v1, :cond_8

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacroRuleName:[I

    array-length v3, v2

    move v1, v0

    :goto_8
    if-ge v1, v3, :cond_8

    aget v4, v2, v1

    const/16 v5, 0x9

    invoke-virtual {p1, v5, v4}, Lcom/google/b/a/a/b;->a(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_8
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacroRuleName:[I

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacroRuleName:[I

    array-length v2, v1

    :goto_9
    if-ge v0, v2, :cond_9

    aget v3, v1, v0

    const/16 v4, 0xa

    invoke-virtual {p1, v4, v3}, Lcom/google/b/a/a/b;->a(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_9
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/b/a/a/k;->a(Ljava/util/List;Lcom/google/b/a/a/b;)V

    return-void
.end method
