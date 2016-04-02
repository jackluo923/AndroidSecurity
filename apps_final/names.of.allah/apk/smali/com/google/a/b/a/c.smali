.class public final Lcom/google/a/b/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/a/al;


# instance fields
.field private final a:Lcom/google/a/b/f;


# direct methods
.method public constructor <init>(Lcom/google/a/b/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/a/b/a/c;->a:Lcom/google/a/b/f;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/a/k;Lcom/google/a/c/a;)Lcom/google/a/ak;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/a/k;",
            "Lcom/google/a/c/a",
            "<TT;>;)",
            "Lcom/google/a/ak",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p2, Lcom/google/a/c/a;->b:Ljava/lang/reflect/Type;

    iget-object v1, p2, Lcom/google/a/c/a;->a:Ljava/lang/Class;

    const-class v2, Ljava/util/Collection;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0, v1}, Lcom/google/a/b/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v1}, Lcom/google/a/c/a;->a(Ljava/lang/reflect/Type;)Lcom/google/a/c/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/a/k;->a(Lcom/google/a/c/a;)Lcom/google/a/ak;

    move-result-object v2

    iget-object v0, p0, Lcom/google/a/b/a/c;->a:Lcom/google/a/b/f;

    invoke-virtual {v0, p2}, Lcom/google/a/b/f;->a(Lcom/google/a/c/a;)Lcom/google/a/b/ae;

    move-result-object v3

    new-instance v0, Lcom/google/a/b/a/d;

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/google/a/b/a/d;-><init>(Lcom/google/a/k;Ljava/lang/reflect/Type;Lcom/google/a/ak;Lcom/google/a/b/ae;)V

    goto :goto_0
.end method
