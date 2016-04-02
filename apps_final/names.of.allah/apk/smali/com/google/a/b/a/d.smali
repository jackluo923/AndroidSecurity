.class final Lcom/google/a/b/a/d;
.super Lcom/google/a/ak;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/a/ak",
        "<",
        "Ljava/util/Collection",
        "<TE;>;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/a/ak;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/ak",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/a/b/ae;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/b/ae",
            "<+",
            "Ljava/util/Collection",
            "<TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/a/k;Ljava/lang/reflect/Type;Lcom/google/a/ak;Lcom/google/a/b/ae;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/k;",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/a/ak",
            "<TE;>;",
            "Lcom/google/a/b/ae",
            "<+",
            "Ljava/util/Collection",
            "<TE;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/a/ak;-><init>()V

    new-instance v0, Lcom/google/a/b/a/x;

    invoke-direct {v0, p1, p3, p2}, Lcom/google/a/b/a/x;-><init>(Lcom/google/a/k;Lcom/google/a/ak;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcom/google/a/b/a/d;->a:Lcom/google/a/ak;

    iput-object p4, p0, Lcom/google/a/b/a/d;->b:Lcom/google/a/b/ae;

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/a/d/a;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p1}, Lcom/google/a/d/a;->f()Lcom/google/a/d/c;

    move-result-object v0

    sget-object v1, Lcom/google/a/d/c;->i:Lcom/google/a/d/c;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/google/a/d/a;->j()V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/a/b/a/d;->b:Lcom/google/a/b/ae;

    invoke-interface {v0}, Lcom/google/a/b/ae;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p1}, Lcom/google/a/d/a;->a()V

    :goto_1
    invoke-virtual {p1}, Lcom/google/a/d/a;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/a/b/a/d;->a:Lcom/google/a/ak;

    invoke-virtual {v1, p1}, Lcom/google/a/ak;->a(Lcom/google/a/d/a;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/google/a/d/a;->b()V

    goto :goto_0
.end method

.method public final synthetic a(Lcom/google/a/d/d;Ljava/lang/Object;)V
    .locals 3

    check-cast p2, Ljava/util/Collection;

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/google/a/d/d;->f()Lcom/google/a/d/d;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/google/a/d/d;->b()Lcom/google/a/d/d;

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/a/b/a/d;->a:Lcom/google/a/ak;

    invoke-virtual {v2, p1, v1}, Lcom/google/a/ak;->a(Lcom/google/a/d/d;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/google/a/d/d;->c()Lcom/google/a/d/d;

    goto :goto_0
.end method
