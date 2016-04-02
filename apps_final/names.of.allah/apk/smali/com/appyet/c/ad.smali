.class final Lcom/appyet/c/ad;
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

.field private b:Lcom/appyet/data/FeedItem;


# direct methods
.method public constructor <init>(Lcom/appyet/c/r;Lcom/appyet/data/FeedItem;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/c/ad;->a:Lcom/appyet/c/r;

    invoke-direct {p0}, Lcom/appyet/f/a;-><init>()V

    iput-object p2, p0, Lcom/appyet/c/ad;->b:Lcom/appyet/data/FeedItem;

    return-void
.end method

.method private varargs f()Ljava/lang/Void;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/appyet/c/ad;->a:Lcom/appyet/c/r;

    iget-object v0, v0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->h:Lcom/appyet/manager/d;

    iget-object v1, p0, Lcom/appyet/c/ad;->b:Lcom/appyet/data/FeedItem;

    invoke-virtual {v0, v1}, Lcom/appyet/manager/d;->b(Lcom/appyet/data/FeedItem;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

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
    .locals 1

    invoke-super {p0}, Lcom/appyet/f/a;->a()V

    iget-object v0, p0, Lcom/appyet/c/ad;->a:Lcom/appyet/c/r;

    invoke-static {v0}, Lcom/appyet/c/r;->c(Lcom/appyet/c/r;)V

    return-void
.end method

.method protected final synthetic a(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Ljava/lang/Void;

    invoke-super {p0, p1}, Lcom/appyet/f/a;->a(Ljava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, Lcom/appyet/c/ad;->a:Lcom/appyet/c/r;

    invoke-static {v0}, Lcom/appyet/c/r;->a(Lcom/appyet/c/r;)Lcom/appyet/c/ae;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/c/ad;->b:Lcom/appyet/data/FeedItem;

    invoke-virtual {v0, v1}, Lcom/appyet/c/ae;->remove(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/appyet/c/ad;->a:Lcom/appyet/c/r;

    iget-object v0, v0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iget-object v0, v0, Lcom/appyet/context/f;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/appyet/c/ad;->b:Lcom/appyet/data/FeedItem;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/appyet/c/ad;->a:Lcom/appyet/c/r;

    invoke-static {v0}, Lcom/appyet/c/r;->a(Lcom/appyet/c/r;)Lcom/appyet/c/ae;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appyet/c/ae;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/appyet/c/ad;->a:Lcom/appyet/c/r;

    invoke-static {v0}, Lcom/appyet/c/r;->d(Lcom/appyet/c/r;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/appyet/c/ad;->a:Lcom/appyet/c/r;

    invoke-static {v0}, Lcom/appyet/c/r;->d(Lcom/appyet/c/r;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/c/ad;->a:Lcom/appyet/c/r;

    const v2, 0x7f08005b

    invoke-virtual {v1, v2}, Lcom/appyet/c/r;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/appyet/c/ad;->a:Lcom/appyet/c/r;

    invoke-static {v0}, Lcom/appyet/c/r;->e(Lcom/appyet/c/r;)Landroid/widget/ListView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/appyet/c/ad;->a:Lcom/appyet/c/r;

    invoke-static {v0}, Lcom/appyet/c/r;->f(Lcom/appyet/c/r;)Landroid/widget/GridView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/appyet/c/ad;->a:Lcom/appyet/c/r;

    invoke-virtual {v0}, Lcom/appyet/c/r;->d()V

    iget-object v0, p0, Lcom/appyet/c/ad;->a:Lcom/appyet/c/r;

    invoke-static {v0}, Lcom/appyet/c/r;->b(Lcom/appyet/c/r;)V

    iget-object v0, p0, Lcom/appyet/c/ad;->a:Lcom/appyet/c/r;

    invoke-virtual {v0}, Lcom/appyet/c/r;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/appyet/activity/MainActivity;

    invoke-virtual {v0}, Lcom/appyet/activity/MainActivity;->c()V

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected final synthetic b()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/appyet/c/ad;->f()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
