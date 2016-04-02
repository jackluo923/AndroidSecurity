.class public Lcom/appyet/activity/MainActivity;
.super Lcom/actionbarsherlock/app/SherlockFragmentActivity;

# interfaces
.implements Lcom/appyet/c/a/e;
.implements Lcom/appyet/c/a/w;
.implements Lcom/appyet/c/ak;
.implements Lcom/appyet/receiver/b;


# instance fields
.field protected a:Lcom/appyet/f/k;

.field private b:Lcom/appyet/context/ApplicationContext;

.field private c:Lcom/appyet/c/ay;

.field private d:I

.field private e:Lcom/appyet/receiver/c;

.field private f:Lnet/simonvt/menudrawer/MenuDrawer;

.field private g:Landroid/graphics/drawable/Drawable;

.field private h:I

.field private i:Lnet/simonvt/menudrawer/o;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/appyet/activity/MainActivity;->d:I

    new-instance v0, Lcom/appyet/f/k;

    invoke-direct {v0, p0}, Lcom/appyet/f/k;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/appyet/activity/MainActivity;->a:Lcom/appyet/f/k;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appyet/activity/MainActivity;->g:Landroid/graphics/drawable/Drawable;

    new-instance v0, Lcom/appyet/activity/u;

    invoke-direct {v0, p0}, Lcom/appyet/activity/u;-><init>(Lcom/appyet/activity/MainActivity;)V

    iput-object v0, p0, Lcom/appyet/activity/MainActivity;->i:Lnet/simonvt/menudrawer/o;

    return-void
.end method

.method static synthetic a(Lcom/appyet/activity/MainActivity;)Lnet/simonvt/menudrawer/MenuDrawer;
    .locals 1

    iget-object v0, p0, Lcom/appyet/activity/MainActivity;->f:Lnet/simonvt/menudrawer/MenuDrawer;

    return-object v0
.end method

.method private a(Landroid/content/Intent;)Z
    .locals 6

    const-wide/16 v4, -0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    const-string v1, "ACTION_WIDGET_OPEN_FEEDITEM_ID"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ACTION_WIDGET_OPEN_FEEDITEM_ID"

    const-wide/16 v2, -0x1

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    cmp-long v3, v1, v4

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/appyet/activity/MainActivity;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v3, v3, Lcom/appyet/context/ApplicationContext;->h:Lcom/appyet/manager/d;

    invoke-virtual {v3, v1, v2}, Lcom/appyet/manager/d;->c(J)Lcom/appyet/data/FeedItem;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/appyet/activity/MainActivity;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v2, v2, Lcom/appyet/context/ApplicationContext;->h:Lcom/appyet/manager/d;

    invoke-virtual {v1}, Lcom/appyet/data/FeedItem;->getFeed()Lcom/appyet/data/Feed;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appyet/data/Feed;->getFeedId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/appyet/manager/d;->a(J)Lcom/appyet/data/Feed;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/appyet/activity/MainActivity;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->h:Lcom/appyet/manager/d;

    invoke-virtual {v1}, Lcom/appyet/data/Feed;->getModuleId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/appyet/manager/d;->g(J)Lcom/appyet/data/Module;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/appyet/data/Module;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/appyet/data/Module;->getModuleId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0}, Lcom/appyet/data/Module;->getGuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v2, v0}, Lcom/appyet/activity/MainActivity;->a(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    iget-object v1, p0, Lcom/appyet/activity/MainActivity;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->e:Lcom/appyet/manager/ap;

    invoke-virtual {v1, v0}, Lcom/appyet/manager/ap;->a(Ljava/lang/Exception;)V

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/appyet/activity/MainActivity;)Lcom/appyet/context/ApplicationContext;
    .locals 1

    iget-object v0, p0, Lcom/appyet/activity/MainActivity;->b:Lcom/appyet/context/ApplicationContext;

    return-object v0
.end method

.method static synthetic c(Lcom/appyet/activity/MainActivity;)I
    .locals 2

    iget v0, p0, Lcom/appyet/activity/MainActivity;->d:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/appyet/activity/MainActivity;->d:I

    return v0
.end method

.method static synthetic d(Lcom/appyet/activity/MainActivity;)I
    .locals 1

    iget v0, p0, Lcom/appyet/activity/MainActivity;->d:I

    return v0
.end method

