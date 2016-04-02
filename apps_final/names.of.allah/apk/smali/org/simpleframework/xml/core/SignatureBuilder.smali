.class Lorg/simpleframework/xml/core/SignatureBuilder;
.super Ljava/lang/Object;


# instance fields
.field private final factory:Ljava/lang/reflect/Constructor;

.field private final table:Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Constructor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;

    invoke-direct {v0}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/SignatureBuilder;->table:Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;

    iput-object p1, p0, Lorg/simpleframework/xml/core/SignatureBuilder;->factory:Ljava/lang/reflect/Constructor;

    return-void
.end method

.method private build(Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/simpleframework/xml/core/Signature;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/simpleframework/xml/core/SignatureBuilder;->table:Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/simpleframework/xml/core/SignatureBuilder;->create()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/SignatureBuilder;->build(Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;I)V

    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/SignatureBuilder;->create(Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method private build(Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;I)V
    .locals 1

    new-instance v0, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;

    invoke-direct {v0}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;-><init>()V

    invoke-direct {p0, p1, v0, p2}, Lorg/simpleframework/xml/core/SignatureBuilder;->build(Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;I)V

    return-void
.end method

.method private build(Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;I)V
    .locals 5

    iget-object v0, p0, Lorg/simpleframework/xml/core/SignatureBuilder;->table:Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;

    invoke-virtual {v0, p3}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;->get(I)Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;

    move-result-object v2

    invoke-virtual {v2}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;->size()I

    move-result v3

    iget-object v0, p0, Lorg/simpleframework/xml/core/SignatureBuilder;->table:Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;

    # invokes: Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;->width()I
    invoke-static {v0}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;->access$000(Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le v0, p3, :cond_1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_2

    new-instance v4, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;

    invoke-direct {v4, p2}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;-><init>(Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;)V

    if-eqz p2, :cond_0

    invoke-virtual {v2, v1}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Parameter;

    invoke-virtual {v4, v0}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, p3, 0x1

    invoke-direct {p0, p1, v4, v0}, Lorg/simpleframework/xml/core/SignatureBuilder;->build(Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;I)V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lorg/simpleframework/xml/core/SignatureBuilder;->populate(Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;I)V

    :cond_2
    return-void
.end method

.method private create()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/simpleframework/xml/core/Signature;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lorg/simpleframework/xml/core/Signature;

    iget-object v2, p0, Lorg/simpleframework/xml/core/SignatureBuilder;->factory:Ljava/lang/reflect/Constructor;

    invoke-direct {v1, v2}, Lorg/simpleframework/xml/core/Signature;-><init>(Ljava/lang/reflect/Constructor;)V

    invoke-virtual {p0}, Lorg/simpleframework/xml/core/SignatureBuilder;->isValid()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method private create(Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/simpleframework/xml/core/Signature;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    # invokes: Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;->height()I
    invoke-static {p1}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;->access$100(Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;)I

    move-result v4

    # invokes: Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;->width()I
    invoke-static {p1}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;->access$000(Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;)I

    move-result v5

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_2

    new-instance v6, Lorg/simpleframework/xml/core/Signature;

    iget-object v0, p0, Lorg/simpleframework/xml/core/SignatureBuilder;->factory:Ljava/lang/reflect/Constructor;

    invoke-direct {v6, v0}, Lorg/simpleframework/xml/core/Signature;-><init>(Ljava/lang/reflect/Constructor;)V

    move v0, v1

    :goto_1
    if-ge v0, v5, :cond_1

    invoke-virtual {p1, v0, v2}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;->get(II)Lorg/simpleframework/xml/core/Parameter;

    move-result-object v7

    invoke-interface {v7}, Lorg/simpleframework/xml/core/Parameter;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7}, Lorg/simpleframework/xml/core/Parameter;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v6, v9}, Lorg/simpleframework/xml/core/Signature;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    new-instance v0, Lorg/simpleframework/xml/core/ConstructorException;

    const-string v2, "Parameter \'%s\' is a duplicate in %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v8, v3, v1

    const/4 v1, 0x1

    iget-object v4, p0, Lorg/simpleframework/xml/core/SignatureBuilder;->factory:Ljava/lang/reflect/Constructor;

    aput-object v4, v3, v1

    invoke-direct {v0, v2, v3}, Lorg/simpleframework/xml/core/ConstructorException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_0
    invoke-virtual {v6, v7}, Lorg/simpleframework/xml/core/Signature;->add(Lorg/simpleframework/xml/core/Parameter;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    return-object v3
.end method

.method private populate(Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;I)V
    .locals 8

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/simpleframework/xml/core/SignatureBuilder;->table:Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;

    invoke-virtual {v0, p3}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;->get(I)Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;

    move-result-object v4

    invoke-virtual {p2}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;->size()I

    move-result v5

    invoke-virtual {v4}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;->size()I

    move-result v6

    move v3, v2

    :goto_0
    if-ge v3, v6, :cond_1

    move v1, v2

    :goto_1
    if-ge v1, v5, :cond_0

    invoke-virtual {p1, v1}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;->get(I)Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;

    move-result-object v7

    invoke-virtual {p2, v1}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Parameter;

    invoke-virtual {v7, v0}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_0
    invoke-virtual {p1, p3}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;->get(I)Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;

    move-result-object v1

    invoke-virtual {v4, v3}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Parameter;

    invoke-virtual {v1, v0}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public build()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/simpleframework/xml/core/Signature;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;

    invoke-direct {v0}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;-><init>()V

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/SignatureBuilder;->build(Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public insert(Lorg/simpleframework/xml/core/Parameter;I)V
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/SignatureBuilder;->table:Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;

    invoke-virtual {v0, p1, p2}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;->insert(Lorg/simpleframework/xml/core/Parameter;I)V

    return-void
.end method

.method public isValid()Z
    .locals 2

    iget-object v0, p0, Lorg/simpleframework/xml/core/SignatureBuilder;->factory:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lorg/simpleframework/xml/core/SignatureBuilder;->table:Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;

    # invokes: Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;->width()I
    invoke-static {v1}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;->access$000(Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;)I

    move-result v1

    array-length v0, v0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
