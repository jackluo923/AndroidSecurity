.class public final Lcom/appyet/g/b/a;
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
    .locals 6

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Lcom/appyet/g/c/b;

    const-string v1, "array"

    invoke-direct {v0, v1}, Lcom/appyet/g/c/b;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/appyet/g/c/b;

    const-string v2, "data"

    invoke-direct {v1, v2}, Lcom/appyet/g/c/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/appyet/g/c/b;->a(Lcom/appyet/g/c/b;)V

    :try_start_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    new-instance v4, Lcom/appyet/g/c/b;

    const-string v5, "value"

    invoke-direct {v4, v5}, Lcom/appyet/g/c/b;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/appyet/g/b/j;->a()Lcom/appyet/g/b/j;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/appyet/g/b/j;->a(Ljava/lang/Object;)Lcom/appyet/g/c/b;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/appyet/g/c/b;->a(Lcom/appyet/g/c/b;)V

    invoke-virtual {v1, v4}, Lcom/appyet/g/c/b;->a(Lcom/appyet/g/c/b;)V
    :try_end_0
    .catch Lcom/appyet/g/l; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/appyet/g/n;

    invoke-direct {v1, v0}, Lcom/appyet/g/n;-><init>(Ljava/lang/Exception;)V

    throw v1

    :cond_0
    return-object v0
.end method
