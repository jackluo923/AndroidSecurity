.class final Lcom/appyet/c/a/g;
.super Lcom/appyet/f/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/appyet/f/a",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/appyet/c/a/a;


# direct methods
.method private constructor <init>(Lcom/appyet/c/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/c/a/g;->a:Lcom/appyet/c/a/a;

    invoke-direct {p0}, Lcom/appyet/f/a;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/appyet/c/a/a;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/appyet/c/a/g;-><init>(Lcom/appyet/c/a/a;)V

    return-void
.end method

.method private varargs f()Ljava/lang/Boolean;
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/appyet/c/a/g;->a:Lcom/appyet/c/a/a;

    invoke-static {v0}, Lcom/appyet/c/a/a;->a(Lcom/appyet/c/a/a;)Lcom/appyet/a/a/d;

    move-result-object v0

    iget-object v0, v0, Lcom/appyet/a/a/d;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/c/a/g;->a:Lcom/appyet/c/a/a;

    invoke-static {v0}, Lcom/appyet/c/a/a;->a(Lcom/appyet/c/a/a;)Lcom/appyet/a/a/d;

    move-result-object v0

    iget-object v0, v0, Lcom/appyet/a/a/d;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/appyet/c/a/g;->a:Lcom/appyet/c/a/a;

    iget-object v0, v0, Lcom/appyet/c/a/a;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->p:Lcom/appyet/manager/an;

    iget-object v1, p0, Lcom/appyet/c/a/g;->a:Lcom/appyet/c/a/a;

    iget-wide v1, v1, Lcom/appyet/c/a/a;->b:J

    invoke-virtual {v0, v1, v2}, Lcom/appyet/manager/an;->b(J)V

    iget-object v0, p0, Lcom/appyet/c/a/g;->a:Lcom/appyet/c/a/a;

    invoke-static {v0}, Lcom/appyet/c/a/a;->a(Lcom/appyet/c/a/a;)Lcom/appyet/a/a/d;

    move-result-object v0

    iget-object v0, v0, Lcom/appyet/a/a/d;->e:Lcom/appyet/a/a/f;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/appyet/c/a/g;->a:Lcom/appyet/c/a/a;

    iget-object v0, v0, Lcom/appyet/c/a/a;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->d:Lcom/appyet/manager/bp;

    iget-object v1, p0, Lcom/appyet/c/a/g;->a:Lcom/appyet/c/a/a;

    invoke-static {v1}, Lcom/appyet/c/a/a;->a(Lcom/appyet/c/a/a;)Lcom/appyet/a/a/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appyet/manager/bp;->a(Lcom/appyet/a/a/d;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/c/a/g;->a:Lcom/appyet/c/a/a;

    iget-object v1, v1, Lcom/appyet/c/a/a;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->d:Lcom/appyet/manager/bp;

    iget-object v2, p0, Lcom/appyet/c/a/g;->a:Lcom/appyet/c/a/a;

    invoke-static {v2}, Lcom/appyet/c/a/a;->a(Lcom/appyet/c/a/a;)Lcom/appyet/a/a/d;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/appyet/manager/bp;->b(Lcom/appyet/a/a/d;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/appyet/c/a/g;->a:Lcom/appyet/c/a/a;

    iget-object v2, v2, Lcom/appyet/c/a/a;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v2, v2, Lcom/appyet/context/ApplicationContext;->p:Lcom/appyet/manager/an;

    iget-object v3, p0, Lcom/appyet/c/a/g;->a:Lcom/appyet/c/a/a;

    iget-wide v3, v3, Lcom/appyet/c/a/a;->b:J

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/appyet/manager/an;->a(JLjava/lang/String;Ljava/lang/String;)Lcom/appyet/manager/ao;

    :cond_1
    iget-object v0, p0, Lcom/appyet/c/a/g;->a:Lcom/appyet/c/a/a;

    iget-object v0, v0, Lcom/appyet/c/a/a;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->p:Lcom/appyet/manager/an;

    iget-object v1, p0, Lcom/appyet/c/a/g;->a:Lcom/appyet/c/a/a;

    iget-wide v1, v1, Lcom/appyet/c/a/a;->b:J

    invoke-virtual {v0, v1, v2}, Lcom/appyet/manager/an;->d(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected final a()V
    .locals 2

    iget-object v0, p0, Lcom/appyet/c/a/g;->a:Lcom/appyet/c/a/a;

    invoke-static {v0}, Lcom/appyet/c/a/a;->g(Lcom/appyet/c/a/a;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/appyet/c/a/g;->a:Lcom/appyet/c/a/a;

    invoke-static {v0}, Lcom/appyet/c/a/a;->i(Lcom/appyet/c/a/a;)V

    return-void
.end method

.method protected final synthetic a(Ljava/lang/Object;)V
    .locals 8

    const/16 v7, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    check-cast p1, Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/appyet/c/a/g;->a:Lcom/appyet/c/a/a;

    invoke-static {v0}, Lcom/appyet/c/a/a;->b(Lcom/appyet/c/a/a;)V

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/appyet/c/a/g;->a:Lcom/appyet/c/a/a;

    iget-object v0, v0, Lcom/appyet/c/a/a;->c:Ljava/util/List;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/appyet/c/a/g;->a:Lcom/appyet/c/a/a;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/appyet/c/a/a;->c:Ljava/util/List;

    :goto_0
    iget-object v0, p0, Lcom/appyet/c/a/g;->a:Lcom/appyet/c/a/a;

    invoke-static {v0}, Lcom/appyet/c/a/a;->c(Lcom/appyet/c/a/a;)Lcom/appyet/a/a/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/c/a/g;->a:Lcom/appyet/c/a/a;

    invoke-static {v0}, Lcom/appyet/c/a/a;->c(Lcom/appyet/c/a/a;)Lcom/appyet/a/a/a;

    move-result-object v0

    iget-boolean v0, v0, Lcom/appyet/a/a/a;->k:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/appyet/c/a/g;->a:Lcom/appyet/c/a/a;

    iget-object v0, v0, Lcom/appyet/c/a/a;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/appyet/c/a/g;->a:Lcom/appyet/c/a/a;

    invoke-static {v1}, Lcom/appyet/c/a/a;->c(Lcom/appyet/c/a/a;)Lcom/appyet/a/a/a;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/appyet/c/a/g;->a:Lcom/appyet/c/a/a;

    invoke-static {v0}, Lcom/appyet/c/a/a;->a(Lcom/appyet/c/a/a;)Lcom/appyet/a/a/d;

    move-result-object v0

    iget-object v0, v0, Lcom/appyet/a/a/d;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/a/a/a;

    iget-object v4, v0, Lcom/appyet/a/a/a;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/appyet/c/a/g;->a:Lcom/appyet/c/a/a;

    invoke-static {v5}, Lcom/appyet/c/a/a;->d(Lcom/appyet/c/a/a;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/appyet/c/a/g;->a:Lcom/appyet/c/a/a;

    iget-object v4, v4, Lcom/appyet/c/a/a;->c:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/appyet/c/a/g;->a:Lcom/appyet/c/a/a;

    iget-object v0, v0, Lcom/appyet/c/a/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/appyet/c/a/g;->a:Lcom/appyet/c/a/a;

    invoke-static {v0}, Lcom/appyet/c/a/a;->d(Lcom/appyet/c/a/a;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/appyet/c/a/g;->a:Lcom/appyet/c/a/a;

    invoke-static {v0}, Lcom/appyet/c/a/a;->a(Lcom/appyet/c/a/a;)Lcom/appyet/a/a/d;

    move-result-object v0

    iget-object v0, v0, Lcom/appyet/a/a/d;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    iget-object v0, p0, Lcom/appyet/c/a/g;->a:Lcom/appyet/c/a/a;

    iget-object v0, v0, Lcom/appyet/c/a/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/appyet/c/a/g;->a:Lcom/appyet/c/a/a;

    invoke-static {v0}, Lcom/appyet/c/a/a;->a(Lcom/appyet/c/a/a;)Lcom/appyet/a/a/d;

    move-result-object v0

    iget-object v0, v0, Lcom/appyet/a/a/d;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/a/a/a;

    iget-object v1, p0, Lcom/appyet/c/a/g;->a:Lcom/appyet/c/a/a;

    invoke-static {v1}, Lcom/appyet/c/a/a;->a(Lcom/appyet/c/a/a;)Lcom/appyet/a/a/d;

    move-result-object v1

    iget-object v1, v1, Lcom/appyet/a/a/d;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appyet/a/a/a;

    iget-object v6, v0, Lcom/appyet/a/a/a;->d:Ljava/lang/String;

    iget-object v1, v1, Lcom/appyet/a/a/a;->a:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v2

    :goto_2
    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/appyet/c/a/g;->a:Lcom/appyet/c/a/a;

    iget-object v0, v0, Lcom/appyet/a/a/a;->d:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/appyet/c/a/a;->a(Lcom/appyet/c/a/a;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/appyet/c/a/g;->a:Lcom/appyet/c/a/a;

    invoke-static {v0}, Lcom/appyet/c/a/a;->a(Lcom/appyet/c/a/a;)Lcom/appyet/a/a/d;

    move-result-object v0

    iget-object v0, v0, Lcom/appyet/a/a/d;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/a/a/a;

    iget-object v2, v0, Lcom/appyet/a/a/a;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/appyet/c/a/g;->a:Lcom/appyet/c/a/a;

    invoke-static {v4}, Lcom/appyet/c/a/a;->d(Lcom/appyet/c/a/a;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/appyet/c/a/g;->a:Lcom/appyet/c/a/a;

    iget-object v2, v2, Lcom/appyet/c/a/a;->c:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lcom/appyet/c/a/g;->a:Lcom/appyet/c/a/a;

    new-instance v1, Lcom/appyet/c/a/c;

    iget-object v2, p0, Lcom/appyet/c/a/g;->a:Lcom/appyet/c/a/a;

    iget-object v4, p0, Lcom/appyet/c/a/g;->a:Lcom/appyet/c/a/a;

    iget-object v4, v4, Lcom/appyet/c/a/a;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v5, p0, Lcom/appyet/c/a/g;->a:Lcom/appyet/c/a/a;

    iget-object v5, v5, Lcom/appyet/c/a/a;->c:Ljava/util/List;

    invoke-direct {v1, v2, v4, v5}, Lcom/appyet/c/a/c;-><init>(Lcom/appyet/c/a/a;Landroid/content/Context;Ljava/util/List;)V

    invoke-static {v0, v1}, Lcom/appyet/c/a/a;->a(Lcom/appyet/c/a/a;Lcom/appyet/c/a/c;)Lcom/appyet/c/a/c;

    iget-object v0, p0, Lcom/appyet/c/a/g;->a:Lcom/appyet/c/a/a;

    invoke-static {v0}, Lcom/appyet/c/a/a;->f(Lcom/appyet/c/a/a;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/c/a/g;->a:Lcom/appyet/c/a/a;

    invoke-static {v1}, Lcom/appyet/c/a/a;->e(Lcom/appyet/c/a/a;)Lcom/appyet/c/a/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/appyet/c/a/g;->a:Lcom/appyet/c/a/a;

    invoke-static {v0}, Lcom/appyet/c/a/a;->e(Lcom/appyet/c/a/a;)Lcom/appyet/c/a/c;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/appyet/c/a/g;->a:Lcom/appyet/c/a/a;

    invoke-static {v0}, Lcom/appyet/c/a/a;->e(Lcom/appyet/c/a/a;)Lcom/appyet/c/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appyet/c/a/c;->getCount()I

    move-result v0

    if-nez v0, :cond_a

    :cond_8
    iget-object v0, p0, Lcom/appyet/c/a/g;->a:Lcom/appyet/c/a/a;

    invoke-static {v0}, Lcom/appyet/c/a/a;->g(Lcom/appyet/c/a/a;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/appyet/c/a/g;->a:Lcom/appyet/c/a/a;

    invoke-static {v0}, Lcom/appyet/c/a/a;->f(Lcom/appyet/c/a/a;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/ListView;->setVisibility(I)V

    :cond_9
    :goto_4
    return-void

    :cond_a
    iget-object v0, p0, Lcom/appyet/c/a/g;->a:Lcom/appyet/c/a/a;

    invoke-static {v0}, Lcom/appyet/c/a/a;->g(Lcom/appyet/c/a/a;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/appyet/c/a/g;->a:Lcom/appyet/c/a/a;

    invoke-static {v0}, Lcom/appyet/c/a/a;->f(Lcom/appyet/c/a/a;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/appyet/c/a/g;->a:Lcom/appyet/c/a/a;

    invoke-static {v0}, Lcom/appyet/c/a/a;->h(Lcom/appyet/c/a/a;)I

    move-result v0

    if-lez v0, :cond_9

    iget-object v0, p0, Lcom/appyet/c/a/g;->a:Lcom/appyet/c/a/a;

    invoke-static {v0}, Lcom/appyet/c/a/a;->f(Lcom/appyet/c/a/a;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/c/a/g;->a:Lcom/appyet/c/a/a;

    invoke-static {v1}, Lcom/appyet/c/a/a;->h(Lcom/appyet/c/a/a;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_4

    :cond_b
    iget-object v0, p0, Lcom/appyet/c/a/g;->a:Lcom/appyet/c/a/a;

    invoke-virtual {v0}, Lcom/appyet/c/a/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/c/a/g;->a:Lcom/appyet/c/a/a;

    const v3, 0x7f080046

    invoke-virtual {v1, v3}, Lcom/appyet/c/a/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_4

    :cond_c
    move v1, v3

    goto/16 :goto_2
.end method

.method protected final synthetic b()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/appyet/c/a/g;->f()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic c()V
    .locals 0

    return-void
.end method
