.class final Lcom/appyet/c/aj;
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
.field final synthetic a:Lcom/appyet/c/r;

.field private b:I

.field private c:Ljava/util/List;
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
.method public constructor <init>(Lcom/appyet/c/r;I)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/c/aj;->a:Lcom/appyet/c/r;

    invoke-direct {p0}, Lcom/appyet/f/a;-><init>()V

    iput p2, p0, Lcom/appyet/c/aj;->b:I

    return-void
.end method

.method private varargs f()Ljava/lang/Void;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/appyet/c/aj;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/c/aj;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/appyet/c/aj;->a:Lcom/appyet/c/r;

    iget-object v0, v0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->h:Lcom/appyet/manager/d;

    iget-object v1, p0, Lcom/appyet/c/aj;->c:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/appyet/manager/d;->d(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method


# virtual methods
.method protected final a()V
    .locals 9

    invoke-super {p0}, Lcom/appyet/f/a;->a()V

    iget-object v0, p0, Lcom/appyet/c/aj;->a:Lcom/appyet/c/r;

    invoke-static {v0}, Lcom/appyet/c/r;->c(Lcom/appyet/c/r;)V

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/appyet/c/aj;->c:Ljava/util/List;

    iget v0, p0, Lcom/appyet/c/aj;->b:I

    move v8, v0

    :goto_0
    if-ltz v8, :cond_1

    iget-object v0, p0, Lcom/appyet/c/aj;->a:Lcom/appyet/c/r;

    invoke-static {v0, v8}, Lcom/appyet/c/r;->b(Lcom/appyet/c/r;I)Lcom/appyet/data/FeedItem;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/appyet/data/FeedItem;->getIsRead()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/appyet/c/aj;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/appyet/c/aj;->a:Lcom/appyet/c/r;

    invoke-static {v0, v8}, Lcom/appyet/c/r;->c(Lcom/appyet/c/r;I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f0a008b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/appyet/c/aj;->a:Lcom/appyet/c/r;

    iget-object v0, v0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->m:Lcom/appyet/manager/bw;

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/appyet/manager/bw;->a(ZLandroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v0, v8, -0x1

    move v8, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    :cond_1
    return-void
.end method

.method protected final synthetic a(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Ljava/lang/Void;

    invoke-super {p0, p1}, Lcom/appyet/f/a;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/appyet/c/aj;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/c/aj;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/appyet/c/aj;->a:Lcom/appyet/c/r;

    invoke-virtual {v0}, Lcom/appyet/c/r;->d()V

    :cond_0
    iget-object v0, p0, Lcom/appyet/c/aj;->a:Lcom/appyet/c/r;

    invoke-static {v0}, Lcom/appyet/c/r;->b(Lcom/appyet/c/r;)V

    iget-object v0, p0, Lcom/appyet/c/aj;->a:Lcom/appyet/c/r;

    invoke-virtual {v0}, Lcom/appyet/c/r;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/appyet/activity/MainActivity;

    invoke-virtual {v0}, Lcom/appyet/activity/MainActivity;->c()V

    return-void
.end method

.method protected final synthetic b()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/appyet/c/aj;->f()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
