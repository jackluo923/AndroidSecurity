.class public final Lcom/appyet/c/a/r;
.super Lcom/actionbarsherlock/app/SherlockFragment;

# interfaces
.implements Luk/co/senab/a/b/a/b;


# instance fields
.field protected a:Lcom/appyet/context/ApplicationContext;

.field protected b:J

.field private c:Lcom/appyet/c/a/u;

.field private d:Landroid/widget/ListView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/view/View;

.field private g:Lcom/a/a/b/d;

.field private h:Lcom/appyet/a/a/a;

.field private i:Lcom/appyet/c/a/w;

.field private j:Lcom/a/a/b/f;

.field private k:Lcom/appyet/data/Module;

.field private l:Ljava/lang/String;

.field private m:Z

.field private n:Z

.field private o:I

.field private p:I

.field private q:I

.field private r:Lcom/appyet/c/a/y;

.field private s:Lcom/appyet/a/a/d;

.field private t:Luk/co/senab/a/a/a/e;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appyet/c/a/r;->h:Lcom/appyet/a/a/a;

    invoke-static {}, Lcom/a/a/b/f;->a()Lcom/a/a/b/f;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/c/a/r;->j:Lcom/a/a/b/f;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/appyet/c/a/r;->m:Z

    iput-boolean v1, p0, Lcom/appyet/c/a/r;->n:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/appyet/c/a/r;->o:I

    const/16 v0, 0x14

    iput v0, p0, Lcom/appyet/c/a/r;->p:I

    iput v1, p0, Lcom/appyet/c/a/r;->q:I

    return-void
.end method

.method static synthetic a(Lcom/appyet/c/a/r;Lcom/appyet/c/a/u;)Lcom/appyet/c/a/u;
    .locals 0

    iput-object p1, p0, Lcom/appyet/c/a/r;->c:Lcom/appyet/c/a/u;

    return-object p1
.end method

.method static synthetic a(Lcom/appyet/c/a/r;Lcom/appyet/c/a/y;)Lcom/appyet/c/a/y;
    .locals 0

    iput-object p1, p0, Lcom/appyet/c/a/r;->r:Lcom/appyet/c/a/y;

    return-object p1
.end method

