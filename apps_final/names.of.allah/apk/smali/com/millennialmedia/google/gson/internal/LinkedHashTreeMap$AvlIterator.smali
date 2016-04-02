.class Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$AvlIterator;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private stackTop:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public next()Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$AvlIterator;->stackTop:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v2, v1, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    iput-object v0, v1, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    iget-object v0, v1, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->right:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    :goto_1
    if-eqz v0, :cond_1

    iput-object v2, v0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    iget-object v2, v0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->left:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    move-object v3, v2

    move-object v2, v0

    move-object v0, v3

    goto :goto_1

    :cond_1
    iput-object v2, p0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$AvlIterator;->stackTop:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    move-object v0, v1

    goto :goto_0
.end method

.method reset(Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    move-object v1, p1

    :goto_0
    if-eqz v1, :cond_0

    iput-object v0, v1, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    iget-object p1, v1, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;->left:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    move-object v0, v1

    move-object v1, p1

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$AvlIterator;->stackTop:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap$Node;

    return-void
.end method
