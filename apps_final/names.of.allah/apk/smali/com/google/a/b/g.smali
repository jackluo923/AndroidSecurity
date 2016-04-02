.class final Lcom/google/a/b/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/a/b/ae;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/a/b/ae",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/a/s;

.field final synthetic b:Ljava/lang/reflect/Type;

.field final synthetic c:Lcom/google/a/b/f;


# direct methods
.method constructor <init>(Lcom/google/a/b/f;Lcom/google/a/s;Ljava/lang/reflect/Type;)V
    .locals 0

    iput-object p1, p0, Lcom/google/a/b/g;->c:Lcom/google/a/b/f;

    iput-object p2, p0, Lcom/google/a/b/g;->a:Lcom/google/a/s;

    iput-object p3, p0, Lcom/google/a/b/g;->b:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/a/b/g;->a:Lcom/google/a/s;

    iget-object v1, p0, Lcom/google/a/b/g;->b:Ljava/lang/reflect/Type;

    invoke-interface {v0}, Lcom/google/a/s;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
