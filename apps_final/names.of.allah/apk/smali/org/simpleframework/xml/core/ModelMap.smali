.class Lorg/simpleframework/xml/core/ModelMap;
.super Ljava/util/LinkedHashMap;

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap",
        "<",
        "Ljava/lang/String;",
        "Lorg/simpleframework/xml/core/ModelList;",
        ">;",
        "Ljava/lang/Iterable",
        "<",
        "Lorg/simpleframework/xml/core/ModelList;",
        ">;"
    }
.end annotation


# instance fields
.field private final detail:Lorg/simpleframework/xml/core/Detail;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Detail;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lorg/simpleframework/xml/core/ModelMap;->detail:Lorg/simpleframework/xml/core/Detail;

    return-void
.end method


# virtual methods
.method public getModels()Lorg/simpleframework/xml/core/ModelMap;
    .locals 5

    new-instance v2, Lorg/simpleframework/xml/core/ModelMap;

    iget-object v0, p0, Lorg/simpleframework/xml/core/ModelMap;->detail:Lorg/simpleframework/xml/core/Detail;

    invoke-direct {v2, v0}, Lorg/simpleframework/xml/core/ModelMap;-><init>(Lorg/simpleframework/xml/core/Detail;)V

    invoke-virtual {p0}, Lorg/simpleframework/xml/core/ModelMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/simpleframework/xml/core/ModelMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/simpleframework/xml/core/ModelList;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/simpleframework/xml/core/ModelList;->build()Lorg/simpleframework/xml/core/ModelList;

    move-result-object v1

    :cond_0
    invoke-virtual {v2, v0}, Lorg/simpleframework/xml/core/ModelMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v1, Lorg/simpleframework/xml/core/PathException;

    const-string v2, "Path with name \'%s\' is a duplicate in %s "

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    iget-object v4, p0, Lorg/simpleframework/xml/core/ModelMap;->detail:Lorg/simpleframework/xml/core/Detail;

    aput-object v4, v3, v0

    invoke-direct {v1, v2, v3}, Lorg/simpleframework/xml/core/PathException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :cond_1
    invoke-virtual {v2, v0, v1}, Lorg/simpleframework/xml/core/ModelMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/simpleframework/xml/core/ModelList;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/simpleframework/xml/core/ModelMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public lookup(Ljava/lang/String;I)Lorg/simpleframework/xml/core/Model;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/ModelMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/ModelList;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lorg/simpleframework/xml/core/ModelList;->lookup(I)Lorg/simpleframework/xml/core/Model;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public register(Ljava/lang/String;Lorg/simpleframework/xml/core/Model;)V
    .locals 1

    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/ModelMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/ModelList;

    if-nez v0, :cond_0

    new-instance v0, Lorg/simpleframework/xml/core/ModelList;

    invoke-direct {v0}, Lorg/simpleframework/xml/core/ModelList;-><init>()V

    invoke-virtual {p0, p1, v0}, Lorg/simpleframework/xml/core/ModelMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0, p2}, Lorg/simpleframework/xml/core/ModelList;->register(Lorg/simpleframework/xml/core/Model;)V

    return-void
.end method