.method static synthetic a(Lcom/appyet/c/a/r;I)V
    .locals 4

    iget-object v0, p0, Lcom/appyet/c/a/r;->c:Lcom/appyet/c/a/u;

    invoke-virtual {v0, p1}, Lcom/appyet/c/a/u;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/a/a/e;

    iget-object v1, p0, Lcom/appyet/c/a/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->o:Lcom/appyet/context/g;

    iput-object v0, v1, Lcom/appyet/context/g;->b:Lcom/appyet/a/a/e;

    iget-object v1, p0, Lcom/appyet/c/a/r;->i:Lcom/appyet/c/a/w;

    iget-wide v2, p0, Lcom/appyet/c/a/r;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, v0, Lcom/appyet/a/a/e;->a:Ljava/lang/String;

    iget-object v0, v0, Lcom/appyet/a/a/e;->b:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/appyet/c/a/w;->b(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/appyet/c/a/r;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/appyet/c/a/r;->m:Z

    return v0
.end method

.method static synthetic a(Lcom/appyet/c/a/r;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/appyet/c/a/r;->n:Z

    return p1
.end method

.method static synthetic b(Lcom/appyet/c/a/r;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/appyet/c/a/r;->n:Z

    return v0
.end method

.method static synthetic c(Lcom/appyet/c/a/r;)Lcom/appyet/c/a/y;
    .locals 1

    iget-object v0, p0, Lcom/appyet/c/a/r;->r:Lcom/appyet/c/a/y;

    return-object v0
.end method

.method static synthetic d(Lcom/appyet/c/a/r;)I
    .locals 1

    iget v0, p0, Lcom/appyet/c/a/r;->o:I

    return v0
.end method

.method static synthetic e(Lcom/appyet/c/a/r;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appyet/c/a/r;->l:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/appyet/c/a/r;)I
    .locals 1

    iget v0, p0, Lcom/appyet/c/a/r;->p:I

    return v0
.end method

.method static synthetic g(Lcom/appyet/c/a/r;)I
    .locals 2

    iget v0, p0, Lcom/appyet/c/a/r;->o:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/appyet/c/a/r;->o:I

    return v0
.end method

.method static synthetic h(Lcom/appyet/c/a/r;)Lcom/appyet/c/a/u;
    .locals 1

    iget-object v0, p0, Lcom/appyet/c/a/r;->c:Lcom/appyet/c/a/u;

    return-object v0
.end method

.method static synthetic i(Lcom/appyet/c/a/r;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/appyet/c/a/r;->d:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic j(Lcom/appyet/c/a/r;)V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/appyet/c/a/r;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0a0073

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/appyet/c/a/r;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f040011

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    new-instance v2, Lcom/appyet/c/a/x;

    invoke-direct {v2, p0, v0}, Lcom/appyet/c/a/x;-><init>(Lcom/appyet/c/a/r;Landroid/widget/ProgressBar;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method static synthetic k(Lcom/appyet/c/a/r;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/appyet/c/a/r;->m:Z

    return v0
.end method

.method static synthetic l(Lcom/appyet/c/a/r;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/appyet/c/a/r;->f:Landroid/view/View;

    return-object v0
.end method

.method static synthetic m(Lcom/appyet/c/a/r;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/appyet/c/a/r;->e:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic n(Lcom/appyet/c/a/r;)V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/appyet/c/a/r;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0a0073

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method static synthetic o(Lcom/appyet/c/a/r;)Lcom/a/a/b/d;
    .locals 1

    iget-object v0, p0, Lcom/appyet/c/a/r;->g:Lcom/a/a/b/d;

    return-object v0
.end method

.method static synthetic p(Lcom/appyet/c/a/r;)Lcom/a/a/b/f;
    .locals 1

    iget-object v0, p0, Lcom/appyet/c/a/r;->j:Lcom/a/a/b/f;

    return-object v0
.end method


# virtual methods
.method public final e()V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/appyet/c/a/r;->t:Luk/co/senab/a/a/a/e;

    invoke-virtual {v0}, Luk/co/senab/a/a/a/e;->a()V

    iget-object v0, p0, Lcom/appyet/c/a/r;->r:Lcom/appyet/c/a/y;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/c/a/r;->r:Lcom/appyet/c/a/y;

    invoke-virtual {v0}, Lcom/appyet/c/a/y;->d()Lcom/appyet/f/h;

    move-result-object v0

    sget-object v1, Lcom/appyet/f/h;->c:Lcom/appyet/f/h;

    if-ne v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/appyet/c/a/r;->c:Lcom/appyet/c/a/u;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appyet/c/a/r;->c:Lcom/appyet/c/a/u;

    invoke-virtual {v0}, Lcom/appyet/c/a/u;->clear()V

    iget-object v0, p0, Lcom/appyet/c/a/r;->c:Lcom/appyet/c/a/u;

    invoke-virtual {v0}, Lcom/appyet/c/a/u;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/appyet/c/a/r;->d:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/appyet/c/a/r;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/appyet/c/a/r;->o:I

    new-instance v0, Lcom/appyet/c/a/y;

    invoke-direct {v0, p0, v2}, Lcom/appyet/c/a/y;-><init>(Lcom/appyet/c/a/r;B)V

    iput-object v0, p0, Lcom/appyet/c/a/r;->r:Lcom/appyet/c/a/y;

    iget-object v0, p0, Lcom/appyet/c/a/r;->r:Lcom/appyet/c/a/y;

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/appyet/c/a/y;->a([Ljava/lang/Object;)Lcom/appyet/f/a;

    :cond_2
    return-void
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onActivityCreated(Landroid/os/Bundle;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/appyet/c/a/r;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "ARG_MODULE_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/appyet/c/a/r;->b:J

    iget-object v1, p0, Lcom/appyet/c/a/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->h:Lcom/appyet/manager/d;

    iget-wide v2, p0, Lcom/appyet/c/a/r;->b:J

    invoke-virtual {v1, v2, v3}, Lcom/appyet/manager/d;->g(J)Lcom/appyet/data/Module;

    move-result-object v1

    iput-object v1, p0, Lcom/appyet/c/a/r;->k:Lcom/appyet/data/Module;

    const-string v1, "ARG_FORUM_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/c/a/r;->l:Ljava/lang/String;

    iget-object v0, p0, Lcom/appyet/c/a/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->p:Lcom/appyet/manager/an;

    iget-wide v1, p0, Lcom/appyet/c/a/r;->b:J

    invoke-virtual {v0, v1, v2}, Lcom/appyet/manager/an;->a(J)Lcom/appyet/a/a/d;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/c/a/r;->s:Lcom/appyet/a/a/d;

    iget-object v0, p0, Lcom/appyet/c/a/r;->s:Lcom/appyet/a/a/d;

    iget-object v0, v0, Lcom/appyet/a/a/d;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/a/a/a;

    iget-object v2, v0, Lcom/appyet/a/a/a;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/appyet/c/a/r;->l:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iput-object v0, p0, Lcom/appyet/c/a/r;->h:Lcom/appyet/a/a/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/appyet/c/a/r;->getView()Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0a0070

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/appyet/c/a/r;->e:Landroid/widget/TextView;

    const v0, 0x7f0a0071

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/appyet/c/a/r;->d:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/appyet/c/a/r;->d:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/appyet/c/a/r;->e:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/appyet/c/a/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->m:Lcom/appyet/manager/bw;

    iget-object v0, v0, Lcom/appyet/manager/bw;->a:Lcom/appyet/metadata/MetadataTheme;

    iget-object v0, v0, Lcom/appyet/metadata/MetadataTheme;->PrimaryBgColor:Ljava/lang/String;

    const-string v1, "DARK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/appyet/c/a/r;->e:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/appyet/c/a/r;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09003f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_2
    iget-object v0, p0, Lcom/appyet/c/a/r;->d:Landroid/widget/ListView;

    new-instance v1, Lcom/appyet/c/a/s;

    invoke-direct {v1, p0}, Lcom/appyet/c/a/s;-><init>(Lcom/appyet/c/a/r;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/appyet/c/a/r;->d:Landroid/widget/ListView;

    new-instance v1, Lcom/appyet/c/a/t;

    invoke-direct {v1, p0}, Lcom/appyet/c/a/t;-><init>(Lcom/appyet/c/a/r;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-boolean v0, p0, Lcom/appyet/c/a/r;->m:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/appyet/c/a/r;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030044

    iget-object v2, p0, Lcom/appyet/c/a/r;->d:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/c/a/r;->f:Landroid/view/View;

    iget-object v0, p0, Lcom/appyet/c/a/r;->d:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/appyet/c/a/r;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    :cond_3
    iget-object v0, p0, Lcom/appyet/c/a/r;->c:Lcom/appyet/c/a/u;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/appyet/c/a/r;->c:Lcom/appyet/c/a/u;

    invoke-virtual {v0}, Lcom/appyet/c/a/u;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/appyet/c/a/r;->d:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/appyet/c/a/r;->c:Lcom/appyet/c/a/u;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/appyet/c/a/r;->d:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/appyet/c/a/r;->e:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4
    invoke-virtual {p0}, Lcom/appyet/c/a/r;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/appyet/activity/MainActivity;

    invoke-virtual {v0}, Lcom/appyet/activity/MainActivity;->a()Lnet/simonvt/menudrawer/MenuDrawer;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/appyet/activity/MainActivity;->a()Lnet/simonvt/menudrawer/MenuDrawer;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lnet/simonvt/menudrawer/MenuDrawer;->setTouchMode(I)V

    goto/16 :goto_1

    :cond_5
    iget-object v0, p0, Lcom/appyet/c/a/r;->e:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/appyet/c/a/r;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09003e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/appyet/c/a/r;->r:Lcom/appyet/c/a/y;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/c/a/r;->r:Lcom/appyet/c/a/y;

    invoke-virtual {v0}, Lcom/appyet/c/a/y;->d()Lcom/appyet/f/h;

    move-result-object v0

    sget-object v1, Lcom/appyet/f/h;->c:Lcom/appyet/f/h;

    if-ne v0, v1, :cond_1

    :cond_0
    new-instance v0, Lcom/appyet/c/a/y;

    invoke-direct {v0, p0, v2}, Lcom/appyet/c/a/y;-><init>(Lcom/appyet/c/a/r;B)V

    iput-object v0, p0, Lcom/appyet/c/a/r;->r:Lcom/appyet/c/a/y;

    iget-object v0, p0, Lcom/appyet/c/a/r;->r:Lcom/appyet/c/a/y;

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/appyet/c/a/y;->a([Ljava/lang/Object;)Lcom/appyet/f/a;

    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/actionbarsherlock/app/SherlockFragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public final onAttach(Landroid/app/Activity;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onAttach(Landroid/app/Activity;)V

    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/appyet/c/a/w;

    move-object v1, v0

    iput-object v1, p0, Lcom/appyet/c/a/r;->i:Lcom/appyet/c/a/w;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " must implement OnHeadlineSelectedListener"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/appyet/c/a/r;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/appyet/context/ApplicationContext;

    iput-object v0, p0, Lcom/appyet/c/a/r;->a:Lcom/appyet/context/ApplicationContext;

    new-instance v0, Lcom/a/a/b/e;

    invoke-direct {v0}, Lcom/a/a/b/e;-><init>()V

    invoke-virtual {v0}, Lcom/a/a/b/e;->a()Lcom/a/a/b/e;

    move-result-object v0

    const v1, 0x7f0200e6

    invoke-virtual {v0, v1}, Lcom/a/a/b/e;->a(I)Lcom/a/a/b/e;

    move-result-object v0

    const v1, 0x7f0200e8

    invoke-virtual {v0, v1}, Lcom/a/a/b/e;->b(I)Lcom/a/a/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/b/e;->c()Lcom/a/a/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/b/e;->e()Lcom/a/a/b/e;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1}, Lcom/a/a/b/e;->a(Landroid/graphics/Bitmap$Config;)Lcom/a/a/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/b/e;->f()Lcom/a/a/b/d;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/c/a/r;->g:Lcom/a/a/b/d;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/appyet/c/a/r;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public final onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/actionbarsherlock/app/SherlockFragment;->onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V

    const v0, 0x7f0f0009

    invoke-virtual {p2, v0, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    const v0, 0x7f0a00f5

    :try_start_0
    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0a0115

    invoke-interface {p1, v1}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v1

    iget-object v2, p0, Lcom/appyet/c/a/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v2, v2, Lcom/appyet/context/ApplicationContext;->m:Lcom/appyet/manager/bw;

    iget-object v2, v2, Lcom/appyet/manager/bw;->a:Lcom/appyet/metadata/MetadataTheme;

    iget-boolean v2, v2, Lcom/appyet/metadata/MetadataTheme;->ActionBarFgColor:Z

    if-eqz v2, :cond_0

    const v2, 0x7f0200c7

    invoke-interface {v0, v2}, Lcom/actionbarsherlock/view/MenuItem;->setIcon(I)Lcom/actionbarsherlock/view/MenuItem;

    const v0, 0x7f0200bd

    invoke-interface {v1, v0}, Lcom/actionbarsherlock/view/MenuItem;->setIcon(I)Lcom/actionbarsherlock/view/MenuItem;

    :goto_0
    return-void

    :cond_0
    const v2, 0x7f0200d9

    invoke-interface {v0, v2}, Lcom/actionbarsherlock/view/MenuItem;->setIcon(I)Lcom/actionbarsherlock/view/MenuItem;

    const v0, 0x7f0200ce

    invoke-interface {v1, v0}, Lcom/actionbarsherlock/view/MenuItem;->setIcon(I)Lcom/actionbarsherlock/view/MenuItem;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const v0, 0x7f03004b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 5

    const/16 v2, 0x8

    const/4 v4, 0x0

    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    return v0

    :sswitch_0
    iget-object v0, p0, Lcom/appyet/c/a/r;->r:Lcom/appyet/c/a/y;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appyet/c/a/r;->r:Lcom/appyet/c/a/y;

    invoke-virtual {v0}, Lcom/appyet/c/a/y;->d()Lcom/appyet/f/h;

    move-result-object v0

    sget-object v1, Lcom/appyet/f/h;->c:Lcom/appyet/f/h;

    if-ne v0, v1, :cond_0

    :cond_1
    iget-object v0, p0, Lcom/appyet/c/a/r;->c:Lcom/appyet/c/a/u;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/appyet/c/a/r;->c:Lcom/appyet/c/a/u;

    invoke-virtual {v0}, Lcom/appyet/c/a/u;->clear()V

    iget-object v0, p0, Lcom/appyet/c/a/r;->c:Lcom/appyet/c/a/u;

    invoke-virtual {v0}, Lcom/appyet/c/a/u;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/appyet/c/a/r;->d:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/appyet/c/a/r;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    const/4 v0, -0x1

    iput v0, p0, Lcom/appyet/c/a/r;->o:I

    new-instance v0, Lcom/appyet/c/a/y;

    invoke-direct {v0, p0, v4}, Lcom/appyet/c/a/y;-><init>(Lcom/appyet/c/a/r;B)V

    iput-object v0, p0, Lcom/appyet/c/a/r;->r:Lcom/appyet/c/a/y;

    iget-object v0, p0, Lcom/appyet/c/a/r;->r:Lcom/appyet/c/a/y;

    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/appyet/c/a/y;->a([Ljava/lang/Object;)Lcom/appyet/f/a;

    goto :goto_0

    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/appyet/c/a/r;->a:Lcom/appyet/context/ApplicationContext;

    const-class v2, Lcom/appyet/activity/forum/ForumNewTopicActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "ARG_MODULE_ID"

    iget-wide v2, p0, Lcom/appyet/c/a/r;->b:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "ARG_FORUM_ID"

    iget-object v2, p0, Lcom/appyet/c/a/r;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0, v4}, Lcom/appyet/c/a/r;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f0a00f5 -> :sswitch_0
        0x7f0a0115 -> :sswitch_1
    .end sparse-switch
.end method

.method public final onPause()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/appyet/c/a/r;->r:Lcom/appyet/c/a/y;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appyet/c/a/r;->r:Lcom/appyet/c/a/y;

    invoke-virtual {v0}, Lcom/appyet/c/a/y;->d()Lcom/appyet/f/h;

    move-result-object v0

    sget-object v1, Lcom/appyet/f/h;->a:Lcom/appyet/f/h;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/appyet/c/a/r;->r:Lcom/appyet/c/a/y;

    invoke-virtual {v0}, Lcom/appyet/c/a/y;->d()Lcom/appyet/f/h;

    move-result-object v0

    sget-object v1, Lcom/appyet/f/h;->b:Lcom/appyet/f/h;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/appyet/c/a/r;->r:Lcom/appyet/c/a/y;

    invoke-virtual {v0}, Lcom/appyet/c/a/y;->e()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onPause()V

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public final onPrepareOptionsMenu(Lcom/actionbarsherlock/view/Menu;)V
    .locals 2

    const v0, 0x7f0a00f5

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setEnabled(Z)Lcom/actionbarsherlock/view/MenuItem;

    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onPrepareOptionsMenu(Lcom/actionbarsherlock/view/Menu;)V

    return-void
.end method

.method public final onResume()V
    .locals 9

    const v8, 0x7f020116

    iget-object v0, p0, Lcom/appyet/c/a/r;->k:Lcom/appyet/data/Module;

    invoke-virtual {v0}, Lcom/appyet/data/Module;->getIcon()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/appyet/c/a/r;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "module/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/appyet/c/a/r;->k:Lcom/appyet/data/Module;

    invoke-virtual {v3}, Lcom/appyet/data/Module;->getIcon()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    :try_start_1
    invoke-static {v7}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Lcom/appyet/c/a/r;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iget v2, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    iget v1, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v5, v2, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/appyet/c/a/r;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Lcom/appyet/c/a/r;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setIcon(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v7, :cond_0

    :try_start_2
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    :cond_0
    :goto_0
    :try_start_3
    invoke-virtual {p0}, Lcom/appyet/c/a/r;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/c/a/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v2, p0, Lcom/appyet/c/a/r;->h:Lcom/appyet/a/a/a;

    iget-object v2, v2, Lcom/appyet/a/a/a;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/appyet/f/w;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "action_bar_title"

    const-string v2, "id"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7f0a0041

    :cond_1
    invoke-virtual {p0}, Lcom/appyet/c/a/r;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    iget-object v1, p0, Lcom/appyet/c/a/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->m:Lcom/appyet/manager/bw;

    iget-object v1, v1, Lcom/appyet/manager/bw;->a:Lcom/appyet/metadata/MetadataTheme;

    iget-boolean v1, v1, Lcom/appyet/metadata/MetadataTheme;->ActionBarFgColor:Z

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/appyet/c/a/r;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09004d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :cond_2
    :goto_1
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onResume()V

    return-void

    :catch_0
    move-exception v0

    :goto_2
    :try_start_4
    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    invoke-virtual {p0}, Lcom/appyet/c/a/r;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const v2, 0x7f020116

    invoke-virtual {v0, v2}, Lcom/actionbarsherlock/app/ActionBar;->setIcon(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v1, :cond_0

    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    invoke-virtual {p0}, Lcom/appyet/c/a/r;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    :goto_3
    invoke-virtual {v0, v8}, Lcom/actionbarsherlock/app/ActionBar;->setIcon(I)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object v7, v1

    :goto_4
    if-eqz v7, :cond_3

    :try_start_6
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :cond_3
    :goto_5
    throw v0

    :cond_4
    invoke-virtual {p0}, Lcom/appyet/c/a/r;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/actionbarsherlock/app/ActionBar;->setIcon(I)V

    goto/16 :goto_0

    :cond_5
    :try_start_7
    invoke-virtual {p0}, Lcom/appyet/c/a/r;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09004f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_1

    :catch_3
    move-exception v1

    invoke-static {v1}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    invoke-virtual {p0}, Lcom/appyet/c/a/r;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/actionbarsherlock/app/ActionBar;->setIcon(I)V

    goto :goto_5

    :catch_4
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    invoke-virtual {p0}, Lcom/appyet/c/a/r;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v7, v1

    goto :goto_4

    :catch_5
    move-exception v0

    move-object v1, v7

    goto :goto_2
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/actionbarsherlock/app/SherlockFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    check-cast p1, Landroid/view/ViewGroup;

    new-instance v0, Luk/co/senab/a/a/a/e;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Luk/co/senab/a/a/a/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/appyet/c/a/r;->t:Luk/co/senab/a/a/a/e;

    invoke-virtual {p0}, Lcom/appyet/c/a/r;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Luk/co/senab/a/b/a;->a(Landroid/app/Activity;)Luk/co/senab/a/b/b;

    move-result-object v0

    invoke-static {}, Luk/co/senab/a/b/h;->a()Luk/co/senab/a/b/i;

    move-result-object v1

    iget-object v1, v1, Luk/co/senab/a/b/i;->a:Luk/co/senab/a/b/h;

    iput-object v1, v0, Luk/co/senab/a/b/b;->a:Luk/co/senab/a/b/h;

    iput-object p1, v0, Luk/co/senab/a/b/b;->c:Landroid/view/ViewGroup;

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Luk/co/senab/a/b/b;->a([I)Luk/co/senab/a/b/b;

    move-result-object v0

    iput-object p0, v0, Luk/co/senab/a/b/b;->b:Luk/co/senab/a/b/a/b;

    iget-object v1, p0, Lcom/appyet/c/a/r;->t:Luk/co/senab/a/a/a/e;

    invoke-virtual {v0, v1}, Luk/co/senab/a/b/b;->a(Luk/co/senab/a/b/n;)V

    return-void

    :array_0
    .array-data 4
        0x7f0a0071
        0x7f0a0070
    .end array-data
.end method
