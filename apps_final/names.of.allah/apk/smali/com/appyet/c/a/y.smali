.class final Lcom/appyet/c/a/y;
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
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/appyet/a/a/e;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/appyet/a/a/e;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/appyet/a/a/e;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic d:Lcom/appyet/c/a/r;


# direct methods
.method private constructor <init>(Lcom/appyet/c/a/r;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/c/a/y;->d:Lcom/appyet/c/a/r;

    invoke-direct {p0}, Lcom/appyet/f/a;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/appyet/c/a/r;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/appyet/c/a/y;-><init>(Lcom/appyet/c/a/r;)V

    return-void
.end method

.method private varargs f()Ljava/lang/Boolean;
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/appyet/c/a/y;->d:Lcom/appyet/c/a/r;

    invoke-static {v0}, Lcom/appyet/c/a/r;->d(Lcom/appyet/c/a/r;)I

    move-result v0

    add-int/lit8 v4, v0, 0x1

    if-nez v4, :cond_0

    iget-object v0, p0, Lcom/appyet/c/a/y;->d:Lcom/appyet/c/a/r;

    iget-object v0, v0, Lcom/appyet/c/a/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->p:Lcom/appyet/manager/an;

    iget-object v1, p0, Lcom/appyet/c/a/y;->d:Lcom/appyet/c/a/r;

    iget-wide v1, v1, Lcom/appyet/c/a/r;->b:J

    iget-object v3, p0, Lcom/appyet/c/a/y;->d:Lcom/appyet/c/a/r;

    invoke-static {v3}, Lcom/appyet/c/a/r;->e(Lcom/appyet/c/a/r;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/appyet/c/a/y;->d:Lcom/appyet/c/a/r;

    invoke-static {v5}, Lcom/appyet/c/a/r;->f(Lcom/appyet/c/a/r;)I

    move-result v5

    const-string v6, "TOP"

    invoke-virtual/range {v0 .. v6}, Lcom/appyet/manager/an;->a(JLjava/lang/String;IILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/c/a/y;->a:Ljava/util/List;

    iget-object v0, p0, Lcom/appyet/c/a/y;->d:Lcom/appyet/c/a/r;

    iget-object v0, v0, Lcom/appyet/c/a/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->p:Lcom/appyet/manager/an;

    iget-object v1, p0, Lcom/appyet/c/a/y;->d:Lcom/appyet/c/a/r;

    iget-wide v1, v1, Lcom/appyet/c/a/r;->b:J

    iget-object v3, p0, Lcom/appyet/c/a/y;->d:Lcom/appyet/c/a/r;

    invoke-static {v3}, Lcom/appyet/c/a/r;->e(Lcom/appyet/c/a/r;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/appyet/c/a/y;->d:Lcom/appyet/c/a/r;

    invoke-static {v5}, Lcom/appyet/c/a/r;->f(Lcom/appyet/c/a/r;)I

    move-result v5

    const-string v6, "ANN"

    invoke-virtual/range {v0 .. v6}, Lcom/appyet/manager/an;->a(JLjava/lang/String;IILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/c/a/y;->b:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/appyet/c/a/y;->d:Lcom/appyet/c/a/r;

    iget-object v0, v0, Lcom/appyet/c/a/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->p:Lcom/appyet/manager/an;

    iget-object v1, p0, Lcom/appyet/c/a/y;->d:Lcom/appyet/c/a/r;

    iget-wide v1, v1, Lcom/appyet/c/a/r;->b:J

    iget-object v3, p0, Lcom/appyet/c/a/y;->d:Lcom/appyet/c/a/r;

    invoke-static {v3}, Lcom/appyet/c/a/r;->e(Lcom/appyet/c/a/r;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/appyet/c/a/y;->d:Lcom/appyet/c/a/r;

    invoke-static {v5}, Lcom/appyet/c/a/r;->f(Lcom/appyet/c/a/r;)I

    move-result v5

    const-string v6, ""

    invoke-virtual/range {v0 .. v6}, Lcom/appyet/manager/an;->a(JLjava/lang/String;IILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/c/a/y;->c:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

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

    iget-object v0, p0, Lcom/appyet/c/a/y;->d:Lcom/appyet/c/a/r;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appyet/c/a/r;->a(Lcom/appyet/c/a/r;Z)Z

    iget-object v0, p0, Lcom/appyet/c/a/y;->d:Lcom/appyet/c/a/r;

    invoke-static {v0}, Lcom/appyet/c/a/r;->h(Lcom/appyet/c/a/r;)Lcom/appyet/c/a/u;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/c/a/y;->d:Lcom/appyet/c/a/r;

    invoke-static {v0}, Lcom/appyet/c/a/r;->h(Lcom/appyet/c/a/r;)Lcom/appyet/c/a/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appyet/c/a/u;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/appyet/c/a/y;->d:Lcom/appyet/c/a/r;

    invoke-static {v0}, Lcom/appyet/c/a/r;->n(Lcom/appyet/c/a/r;)V

    :cond_1
    return-void
.end method

.method protected final synthetic a(Ljava/lang/Object;)V
    .locals 7

    const/16 v6, 0x8

    const/4 v3, 0x1

    const/4 v5, 0x0

    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/appyet/c/a/y;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/c/a/y;->d:Lcom/appyet/c/a/r;

    invoke-static {v0}, Lcom/appyet/c/a/r;->d(Lcom/appyet/c/a/r;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/appyet/c/a/y;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/c/a/y;->a:Ljava/util/List;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/appyet/c/a/y;->d:Lcom/appyet/c/a/r;

    invoke-static {v0}, Lcom/appyet/c/a/r;->g(Lcom/appyet/c/a/r;)I

    iget-object v0, p0, Lcom/appyet/c/a/y;->d:Lcom/appyet/c/a/r;

    invoke-static {v0}, Lcom/appyet/c/a/r;->d(Lcom/appyet/c/a/r;)I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/appyet/c/a/y;->a:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/appyet/c/a/y;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/appyet/c/a/y;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/a/a/e;

    iput-boolean v3, v0, Lcom/appyet/a/a/e;->l:Z

    iget-object v2, p0, Lcom/appyet/c/a/y;->c:Ljava/util/List;

    invoke-interface {v2, v5, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/appyet/c/a/y;->b:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/appyet/c/a/y;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/appyet/c/a/y;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/a/a/e;

    iput-boolean v3, v0, Lcom/appyet/a/a/e;->m:Z

    iget-object v2, p0, Lcom/appyet/c/a/y;->c:Ljava/util/List;

    invoke-interface {v2, v5, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/appyet/c/a/y;->d:Lcom/appyet/c/a/r;

    invoke-static {v0}, Lcom/appyet/c/a/r;->h(Lcom/appyet/c/a/r;)Lcom/appyet/c/a/u;

    move-result-object v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/appyet/c/a/y;->d:Lcom/appyet/c/a/r;

    new-instance v1, Lcom/appyet/c/a/u;

    iget-object v2, p0, Lcom/appyet/c/a/y;->d:Lcom/appyet/c/a/r;

    iget-object v3, p0, Lcom/appyet/c/a/y;->d:Lcom/appyet/c/a/r;

    iget-object v3, v3, Lcom/appyet/c/a/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v4, p0, Lcom/appyet/c/a/y;->c:Ljava/util/List;

    invoke-direct {v1, v2, v3, v4}, Lcom/appyet/c/a/u;-><init>(Lcom/appyet/c/a/r;Landroid/content/Context;Ljava/util/List;)V

    invoke-static {v0, v1}, Lcom/appyet/c/a/r;->a(Lcom/appyet/c/a/r;Lcom/appyet/c/a/u;)Lcom/appyet/c/a/u;

    iget-object v0, p0, Lcom/appyet/c/a/y;->d:Lcom/appyet/c/a/r;

    invoke-static {v0}, Lcom/appyet/c/a/r;->i(Lcom/appyet/c/a/r;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/c/a/y;->d:Lcom/appyet/c/a/r;

    invoke-static {v1}, Lcom/appyet/c/a/r;->h(Lcom/appyet/c/a/r;)Lcom/appyet/c/a/u;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :goto_3
    iget-object v0, p0, Lcom/appyet/c/a/y;->d:Lcom/appyet/c/a/r;

    invoke-static {v0}, Lcom/appyet/c/a/r;->j(Lcom/appyet/c/a/r;)V

    iget-object v0, p0, Lcom/appyet/c/a/y;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/appyet/c/a/y;->d:Lcom/appyet/c/a/r;

    invoke-static {v1}, Lcom/appyet/c/a/r;->f(Lcom/appyet/c/a/r;)I

    move-result v1

    if-ge v0, v1, :cond_4

    iget-object v0, p0, Lcom/appyet/c/a/y;->d:Lcom/appyet/c/a/r;

    invoke-static {v0}, Lcom/appyet/c/a/r;->k(Lcom/appyet/c/a/r;)Z

    iget-object v0, p0, Lcom/appyet/c/a/y;->d:Lcom/appyet/c/a/r;

    invoke-static {v0}, Lcom/appyet/c/a/r;->i(Lcom/appyet/c/a/r;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/c/a/y;->d:Lcom/appyet/c/a/r;

    invoke-static {v1}, Lcom/appyet/c/a/r;->l(Lcom/appyet/c/a/r;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    :cond_4
    iget-object v0, p0, Lcom/appyet/c/a/y;->d:Lcom/appyet/c/a/r;

    invoke-static {v0}, Lcom/appyet/c/a/r;->h(Lcom/appyet/c/a/r;)Lcom/appyet/c/a/u;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/appyet/c/a/y;->d:Lcom/appyet/c/a/r;

    invoke-static {v0}, Lcom/appyet/c/a/r;->h(Lcom/appyet/c/a/r;)Lcom/appyet/c/a/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appyet/c/a/u;->getCount()I

    move-result v0

    if-nez v0, :cond_8

    :cond_5
    iget-object v0, p0, Lcom/appyet/c/a/y;->d:Lcom/appyet/c/a/r;

    invoke-static {v0}, Lcom/appyet/c/a/r;->i(Lcom/appyet/c/a/r;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/appyet/c/a/y;->d:Lcom/appyet/c/a/r;

    invoke-static {v0}, Lcom/appyet/c/a/r;->m(Lcom/appyet/c/a/r;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_4
    iget-object v0, p0, Lcom/appyet/c/a/y;->d:Lcom/appyet/c/a/r;

    invoke-static {v0}, Lcom/appyet/c/a/r;->d(Lcom/appyet/c/a/r;)I

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/appyet/c/a/y;->d:Lcom/appyet/c/a/r;

    invoke-static {v0}, Lcom/appyet/c/a/r;->i(Lcom/appyet/c/a/r;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->setSelectionAfterHeaderView()V

    :cond_6
    iget-object v0, p0, Lcom/appyet/c/a/y;->d:Lcom/appyet/c/a/r;

    invoke-static {v0, v5}, Lcom/appyet/c/a/r;->a(Lcom/appyet/c/a/r;Z)Z

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/appyet/c/a/y;->d:Lcom/appyet/c/a/r;

    invoke-static {v0}, Lcom/appyet/c/a/r;->h(Lcom/appyet/c/a/r;)Lcom/appyet/c/a/u;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/c/a/y;->c:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/appyet/c/a/u;->addAll(Ljava/util/Collection;)V

    goto :goto_3

    :cond_8
    iget-object v0, p0, Lcom/appyet/c/a/y;->d:Lcom/appyet/c/a/r;

    invoke-static {v0}, Lcom/appyet/c/a/r;->i(Lcom/appyet/c/a/r;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/appyet/c/a/y;->d:Lcom/appyet/c/a/r;

    invoke-static {v0}, Lcom/appyet/c/a/r;->m(Lcom/appyet/c/a/r;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    :cond_9
    iget-object v0, p0, Lcom/appyet/c/a/y;->d:Lcom/appyet/c/a/r;

    invoke-static {v0}, Lcom/appyet/c/a/r;->j(Lcom/appyet/c/a/r;)V

    iget-object v0, p0, Lcom/appyet/c/a/y;->d:Lcom/appyet/c/a/r;

    invoke-virtual {v0}, Lcom/appyet/c/a/r;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/c/a/y;->d:Lcom/appyet/c/a/r;

    const v2, 0x7f080046

    invoke-virtual {v1, v2}, Lcom/appyet/c/a/r;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method

.method protected final synthetic b()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/appyet/c/a/y;->f()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic c()V
    .locals 0

    return-void
.end method
