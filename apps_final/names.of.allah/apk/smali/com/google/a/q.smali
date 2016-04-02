.class final Lcom/google/a/q;
.super Lcom/google/a/ak;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/a/ak",
        "<TT;>;"
    }
.end annotation


# instance fields
.field a:Lcom/google/a/ak;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/ak",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/a/ak;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/a/d/a;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/d/a;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/a/q;->a:Lcom/google/a/ak;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/a/q;->a:Lcom/google/a/ak;

    invoke-virtual {v0, p1}, Lcom/google/a/ak;->a(Lcom/google/a/d/a;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/a/d/d;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/d/d;",
            "TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/a/q;->a:Lcom/google/a/ak;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/a/q;->a:Lcom/google/a/ak;

    invoke-virtual {v0, p1, p2}, Lcom/google/a/ak;->a(Lcom/google/a/d/d;Ljava/lang/Object;)V

    return-void
.end method
