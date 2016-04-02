.class final Lcom/a/a/b/a/a/g;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field b:Lcom/a/a/b/a/a/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/b/a/a/g",
            "<TE;>;"
        }
    .end annotation
.end field

.field c:Lcom/a/a/b/a/a/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/b/a/a/g",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/a/a/b/a/a/g;->a:Ljava/lang/Object;

    return-void
.end method
