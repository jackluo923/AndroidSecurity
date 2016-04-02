.class public final Lcom/google/analytics/containertag/proto/Serving$Supplemental;
.super Lcom/google/b/a/a/d;


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Serving$Supplemental;


# instance fields
.field public experimentSupplemental:Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;

.field public name:Ljava/lang/String;

.field public value:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/analytics/containertag/proto/Serving$Supplemental;

    sput-object v0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Serving$Supplemental;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/b/a/a/d;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->name:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->value:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->experimentSupplemental:Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;

    return-void
.end method

.method public static parseFrom(Lcom/google/b/a/a/a;)Lcom/google/analytics/containertag/proto/Serving$Supplemental;
    .locals 1

    new-instance v0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Serving$Supplemental;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->mergeFrom(Lcom/google/b/a/a/a;)Lcom/google/analytics/containertag/proto/Serving$Supplemental;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/analytics/containertag/proto/Serving$Supplemental;
    .locals 1

    new-instance v0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Serving$Supplemental;-><init>()V

    invoke-static {v0, p0}, Lcom/google/b/a/a/h;->mergeFrom(Lcom/google/b/a/a/h;[B)Lcom/google/b/a/a/h;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/analytics/containertag/proto/Serving$Supplemental;
    .locals 2

    const/4 v1, 0x0

    const-string v0, ""

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->name:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->value:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->experimentSupplemental:Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->unknownFieldData:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->cachedSize:I

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
    instance-of v2, p1, Lcom/google/analytics/containertag/proto/Serving$Supplemental;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/analytics/containertag/proto/Serving$Supplemental;

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->name:Ljava/lang/String;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->name:Ljava/lang/String;

    if-nez v2, :cond_3

    :goto_1
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->value:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-nez v2, :cond_5

    iget-object v2, p1, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->value:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-nez v2, :cond_3

    :goto_2
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->experimentSupplemental:Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;

    if-nez v2, :cond_6

    iget-object v2, p1, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->experimentSupplemental:Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;

    if-nez v2, :cond_3

    :goto_3
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_7

    iget-object v2, p1, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->unknownFieldData:Ljava/util/List;

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->value:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    iget-object v3, p1, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->value:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-virtual {v2, v3}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_6
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->experimentSupplemental:Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;

    iget-object v3, p1, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->experimentSupplemental:Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;

    invoke-virtual {v2, v3}, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_3

    :cond_7
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->unknownFieldData:Ljava/util/List;

    iget-object v3, p1, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->unknownFieldData:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0
.end method

.method public final getSerializedSize()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->name:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/b/a/a/b;->b(ILjava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    :cond_0
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->value:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->value:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-static {v1, v2}, Lcom/google/b/a/a/b;->b(ILcom/google/b/a/a/h;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->experimentSupplemental:Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->experimentSupplemental:Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;

    invoke-static {v1, v2}, Lcom/google/b/a/a/b;->b(ILcom/google/b/a/a/h;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/b/a/a/k;->a(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->cachedSize:I

    return v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->value:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->experimentSupplemental:Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_3

    :goto_3
    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->value:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-virtual {v0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->experimentSupplemental:Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;

    invoke-virtual {v0}, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->hashCode()I

    move-result v0

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->unknownFieldData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    goto :goto_3
.end method

.method public final mergeFrom(Lcom/google/b/a/a/a;)Lcom/google/analytics/containertag/proto/Serving$Supplemental;
    .locals 2

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/b/a/a/a;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->unknownFieldData:Ljava/util/List;

    :cond_1
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/b/a/a/k;->a(Ljava/util/List;Lcom/google/b/a/a/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/b/a/a/a;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->name:Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    new-instance v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-direct {v0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;-><init>()V

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->value:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->value:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-virtual {p1, v0}, Lcom/google/b/a/a/a;->a(Lcom/google/b/a/a/h;)V

    goto :goto_0

    :sswitch_3
    new-instance v0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;-><init>()V

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->experimentSupplemental:Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;

    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->experimentSupplemental:Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;

    invoke-virtual {p1, v0}, Lcom/google/b/a/a/a;->a(Lcom/google/b/a/a/h;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/b/a/a/a;)Lcom/google/b/a/a/h;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->mergeFrom(Lcom/google/b/a/a/a;)Lcom/google/analytics/containertag/proto/Serving$Supplemental;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/b/a/a/b;)V
    .locals 2

    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->name:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/b/a/a/b;->a(ILjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->value:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->value:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-virtual {p1, v0, v1}, Lcom/google/b/a/a/b;->a(ILcom/google/b/a/a/h;)V

    :cond_1
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->experimentSupplemental:Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->experimentSupplemental:Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;

    invoke-virtual {p1, v0, v1}, Lcom/google/b/a/a/b;->a(ILcom/google/b/a/a/h;)V

    :cond_2
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/b/a/a/k;->a(Ljava/util/List;Lcom/google/b/a/a/b;)V

    return-void
.end method
