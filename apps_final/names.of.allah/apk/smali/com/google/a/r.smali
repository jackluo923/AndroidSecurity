.class public final Lcom/google/a/r;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field private b:Lcom/google/a/b/s;

.field private c:Lcom/google/a/af;

.field private d:Lcom/google/a/j;

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/a/s",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/a/al;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/a/al;",
            ">;"
        }
    .end annotation
.end field

.field private h:Z

.field private i:I

.field private j:I

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/a/b/s;->a:Lcom/google/a/b/s;

    iput-object v0, p0, Lcom/google/a/r;->b:Lcom/google/a/b/s;

    sget-object v0, Lcom/google/a/af;->a:Lcom/google/a/af;

    iput-object v0, p0, Lcom/google/a/r;->c:Lcom/google/a/af;

    sget-object v0, Lcom/google/a/d;->a:Lcom/google/a/d;

    iput-object v0, p0, Lcom/google/a/r;->d:Lcom/google/a/j;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/a/r;->e:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/a/r;->f:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/a/r;->g:Ljava/util/List;

    iput v1, p0, Lcom/google/a/r;->i:I

    iput v1, p0, Lcom/google/a/r;->j:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/a/r;->m:Z

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/a/k;
    .locals 12

    const/4 v5, 0x2

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/google/a/r;->f:Ljava/util/List;

    invoke-interface {v11, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {v11}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    iget-object v0, p0, Lcom/google/a/r;->g:Ljava/util/List;

    invoke-interface {v11, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/google/a/r;->a:Ljava/lang/String;

    iget v2, p0, Lcom/google/a/r;->i:I

    iget v3, p0, Lcom/google/a/r;->j:I

    if-eqz v1, :cond_1

    const-string v0, ""

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/a/a;

    invoke-direct {v0, v1}, Lcom/google/a/a;-><init>(Ljava/lang/String;)V

    :goto_0
    const-class v1, Ljava/util/Date;

    invoke-static {v1}, Lcom/google/a/c/a;->a(Ljava/lang/Class;)Lcom/google/a/c/a;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/a/ai;->a(Lcom/google/a/c/a;Ljava/lang/Object;)Lcom/google/a/al;

    move-result-object v1

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v1, Ljava/sql/Timestamp;

    invoke-static {v1}, Lcom/google/a/c/a;->a(Ljava/lang/Class;)Lcom/google/a/c/a;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/a/ai;->a(Lcom/google/a/c/a;Ljava/lang/Object;)Lcom/google/a/al;

    move-result-object v1

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v1, Ljava/sql/Date;

    invoke-static {v1}, Lcom/google/a/c/a;->a(Ljava/lang/Class;)Lcom/google/a/c/a;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/a/ai;->a(Lcom/google/a/c/a;Ljava/lang/Object;)Lcom/google/a/al;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v0, Lcom/google/a/k;

    iget-object v1, p0, Lcom/google/a/r;->b:Lcom/google/a/b/s;

    iget-object v2, p0, Lcom/google/a/r;->d:Lcom/google/a/j;

    iget-object v3, p0, Lcom/google/a/r;->e:Ljava/util/Map;

    iget-boolean v4, p0, Lcom/google/a/r;->h:Z

    iget-boolean v5, p0, Lcom/google/a/r;->k:Z

    iget-boolean v6, p0, Lcom/google/a/r;->o:Z

    iget-boolean v7, p0, Lcom/google/a/r;->m:Z

    iget-boolean v8, p0, Lcom/google/a/r;->n:Z

    iget-boolean v9, p0, Lcom/google/a/r;->l:Z

    iget-object v10, p0, Lcom/google/a/r;->c:Lcom/google/a/af;

    invoke-direct/range {v0 .. v11}, Lcom/google/a/k;-><init>(Lcom/google/a/b/s;Lcom/google/a/j;Ljava/util/Map;ZZZZZZLcom/google/a/af;Ljava/util/List;)V

    return-object v0

    :cond_1
    if-eq v2, v5, :cond_0

    if-eq v3, v5, :cond_0

    new-instance v0, Lcom/google/a/a;

    invoke-direct {v0, v2, v3}, Lcom/google/a/a;-><init>(II)V

    goto :goto_0
.end method
