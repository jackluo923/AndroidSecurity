.class Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;
.super Ljava/util/ArrayList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;)I
    .locals 1

    invoke-direct {p0}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;->width()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;)I
    .locals 1

    invoke-direct {p0}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;->height()I

    move-result v0

    return v0
.end method

.method private height()I
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;->width()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;->get(I)Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;->size()I

    move-result v0

    :cond_0
    return v0
.end method

.method private width()I
    .locals 1

    invoke-virtual {p0}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;->size()I

    move-result v0

    return v0
.end method


# virtual methods
.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;->get(I)Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;

    move-result-object v0

    return-object v0
.end method

.method public get(II)Lorg/simpleframework/xml/core/Parameter;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;->get(I)Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Parameter;

    return-object v0
.end method

.method public get(I)Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;
    .locals 2

    invoke-virtual {p0}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;->size()I

    move-result v0

    :goto_0
    if-gt v0, p1, :cond_0

    new-instance v1, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;

    invoke-direct {v1}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;-><init>()V

    invoke-virtual {p0, v1}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;

    return-object v0
.end method

.method public insert(Lorg/simpleframework/xml/core/Parameter;I)V
    .locals 1

    invoke-virtual {p0, p2}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;->get(I)Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
