.class Lorg/simpleframework/xml/core/ConstructorScanner;
.super Ljava/lang/Object;


# instance fields
.field private primary:Lorg/simpleframework/xml/core/Signature;

.field private registry:Lorg/simpleframework/xml/core/ParameterMap;

.field private signatures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/simpleframework/xml/core/Signature;",
            ">;"
        }
    .end annotation
.end field

.field private support:Lorg/simpleframework/xml/core/Support;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Detail;Lorg/simpleframework/xml/core/Support;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/ConstructorScanner;->signatures:Ljava/util/List;

    new-instance v0, Lorg/simpleframework/xml/core/ParameterMap;

    invoke-direct {v0}, Lorg/simpleframework/xml/core/ParameterMap;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/ConstructorScanner;->registry:Lorg/simpleframework/xml/core/ParameterMap;

    iput-object p2, p0, Lorg/simpleframework/xml/core/ConstructorScanner;->support:Lorg/simpleframework/xml/core/Support;

    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/ConstructorScanner;->scan(Lorg/simpleframework/xml/core/Detail;)V

    return-void
.end method

.method private scan(Ljava/lang/reflect/Constructor;)V
    .locals 3

    new-instance v0, Lorg/simpleframework/xml/core/SignatureScanner;

    iget-object v1, p0, Lorg/simpleframework/xml/core/ConstructorScanner;->registry:Lorg/simpleframework/xml/core/ParameterMap;

    iget-object v2, p0, Lorg/simpleframework/xml/core/ConstructorScanner;->support:Lorg/simpleframework/xml/core/Support;

    invoke-direct {v0, p1, v1, v2}, Lorg/simpleframework/xml/core/SignatureScanner;-><init>(Ljava/lang/reflect/Constructor;Lorg/simpleframework/xml/core/ParameterMap;Lorg/simpleframework/xml/core/Support;)V

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/SignatureScanner;->isValid()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/SignatureScanner;->getSignatures()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Signature;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/Signature;->size()I

    move-result v2

    if-nez v2, :cond_0

    iput-object v0, p0, Lorg/simpleframework/xml/core/ConstructorScanner;->primary:Lorg/simpleframework/xml/core/Signature;

    :cond_0
    iget-object v2, p0, Lorg/simpleframework/xml/core/ConstructorScanner;->signatures:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private scan(Lorg/simpleframework/xml/core/Detail;)V
    .locals 5

    const/4 v0, 0x0

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Detail;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Detail;->isInstantiable()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v1, Lorg/simpleframework/xml/core/ConstructorException;

    const-string v2, "Can not construct inner %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v0

    invoke-direct {v1, v2, v3}, Lorg/simpleframework/xml/core/ConstructorException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :cond_0
    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_2

    aget-object v3, v1, v0

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Detail;->isPrimitive()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-direct {p0, v3}, Lorg/simpleframework/xml/core/ConstructorScanner;->scan(Ljava/lang/reflect/Constructor;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public getParameters()Lorg/simpleframework/xml/core/ParameterMap;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/ConstructorScanner;->registry:Lorg/simpleframework/xml/core/ParameterMap;

    return-object v0
.end method

.method public getSignature()Lorg/simpleframework/xml/core/Signature;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/ConstructorScanner;->primary:Lorg/simpleframework/xml/core/Signature;

    return-object v0
.end method

.method public getSignatures()Ljava/util/List;
    .locals 2
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

    iget-object v1, p0, Lorg/simpleframework/xml/core/ConstructorScanner;->signatures:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
