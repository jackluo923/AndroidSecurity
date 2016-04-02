.class final Lcom/google/a/b/z;
.super Lcom/google/a/b/ac;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/a/b/w",
        "<TK;TV;>.com/google/a/b/ac<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/a/b/y;


# direct methods
.method constructor <init>(Lcom/google/a/b/y;)V
    .locals 2

    iput-object p1, p0, Lcom/google/a/b/z;->a:Lcom/google/a/b/y;

    iget-object v0, p1, Lcom/google/a/b/y;->a:Lcom/google/a/b/w;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/a/b/ac;-><init>(Lcom/google/a/b/w;B)V

    return-void
.end method


# virtual methods
.method public final synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/a/b/z;->a()Lcom/google/a/b/ad;

    move-result-object v0

    return-object v0
.end method