.method private d()V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/appyet/activity/MainActivity;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->d:Lcom/appyet/manager/bp;

    invoke-virtual {v0}, Lcom/appyet/manager/bp;->Q()J

    move-result-wide v1

    iget-object v0, p0, Lcom/appyet/activity/MainActivity;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->h:Lcom/appyet/manager/d;

    invoke-virtual {v0}, Lcom/appyet/manager/d;->g()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/data/Module;

    invoke-virtual {v0}, Lcom/appyet/data/Module;->getModuleId()Ljava/lang/Long;

    move-result-object v5

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Lcom/appyet/data/Module;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/appyet/data/Module;->getModuleId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0}, Lcom/appyet/data/Module;->getGuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v2, v0}, Lcom/appyet/activity/MainActivity;->a(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/data/Module;

    invoke-virtual {v0}, Lcom/appyet/data/Module;->getType()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/data/Module;

    invoke-virtual {v0}, Lcom/appyet/data/Module;->getModuleId()Ljava/lang/Long;

    move-result-object v2

    const/4 v0, 0x0

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/data/Module;

    invoke-virtual {v0}, Lcom/appyet/data/Module;->getGuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v2, v0}, Lcom/appyet/activity/MainActivity;->a(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    iget-object v1, p0, Lcom/appyet/activity/MainActivity;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->e:Lcom/appyet/manager/ap;

    invoke-virtual {v1, v0}, Lcom/appyet/manager/ap;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method static synthetic e(Lcom/appyet/activity/MainActivity;)Lcom/appyet/c/ay;
    .locals 1

    iget-object v0, p0, Lcom/appyet/activity/MainActivity;->c:Lcom/appyet/c/ay;

    return-object v0
.end method

.method private e()V
    .locals 5

    :try_start_0
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/appyet/activity/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v0

    invoke-virtual {p0}, Lcom/appyet/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0025

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {p0}, Lcom/appyet/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0024

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    add-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    iget-object v1, p0, Lcom/appyet/activity/MainActivity;->f:Lnet/simonvt/menudrawer/MenuDrawer;

    invoke-virtual {p0}, Lcom/appyet/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0024

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {v1, v0}, Lnet/simonvt/menudrawer/MenuDrawer;->setMenuSize(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/appyet/activity/MainActivity;->f:Lnet/simonvt/menudrawer/MenuDrawer;

    invoke-virtual {p0}, Lcom/appyet/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0025

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/simonvt/menudrawer/MenuDrawer;->setMenuSize(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    iget-object v1, p0, Lcom/appyet/activity/MainActivity;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->e:Lcom/appyet/manager/ap;

    invoke-virtual {v1, v0}, Lcom/appyet/manager/ap;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()Lnet/simonvt/menudrawer/MenuDrawer;
    .locals 1

    iget-object v0, p0, Lcom/appyet/activity/MainActivity;->f:Lnet/simonvt/menudrawer/MenuDrawer;

    return-object v0
.end method

.method public final a(ILjava/lang/Long;)V
    .locals 5

    new-instance v0, Lcom/appyet/c/a;

    invoke-direct {v0}, Lcom/appyet/c/a;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "ARG_POSITION"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz p2, :cond_0

    const-string v2, "ARG_MODULE_ID"

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_0
    invoke-virtual {v0, v1}, Lcom/appyet/c/a;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/appyet/activity/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f0a00c2

    const-string v3, "FeedItemDetailFragment"

    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    const-string v0, "FeedItemDetailFragment"

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    const/16 v0, 0x1001

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method public final a(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const v6, 0x7f0a00c2

    const/16 v5, 0x1001

    iget-object v0, p0, Lcom/appyet/activity/MainActivity;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->p:Lcom/appyet/manager/an;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/appyet/manager/an;->a(J)Lcom/appyet/a/a/d;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/activity/MainActivity;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->p:Lcom/appyet/manager/an;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, p2}, Lcom/appyet/manager/an;->a(JLjava/lang/String;)Lcom/appyet/a/a/a;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    iget-boolean v3, v2, Lcom/appyet/a/a/a;->k:Z

    if-nez v3, :cond_4

    iget-object v0, v0, Lcom/appyet/a/a/d;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/a/a/a;

    iget-object v0, v0, Lcom/appyet/a/a/a;->d:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iget-boolean v1, v2, Lcom/appyet/a/a/a;->k:Z

    if-nez v1, :cond_2

    if-eqz v0, :cond_3

    :cond_2
    if-eq p3, p2, :cond_3

    new-instance v0, Lcom/appyet/c/a/a;

    invoke-direct {v0}, Lcom/appyet/c/a/a;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "ForumId"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "ModuleId"

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v0, v1}, Lcom/appyet/c/a/a;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/appyet/activity/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const-string v2, "ForumBrowseFragment"

    invoke-virtual {v1, v6, v0, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    const-string v0, "ForumBrowseFragment"

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v1, v5}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/appyet/c/a/r;

    invoke-direct {v0}, Lcom/appyet/c/a/r;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "ARG_FORUM_ID"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "ARG_MODULE_ID"

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v0, v1}, Lcom/appyet/c/a/r;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/appyet/activity/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const-string v2, "ForumTopicFragment"

    invoke-virtual {v1, v6, v0, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    const-string v0, "ForumTopicFragment"

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v1, v5}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto/16 :goto_0

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V
    .locals 7

    const/4 v1, 0x1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    const-string v0, "Sync"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/appyet/activity/MainActivity;->b:Lcom/appyet/context/ApplicationContext;

    invoke-virtual {v0}, Lcom/appyet/context/ApplicationContext;->c()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/appyet/activity/MainActivity;->b:Lcom/appyet/context/ApplicationContext;

    const v1, 0x7f080052

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/appyet/activity/MainActivity;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->t:Lcom/appyet/manager/bq;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/appyet/manager/bq;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    iget-object v1, p0, Lcom/appyet/activity/MainActivity;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->e:Lcom/appyet/manager/ap;

    invoke-virtual {v1, v0}, Lcom/appyet/manager/ap;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/appyet/activity/MainActivity;->b:Lcom/appyet/context/ApplicationContext;

    const v1, 0x7f080052

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_3
    const-string v0, "Downloads"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/appyet/activity/MainActivity;->b:Lcom/appyet/context/ApplicationContext;

    const-class v2, Lcom/appyet/activity/DownloadActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/appyet/activity/MainActivity;->b:Lcom/appyet/context/ApplicationContext;

    invoke-virtual {v1, v0}, Lcom/appyet/context/ApplicationContext;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_4
    const-string v0, "Themes"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/appyet/activity/MainActivity;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->q:Lcom/appyet/metadata/Metadata;

    iget-object v0, v0, Lcom/appyet/metadata/Metadata;->MetadataThemes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/appyet/activity/MainActivity;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->q:Lcom/appyet/metadata/Metadata;

    iget-object v0, v0, Lcom/appyet/metadata/Metadata;->MetadataThemes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/appyet/activity/MainActivity;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->q:Lcom/appyet/metadata/Metadata;

    iget-object v0, v0, Lcom/appyet/metadata/Metadata;->MetadataThemes:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/metadata/MetadataTheme;

    iget-object v0, v0, Lcom/appyet/metadata/MetadataTheme;->Guid:Ljava/lang/String;

    iget-object v1, p0, Lcom/appyet/activity/MainActivity;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->d:Lcom/appyet/manager/bp;

    invoke-virtual {v1}, Lcom/appyet/manager/bp;->F()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/appyet/activity/MainActivity;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v0, Lcom/appyet/context/ApplicationContext;->d:Lcom/appyet/manager/bp;

    iget-object v0, p0, Lcom/appyet/activity/MainActivity;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->q:Lcom/appyet/metadata/Metadata;

    iget-object v0, v0, Lcom/appyet/metadata/Metadata;->MetadataThemes:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/metadata/MetadataTheme;

    iget-object v0, v0, Lcom/appyet/metadata/MetadataTheme;->Guid:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/appyet/manager/bp;->b(Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/appyet/activity/MainActivity;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->m:Lcom/appyet/manager/bw;

    invoke-virtual {v0}, Lcom/appyet/manager/bw;->a()V

    invoke-virtual {p0}, Lcom/appyet/activity/MainActivity;->finish()V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/appyet/activity/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/appyet/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/appyet/activity/MainActivity;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v0, Lcom/appyet/context/ApplicationContext;->d:Lcom/appyet/manager/bp;

    iget-object v0, p0, Lcom/appyet/activity/MainActivity;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->q:Lcom/appyet/metadata/Metadata;

    iget-object v0, v0, Lcom/appyet/metadata/Metadata;->MetadataThemes:Ljava/util/List;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/metadata/MetadataTheme;

    iget-object v0, v0, Lcom/appyet/metadata/MetadataTheme;->Guid:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/appyet/manager/bp;->b(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/appyet/activity/MainActivity;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->q:Lcom/appyet/metadata/Metadata;

    iget-object v0, v0, Lcom/appyet/metadata/Metadata;->MetadataThemes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    :try_start_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_2
    iget-object v0, p0, Lcom/appyet/activity/MainActivity;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->q:Lcom/appyet/metadata/Metadata;

    iget-object v0, v0, Lcom/appyet/metadata/Metadata;->MetadataThemes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_7

    iget-object v0, p0, Lcom/appyet/activity/MainActivity;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->q:Lcom/appyet/metadata/Metadata;

    iget-object v0, v0, Lcom/appyet/metadata/Metadata;->MetadataThemes:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/metadata/MetadataTheme;

    iget-object v4, v0, Lcom/appyet/metadata/MetadataTheme;->Name:Ljava/lang/String;

    invoke-static {p0, v4}, Lcom/appyet/f/w;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v0, Lcom/appyet/metadata/MetadataTheme;->Guid:Ljava/lang/String;

    iget-object v4, p0, Lcom/appyet/activity/MainActivity;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v4, v4, Lcom/appyet/context/ApplicationContext;->d:Lcom/appyet/manager/bp;

    invoke-virtual {v4}, Lcom/appyet/manager/bp;->F()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    move v0, v1

    :goto_3
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_2

    :cond_7
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0800de

    invoke-virtual {p0, v3}, Lcom/appyet/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v3, Lcom/appyet/activity/o;

    invoke-direct {v3, p0}, Lcom/appyet/activity/o;-><init>(Lcom/appyet/activity/MainActivity;)V

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    :try_start_3
    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto/16 :goto_0

    :cond_8
    const-string v0, "Settings"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/appyet/activity/MainActivity;->b:Lcom/appyet/context/ApplicationContext;

    const-class v2, Lcom/appyet/activity/SettingsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/appyet/activity/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :cond_9
    const-string v0, "Feed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/appyet/activity/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    new-instance v2, Lcom/appyet/c/r;

    invoke-direct {v2}, Lcom/appyet/c/r;-><init>()V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "DisplayType"

    const-string v5, "Module"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "ModuleId"

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v2, v3}, Lcom/appyet/c/r;->setArguments(Landroid/os/Bundle;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/appyet/c/r;->setRetainInstance(Z)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/support/v4/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    const v0, 0x7f04000e

    const v3, 0x7f040012

    invoke-virtual {v1, v0, v3}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(II)Landroid/support/v4/app/FragmentTransaction;

    const v0, 0x7f0a00c2

    const-string v3, "ContentFrameFragment"

    invoke-virtual {v1, v0, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    invoke-virtual {p0}, Lcom/appyet/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_a

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/appyet/activity/p;

    invoke-direct {v1, p0}, Lcom/appyet/activity/p;-><init>(Lcom/appyet/activity/MainActivity;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_a
    iget-object v0, p0, Lcom/appyet/activity/MainActivity;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->d:Lcom/appyet/manager/bp;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/appyet/manager/bp;->c(J)V

    goto/16 :goto_0

    :cond_b
    const-string v0, "FeedQuery"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/appyet/activity/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    new-instance v2, Lcom/appyet/c/r;

    invoke-direct {v2}, Lcom/appyet/c/r;-><init>()V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "DisplayType"

    const-string v5, "FeedQuery"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "ModuleId"

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v2, v3}, Lcom/appyet/c/r;->setArguments(Landroid/os/Bundle;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/appyet/c/r;->setRetainInstance(Z)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/support/v4/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    const v0, 0x7f04000e

    const v3, 0x7f040012

    invoke-virtual {v1, v0, v3}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(II)Landroid/support/v4/app/FragmentTransaction;

    const v0, 0x7f0a00c2

    const-string v3, "ContentFrameFragment"

    invoke-virtual {v1, v0, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    invoke-virtual {p0}, Lcom/appyet/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_c

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/appyet/activity/q;

    invoke-direct {v1, p0}, Lcom/appyet/activity/q;-><init>(Lcom/appyet/activity/MainActivity;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_c
    iget-object v0, p0, Lcom/appyet/activity/MainActivity;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->d:Lcom/appyet/manager/bp;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/appyet/manager/bp;->c(J)V

    goto/16 :goto_0

    :cond_d
    const-string v0, "Web"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/appyet/activity/MainActivity;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->i:Lcom/appyet/manager/bk;

    invoke-virtual {v0, p3}, Lcom/appyet/manager/bk;->a(Ljava/lang/String;)Lcom/appyet/metadata/MetadataModuleWeb;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/appyet/metadata/MetadataModuleWeb;->Type:Ljava/lang/String;

    if-eqz v1, :cond_10

    iget-object v1, v0, Lcom/appyet/metadata/MetadataModuleWeb;->Type:Ljava/lang/String;

    const-string v2, "Link"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, v0, Lcom/appyet/metadata/MetadataModuleWeb;->LinkTarget:Ljava/lang/String;

    if-eqz v1, :cond_10

    iget-object v1, v0, Lcom/appyet/metadata/MetadataModuleWeb;->LinkTarget:Ljava/lang/String;

    const-string v2, "NIA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    iget-object v1, v0, Lcom/appyet/metadata/MetadataModuleWeb;->LinkTarget:Ljava/lang/String;

    const-string v2, "NSD"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    :cond_e
    iget-object v1, v0, Lcom/appyet/metadata/MetadataModuleWeb;->LinkTarget:Ljava/lang/String;

    const-string v2, "NIA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/appyet/activity/WebBrowserActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "URL"

    iget-object v0, v0, Lcom/appyet/metadata/MetadataModuleWeb;->Data:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/appyet/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_f
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    iget-object v0, v0, Lcom/appyet/metadata/MetadataModuleWeb;->Data:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lcom/appyet/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_10
    invoke-virtual {p0}, Lcom/appyet/activity/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    new-instance v2, Lcom/appyet/c/be;

    invoke-direct {v2}, Lcom/appyet/c/be;-><init>()V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "ModuleId"

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v2, v3}, Lcom/appyet/c/be;->setArguments(Landroid/os/Bundle;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/appyet/c/be;->setRetainInstance(Z)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/support/v4/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    const v0, 0x7f04000e

    const v3, 0x7f040012

    invoke-virtual {v1, v0, v3}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(II)Landroid/support/v4/app/FragmentTransaction;

    const v0, 0x7f0a00c2

    const-string v3, "ContentFrameFragment"

    invoke-virtual {v1, v0, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    invoke-virtual {p0}, Lcom/appyet/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_11

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/appyet/activity/r;

    invoke-direct {v1, p0}, Lcom/appyet/activity/r;-><init>(Lcom/appyet/activity/MainActivity;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_11
    iget-object v0, p0, Lcom/appyet/activity/MainActivity;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->d:Lcom/appyet/manager/bp;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/appyet/manager/bp;->c(J)V

    goto/16 :goto_0

    :cond_12
    const-string v0, "YouTube"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/appyet/activity/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    new-instance v2, Lcom/appyet/c/bj;

    invoke-direct {v2}, Lcom/appyet/c/bj;-><init>()V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "ModuleId"

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v2, v3}, Lcom/appyet/c/bj;->setArguments(Landroid/os/Bundle;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/appyet/c/bj;->setRetainInstance(Z)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/support/v4/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    const v0, 0x7f04000e

    const v3, 0x7f040012

    invoke-virtual {v1, v0, v3}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(II)Landroid/support/v4/app/FragmentTransaction;

    const v0, 0x7f0a00c2

    const-string v3, "ContentFrameFragment"

    invoke-virtual {v1, v0, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    invoke-virtual {p0}, Lcom/appyet/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_13

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/appyet/activity/s;

    invoke-direct {v1, p0}, Lcom/appyet/activity/s;-><init>(Lcom/appyet/activity/MainActivity;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_13
    iget-object v0, p0, Lcom/appyet/activity/MainActivity;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->d:Lcom/appyet/manager/bp;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/appyet/manager/bp;->c(J)V

    goto/16 :goto_0

    :cond_14
    const-string v0, "Forum"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lcom/appyet/activity/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    new-instance v2, Lcom/appyet/c/a/a;

    invoke-direct {v2}, Lcom/appyet/c/a/a;-><init>()V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "ModuleId"

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v2, v3}, Lcom/appyet/c/a/a;->setArguments(Landroid/os/Bundle;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/appyet/c/a/a;->setRetainInstance(Z)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/support/v4/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    const v0, 0x7f04000e

    const v3, 0x7f040012

    invoke-virtual {v1, v0, v3}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(II)Landroid/support/v4/app/FragmentTransaction;

    const v0, 0x7f0a00c2

    const-string v3, "ContentFrameFragment"

    invoke-virtual {v1, v0, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    invoke-virtual {p0}, Lcom/appyet/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_15

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/appyet/activity/t;

    invoke-direct {v1, p0}, Lcom/appyet/activity/t;-><init>(Lcom/appyet/activity/MainActivity;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_15
    iget-object v0, p0, Lcom/appyet/activity/MainActivity;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->d:Lcom/appyet/manager/bp;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/appyet/manager/bp;->c(J)V

    goto/16 :goto_0

    :cond_16
    const-string v0, "Customize"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/appyet/activity/MainActivity;->b:Lcom/appyet/context/ApplicationContext;

    const-class v2, Lcom/appyet/activity/CustomizeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/appyet/activity/MainActivity;->b:Lcom/appyet/context/ApplicationContext;

    invoke-virtual {v1, v0}, Lcom/appyet/context/ApplicationContext;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    :cond_17
    move v0, v2

    goto/16 :goto_3
.end method

.method public final b()V
    .locals 0

    invoke-virtual {p0}, Lcom/appyet/activity/MainActivity;->c()V

    return-void
.end method

.method public final b(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    new-instance v0, Lcom/appyet/c/a/i;

    invoke-direct {v0}, Lcom/appyet/c/a/i;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "ARG_TOPIC_ID"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "ARG_FORUM_ID"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "ARG_MODULE_ID"

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v0, v1}, Lcom/appyet/c/a/i;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/appyet/activity/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f0a00c2

    const-string v3, "ForumThreadFragment"

    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    const-string v0, "ForumThreadFragment"

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    const/16 v0, 0x1001

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method public final c()V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/appyet/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appyet/activity/MainActivity;->c:Lcom/appyet/c/ay;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/activity/MainActivity;->c:Lcom/appyet/c/ay;

    invoke-virtual {v0}, Lcom/appyet/c/ay;->a()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/appyet/activity/MainActivity;->c:Lcom/appyet/c/ay;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/activity/MainActivity;->f:Lnet/simonvt/menudrawer/MenuDrawer;

    invoke-virtual {v0}, Lnet/simonvt/menudrawer/MenuDrawer;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/activity/MainActivity;->c:Lcom/appyet/c/ay;

    invoke-virtual {v0}, Lcom/appyet/c/ay;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getCacheDir()Ljava/io/File;
    .locals 1

    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getCacheDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    :try_start_0
    iget-object v0, p0, Lcom/appyet/activity/MainActivity;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->m:Lcom/appyet/manager/bw;

    invoke-virtual {v0}, Lcom/appyet/manager/bw;->b()V

    iget-object v0, p0, Lcom/appyet/activity/MainActivity;->b:Lcom/appyet/context/ApplicationContext;

    invoke-virtual {v0}, Lcom/appyet/context/ApplicationContext;->i()V

    iget-object v0, p0, Lcom/appyet/activity/MainActivity;->b:Lcom/appyet/context/ApplicationContext;

    invoke-virtual {v0}, Lcom/appyet/context/ApplicationContext;->h()V

    sget-object v0, Lcom/appyet/manager/ar;->a:Ljava/util/Locale;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/appyet/manager/ar;->a:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/activity/MainActivity;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->d:Lcom/appyet/manager/bp;

    invoke-virtual {v1}, Lcom/appyet/manager/bp;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    const/4 v0, 0x0

    sput-object v0, Lcom/appyet/manager/ar;->a:Ljava/util/Locale;

    invoke-static {p0}, Lcom/appyet/manager/ar;->a(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/appyet/activity/MainActivity;->finish()V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/appyet/activity/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/appyet/activity/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    iget-object v1, p0, Lcom/appyet/activity/MainActivity;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->e:Lcom/appyet/manager/ap;

    invoke-virtual {v1, v0}, Lcom/appyet/manager/ap;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-direct {p0}, Lcom/appyet/activity/MainActivity;->e()V

    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-static {p0}, Lcom/appyet/manager/ar;->a(Landroid/content/Context;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/high16 v3, 0x1000000

    const/4 v2, -0x1

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-static {p0}, Lcom/appyet/manager/ar;->a(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/appyet/activity/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/appyet/context/ApplicationContext;

    iput-object v0, p0, Lcom/appyet/activity/MainActivity;->b:Lcom/appyet/context/ApplicationContext;

    :try_start_0
    iget-object v0, p0, Lcom/appyet/activity/MainActivity;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->d:Lcom/appyet/manager/bp;

    invoke-virtual {v0}, Lcom/appyet/manager/bp;->P()I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/appyet/activity/MainActivity;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->d:Lcom/appyet/manager/bp;

    iget-object v1, p0, Lcom/appyet/activity/MainActivity;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->q:Lcom/appyet/metadata/Metadata;

    iget-object v1, v1, Lcom/appyet/metadata/Metadata;->MetadataSetting:Lcom/appyet/metadata/MetadataSetting;

    iget-object v1, v1, Lcom/appyet/metadata/MetadataSetting;->DefaultThemeGuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/appyet/manager/bp;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appyet/activity/MainActivity;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->q:Lcom/appyet/metadata/Metadata;

    iget-object v0, v0, Lcom/appyet/metadata/Metadata;->MetadataSetting:Lcom/appyet/metadata/MetadataSetting;

    iget v0, v0, Lcom/appyet/metadata/MetadataSetting;->DefaultUpdateInterval:I

    if-ne v0, v2, :cond_b

    iget-object v0, p0, Lcom/appyet/activity/MainActivity;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->d:Lcom/appyet/manager/bp;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/appyet/manager/bp;->e(Z)V

    iget-object v0, p0, Lcom/appyet/activity/MainActivity;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->d:Lcom/appyet/manager/bp;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Lcom/appyet/manager/bp;->b(I)V

    :goto_0
    iget-object v0, p0, Lcom/appyet/activity/MainActivity;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->d:Lcom/appyet/manager/bp;

    iget-object v1, p0, Lcom/appyet/activity/MainActivity;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->q:Lcom/appyet/metadata/Metadata;

    iget-object v1, v1, Lcom/appyet/metadata/Metadata;->MetadataSetting:Lcom/appyet/metadata/MetadataSetting;

    iget-boolean v1, v1, Lcom/appyet/metadata/MetadataSetting;->IsSyncOnStartUp:Z

    invoke-virtual {v0, v1}, Lcom/appyet/manager/bp;->f(Z)V

    iget-object v0, p0, Lcom/appyet/activity/MainActivity;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->d:Lcom/appyet/manager/bp;

    iget-object v1, p0, Lcom/appyet/activity/MainActivity;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->q:Lcom/appyet/metadata/Metadata;

    iget-object v1, v1, Lcom/appyet/metadata/Metadata;->MetadataSetting:Lcom/appyet/metadata/MetadataSetting;

    iget-boolean v1, v1, Lcom/appyet/metadata/MetadataSetting;->IsWiFiOnlyForArticle:Z

    invoke-virtual {v0, v1}, Lcom/appyet/manager/bp;->b(Z)V

    iget-object v0, p0, Lcom/appyet/activity/MainActivity;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->d:Lcom/appyet/manager/bp;

    iget-object v1, p0, Lcom/appyet/activity/MainActivity;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->q:Lcom/appyet/metadata/Metadata;

    iget-object v1, v1, Lcom/appyet/metadata/Metadata;->MetadataSetting:Lcom/appyet/metadata/MetadataSetting;

    iget-boolean v1, v1, Lcom/appyet/metadata/MetadataSetting;->IsWiFiOnlyForImage:Z

    invoke-virtual {v0, v1}, Lcom/appyet/manager/bp;->c(Z)V

    iget-object v0, p0, Lcom/appyet/activity/MainActivity;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->d:Lcom/appyet/manager/bp;

    iget-object v1, p0, Lcom/appyet/activity/MainActivity;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->q:Lcom/appyet/metadata/Metadata;

    iget-object v1, v1, Lcom/appyet/metadata/Metadata;->MetadataSetting:Lcom/appyet/metadata/MetadataSetting;

    iget-boolean v1, v1, Lcom/appyet/metadata/MetadataSetting;->IsWiFiOnlyForDownload:Z

    invoke-virtual {v0, v1}, Lcom/appyet/manager/bp;->d(Z)V

    iget-object v0, p0, Lcom/appyet/activity/MainActivity;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->d:Lcom/appyet/manager/bp;

    iget-object v1, p0, Lcom/appyet/activity/MainActivity;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->q:Lcom/appyet/metadata/Metadata;

    iget-object v1, v1, Lcom/appyet/metadata/Metadata;->MetadataSetting:Lcom/appyet/metadata/MetadataSetting;

    iget v1, v1, Lcom/appyet/metadata/MetadataSetting;->AutoCleanUpRead:I

    invoke-virtual {v0, v1}, Lcom/appyet/manager/bp;->c(I)V

    iget-object v0, p0, Lcom/appyet/activity/MainActivity;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->d:Lcom/appyet/manager/bp;

    iget-object v1, p0, Lcom/appyet/activity/MainActivity;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->q:Lcom/appyet/metadata/Metadata;

    iget-object v1, v1, Lcom/appyet/metadata/Metadata;->MetadataSetting:Lcom/appyet/metadata/MetadataSetting;

    iget v1, v1, Lcom/appyet/metadata/MetadataSetting;->AutoCleanUpUnread:I

    invoke-virtual {v0, v1}, Lcom/appyet/manager/bp;->d(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/appyet/activity/MainActivity;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->q:Lcom/appyet/metadata/Metadata;

    iget-object v0, v0, Lcom/appyet/metadata/Metadata;->MetadataApplication:Lcom/appyet/metadata/MetadataApplication;

    iget v0, v0, Lcom/appyet/metadata/MetadataApplication;->ApplicationVersionCode:I

    iget-object v1, p0, Lcom/appyet/activity/MainActivity;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->d:Lcom/appyet/manager/bp;

    invoke-virtual {v1}, Lcom/appyet/manager/bp;->P()I

    move-result v1

    if-eq v0, v1, :cond_2

    :try_start_1
    iget-object v0, p0, Lcom/appyet/activity/MainActivity;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->q:Lcom/appyet/metadata/Metadata;

    iget-object v0, v0, Lcom/appyet/metadata/Metadata;->MetadataApplication:Lcom/appyet/metadata/MetadataApplication;

    iget-object v0, v0, Lcom/appyet/metadata/MetadataApplication;->AppSyncUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/appyet/d/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/activity/MainActivity;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->k:Lcom/appyet/manager/al;

    invoke-virtual {v1, v0}, Lcom/appyet/manager/al;->g(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/appyet/activity/MainActivity;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->k:Lcom/appyet/manager/al;

    invoke-virtual {v1, v0}, Lcom/appyet/manager/al;->a(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/appyet/activity/MainActivity;->b:Lcom/appyet/context/ApplicationContext;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/appyet/context/ApplicationContext;->r:Lcom/appyet/metadata/MetadataAppSync;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/appyet/activity/MainActivity;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->d:Lcom/appyet/manager/bp;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/appyet/manager/bp;->a(J)V

    iget-object v0, p0, Lcom/appyet/activity/MainActivity;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->d:Lcom/appyet/manager/bp;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/appyet/manager/bp;->b(J)V

    iget-object v0, p0, Lcom/appyet/activity/MainActivity;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->d:Lcom/appyet/manager/bp;

    iget-object v1, p0, Lcom/appyet/activity/MainActivity;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->q:Lcom/appyet/metadata/Metadata;

    iget-object v1, v1, Lcom/appyet/metadata/Metadata;->MetadataApplication:Lcom/appyet/metadata/MetadataApplication;

    iget v1, v1, Lcom/appyet/metadata/MetadataApplication;->ApplicationVersionCode:I

    invoke-virtual {v0, v1}, Lcom/appyet/manager/bp;->g(I)V

    :try_start_2
    iget-object v0, p0, Lcom/appyet/activity/MainActivity;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->h:Lcom/appyet/manager/d;

    invoke-virtual {v0}, Lcom/appyet/manager/d;->k()Z

    iget-object v0, p0, Lcom/appyet/activity/MainActivity;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->t:Lcom/appyet/manager/bq;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/appyet/manager/bq;->a(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_3

    :goto_3
    :try_start_3
    iget-object v0, p0, Lcom/appyet/activity/MainActivity;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->q:Lcom/appyet/metadata/Metadata;

    iget-object v0, v0, Lcom/appyet/metadata/Metadata;->MetadataSetting:Lcom/appyet/metadata/MetadataSetting;

    iget-object v0, v0, Lcom/appyet/metadata/MetadataSetting;->WhatsNew:Ljava/lang/String;

    if-eqz v0, :cond_2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/appyet/activity/WhatsNewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/appyet/activity/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_5

    :cond_2
    :goto_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/appyet/activity/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    :cond_3
    iget-object v0, p0, Lcom/appyet/activity/MainActivity;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->m:Lcom/appyet/manager/bw;

    invoke-virtual {v0, p0}, Lcom/appyet/manager/bw;->a(Landroid/app/Activity;)V

    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/appyet/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/appyet/activity/MainActivity;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->q:Lcom/appyet/metadata/Metadata;

    iget-object v0, v0, Lcom/appyet/metadata/Metadata;->MetadataSetting:Lcom/appyet/metadata/MetadataSetting;

    iget-object v0, v0, Lcom/appyet/metadata/MetadataSetting;->LeftMenuType:Ljava/lang/String;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/appyet/activity/MainActivity;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->q:Lcom/appyet/metadata/Metadata;

    iget-object v0, v0, Lcom/appyet/metadata/Metadata;->MetadataSetting:Lcom/appyet/metadata/MetadataSetting;

    const-string v1, "SBWWO"

    iput-object v1, v0, Lcom/appyet/metadata/MetadataSetting;->LeftMenuType:Ljava/lang/String;

    :cond_4
    iget-object v0, p0, Lcom/appyet/activity/MainActivity;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->q:Lcom/appyet/metadata/Metadata;

    iget-object v0, v0, Lcom/appyet/metadata/Metadata;->MetadataSetting:Lcom/appyet/metadata/MetadataSetting;

    iget-object v0, v0, Lcom/appyet/metadata/MetadataSetting;->LeftMenuType:Ljava/lang/String;

    const-string v1, "SBWWO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/appyet/activity/MainActivity;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->q:Lcom/appyet/metadata/Metadata;

    iget-object v0, v0, Lcom/appyet/metadata/Metadata;->MetadataSetting:Lcom/appyet/metadata/MetadataSetting;

    iget-object v0, v0, Lcom/appyet/metadata/MetadataSetting;->LeftMenuType:Ljava/lang/String;

    const-string v1, "SBCWO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Lnet/simonvt/menudrawer/r;->a:Lnet/simonvt/menudrawer/r;

    sget-object v1, Lnet/simonvt/menudrawer/x;->a:Lnet/simonvt/menudrawer/x;

    invoke-static {p0, v0, v1, v5}, Lnet/simonvt/menudrawer/MenuDrawer;->a(Landroid/app/Activity;Lnet/simonvt/menudrawer/r;Lnet/simonvt/menudrawer/x;I)Lnet/simonvt/menudrawer/MenuDrawer;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/activity/MainActivity;->f:Lnet/simonvt/menudrawer/MenuDrawer;

    iget-object v0, p0, Lcom/appyet/activity/MainActivity;->f:Lnet/simonvt/menudrawer/MenuDrawer;

    invoke-virtual {v0, v6}, Lnet/simonvt/menudrawer/MenuDrawer;->setOffsetMenuEnabled(Z)V

    :goto_5
    iget-object v0, p0, Lcom/appyet/activity/MainActivity;->f:Lnet/simonvt/menudrawer/MenuDrawer;

    const v1, 0x7f030058

    invoke-virtual {v0, v1}, Lnet/simonvt/menudrawer/MenuDrawer;->setContentView(I)V

    iget-object v0, p0, Lcom/appyet/activity/MainActivity;->f:Lnet/simonvt/menudrawer/MenuDrawer;

    const v1, 0x7f030052

    invoke-virtual {v0, v1}, Lnet/simonvt/menudrawer/MenuDrawer;->setMenuView(I)V

    iget-object v0, p0, Lcom/appyet/activity/MainActivity;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->m:Lcom/appyet/manager/bw;

    iget-object v0, v0, Lcom/appyet/manager/bw;->a:Lcom/appyet/metadata/MetadataTheme;

    iget-boolean v0, v0, Lcom/appyet/metadata/MetadataTheme;->ActionBarFgColor:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/appyet/activity/MainActivity;->f:Lnet/simonvt/menudrawer/MenuDrawer;

    const v1, 0x7f0200e4

    invoke-virtual {v0, v1}, Lnet/simonvt/menudrawer/MenuDrawer;->setSlideDrawable(I)V

    :goto_6
    iget-object v0, p0, Lcom/appyet/activity/MainActivity;->f:Lnet/simonvt/menudrawer/MenuDrawer;

    invoke-virtual {v0, v6}, Lnet/simonvt/menudrawer/MenuDrawer;->setDrawerIndicatorEnabled(Z)V

    invoke-direct {p0}, Lcom/appyet/activity/MainActivity;->e()V

    iget-object v0, p0, Lcom/appyet/activity/MainActivity;->f:Lnet/simonvt/menudrawer/MenuDrawer;

    invoke-virtual {p0}, Lcom/appyet/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0027

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/simonvt/menudrawer/MenuDrawer;->setDropShadowSize(I)V

    iget-object v0, p0, Lcom/appyet/activity/MainActivity;->f:Lnet/simonvt/menudrawer/MenuDrawer;

    const v1, 0x7f020111

    invoke-virtual {v0, v1}, Lnet/simonvt/menudrawer/MenuDrawer;->setDropShadow(I)V

    iget-object v0, p0, Lcom/appyet/activity/MainActivity;->f:Lnet/simonvt/menudrawer/MenuDrawer;

    invoke-virtual {v0, v7}, Lnet/simonvt/menudrawer/MenuDrawer;->setTouchMode(I)V

    iget-object v0, p0, Lcom/appyet/activity/MainActivity;->f:Lnet/simonvt/menudrawer/MenuDrawer;

    iget-object v1, p0, Lcom/appyet/activity/MainActivity;->i:Lnet/simonvt/menudrawer/o;

    invoke-virtual {v0, v1}, Lnet/simonvt/menudrawer/MenuDrawer;->setOnDrawerStateChangeListener(Lnet/simonvt/menudrawer/o;)V

    invoke-virtual {p0}, Lcom/appyet/activity/MainActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/actionbarsherlock/app/ActionBar;->setHomeButtonEnabled(Z)V

    :goto_7
    const v0, 0x7f0a00c1

    invoke-virtual {p0, v0}, Lcom/appyet/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0a00c0

    invoke-virtual {p0, v1}, Lcom/appyet/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/appyet/activity/MainActivity;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v2, v2, Lcom/appyet/context/ApplicationContext;->m:Lcom/appyet/manager/bw;

    iget-object v2, v2, Lcom/appyet/manager/bw;->a:Lcom/appyet/metadata/MetadataTheme;

    iget-object v2, v2, Lcom/appyet/metadata/MetadataTheme;->PrimaryBgColor:Ljava/lang/String;

    const-string v3, "DARK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-virtual {p0}, Lcom/appyet/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09003d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    invoke-virtual {p0}, Lcom/appyet/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f09003d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    :goto_8
    invoke-virtual {p0}, Lcom/appyet/activity/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const-string v2, "LeftMenuFragment"

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_5

    new-instance v0, Lcom/appyet/c/ay;

    invoke-direct {v0}, Lcom/appyet/c/ay;-><init>()V

    invoke-virtual {v0, v6}, Lcom/appyet/c/ay;->setRetainInstance(Z)V

    const v2, 0x7f0a00c0

    const-string v3, "LeftMenuFragment"

    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    iput-object v0, p0, Lcom/appyet/activity/MainActivity;->c:Lcom/appyet/c/ay;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_5
    invoke-virtual {p0}, Lcom/appyet/activity/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/appyet/activity/MainActivity;->a(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-direct {p0}, Lcom/appyet/activity/MainActivity;->d()V

    :cond_6
    iget-object v0, p0, Lcom/appyet/activity/MainActivity;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->d:Lcom/appyet/manager/bp;

    invoke-virtual {v0}, Lcom/appyet/manager/bp;->O()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/appyet/activity/MainActivity;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->t:Lcom/appyet/manager/bq;

    invoke-virtual {v0, v5}, Lcom/appyet/manager/bq;->a(Z)V

    :cond_7
    :try_start_4
    invoke-virtual {p0}, Lcom/appyet/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    move-result v0

    if-eqz v0, :cond_14

    :cond_8
    :goto_9
    iget-object v0, p0, Lcom/appyet/activity/MainActivity;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v0, Lcom/appyet/context/ApplicationContext;->e:Lcom/appyet/manager/ap;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_a

    :try_start_5
    iget-object v0, v1, Lcom/appyet/manager/ap;->a:Lcom/google/analytics/tracking/android/Tracker;

    if-eqz v0, :cond_9

    if-eqz v2, :cond_9

    const-string v0, "utm_source"

    invoke-virtual {v2, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, v1, Lcom/appyet/manager/ap;->a:Lcom/google/analytics/tracking/android/Tracker;

    const-string v3, "&cs"

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/google/analytics/tracking/android/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7

    :cond_9
    :goto_a
    :try_start_6
    iget-object v0, v1, Lcom/appyet/manager/ap;->b:Lcom/google/analytics/tracking/android/Tracker;

    if-eqz v0, :cond_a

    if-eqz v2, :cond_a

    const-string v0, "utm_source"

    invoke-virtual {v2, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, v1, Lcom/appyet/manager/ap;->b:Lcom/google/analytics/tracking/android/Tracker;

    const-string v1, "&cs"

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/analytics/tracking/android/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_8

    :cond_a
    :goto_b
    iget-object v0, p0, Lcom/appyet/activity/MainActivity;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->e:Lcom/appyet/manager/ap;

    const-string v1, "Home"

    invoke-virtual {v0, v1}, Lcom/appyet/manager/ap;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appyet/activity/MainActivity;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->m:Lcom/appyet/manager/bw;

    iget-object v0, v0, Lcom/appyet/manager/bw;->a:Lcom/appyet/metadata/MetadataTheme;

    iget-object v0, v0, Lcom/appyet/metadata/MetadataTheme;->ActionBarBgColor:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iget-object v0, p0, Lcom/appyet/activity/MainActivity;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->m:Lcom/appyet/manager/bw;

    iget-object v0, v0, Lcom/appyet/manager/bw;->a:Lcom/appyet/metadata/MetadataTheme;

    iget-boolean v0, v0, Lcom/appyet/metadata/MetadataTheme;->ActionBarFgColor:Z

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Lcom/appyet/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f020072

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_c
    new-instance v3, Landroid/graphics/drawable/LayerDrawable;

    new-array v4, v7, [Landroid/graphics/drawable/Drawable;

    aput-object v2, v4, v5

    aput-object v0, v4, v6

    invoke-direct {v3, v4}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/appyet/activity/MainActivity;->g:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_19

    invoke-virtual {p0}, Lcom/appyet/activity/MainActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/actionbarsherlock/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_d
    iput-object v3, p0, Lcom/appyet/activity/MainActivity;->g:Landroid/graphics/drawable/Drawable;

    iput v1, p0, Lcom/appyet/activity/MainActivity;->h:I

    iget-object v0, p0, Lcom/appyet/activity/MainActivity;->a:Lcom/appyet/f/k;

    invoke-virtual {v0}, Lcom/appyet/f/k;->a()V

    return-void

    :cond_b
    :try_start_7
    iget-object v0, p0, Lcom/appyet/activity/MainActivity;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->d:Lcom/appyet/manager/bp;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/appyet/manager/bp;->e(Z)V

    iget-object v0, p0, Lcom/appyet/activity/MainActivity;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->d:Lcom/appyet/manager/bp;

    iget-object v1, p0, Lcom/appyet/activity/MainActivity;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->q:Lcom/appyet/metadata/Metadata;

    iget-object v1, v1, Lcom/appyet/metadata/Metadata;->MetadataSetting:Lcom/appyet/metadata/MetadataSetting;

    iget v1, v1, Lcom/appyet/metadata/MetadataSetting;->DefaultUpdateInterval:I

    invoke-virtual {v0, v1}, Lcom/appyet/manager/bp;->b(I)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    iget-object v1, p0, Lcom/appyet/activity/MainActivity;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->e:Lcom/appyet/manager/ap;

    invoke-virtual {v1, v0}, Lcom/appyet/manager/ap;->a(Ljava/lang/Exception;)V

    goto/16 :goto_1

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto/16 :goto_2

    :catch_2
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto/16 :goto_3

    :catch_3
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Error;)V

    goto/16 :goto_3

    :catch_4
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto/16 :goto_4

    :catch_5
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Error;)V

    goto/16 :goto_4

    :cond_c
    iget-object v0, p0, Lcom/appyet/activity/MainActivity;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->q:Lcom/appyet/metadata/Metadata;

    iget-object v0, v0, Lcom/appyet/metadata/Metadata;->MetadataSetting:Lcom/appyet/metadata/MetadataSetting;

    iget-object v0, v0, Lcom/appyet/metadata/MetadataSetting;->LeftMenuType:Ljava/lang/String;

    const-string v1, "SBWWOO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lnet/simonvt/menudrawer/r;->a:Lnet/simonvt/menudrawer/r;

    sget-object v1, Lnet/simonvt/menudrawer/x;->a:Lnet/simonvt/menudrawer/x;

    invoke-static {p0, v0, v1, v5}, Lnet/simonvt/menudrawer/MenuDrawer;->a(Landroid/app/Activity;Lnet/simonvt/menudrawer/r;Lnet/simonvt/menudrawer/x;I)Lnet/simonvt/menudrawer/MenuDrawer;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/activity/MainActivity;->f:Lnet/simonvt/menudrawer/MenuDrawer;

    iget-object v0, p0, Lcom/appyet/activity/MainActivity;->f:Lnet/simonvt/menudrawer/MenuDrawer;

    invoke-virtual {v0, v5}, Lnet/simonvt/menudrawer/MenuDrawer;->setOffsetMenuEnabled(Z)V

    goto/16 :goto_5

    :cond_d
    iget-object v0, p0, Lcom/appyet/activity/MainActivity;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->q:Lcom/appyet/metadata/Metadata;

    iget-object v0, v0, Lcom/appyet/metadata/Metadata;->MetadataSetting:Lcom/appyet/metadata/MetadataSetting;

    iget-object v0, v0, Lcom/appyet/metadata/MetadataSetting;->LeftMenuType:Ljava/lang/String;

    const-string v1, "SBCWOO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, Lnet/simonvt/menudrawer/r;->a:Lnet/simonvt/menudrawer/r;

    sget-object v1, Lnet/simonvt/menudrawer/x;->a:Lnet/simonvt/menudrawer/x;

    invoke-static {p0, v0, v1, v5}, Lnet/simonvt/menudrawer/MenuDrawer;->a(Landroid/app/Activity;Lnet/simonvt/menudrawer/r;Lnet/simonvt/menudrawer/x;I)Lnet/simonvt/menudrawer/MenuDrawer;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/activity/MainActivity;->f:Lnet/simonvt/menudrawer/MenuDrawer;

    iget-object v0, p0, Lcom/appyet/activity/MainActivity;->f:Lnet/simonvt/menudrawer/MenuDrawer;

    invoke-virtual {v0, v5}, Lnet/simonvt/menudrawer/MenuDrawer;->setOffsetMenuEnabled(Z)V

    goto/16 :goto_5

    :cond_e
    iget-object v0, p0, Lcom/appyet/activity/MainActivity;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->q:Lcom/appyet/metadata/Metadata;

    iget-object v0, v0, Lcom/appyet/metadata/Metadata;->MetadataSetting:Lcom/appyet/metadata/MetadataSetting;

    iget-object v0, v0, Lcom/appyet/metadata/MetadataSetting;->LeftMenuType:Ljava/lang/String;

    const-string v1, "SOAW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    sget-object v0, Lnet/simonvt/menudrawer/r;->c:Lnet/simonvt/menudrawer/r;

    sget-object v1, Lnet/simonvt/menudrawer/x;->a:Lnet/simonvt/menudrawer/x;

    invoke-static {p0, v0, v1, v6}, Lnet/simonvt/menudrawer/MenuDrawer;->a(Landroid/app/Activity;Lnet/simonvt/menudrawer/r;Lnet/simonvt/menudrawer/x;I)Lnet/simonvt/menudrawer/MenuDrawer;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/activity/MainActivity;->f:Lnet/simonvt/menudrawer/MenuDrawer;

    goto/16 :goto_5

    :cond_f
    iget-object v0, p0, Lcom/appyet/activity/MainActivity;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->q:Lcom/appyet/metadata/Metadata;

    iget-object v0, v0, Lcom/appyet/metadata/Metadata;->MetadataSetting:Lcom/appyet/metadata/MetadataSetting;

    iget-object v0, v0, Lcom/appyet/metadata/MetadataSetting;->LeftMenuType:Ljava/lang/String;

    const-string v1, "SOAC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    sget-object v0, Lnet/simonvt/menudrawer/r;->c:Lnet/simonvt/menudrawer/r;

    sget-object v1, Lnet/simonvt/menudrawer/x;->a:Lnet/simonvt/menudrawer/x;

    invoke-static {p0, v0, v1, v5}, Lnet/simonvt/menudrawer/MenuDrawer;->a(Landroid/app/Activity;Lnet/simonvt/menudrawer/r;Lnet/simonvt/menudrawer/x;I)Lnet/simonvt/menudrawer/MenuDrawer;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/activity/MainActivity;->f:Lnet/simonvt/menudrawer/MenuDrawer;

    goto/16 :goto_5

    :cond_10
    sget-object v0, Lnet/simonvt/menudrawer/r;->a:Lnet/simonvt/menudrawer/r;

    sget-object v1, Lnet/simonvt/menudrawer/x;->a:Lnet/simonvt/menudrawer/x;

    invoke-static {p0, v0, v1, v6}, Lnet/simonvt/menudrawer/MenuDrawer;->a(Landroid/app/Activity;Lnet/simonvt/menudrawer/r;Lnet/simonvt/menudrawer/x;I)Lnet/simonvt/menudrawer/MenuDrawer;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/activity/MainActivity;->f:Lnet/simonvt/menudrawer/MenuDrawer;

    iget-object v0, p0, Lcom/appyet/activity/MainActivity;->f:Lnet/simonvt/menudrawer/MenuDrawer;

    invoke-virtual {v0, v6}, Lnet/simonvt/menudrawer/MenuDrawer;->setOffsetMenuEnabled(Z)V

    goto/16 :goto_5

    :cond_11
    iget-object v0, p0, Lcom/appyet/activity/MainActivity;->f:Lnet/simonvt/menudrawer/MenuDrawer;

    const v1, 0x7f0200e3

    invoke-virtual {v0, v1}, Lnet/simonvt/menudrawer/MenuDrawer;->setSlideDrawable(I)V

    goto/16 :goto_6

    :cond_12
    const v0, 0x7f030058

    invoke-virtual {p0, v0}, Lcom/appyet/activity/MainActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/appyet/activity/MainActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {p0}, Lcom/appyet/activity/MainActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/actionbarsherlock/app/ActionBar;->setHomeButtonEnabled(Z)V

    goto/16 :goto_7

    :cond_13
    invoke-virtual {p0}, Lcom/appyet/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09003c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    invoke-virtual {p0}, Lcom/appyet/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f09003c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    goto/16 :goto_8

    :cond_14
    :try_start_8
    iget-object v0, p0, Lcom/appyet/activity/MainActivity;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->d:Lcom/appyet/manager/bp;

    invoke-virtual {v0}, Lcom/appyet/manager/bp;->S()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/appyet/activity/MainActivity;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->d:Lcom/appyet/manager/bp;

    invoke-virtual {v0}, Lcom/appyet/manager/bp;->Q()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_8

    :cond_15
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/appyet/activity/n;

    invoke-direct {v1, p0}, Lcom/appyet/activity/n;-><init>(Lcom/appyet/activity/MainActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    goto/16 :goto_9

    :catch_6
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    iget-object v1, p0, Lcom/appyet/activity/MainActivity;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->e:Lcom/appyet/manager/ap;

    invoke-virtual {v1, v0}, Lcom/appyet/manager/ap;->a(Ljava/lang/Exception;)V

    goto/16 :goto_9

    :cond_16
    :try_start_9
    const-string v0, "referrer"

    invoke-virtual {v2, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, v1, Lcom/appyet/manager/ap;->a:Lcom/google/analytics/tracking/android/Tracker;

    const-string v3, "&dr"

    const-string v4, "referrer"

    invoke-virtual {v2, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/google/analytics/tracking/android/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    goto/16 :goto_a

    :catch_7
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto/16 :goto_a

    :cond_17
    :try_start_a
    const-string v0, "referrer"

    invoke-virtual {v2, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, v1, Lcom/appyet/manager/ap;->b:Lcom/google/analytics/tracking/android/Tracker;

    const-string v1, "&dr"

    const-string v3, "referrer"

    invoke-virtual {v2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/analytics/tracking/android/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8

    goto/16 :goto_b

    :catch_8
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto/16 :goto_b

    :cond_18
    invoke-virtual {p0}, Lcom/appyet/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f020073

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_c

    :cond_19
    new-instance v0, Landroid/graphics/drawable/TransitionDrawable;

    new-array v2, v7, [Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/appyet/activity/MainActivity;->g:Landroid/graphics/drawable/Drawable;

    aput-object v4, v2, v5

    aput-object v3, v2, v6

    invoke-direct {v0, v2}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/appyet/activity/MainActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/actionbarsherlock/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v2, 0xc8

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    goto/16 :goto_d
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onDestroy()V

    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/appyet/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/appyet/activity/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x4

    if-ne p1, v2, :cond_1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/appyet/activity/MainActivity;->f:Lnet/simonvt/menudrawer/MenuDrawer;

    invoke-virtual {v1}, Lnet/simonvt/menudrawer/MenuDrawer;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/appyet/activity/MainActivity;->finish()V

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/appyet/activity/MainActivity;->f:Lnet/simonvt/menudrawer/MenuDrawer;

    invoke-virtual {v1}, Lnet/simonvt/menudrawer/MenuDrawer;->n()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/appyet/activity/MainActivity;->f:Lnet/simonvt/menudrawer/MenuDrawer;

    invoke-virtual {v1}, Lnet/simonvt/menudrawer/MenuDrawer;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/appyet/activity/MainActivity;->f:Lnet/simonvt/menudrawer/MenuDrawer;

    invoke-virtual {v1}, Lnet/simonvt/menudrawer/MenuDrawer;->o()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 5

    const-wide/16 v3, -0x1

    if-eqz p1, :cond_0

    :try_start_0
    const-string v0, "ACTION_WIDGET_OPEN_FEEDITEM_ID"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ACTION_WIDGET_OPEN_FEEDITEM_ID"

    const-wide/16 v1, -0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v2, v0, v3

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/appyet/activity/MainActivity;->finish()V

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/appyet/activity/MainActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v3, 0x4000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v3, "ACTION_WIDGET_OPEN_FEEDITEM_ID"

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/appyet/activity/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    iget-object v1, p0, Lcom/appyet/activity/MainActivity;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->e:Lcom/appyet/manager/ap;

    invoke-virtual {v1, v0}, Lcom/appyet/manager/ap;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 2

    :try_start_0
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    :goto_1
    return v0

    :pswitch_0
    :try_start_1
    invoke-virtual {p0}, Lcom/appyet/activity/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/appyet/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/appyet/activity/MainActivity;->f:Lnet/simonvt/menudrawer/MenuDrawer;

    invoke-virtual {v0}, Lnet/simonvt/menudrawer/MenuDrawer;->m()V

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/appyet/activity/MainActivity;->onBackPressed()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    iget-object v1, p0, Lcom/appyet/activity/MainActivity;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->e:Lcom/appyet/manager/ap;

    invoke-virtual {v1, v0}, Lcom/appyet/manager/ap;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/appyet/activity/MainActivity;->e:Lcom/appyet/receiver/c;

    invoke-virtual {p0, v0}, Lcom/appyet/activity/MainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onResume()V

    invoke-static {p0}, Lcom/appyet/manager/ar;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/appyet/activity/MainActivity;->b:Lcom/appyet/context/ApplicationContext;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/appyet/context/ApplicationContext;->a:Z

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/appyet/activity/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    new-instance v0, Lcom/appyet/receiver/c;

    invoke-direct {v0, p0}, Lcom/appyet/receiver/c;-><init>(Lcom/appyet/receiver/b;)V

    iput-object v0, p0, Lcom/appyet/activity/MainActivity;->e:Lcom/appyet/receiver/c;

    new-instance v0, Landroid/content/IntentFilter;

    iget-object v1, p0, Lcom/appyet/activity/MainActivity;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->x:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/appyet/activity/MainActivity;->e:Lcom/appyet/receiver/c;

    invoke-virtual {p0, v1, v0}, Lcom/appyet/activity/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method
