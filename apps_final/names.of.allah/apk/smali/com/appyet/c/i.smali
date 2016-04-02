.class final Lcom/appyet/c/i;
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
.field final synthetic a:Lcom/appyet/c/a;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/appyet/data/FeedItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/appyet/c/a;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/c/i;->a:Lcom/appyet/c/a;

    invoke-direct {p0}, Lcom/appyet/f/a;-><init>()V

    return-void
.end method

.method private varargs f()Ljava/lang/Void;
    .locals 8

    const-wide/16 v6, 0x64

    :try_start_0
    iget-object v0, p0, Lcom/appyet/c/i;->a:Lcom/appyet/c/a;

    invoke-static {v0}, Lcom/appyet/c/a;->a(Lcom/appyet/c/a;)Lcom/appyet/context/ApplicationContext;

    move-result-object v0

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iget v1, v0, Lcom/appyet/context/f;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/appyet/context/f;->i:I

    iget-object v0, p0, Lcom/appyet/c/i;->a:Lcom/appyet/c/a;

    invoke-static {v0}, Lcom/appyet/c/a;->b(Lcom/appyet/c/a;)Lcom/appyet/c/g;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/c/i;->a:Lcom/appyet/c/a;

    invoke-static {v0}, Lcom/appyet/c/a;->a(Lcom/appyet/c/a;)Lcom/appyet/context/ApplicationContext;

    move-result-object v0

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iget-boolean v0, v0, Lcom/appyet/context/f;->j:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/appyet/c/e;->a:[I

    iget-object v1, p0, Lcom/appyet/c/i;->a:Lcom/appyet/c/a;

    invoke-static {v1}, Lcom/appyet/c/a;->a(Lcom/appyet/c/a;)Lcom/appyet/context/ApplicationContext;

    move-result-object v1

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iget-object v1, v1, Lcom/appyet/context/f;->g:Lcom/appyet/context/d;

    invoke-virtual {v1}, Lcom/appyet/context/d;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/appyet/c/i;->a:Lcom/appyet/c/a;

    invoke-static {v0}, Lcom/appyet/c/a;->a(Lcom/appyet/c/a;)Lcom/appyet/context/ApplicationContext;

    move-result-object v0

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->h:Lcom/appyet/manager/d;

    iget-object v1, p0, Lcom/appyet/c/i;->a:Lcom/appyet/c/a;

    invoke-static {v1}, Lcom/appyet/c/a;->e(Lcom/appyet/c/a;)Ljava/lang/Long;

    move-result-object v1

    const-wide/16 v2, 0x64

    iget-object v4, p0, Lcom/appyet/c/i;->a:Lcom/appyet/c/a;

    invoke-static {v4}, Lcom/appyet/c/a;->a(Lcom/appyet/c/a;)Lcom/appyet/context/ApplicationContext;

    move-result-object v4

    iget-object v4, v4, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iget v4, v4, Lcom/appyet/context/f;->i:I

    int-to-long v4, v4

    mul-long/2addr v4, v6

    invoke-virtual/range {v0 .. v5}, Lcom/appyet/manager/d;->a(Ljava/lang/Long;JJ)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/c/i;->b:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :pswitch_1
    :try_start_1
    iget-object v0, p0, Lcom/appyet/c/i;->a:Lcom/appyet/c/a;

    invoke-static {v0}, Lcom/appyet/c/a;->a(Lcom/appyet/c/a;)Lcom/appyet/context/ApplicationContext;

    move-result-object v0

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->h:Lcom/appyet/manager/d;

    const-wide/16 v1, 0x64

    iget-object v3, p0, Lcom/appyet/c/i;->a:Lcom/appyet/c/a;

    invoke-static {v3}, Lcom/appyet/c/a;->a(Lcom/appyet/c/a;)Lcom/appyet/context/ApplicationContext;

    move-result-object v3

    iget-object v3, v3, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iget v3, v3, Lcom/appyet/context/f;->i:I

    int-to-long v3, v3

    mul-long/2addr v3, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/appyet/manager/d;->a(JJ)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/c/i;->b:Ljava/util/List;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/appyet/c/i;->a:Lcom/appyet/c/a;

    invoke-static {v0}, Lcom/appyet/c/a;->a(Lcom/appyet/c/a;)Lcom/appyet/context/ApplicationContext;

    move-result-object v0

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->h:Lcom/appyet/manager/d;

    iget-object v1, p0, Lcom/appyet/c/i;->a:Lcom/appyet/c/a;

    invoke-static {v1}, Lcom/appyet/c/a;->a(Lcom/appyet/c/a;)Lcom/appyet/context/ApplicationContext;

    move-result-object v1

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iget-object v1, v1, Lcom/appyet/context/f;->h:Ljava/lang/String;

    const-wide/16 v2, 0x64

    iget-object v4, p0, Lcom/appyet/c/i;->a:Lcom/appyet/c/a;

    invoke-static {v4}, Lcom/appyet/c/a;->a(Lcom/appyet/c/a;)Lcom/appyet/context/ApplicationContext;

    move-result-object v4

    iget-object v4, v4, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iget v4, v4, Lcom/appyet/context/f;->i:I

    int-to-long v4, v4

    mul-long/2addr v4, v6

    invoke-virtual/range {v0 .. v5}, Lcom/appyet/manager/d;->a(Ljava/lang/String;JJ)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/c/i;->b:Ljava/util/List;

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/appyet/c/i;->a:Lcom/appyet/c/a;

    invoke-static {v0}, Lcom/appyet/c/a;->a(Lcom/appyet/c/a;)Lcom/appyet/context/ApplicationContext;

    move-result-object v0

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    const-wide/16 v1, 0x64

    iget-object v3, p0, Lcom/appyet/c/i;->a:Lcom/appyet/c/a;

    invoke-static {v3}, Lcom/appyet/c/a;->a(Lcom/appyet/c/a;)Lcom/appyet/context/ApplicationContext;

    move-result-object v3

    iget-object v3, v3, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iget v3, v3, Lcom/appyet/context/f;->i:I

    int-to-long v3, v3

    mul-long/2addr v3, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/appyet/context/f;->a(JJ)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/c/i;->b:Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method protected final a()V
    .locals 0

    invoke-super {p0}, Lcom/appyet/f/a;->a()V

    return-void
.end method

.method protected final synthetic a(Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Ljava/lang/Void;

    invoke-super {p0, p1}, Lcom/appyet/f/a;->a(Ljava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, Lcom/appyet/c/i;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/c/i;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/appyet/c/i;->a:Lcom/appyet/c/a;

    invoke-static {v0}, Lcom/appyet/c/a;->a(Lcom/appyet/c/a;)Lcom/appyet/context/ApplicationContext;

    move-result-object v0

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/appyet/context/f;->j:Z

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/appyet/c/i;->a:Lcom/appyet/c/a;

    invoke-static {v0}, Lcom/appyet/c/a;->f(Lcom/appyet/c/a;)V

    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/appyet/c/i;->a:Lcom/appyet/c/a;

    invoke-static {v0}, Lcom/appyet/c/a;->a(Lcom/appyet/c/a;)Lcom/appyet/context/ApplicationContext;

    move-result-object v0

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iget-object v0, v0, Lcom/appyet/context/f;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/appyet/c/i;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/appyet/c/i;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x64

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/appyet/c/i;->a:Lcom/appyet/c/a;

    invoke-static {v0}, Lcom/appyet/c/a;->a(Lcom/appyet/c/a;)Lcom/appyet/context/ApplicationContext;

    move-result-object v0

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/appyet/context/f;->j:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method protected final synthetic b()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/appyet/c/i;->f()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
