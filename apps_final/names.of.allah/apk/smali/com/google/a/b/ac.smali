.class abstract Lcom/google/a/b/ac;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field b:Lcom/google/a/b/ad;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/b/ad",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field c:Lcom/google/a/b/ad;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/b/ad",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field d:I

.field final synthetic e:Lcom/google/a/b/w;


# direct methods
.method private constructor <init>(Lcom/google/a/b/w;)V
    .locals 1

    iput-object p1, p0, Lcom/google/a/b/ac;->e:Lcom/google/a/b/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lcom/google/a/b/ac;->e:Lcom/google/a/b/w;

    iget-object v0, v0, Lcom/google/a/b/w;->e:Lcom/google/a/b/ad;

    iget-object v0, v0, Lcom/google/a/b/ad;->d:Lcom/google/a/b/ad;

    iput-object v0, p0, Lcom/google/a/b/ac;->b:Lcom/google/a/b/ad;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/a/b/ac;->c:Lcom/google/a/b/ad;

    iget-object v0, p0, Lcom/google/a/b/ac;->e:Lcom/google/a/b/w;

    iget v0, v0, Lcom/google/a/b/w;->d:I

    iput v0, p0, Lcom/google/a/b/ac;->d:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/a/b/w;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/a/b/ac;-><init>(Lcom/google/a/b/w;)V

    return-void
.end method


# virtual methods
.method final a()Lcom/google/a/b/ad;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/b/ad",
            "<TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/a/b/ac;->b:Lcom/google/a/b/ad;

    iget-object v1, p0, Lcom/google/a/b/ac;->e:Lcom/google/a/b/w;

    iget-object v1, v1, Lcom/google/a/b/w;->e:Lcom/google/a/b/ad;

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    iget-object v1, p0, Lcom/google/a/b/ac;->e:Lcom/google/a/b/w;

    iget v1, v1, Lcom/google/a/b/w;->d:I

    iget v2, p0, Lcom/google/a/b/ac;->d:I

    if-eq v1, v2, :cond_1

    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    :cond_1
    iget-object v1, v0, Lcom/google/a/b/ad;->d:Lcom/google/a/b/ad;

    iput-object v1, p0, Lcom/google/a/b/ac;->b:Lcom/google/a/b/ad;

    iput-object v0, p0, Lcom/google/a/b/ac;->c:Lcom/google/a/b/ad;

    return-object v0
.end method

.method public final hasNext()Z
    .locals 2

    iget-object v0, p0, Lcom/google/a/b/ac;->b:Lcom/google/a/b/ad;

    iget-object v1, p0, Lcom/google/a/b/ac;->e:Lcom/google/a/b/w;

    iget-object v1, v1, Lcom/google/a/b/w;->e:Lcom/google/a/b/ad;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final remove()V
    .locals 3

    iget-object v0, p0, Lcom/google/a/b/ac;->c:Lcom/google/a/b/ad;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/a/b/ac;->e:Lcom/google/a/b/w;

    iget-object v1, p0, Lcom/google/a/b/ac;->c:Lcom/google/a/b/ad;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/a/b/w;->a(Lcom/google/a/b/ad;Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/a/b/ac;->c:Lcom/google/a/b/ad;

    iget-object v0, p0, Lcom/google/a/b/ac;->e:Lcom/google/a/b/w;

    iget v0, v0, Lcom/google/a/b/w;->d:I

    iput v0, p0, Lcom/google/a/b/ac;->d:I

    return-void
.end method
