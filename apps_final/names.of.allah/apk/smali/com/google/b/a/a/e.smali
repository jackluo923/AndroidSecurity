.class public final Lcom/google/b/a/a/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:I

.field public b:Z

.field public c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field public d:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(ILcom/google/b/a/a/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/b/a/a/f",
            "<TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/b/a/a/e;->a:I

    # invokes: Lcom/google/b/a/a/f;->isList()Z
    invoke-static {p2}, Lcom/google/b/a/a/f;->access$000(Lcom/google/b/a/a/f;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/b/a/a/e;->b:Z

    # invokes: Lcom/google/b/a/a/f;->getTargetClass()Ljava/lang/Class;
    invoke-static {p2}, Lcom/google/b/a/a/f;->access$100(Lcom/google/b/a/a/f;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/a/e;->c:Ljava/lang/Class;

    iget-boolean v0, p0, Lcom/google/b/a/a/e;->b:Z

    if-eqz v0, :cond_0

    # invokes: Lcom/google/b/a/a/f;->getListType()Ljava/lang/Class;
    invoke-static {p2}, Lcom/google/b/a/a/f;->access$200(Lcom/google/b/a/a/f;)Ljava/lang/Class;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/b/a/a/e;->d:Ljava/lang/Class;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(ILcom/google/b/a/a/f;)Lcom/google/b/a/a/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lcom/google/b/a/a/f",
            "<TT;>;)",
            "Lcom/google/b/a/a/e",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/b/a/a/e;

    invoke-direct {v0, p0, p1}, Lcom/google/b/a/a/e;-><init>(ILcom/google/b/a/a/f;)V

    return-object v0
.end method
