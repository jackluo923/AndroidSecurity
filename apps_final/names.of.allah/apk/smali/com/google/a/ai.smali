.class final Lcom/google/a/ai;
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
.field private final a:Lcom/google/a/ad;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/ad",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/a/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/v",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/a/k;

.field private final d:Lcom/google/a/c/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/c/a",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final e:Lcom/google/a/al;

.field private f:Lcom/google/a/ak;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/ak",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/a/ad;Lcom/google/a/v;Lcom/google/a/k;Lcom/google/a/c/a;Lcom/google/a/al;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/ad",
            "<TT;>;",
            "Lcom/google/a/v",
            "<TT;>;",
            "Lcom/google/a/k;",
            "Lcom/google/a/c/a",
            "<TT;>;",
            "Lcom/google/a/al;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/a/ak;-><init>()V

    iput-object p1, p0, Lcom/google/a/ai;->a:Lcom/google/a/ad;

    iput-object p2, p0, Lcom/google/a/ai;->b:Lcom/google/a/v;

    iput-object p3, p0, Lcom/google/a/ai;->c:Lcom/google/a/k;

    iput-object p4, p0, Lcom/google/a/ai;->d:Lcom/google/a/c/a;

    iput-object p5, p0, Lcom/google/a/ai;->e:Lcom/google/a/al;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/a/ad;Lcom/google/a/v;Lcom/google/a/k;Lcom/google/a/c/a;Lcom/google/a/al;B)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/google/a/ai;-><init>(Lcom/google/a/ad;Lcom/google/a/v;Lcom/google/a/k;Lcom/google/a/c/a;Lcom/google/a/al;)V

    return-void
.end method

.method private a()Lcom/google/a/ak;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/ak",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/a/ai;->f:Lcom/google/a/ak;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/a/ai;->c:Lcom/google/a/k;

    iget-object v1, p0, Lcom/google/a/ai;->e:Lcom/google/a/al;

    iget-object v2, p0, Lcom/google/a/ai;->d:Lcom/google/a/c/a;

    invoke-virtual {v0, v1, v2}, Lcom/google/a/k;->a(Lcom/google/a/al;Lcom/google/a/c/a;)Lcom/google/a/ak;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/ai;->f:Lcom/google/a/ak;

    goto :goto_0
.end method

.method public static a(Lcom/google/a/c/a;Ljava/lang/Object;)Lcom/google/a/al;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/c/a",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/a/al;"
        }
    .end annotation

    new-instance v0, Lcom/google/a/aj;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lcom/google/a/aj;-><init>(Ljava/lang/Object;Lcom/google/a/c/a;B)V

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/a/d/a;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/d/a;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/a/ai;->b:Lcom/google/a/v;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/a/ai;->a()Lcom/google/a/ak;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/a/ak;->a(Lcom/google/a/d/a;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/google/a/b/ag;->a(Lcom/google/a/d/a;)Lcom/google/a/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/w;->j()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/a/ai;->b:Lcom/google/a/v;

    iget-object v2, p0, Lcom/google/a/ai;->d:Lcom/google/a/c/a;

    iget-object v2, v2, Lcom/google/a/c/a;->b:Ljava/lang/reflect/Type;

    iget-object v3, p0, Lcom/google/a/ai;->c:Lcom/google/a/k;

    iget-object v3, v3, Lcom/google/a/k;->a:Lcom/google/a/u;

    invoke-interface {v1, v0, v2}, Lcom/google/a/v;->a(Lcom/google/a/w;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Lcom/google/a/d/d;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/d/d;",
            "TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/a/ai;->a:Lcom/google/a/ad;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/a/ai;->a()Lcom/google/a/ak;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/a/ak;->a(Lcom/google/a/d/d;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    if-nez p2, :cond_1

    invoke-virtual {p1}, Lcom/google/a/d/d;->f()Lcom/google/a/d/d;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/a/ai;->a:Lcom/google/a/ad;

    iget-object v1, p0, Lcom/google/a/ai;->d:Lcom/google/a/c/a;

    iget-object v1, v1, Lcom/google/a/c/a;->b:Ljava/lang/reflect/Type;

    iget-object v1, p0, Lcom/google/a/ai;->c:Lcom/google/a/k;

    iget-object v1, v1, Lcom/google/a/k;->b:Lcom/google/a/ac;

    invoke-interface {v0, p2}, Lcom/google/a/ad;->a(Ljava/lang/Object;)Lcom/google/a/w;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/a/b/ag;->a(Lcom/google/a/w;Lcom/google/a/d/d;)V

    goto :goto_0
.end method
