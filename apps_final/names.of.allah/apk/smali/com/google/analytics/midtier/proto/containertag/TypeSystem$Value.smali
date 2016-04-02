.class public final Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
.super Lcom/google/b/a/a/d;


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;


# instance fields
.field public boolean_:Z

.field public containsReferences:Z

.field public escaping:[I

.field public functionId:Ljava/lang/String;

.field public integer:J

.field public listItem:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

.field public macroReference:Ljava/lang/String;

.field public mapKey:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

.field public mapValue:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

.field public string:Ljava/lang/String;

.field public tagReference:Ljava/lang/String;

.field public templateToken:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    sput-object v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->EMPTY_ARRAY:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/google/b/a/a/d;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->type:I

    const-string v0, ""

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->string:Ljava/lang/String;

    sget-object v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->EMPTY_ARRAY:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->listItem:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    sget-object v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->EMPTY_ARRAY:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    sget-object v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->EMPTY_ARRAY:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapValue:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->macroReference:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->functionId:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->integer:J

    iput-boolean v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->boolean_:Z

    sget-object v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->EMPTY_ARRAY:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->templateToken:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->tagReference:Ljava/lang/String;

    sget-object v0, Lcom/google/b/a/a/k;->e:[I

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->escaping:[I

    iput-boolean v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->containsReferences:Z

    return-void
.end method

.method public static parseFrom(Lcom/google/b/a/a/a;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .locals 1

    new-instance v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-direct {v0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mergeFrom(Lcom/google/b/a/a/a;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .locals 1

    new-instance v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-direct {v0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;-><init>()V

    invoke-static {v0, p0}, Lcom/google/b/a/a/h;->mergeFrom(Lcom/google/b/a/a/h;[B)Lcom/google/b/a/a/h;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->type:I

    const-string v0, ""

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->string:Ljava/lang/String;

    sget-object v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->EMPTY_ARRAY:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->listItem:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    sget-object v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->EMPTY_ARRAY:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    sget-object v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->EMPTY_ARRAY:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapValue:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->macroReference:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->functionId:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->integer:J

    iput-boolean v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->boolean_:Z

    sget-object v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->EMPTY_ARRAY:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->templateToken:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->tagReference:Ljava/lang/String;

    sget-object v0, Lcom/google/b/a/a/k;->e:[I

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->escaping:[I

    iput-boolean v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->containsReferences:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->unknownFieldData:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->cachedSize:I

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    iget v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->type:I

    iget v3, p1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->type:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->string:Ljava/lang/String;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->string:Ljava/lang/String;

    if-nez v2, :cond_3

    :goto_1
    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->listItem:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    iget-object v3, p1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->listItem:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    iget-object v3, p1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapValue:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    iget-object v3, p1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapValue:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->macroReference:Ljava/lang/String;

    if-nez v2, :cond_5

    iget-object v2, p1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->macroReference:Ljava/lang/String;

    if-nez v2, :cond_3

    :goto_2
    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->functionId:Ljava/lang/String;

    if-nez v2, :cond_6

    iget-object v2, p1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->functionId:Ljava/lang/String;

    if-nez v2, :cond_3

    :goto_3
    iget-wide v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->integer:J

    iget-wide v4, p1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->integer:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->boolean_:Z

    iget-boolean v3, p1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->boolean_:Z

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->templateToken:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    iget-object v3, p1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->templateToken:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->tagReference:Ljava/lang/String;

    if-nez v2, :cond_7

    iget-object v2, p1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->tagReference:Ljava/lang/String;

    if-nez v2, :cond_3

    :goto_4
    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->escaping:[I

    iget-object v3, p1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->escaping:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->containsReferences:Z

    iget-boolean v3, p1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->containsReferences:Z

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_8

    iget-object v2, p1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->unknownFieldData:Ljava/util/List;

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->string:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->string:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->macroReference:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->macroReference:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_6
    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->functionId:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->functionId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_3

    :cond_7
    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->tagReference:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->tagReference:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_4

    :cond_8
    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->unknownFieldData:Ljava/util/List;

    iget-object v3, p1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->unknownFieldData:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_0
.end method

.method public final getSerializedSize()I
    .locals 7

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->type:I

    invoke-static {v0, v2}, Lcom/google/b/a/a/b;->b(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->string:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->string:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/b/a/a/b;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_0
    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->listItem:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-eqz v2, :cond_1

    iget-object v4, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->listItem:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v5, v4

    move v2, v1

    :goto_0
    if-ge v2, v5, :cond_1

    aget-object v3, v4, v2

    const/4 v6, 0x3

    invoke-static {v6, v3}, Lcom/google/b/a/a/b;->b(ILcom/google/b/a/a/h;)I

    move-result v3

    add-int/2addr v3, v0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v3

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-eqz v2, :cond_2

    iget-object v4, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v5, v4

    move v2, v1

    :goto_1
    if-ge v2, v5, :cond_2

    aget-object v3, v4, v2

    const/4 v6, 0x4

    invoke-static {v6, v3}, Lcom/google/b/a/a/b;->b(ILcom/google/b/a/a/h;)I

    move-result v3

    add-int/2addr v3, v0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v3

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapValue:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-eqz v2, :cond_3

    iget-object v4, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapValue:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v5, v4

    move v2, v1

    :goto_2
    if-ge v2, v5, :cond_3

    aget-object v3, v4, v2

    const/4 v6, 0x5

    invoke-static {v6, v3}, Lcom/google/b/a/a/b;->b(ILcom/google/b/a/a/h;)I

    move-result v3

    add-int/2addr v3, v0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v3

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->macroReference:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->macroReference:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/b/a/a/b;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_4
    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->functionId:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->functionId:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/b/a/a/b;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_5
    iget-wide v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->integer:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_6

    const/16 v2, 0x8

    iget-wide v3, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->integer:J

    invoke-static {v2, v3, v4}, Lcom/google/b/a/a/b;->b(IJ)I

    move-result v2

    add-int/2addr v0, v2

    :cond_6
    iget-boolean v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->containsReferences:Z

    if-eqz v2, :cond_7

    const/16 v2, 0x9

    iget-boolean v3, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->containsReferences:Z

    invoke-static {v2}, Lcom/google/b/a/a/b;->d(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    :cond_7
    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->escaping:[I

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->escaping:[I

    array-length v2, v2

    if-lez v2, :cond_9

    iget-object v4, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->escaping:[I

    array-length v5, v4

    move v2, v1

    move v3, v1

    :goto_3
    if-ge v2, v5, :cond_8

    aget v6, v4, v2

    invoke-static {v6}, Lcom/google/b/a/a/b;->b(I)I

    move-result v6

    add-int/2addr v3, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_8
    add-int/2addr v0, v3

    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->escaping:[I

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    :cond_9
    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->templateToken:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-eqz v2, :cond_a

    iget-object v3, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->templateToken:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v4, v3

    :goto_4
    if-ge v1, v4, :cond_a

    aget-object v2, v3, v1

    const/16 v5, 0xb

    invoke-static {v5, v2}, Lcom/google/b/a/a/b;->b(ILcom/google/b/a/a/h;)I

    move-result v2

    add-int/2addr v2, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v2

    goto :goto_4

    :cond_a
    iget-boolean v1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->boolean_:Z

    if-eqz v1, :cond_b

    const/16 v1, 0xc

    iget-boolean v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->boolean_:Z

    invoke-static {v1}, Lcom/google/b/a/a/b;->d(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    :cond_b
    iget-object v1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->tagReference:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    const/16 v1, 0xd

    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->tagReference:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/b/a/a/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_c
    iget-object v1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/b/a/a/k;->a(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->cachedSize:I

    return v0
.end method

.method public final hashCode()I
    .locals 9

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    iget v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->type:I

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->string:Ljava/lang/String;

    if-nez v0, :cond_5

    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->listItem:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-nez v2, :cond_6

    mul-int/lit8 v2, v0, 0x1f

    :cond_0
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-nez v0, :cond_8

    mul-int/lit8 v2, v2, 0x1f

    :cond_1
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapValue:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-nez v0, :cond_a

    mul-int/lit8 v2, v2, 0x1f

    :cond_2
    mul-int/lit8 v2, v2, 0x1f

    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->macroReference:Ljava/lang/String;

    if-nez v0, :cond_c

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->functionId:Ljava/lang/String;

    if-nez v0, :cond_d

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v5, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->integer:J

    iget-wide v7, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->integer:J

    const/16 v2, 0x20

    ushr-long/2addr v7, v2

    xor-long/2addr v5, v7

    long-to-int v2, v5

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->boolean_:Z

    if-eqz v0, :cond_e

    move v0, v3

    :goto_3
    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->templateToken:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-nez v2, :cond_f

    mul-int/lit8 v2, v0, 0x1f

    :cond_3
    mul-int/lit8 v2, v2, 0x1f

    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->tagReference:Ljava/lang/String;

    if-nez v0, :cond_11

    move v0, v1

    :goto_4
    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->escaping:[I

    if-nez v2, :cond_12

    mul-int/lit8 v2, v0, 0x1f

    :cond_4
    mul-int/lit8 v0, v2, 0x1f

    iget-boolean v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->containsReferences:Z

    if-eqz v2, :cond_13

    :goto_5
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_14

    :goto_6
    add-int/2addr v0, v1

    return v0

    :cond_5
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->string:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_6
    move v2, v0

    move v0, v1

    :goto_7
    iget-object v5, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->listItem:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v5, v5

    if-ge v0, v5, :cond_0

    mul-int/lit8 v5, v2, 0x1f

    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->listItem:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aget-object v2, v2, v0

    if-nez v2, :cond_7

    move v2, v1

    :goto_8
    add-int/2addr v2, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_7
    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->listItem:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->hashCode()I

    move-result v2

    goto :goto_8

    :cond_8
    move v0, v1

    :goto_9
    iget-object v5, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v5, v5

    if-ge v0, v5, :cond_1

    mul-int/lit8 v5, v2, 0x1f

    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aget-object v2, v2, v0

    if-nez v2, :cond_9

    move v2, v1

    :goto_a
    add-int/2addr v2, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_9
    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->hashCode()I

    move-result v2

    goto :goto_a

    :cond_a
    move v0, v1

    :goto_b
    iget-object v5, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapValue:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v5, v5

    if-ge v0, v5, :cond_2

    mul-int/lit8 v5, v2, 0x1f

    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapValue:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aget-object v2, v2, v0

    if-nez v2, :cond_b

    move v2, v1

    :goto_c
    add-int/2addr v2, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_b
    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapValue:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->hashCode()I

    move-result v2

    goto :goto_c

    :cond_c
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->macroReference:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_1

    :cond_d
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->functionId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_2

    :cond_e
    move v0, v4

    goto/16 :goto_3

    :cond_f
    move v2, v0

    move v0, v1

    :goto_d
    iget-object v5, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->templateToken:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v5, v5

    if-ge v0, v5, :cond_3

    mul-int/lit8 v5, v2, 0x1f

    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->templateToken:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aget-object v2, v2, v0

    if-nez v2, :cond_10

    move v2, v1

    :goto_e
    add-int/2addr v2, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_10
    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->templateToken:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->hashCode()I

    move-result v2

    goto :goto_e

    :cond_11
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->tagReference:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_4

    :cond_12
    move v2, v0

    move v0, v1

    :goto_f
    iget-object v5, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->escaping:[I

    array-length v5, v5

    if-ge v0, v5, :cond_4

    mul-int/lit8 v2, v2, 0x1f

    iget-object v5, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->escaping:[I

    aget v5, v5, v0

    add-int/2addr v2, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_13
    move v3, v4

    goto/16 :goto_5

    :cond_14
    iget-object v1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->unknownFieldData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    goto/16 :goto_6
.end method

.method public final mergeFrom(Lcom/google/b/a/a/a;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .locals 5

    const/4 v4, 0x1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/b/a/a/a;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->unknownFieldData:Ljava/util/List;

    :cond_1
    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->unknownFieldData:Ljava/util/List;

    invoke-static {v2, p1, v0}, Lcom/google/b/a/a/k;->a(Ljava/util/List;Lcom/google/b/a/a/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/b/a/a/a;->c()I

    move-result v0

    if-eq v0, v4, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    const/4 v2, 0x5

    if-eq v0, v2, :cond_2

    const/4 v2, 0x6

    if-eq v0, v2, :cond_2

    const/4 v2, 0x7

    if-eq v0, v2, :cond_2

    const/16 v2, 0x8

    if-eq v0, v2, :cond_2

    const/16 v2, 0x9

    if-ne v0, v2, :cond_3

    :cond_2
    iput v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->type:I

    goto :goto_0

    :cond_3
    iput v4, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->type:I

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/b/a/a/a;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->string:Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    const/16 v0, 0x1a

    invoke-static {p1, v0}, Lcom/google/b/a/a/k;->a(Lcom/google/b/a/a/a;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->listItem:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-nez v0, :cond_5

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    iget-object v3, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->listItem:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->listItem:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    iput-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->listItem:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    :goto_2
    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->listItem:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_6

    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->listItem:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    new-instance v3, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-direct {v3}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;-><init>()V

    aput-object v3, v2, v0

    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->listItem:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Lcom/google/b/a/a/a;->a(Lcom/google/b/a/a/h;)V

    invoke-virtual {p1}, Lcom/google/b/a/a/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->listItem:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v0, v0

    goto :goto_1

    :cond_6
    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->listItem:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    new-instance v3, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-direct {v3}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;-><init>()V

    aput-object v3, v2, v0

    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->listItem:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/b/a/a/a;->a(Lcom/google/b/a/a/h;)V

    goto/16 :goto_0

    :sswitch_4
    const/16 v0, 0x22

    invoke-static {p1, v0}, Lcom/google/b/a/a/k;->a(Lcom/google/b/a/a/a;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-nez v0, :cond_8

    move v0, v1

    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    iget-object v3, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7
    iput-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    :goto_4
    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_9

    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    new-instance v3, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-direct {v3}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;-><init>()V

    aput-object v3, v2, v0

    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Lcom/google/b/a/a/a;->a(Lcom/google/b/a/a/h;)V

    invoke-virtual {p1}, Lcom/google/b/a/a/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_8
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v0, v0

    goto :goto_3

    :cond_9
    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    new-instance v3, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-direct {v3}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;-><init>()V

    aput-object v3, v2, v0

    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/b/a/a/a;->a(Lcom/google/b/a/a/h;)V

    goto/16 :goto_0

    :sswitch_5
    const/16 v0, 0x2a

    invoke-static {p1, v0}, Lcom/google/b/a/a/k;->a(Lcom/google/b/a/a/a;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapValue:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-nez v0, :cond_b

    move v0, v1

    :goto_5
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    iget-object v3, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapValue:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapValue:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_a
    iput-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapValue:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    :goto_6
    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapValue:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_c

    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapValue:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    new-instance v3, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-direct {v3}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;-><init>()V

    aput-object v3, v2, v0

    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapValue:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Lcom/google/b/a/a/a;->a(Lcom/google/b/a/a/h;)V

    invoke-virtual {p1}, Lcom/google/b/a/a/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_b
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapValue:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v0, v0

    goto :goto_5

    :cond_c
    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapValue:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    new-instance v3, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-direct {v3}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;-><init>()V

    aput-object v3, v2, v0

    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapValue:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/b/a/a/a;->a(Lcom/google/b/a/a/h;)V

    goto/16 :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/b/a/a/a;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->macroReference:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/b/a/a/a;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->functionId:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/b/a/a/a;->b()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->integer:J

    goto/16 :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lcom/google/b/a/a/a;->d()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->containsReferences:Z

    goto/16 :goto_0

    :sswitch_a
    const/16 v0, 0x50

    invoke-static {p1, v0}, Lcom/google/b/a/a/k;->a(Lcom/google/b/a/a/a;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->escaping:[I

    array-length v0, v0

    add-int/2addr v2, v0

    new-array v2, v2, [I

    iget-object v3, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->escaping:[I

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->escaping:[I

    :goto_7
    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->escaping:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_d

    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->escaping:[I

    invoke-virtual {p1}, Lcom/google/b/a/a/a;->c()I

    move-result v3

    aput v3, v2, v0

    invoke-virtual {p1}, Lcom/google/b/a/a/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_d
    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->escaping:[I

    invoke-virtual {p1}, Lcom/google/b/a/a/a;->c()I

    move-result v3

    aput v3, v2, v0

    goto/16 :goto_0

    :sswitch_b
    const/16 v0, 0x5a

    invoke-static {p1, v0}, Lcom/google/b/a/a/k;->a(Lcom/google/b/a/a/a;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->templateToken:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-nez v0, :cond_f

    move v0, v1

    :goto_8
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    iget-object v3, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->templateToken:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->templateToken:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_e
    iput-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->templateToken:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    :goto_9
    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->templateToken:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_10

    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->templateToken:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    new-instance v3, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-direct {v3}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;-><init>()V

    aput-object v3, v2, v0

    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->templateToken:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Lcom/google/b/a/a/a;->a(Lcom/google/b/a/a/h;)V

    invoke-virtual {p1}, Lcom/google/b/a/a/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_f
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->templateToken:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v0, v0

    goto :goto_8

    :cond_10
    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->templateToken:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    new-instance v3, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-direct {v3}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;-><init>()V

    aput-object v3, v2, v0

    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->templateToken:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/b/a/a/a;->a(Lcom/google/b/a/a/h;)V

    goto/16 :goto_0

    :sswitch_c
    invoke-virtual {p1}, Lcom/google/b/a/a/a;->d()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->boolean_:Z

    goto/16 :goto_0

    :sswitch_d
    invoke-virtual {p1}, Lcom/google/b/a/a/a;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->tagReference:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x40 -> :sswitch_8
        0x48 -> :sswitch_9
        0x50 -> :sswitch_a
        0x5a -> :sswitch_b
        0x60 -> :sswitch_c
        0x6a -> :sswitch_d
    .end sparse-switch
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/b/a/a/a;)Lcom/google/b/a/a/h;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mergeFrom(Lcom/google/b/a/a/a;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/b/a/a/b;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->type:I

    invoke-virtual {p1, v1, v2}, Lcom/google/b/a/a/b;->a(II)V

    iget-object v1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->string:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->string:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/google/b/a/a/b;->a(ILjava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->listItem:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->listItem:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    const/4 v5, 0x3

    invoke-virtual {p1, v5, v4}, Lcom/google/b/a/a/b;->a(ILcom/google/b/a/a/h;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v3, v2

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_2

    aget-object v4, v2, v1

    const/4 v5, 0x4

    invoke-virtual {p1, v5, v4}, Lcom/google/b/a/a/b;->a(ILcom/google/b/a/a/h;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapValue:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapValue:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v3, v2

    move v1, v0

    :goto_2
    if-ge v1, v3, :cond_3

    aget-object v4, v2, v1

    const/4 v5, 0x5

    invoke-virtual {p1, v5, v4}, Lcom/google/b/a/a/b;->a(ILcom/google/b/a/a/h;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->macroReference:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->macroReference:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/google/b/a/a/b;->a(ILjava/lang/String;)V

    :cond_4
    iget-object v1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->functionId:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->functionId:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/google/b/a/a/b;->a(ILjava/lang/String;)V

    :cond_5
    iget-wide v1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->integer:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_6

    const/16 v1, 0x8

    iget-wide v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->integer:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/b/a/a/b;->a(IJ)V

    :cond_6
    iget-boolean v1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->containsReferences:Z

    if-eqz v1, :cond_7

    const/16 v1, 0x9

    iget-boolean v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->containsReferences:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/b/a/a/b;->a(IZ)V

    :cond_7
    iget-object v1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->escaping:[I

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->escaping:[I

    array-length v1, v1

    if-lez v1, :cond_8

    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->escaping:[I

    array-length v3, v2

    move v1, v0

    :goto_3
    if-ge v1, v3, :cond_8

    aget v4, v2, v1

    const/16 v5, 0xa

    invoke-virtual {p1, v5, v4}, Lcom/google/b/a/a/b;->a(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_8
    iget-object v1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->templateToken:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->templateToken:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v2, v1

    :goto_4
    if-ge v0, v2, :cond_9

    aget-object v3, v1, v0

    const/16 v4, 0xb

    invoke-virtual {p1, v4, v3}, Lcom/google/b/a/a/b;->a(ILcom/google/b/a/a/h;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_9
    iget-boolean v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->boolean_:Z

    if-eqz v0, :cond_a

    const/16 v0, 0xc

    iget-boolean v1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->boolean_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/b/a/a/b;->a(IZ)V

    :cond_a
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->tagReference:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const/16 v0, 0xd

    iget-object v1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->tagReference:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/b/a/a/b;->a(ILjava/lang/String;)V

    :cond_b
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/b/a/a/k;->a(Ljava/util/List;Lcom/google/b/a/a/b;)V

    return-void
.end method
