.class public final Lcom/appyet/g/b/l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/appyet/g/b/i;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/appyet/g/c/b;
    .locals 8

    new-instance v3, Lcom/appyet/g/c/b;

    const-string v1, "struct"

    invoke-direct {v3, v1}, Lcom/appyet/g/c/b;-><init>(Ljava/lang/String;)V

    :try_start_0
    check-cast p1, Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/Map$Entry;

    move-object v2, v0

    new-instance v5, Lcom/appyet/g/c/b;

    const-string v1, "member"

    invoke-direct {v5, v1}, Lcom/appyet/g/c/b;-><init>(Ljava/lang/String;)V

    new-instance v6, Lcom/appyet/g/c/b;

    const-string v1, "name"

    invoke-direct {v6, v1}, Lcom/appyet/g/c/b;-><init>(Ljava/lang/String;)V

    new-instance v7, Lcom/appyet/g/c/b;

    const-string v1, "value"

    invoke-direct {v7, v1}, Lcom/appyet/g/c/b;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v6, Lcom/appyet/g/c/b;->a:Ljava/lang/String;

    invoke-static {}, Lcom/appyet/g/b/j;->a()Lcom/appyet/g/b/j;

    move-result-object v1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/appyet/g/b/j;->a(Ljava/lang/Object;)Lcom/appyet/g/c/b;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/appyet/g/c/b;->a(Lcom/appyet/g/c/b;)V

    invoke-virtual {v5, v6}, Lcom/appyet/g/c/b;->a(Lcom/appyet/g/c/b;)V

    invoke-virtual {v5, v7}, Lcom/appyet/g/c/b;->a(Lcom/appyet/g/c/b;)V

    invoke-virtual {v3, v5}, Lcom/appyet/g/c/b;->a(Lcom/appyet/g/c/b;)V
    :try_end_0
    .catch Lcom/appyet/g/l; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Lcom/appyet/g/n;

    invoke-direct {v2, v1}, Lcom/appyet/g/n;-><init>(Ljava/lang/Exception;)V

    throw v2

    :cond_0
    return-object v3
.end method
