.class public abstract Lcom/google/b/a/a/d;
.super Lcom/google/b/a/a/h;


# instance fields
.field protected unknownFieldData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/b/a/a/j;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/b/a/a/h;-><init>()V

    return-void
.end method


# virtual methods
.method public getExtension(Lcom/google/b/a/a/e;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/b/a/a/e",
            "<TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/b/a/a/d;->unknownFieldData:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/b/a/a/k;->a(Lcom/google/b/a/a/e;Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 1

    iget-object v0, p0, Lcom/google/b/a/a/d;->unknownFieldData:Ljava/util/List;

    invoke-static {v0}, Lcom/google/b/a/a/k;->a(Ljava/util/List;)I

    move-result v0

    iput v0, p0, Lcom/google/b/a/a/d;->cachedSize:I

    return v0
.end method

.method public setExtension(Lcom/google/b/a/a/e;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/b/a/a/e",
            "<TT;>;TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/b/a/a/d;->unknownFieldData:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/b/a/a/d;->unknownFieldData:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/google/b/a/a/d;->unknownFieldData:Ljava/util/List;

    invoke-static {p1, p2, v0}, Lcom/google/b/a/a/k;->a(Lcom/google/b/a/a/e;Ljava/lang/Object;Ljava/util/List;)V

    return-void
.end method
