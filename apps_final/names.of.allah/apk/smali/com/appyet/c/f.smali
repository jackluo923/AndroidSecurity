.class final Lcom/appyet/c/f;
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

.field private b:Lcom/appyet/data/FeedItem;


# direct methods
.method public constructor <init>(Lcom/appyet/c/a;Lcom/appyet/data/FeedItem;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/c/f;->a:Lcom/appyet/c/a;

    invoke-direct {p0}, Lcom/appyet/f/a;-><init>()V

    iput-object p2, p0, Lcom/appyet/c/f;->b:Lcom/appyet/data/FeedItem;

    return-void
.end method

.method private varargs f()Ljava/lang/Void;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/appyet/c/f;->a:Lcom/appyet/c/a;

    invoke-static {v0}, Lcom/appyet/c/a;->a(Lcom/appyet/c/a;)Lcom/appyet/context/ApplicationContext;

    move-result-object v0

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->h:Lcom/appyet/manager/d;

    iget-object v1, p0, Lcom/appyet/c/f;->b:Lcom/appyet/data/FeedItem;

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
    .locals 2

    invoke-super {p0}, Lcom/appyet/f/a;->a()V

    :try_start_0
    iget-object v0, p0, Lcom/appyet/c/f;->a:Lcom/appyet/c/a;

    invoke-static {v0}, Lcom/appyet/c/a;->a(Lcom/appyet/c/a;)Lcom/appyet/context/ApplicationContext;

    move-result-object v0

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iget-object v0, v0, Lcom/appyet/context/f;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/appyet/c/f;->b:Lcom/appyet/data/FeedItem;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/appyet/c/f;->a:Lcom/appyet/c/a;

    invoke-static {v0}, Lcom/appyet/c/a;->a(Lcom/appyet/c/a;)Lcom/appyet/context/ApplicationContext;

    move-result-object v0

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iget-object v0, v0, Lcom/appyet/context/f;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/appyet/c/f;->a:Lcom/appyet/c/a;

    invoke-virtual {v0}, Lcom/appyet/c/a;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/c/f;->a:Lcom/appyet/c/a;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    iget-object v0, p0, Lcom/appyet/c/f;->a:Lcom/appyet/c/a;

    invoke-virtual {v0}, Lcom/appyet/c/a;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/appyet/c/f;->a:Lcom/appyet/c/a;

    invoke-static {v0}, Lcom/appyet/c/a;->b(Lcom/appyet/c/a;)Lcom/appyet/c/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appyet/c/g;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/appyet/c/f;->a:Lcom/appyet/c/a;

    invoke-static {v0}, Lcom/appyet/c/a;->c(Lcom/appyet/c/a;)I

    move-result v0

    iget-object v1, p0, Lcom/appyet/c/f;->a:Lcom/appyet/c/a;

    invoke-static {v1}, Lcom/appyet/c/a;->a(Lcom/appyet/c/a;)Lcom/appyet/context/ApplicationContext;

    move-result-object v1

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iget-object v1, v1, Lcom/appyet/context/f;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/appyet/c/f;->a:Lcom/appyet/c/a;

    iget-object v1, p0, Lcom/appyet/c/f;->a:Lcom/appyet/c/a;

    invoke-static {v1}, Lcom/appyet/c/a;->a(Lcom/appyet/c/a;)Lcom/appyet/context/ApplicationContext;

    move-result-object v1

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iget-object v1, v1, Lcom/appyet/context/f;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/appyet/c/a;->a(Lcom/appyet/c/a;I)I

    :cond_1
    iget-object v0, p0, Lcom/appyet/c/f;->a:Lcom/appyet/c/a;

    invoke-static {v0}, Lcom/appyet/c/a;->c(Lcom/appyet/c/a;)I

    move-result v0

    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/appyet/c/f;->a:Lcom/appyet/c/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/appyet/c/a;->a(Lcom/appyet/c/a;I)I

    :cond_2
    iget-object v0, p0, Lcom/appyet/c/f;->a:Lcom/appyet/c/a;

    invoke-static {v0}, Lcom/appyet/c/a;->d(Lcom/appyet/c/a;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/c/f;->a:Lcom/appyet/c/a;

    invoke-static {v1}, Lcom/appyet/c/a;->c(Lcom/appyet/c/a;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-super {p0, p1}, Lcom/appyet/f/a;->a(Ljava/lang/Object;)V

    return-void
.end method

.method protected final synthetic b()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/appyet/c/f;->f()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
