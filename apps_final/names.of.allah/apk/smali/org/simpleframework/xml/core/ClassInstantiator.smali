.class Lorg/simpleframework/xml/core/ClassInstantiator;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/simpleframework/xml/core/Instantiator;


# instance fields
.field private final creators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/simpleframework/xml/core/Creator;",
            ">;"
        }
    .end annotation
.end field

.field private final detail:Lorg/simpleframework/xml/core/Detail;

.field private final primary:Lorg/simpleframework/xml/core/Creator;

.field private final registry:Lorg/simpleframework/xml/core/ParameterMap;


# direct methods
.method public constructor <init>(Ljava/util/List;Lorg/simpleframework/xml/core/Creator;Lorg/simpleframework/xml/core/ParameterMap;Lorg/simpleframework/xml/core/Detail;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/simpleframework/xml/core/Creator;",
            ">;",
            "Lorg/simpleframework/xml/core/Creator;",
            "Lorg/simpleframework/xml/core/ParameterMap;",
            "Lorg/simpleframework/xml/core/Detail;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/simpleframework/xml/core/ClassInstantiator;->creators:Ljava/util/List;

    iput-object p3, p0, Lorg/simpleframework/xml/core/ClassInstantiator;->registry:Lorg/simpleframework/xml/core/ParameterMap;

    iput-object p2, p0, Lorg/simpleframework/xml/core/ClassInstantiator;->primary:Lorg/simpleframework/xml/core/Creator;

    iput-object p4, p0, Lorg/simpleframework/xml/core/ClassInstantiator;->detail:Lorg/simpleframework/xml/core/Detail;

    return-void
.end method

.method private getCreator(Lorg/simpleframework/xml/core/Criteria;)Lorg/simpleframework/xml/core/Creator;
    .locals 10

    iget-object v2, p0, Lorg/simpleframework/xml/core/ClassInstantiator;->primary:Lorg/simpleframework/xml/core/Creator;

    const-wide/16 v0, 0x0

    iget-object v3, p0, Lorg/simpleframework/xml/core/ClassInstantiator;->creators:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v3, v2

    move-wide v8, v0

    move-wide v1, v8

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Creator;

    invoke-interface {v0, p1}, Lorg/simpleframework/xml/core/Creator;->getScore(Lorg/simpleframework/xml/core/Criteria;)D

    move-result-wide v4

    cmpl-double v7, v4, v1

    if-lez v7, :cond_1

    move-object v2, v0

    move-wide v0, v4

    :goto_1
    move-object v3, v2

    move-wide v8, v0

    move-wide v1, v8

    goto :goto_0

    :cond_0
    return-object v3

    :cond_1
    move-wide v8, v1

    move-wide v0, v8

    move-object v2, v3

    goto :goto_1
.end method


# virtual methods
.method public getCreators()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/simpleframework/xml/core/Creator;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/simpleframework/xml/core/ClassInstantiator;->creators:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getInstance()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/ClassInstantiator;->primary:Lorg/simpleframework/xml/core/Creator;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Creator;->getInstance()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getInstance(Lorg/simpleframework/xml/core/Criteria;)Ljava/lang/Object;
    .locals 5

    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/ClassInstantiator;->getCreator(Lorg/simpleframework/xml/core/Criteria;)Lorg/simpleframework/xml/core/Creator;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/simpleframework/xml/core/PersistenceException;

    const-string v1, "Constructor not matched for %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/simpleframework/xml/core/ClassInstantiator;->detail:Lorg/simpleframework/xml/core/Detail;

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/xml/core/PersistenceException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_0
    invoke-interface {v0, p1}, Lorg/simpleframework/xml/core/Creator;->getInstance(Lorg/simpleframework/xml/core/Criteria;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getParameter(Ljava/lang/String;)Lorg/simpleframework/xml/core/Parameter;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/ClassInstantiator;->registry:Lorg/simpleframework/xml/core/ParameterMap;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/ParameterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Parameter;

    return-object v0
.end method

.method public getParameters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/simpleframework/xml/core/Parameter;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/simpleframework/xml/core/ClassInstantiator;->registry:Lorg/simpleframework/xml/core/ParameterMap;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/ParameterMap;->getAll()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isDefault()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/simpleframework/xml/core/ClassInstantiator;->creators:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gt v2, v0, :cond_1

    iget-object v2, p0, Lorg/simpleframework/xml/core/ClassInstantiator;->primary:Lorg/simpleframework/xml/core/Creator;

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "creator for %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/simpleframework/xml/core/ClassInstantiator;->detail:Lorg/simpleframework/xml/core/Detail;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
