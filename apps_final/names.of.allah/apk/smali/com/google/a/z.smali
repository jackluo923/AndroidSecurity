.class public final Lcom/google/a/z;
.super Lcom/google/a/w;


# instance fields
.field private final a:Lcom/google/a/b/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/b/w",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/a/w;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/a/w;-><init>()V

    new-instance v0, Lcom/google/a/b/w;

    invoke-direct {v0}, Lcom/google/a/b/w;-><init>()V

    iput-object v0, p0, Lcom/google/a/z;->a:Lcom/google/a/b/w;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/google/a/w;)V
    .locals 1

    if-nez p2, :cond_0

    sget-object p2, Lcom/google/a/y;->a:Lcom/google/a/y;

    :cond_0
    iget-object v0, p0, Lcom/google/a/z;->a:Lcom/google/a/b/w;

    invoke-virtual {v0, p1, p2}, Lcom/google/a/b/w;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p1, p0, :cond_0

    instance-of v0, p1, Lcom/google/a/z;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/google/a/z;

    iget-object v0, p1, Lcom/google/a/z;->a:Lcom/google/a/b/w;

    iget-object v1, p0, Lcom/google/a/z;->a:Lcom/google/a/b/w;

    invoke-virtual {v0, v1}, Lcom/google/a/b/w;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/a/z;->a:Lcom/google/a/b/w;

    invoke-virtual {v0}, Lcom/google/a/b/w;->hashCode()I

    move-result v0

    return v0
.end method

.method public final n()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/a/w;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/a/z;->a:Lcom/google/a/b/w;

    invoke-virtual {v0}, Lcom/google/a/b/w;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
