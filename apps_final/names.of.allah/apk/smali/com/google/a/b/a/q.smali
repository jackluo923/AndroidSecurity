.class final Lcom/google/a/b/a/q;
.super Lcom/google/a/b/a/s;


# instance fields
.field final a:Lcom/google/a/ak;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/ak",
            "<*>;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/google/a/k;

.field final synthetic c:Lcom/google/a/c/a;

.field final synthetic d:Ljava/lang/reflect/Field;

.field final synthetic e:Z

.field final synthetic f:Lcom/google/a/b/a/p;


# direct methods
.method constructor <init>(Lcom/google/a/b/a/p;Ljava/lang/String;ZZLcom/google/a/k;Lcom/google/a/c/a;Ljava/lang/reflect/Field;Z)V
    .locals 2

    iput-object p1, p0, Lcom/google/a/b/a/q;->f:Lcom/google/a/b/a/p;

    iput-object p5, p0, Lcom/google/a/b/a/q;->b:Lcom/google/a/k;

    iput-object p6, p0, Lcom/google/a/b/a/q;->c:Lcom/google/a/c/a;

    iput-object p7, p0, Lcom/google/a/b/a/q;->d:Ljava/lang/reflect/Field;

    iput-boolean p8, p0, Lcom/google/a/b/a/q;->e:Z

    invoke-direct {p0, p2, p3, p4}, Lcom/google/a/b/a/s;-><init>(Ljava/lang/String;ZZ)V

    iget-object v0, p0, Lcom/google/a/b/a/q;->b:Lcom/google/a/k;

    iget-object v1, p0, Lcom/google/a/b/a/q;->c:Lcom/google/a/c/a;

    invoke-virtual {v0, v1}, Lcom/google/a/k;->a(Lcom/google/a/c/a;)Lcom/google/a/ak;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/b/a/q;->a:Lcom/google/a/ak;

    return-void
.end method


# virtual methods
.method final a(Lcom/google/a/d/a;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/google/a/b/a/q;->a:Lcom/google/a/ak;

    invoke-virtual {v0, p1}, Lcom/google/a/ak;->a(Lcom/google/a/d/a;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-boolean v1, p0, Lcom/google/a/b/a/q;->e:Z

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/google/a/b/a/q;->d:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p2, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method final a(Lcom/google/a/d/d;Ljava/lang/Object;)V
    .locals 5

    iget-object v0, p0, Lcom/google/a/b/a/q;->d:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lcom/google/a/b/a/x;

    iget-object v2, p0, Lcom/google/a/b/a/q;->b:Lcom/google/a/k;

    iget-object v3, p0, Lcom/google/a/b/a/q;->a:Lcom/google/a/ak;

    iget-object v4, p0, Lcom/google/a/b/a/q;->c:Lcom/google/a/c/a;

    iget-object v4, v4, Lcom/google/a/c/a;->b:Ljava/lang/reflect/Type;

    invoke-direct {v1, v2, v3, v4}, Lcom/google/a/b/a/x;-><init>(Lcom/google/a/k;Lcom/google/a/ak;Ljava/lang/reflect/Type;)V

    invoke-virtual {v1, p1, v0}, Lcom/google/a/ak;->a(Lcom/google/a/d/d;Ljava/lang/Object;)V

    return-void
.end method
