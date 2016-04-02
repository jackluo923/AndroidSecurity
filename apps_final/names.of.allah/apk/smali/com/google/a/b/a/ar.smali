.class final Lcom/google/a/b/a/ar;
.super Lcom/google/a/ak;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/a/ak",
        "<",
        "Lcom/google/a/w;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/a/ak;-><init>()V

    return-void
.end method

.method private a(Lcom/google/a/d/d;Lcom/google/a/w;)V
    .locals 3

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/google/a/w;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/google/a/d/d;->f()Lcom/google/a/d/d;

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Lcom/google/a/w;->i()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Lcom/google/a/w;->m()Lcom/google/a/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/ab;->o()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/google/a/ab;->a()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/a/d/d;->a(Ljava/lang/Number;)Lcom/google/a/d/d;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/google/a/ab;->n()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/google/a/ab;->f()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/a/d/d;->a(Z)Lcom/google/a/d/d;

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/google/a/ab;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/a/d/d;->b(Ljava/lang/String;)Lcom/google/a/d/d;

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Lcom/google/a/w;->g()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/google/a/d/d;->b()Lcom/google/a/d/d;

    invoke-virtual {p2}, Lcom/google/a/w;->l()Lcom/google/a/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/t;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/w;

    invoke-direct {p0, p1, v0}, Lcom/google/a/b/a/ar;->a(Lcom/google/a/d/d;Lcom/google/a/w;)V

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Lcom/google/a/d/d;->c()Lcom/google/a/d/d;

    goto :goto_0

    :cond_6
    invoke-virtual {p2}, Lcom/google/a/w;->h()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/google/a/d/d;->d()Lcom/google/a/d/d;

    invoke-virtual {p2}, Lcom/google/a/w;->k()Lcom/google/a/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/z;->n()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/google/a/d/d;->a(Ljava/lang/String;)Lcom/google/a/d/d;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/w;

    invoke-direct {p0, p1, v0}, Lcom/google/a/b/a/ar;->a(Lcom/google/a/d/d;Lcom/google/a/w;)V

    goto :goto_2

    :cond_7
    invoke-virtual {p1}, Lcom/google/a/d/d;->e()Lcom/google/a/d/d;

    goto/16 :goto_0

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Couldn\'t write "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private b(Lcom/google/a/d/a;)Lcom/google/a/w;
    .locals 3

    sget-object v0, Lcom/google/a/b/a/ay;->a:[I

    invoke-virtual {p1}, Lcom/google/a/d/a;->f()Lcom/google/a/d/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/a/d/c;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :pswitch_0
    new-instance v0, Lcom/google/a/ab;

    invoke-virtual {p1}, Lcom/google/a/d/a;->h()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/a/ab;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :pswitch_1
    invoke-virtual {p1}, Lcom/google/a/d/a;->h()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/google/a/ab;

    new-instance v2, Lcom/google/a/b/v;

    invoke-direct {v2, v1}, Lcom/google/a/b/v;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Lcom/google/a/ab;-><init>(Ljava/lang/Number;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/google/a/ab;

    invoke-virtual {p1}, Lcom/google/a/d/a;->i()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/a/ab;-><init>(Ljava/lang/Boolean;)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p1}, Lcom/google/a/d/a;->j()V

    sget-object v0, Lcom/google/a/y;->a:Lcom/google/a/y;

    goto :goto_0

    :pswitch_4
    new-instance v0, Lcom/google/a/t;

    invoke-direct {v0}, Lcom/google/a/t;-><init>()V

    invoke-virtual {p1}, Lcom/google/a/d/a;->a()V

    :goto_1
    invoke-virtual {p1}, Lcom/google/a/d/a;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/google/a/b/a/ar;->b(Lcom/google/a/d/a;)Lcom/google/a/w;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/a/t;->a(Lcom/google/a/w;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/google/a/d/a;->b()V

    goto :goto_0

    :pswitch_5
    new-instance v0, Lcom/google/a/z;

    invoke-direct {v0}, Lcom/google/a/z;-><init>()V

    invoke-virtual {p1}, Lcom/google/a/d/a;->c()V

    :goto_2
    invoke-virtual {p1}, Lcom/google/a/d/a;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/google/a/d/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/google/a/b/a/ar;->b(Lcom/google/a/d/a;)Lcom/google/a/w;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/a/z;->a(Ljava/lang/String;Lcom/google/a/w;)V

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Lcom/google/a/d/a;->d()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public final synthetic a(Lcom/google/a/d/a;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/a/b/a/ar;->b(Lcom/google/a/d/a;)Lcom/google/a/w;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic a(Lcom/google/a/d/d;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/google/a/w;

    invoke-direct {p0, p1, p2}, Lcom/google/a/b/a/ar;->a(Lcom/google/a/d/d;Lcom/google/a/w;)V

    return-void
.end method
