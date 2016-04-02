.class final Lcom/appyet/manager/bv;
.super Lcom/appyet/f/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/appyet/f/a",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/appyet/manager/bq;

.field private b:Ljava/lang/Long;

.field private c:Z

.field private d:Z

.field private f:Z


# direct methods
.method public constructor <init>(Lcom/appyet/manager/bq;Ljava/lang/Long;Z)V
    .locals 2

    const/4 v1, 0x1

    iput-object p1, p0, Lcom/appyet/manager/bv;->a:Lcom/appyet/manager/bq;

    invoke-direct {p0}, Lcom/appyet/f/a;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appyet/manager/bv;->b:Ljava/lang/Long;

    iput-boolean v1, p0, Lcom/appyet/manager/bv;->c:Z

    iput-boolean v1, p0, Lcom/appyet/manager/bv;->d:Z

    iput-boolean v1, p0, Lcom/appyet/manager/bv;->f:Z

    iput-object p2, p0, Lcom/appyet/manager/bv;->b:Ljava/lang/Long;

    iput-boolean p3, p0, Lcom/appyet/manager/bv;->f:Z

    return-void
.end method

.method private varargs f()Ljava/lang/Void;
    .locals 4

    const/4 v3, 0x0

    :try_start_0
    iget-boolean v0, p0, Lcom/appyet/manager/bv;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/manager/bv;->a:Lcom/appyet/manager/bq;

    invoke-virtual {v0}, Lcom/appyet/manager/bq;->c()V

    :cond_0
    iget-boolean v0, p0, Lcom/appyet/manager/bv;->c:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appyet/manager/bv;->a:Lcom/appyet/manager/bq;

    invoke-static {v0}, Lcom/appyet/manager/bq;->g(Lcom/appyet/manager/bq;)Lcom/appyet/context/ApplicationContext;

    move-result-object v0

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->h:Lcom/appyet/manager/d;

    invoke-virtual {v0}, Lcom/appyet/manager/d;->a()Z

    :cond_1
    iget-object v0, p0, Lcom/appyet/manager/bv;->a:Lcom/appyet/manager/bq;

    iget-object v1, p0, Lcom/appyet/manager/bv;->b:Ljava/lang/Long;

    iget-boolean v2, p0, Lcom/appyet/manager/bv;->f:Z

    invoke-virtual {v0, v1, v2}, Lcom/appyet/manager/bq;->a(Ljava/lang/Long;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v3

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method


# virtual methods
.method protected final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method protected final synthetic b()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/appyet/manager/bv;->f()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
