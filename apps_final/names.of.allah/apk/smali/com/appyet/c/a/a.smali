.class public final Lcom/appyet/c/a/a;
.super Lcom/actionbarsherlock/app/SherlockFragment;

# interfaces
.implements Luk/co/senab/a/b/a/b;


# instance fields
.field protected a:Lcom/appyet/context/ApplicationContext;

.field protected b:J

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/appyet/a/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/appyet/c/a/e;

.field private e:Lcom/appyet/c/a/c;

.field private f:Landroid/widget/ListView;

.field private g:Landroid/widget/TextView;

.field private h:Lcom/a/a/b/d;

.field private i:Lcom/a/a/b/f;

.field private j:Lcom/appyet/a/a/d;

.field private k:Lcom/appyet/data/Module;

.field private l:I

.field private m:Ljava/lang/String;

.field private n:Lcom/appyet/a/a/a;

.field private o:Lcom/appyet/c/a/g;

.field private p:Luk/co/senab/a/a/a/e;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    invoke-static {}, Lcom/a/a/b/f;->a()Lcom/a/a/b/f;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/c/a/a;->i:Lcom/a/a/b/f;

    const/4 v0, -0x1

    iput v0, p0, Lcom/appyet/c/a/a;->l:I

    const-string v0, "-1"

    iput-object v0, p0, Lcom/appyet/c/a/a;->m:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appyet/c/a/a;->n:Lcom/appyet/a/a/a;

    return-void
.end method

.method static synthetic a(Lcom/appyet/c/a/a;I)I
    .locals 0

    iput p1, p0, Lcom/appyet/c/a/a;->l:I

    return p1
.end method

.method static synthetic a(Lcom/appyet/c/a/a;)Lcom/appyet/a/a/d;
    .locals 1

    iget-object v0, p0, Lcom/appyet/c/a/a;->j:Lcom/appyet/a/a/d;

    return-object v0
.end method

.method static synthetic a(Lcom/appyet/c/a/a;Lcom/appyet/c/a/c;)Lcom/appyet/c/a/c;
    .locals 0

    iput-object p1, p0, Lcom/appyet/c/a/a;->e:Lcom/appyet/c/a/c;

    return-object p1
.end method

.method static synthetic a(Lcom/appyet/c/a/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/appyet/c/a/a;->m:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/appyet/c/a/a;)V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/appyet/c/a/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0a0073

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/appyet/c/a/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f040011

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    new-instance v2, Lcom/appyet/c/a/f;

    invoke-direct {v2, p0, v0}, Lcom/appyet/c/a/f;-><init>(Lcom/appyet/c/a/a;Landroid/widget/ProgressBar;)V

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

.method static synthetic b(Lcom/appyet/c/a/a;I)V
    .locals 4

    iget-object v0, p0, Lcom/appyet/c/a/a;->e:Lcom/appyet/c/a/c;

    invoke-virtual {v0, p1}, Lcom/appyet/c/a/c;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/a/a/a;

    :try_start_0
    iget-object v1, v0, Lcom/appyet/a/a/a;->j:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/appyet/a/a/a;->j:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, v0, Lcom/appyet/a/a/a;->j:Ljava/lang/String;

    invoke-static {v1}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/appyet/c/a/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/appyet/activity/WebBrowserActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "URL"

    iget-object v0, v0, Lcom/appyet/a/a/a;->j:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/appyet/c/a/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/appyet/c/a/a;->d:Lcom/appyet/c/a/e;

    iget-wide v2, p0, Lcom/appyet/c/a/a;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v0, v0, Lcom/appyet/a/a/a;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/appyet/c/a/a;->m:Ljava/lang/String;

    invoke-interface {v1, v2, v0, v3}, Lcom/appyet/c/a/e;->a(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/appyet/c/a/a;)Lcom/appyet/a/a/a;
    .locals 1

    iget-object v0, p0, Lcom/appyet/c/a/a;->n:Lcom/appyet/a/a/a;

    return-object v0
.end method

.method static synthetic d(Lcom/appyet/c/a/a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appyet/c/a/a;->m:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/appyet/c/a/a;)Lcom/appyet/c/a/c;
    .locals 1

    iget-object v0, p0, Lcom/appyet/c/a/a;->e:Lcom/appyet/c/a/c;

    return-object v0
.end method

.method static synthetic f(Lcom/appyet/c/a/a;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/appyet/c/a/a;->f:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic g(Lcom/appyet/c/a/a;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/appyet/c/a/a;->g:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic h(Lcom/appyet/c/a/a;)I
    .locals 1

    iget v0, p0, Lcom/appyet/c/a/a;->l:I

    return v0
.end method

.method static synthetic i(Lcom/appyet/c/a/a;)V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/appyet/c/a/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

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

.method static synthetic j(Lcom/appyet/c/a/a;)Lcom/a/a/b/d;
    .locals 1

    iget-object v0, p0, Lcom/appyet/c/a/a;->h:Lcom/a/a/b/d;

    return-object v0
.end method

.method static synthetic k(Lcom/appyet/c/a/a;)Lcom/a/a/b/f;
    .locals 1

    iget-object v0, p0, Lcom/appyet/c/a/a;->i:Lcom/a/a/b/f;

    return-object v0
.end method


# virtual methods
.method public final e()V
    .locals 2

    iget-object v0, p0, Lcom/appyet/c/a/a;->p:Luk/co/senab/a/a/a/e;

    invoke-virtual {v0}, Luk/co/senab/a/a/a/e;->a()V

    :try_start_0
    iget-object v0, p0, Lcom/appyet/c/a/a;->o:Lcom/appyet/c/a/g;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appyet/c/a/a;->o:Lcom/appyet/c/a/g;

    invoke-virtual {v0}, Lcom/appyet/c/a/g;->d()Lcom/appyet/f/h;

    move-result-object v0

    sget-object v1, Lcom/appyet/f/h;->a:Lcom/appyet/f/h;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/appyet/c/a/a;->o:Lcom/appyet/c/a/g;

    invoke-virtual {v0}, Lcom/appyet/c/a/g;->d()Lcom/appyet/f/h;

    move-result-object v0

    sget-object v1, Lcom/appyet/f/h;->b:Lcom/appyet/f/h;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/appyet/c/a/a;->o:Lcom/appyet/c/a/g;

    invoke-virtual {v0}, Lcom/appyet/c/a/g;->e()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onActivityCreated(Landroid/os/Bundle;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/appyet/c/a/a;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "ModuleId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/appyet/c/a/a;->b:J

    iget-object v1, p0, Lcom/appyet/c/a/a;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->h:Lcom/appyet/manager/d;

    iget-wide v2, p0, Lcom/appyet/c/a/a;->b:J

    invoke-virtual {v1, v2, v3}, Lcom/appyet/manager/d;->g(J)Lcom/appyet/data/Module;

    move-result-object v1

    iput-object v1, p0, Lcom/appyet/c/a/a;->k:Lcom/appyet/data/Module;

    iget-object v1, p0, Lcom/appyet/c/a/a;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->p:Lcom/appyet/manager/an;

    iget-wide v2, p0, Lcom/appyet/c/a/a;->b:J

    invoke-virtual {v1, v2, v3}, Lcom/appyet/manager/an;->a(J)Lcom/appyet/a/a/d;

    move-result-object v1

    iput-object v1, p0, Lcom/appyet/c/a/a;->j:Lcom/appyet/a/a/d;

    const-string v1, "ForumId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "ForumId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/c/a/a;->m:Ljava/lang/String;

    iget-object v0, p0, Lcom/appyet/c/a/a;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->p:Lcom/appyet/manager/an;

    iget-wide v1, p0, Lcom/appyet/c/a/a;->b:J

    iget-object v3, p0, Lcom/appyet/c/a/a;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/appyet/manager/an;->a(JLjava/lang/String;)Lcom/appyet/a/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/c/a/a;->n:Lcom/appyet/a/a/a;

    :goto_0
    invoke-virtual {p0}, Lcom/appyet/c/a/a;->getView()Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0a0071

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/appyet/c/a/a;->f:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/appyet/c/a/a;->f:Landroid/widget/ListView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    const v0, 0x7f0a0070

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/appyet/c/a/a;->g:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/appyet/c/a/a;->g:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/appyet/c/a/a;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->m:Lcom/appyet/manager/bw;

    iget-object v0, v0, Lcom/appyet/manager/bw;->a:Lcom/appyet/metadata/MetadataTheme;

    iget-object v0, v0, Lcom/appyet/metadata/MetadataTheme;->PrimaryBgColor:Ljava/lang/String;

    const-string v1, "DARK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/appyet/c/a/a;->g:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/appyet/c/a/a;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09003f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1
    iget-object v0, p0, Lcom/appyet/c/a/a;->f:Landroid/widget/ListView;

    new-instance v1, Lcom/appyet/c/a/b;

    invoke-direct {v1, p0}, Lcom/appyet/c/a/b;-><init>(Lcom/appyet/c/a/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {p0}, Lcom/appyet/c/a/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/appyet/activity/MainActivity;

    invoke-virtual {v0}, Lcom/appyet/activity/MainActivity;->a()Lnet/simonvt/menudrawer/MenuDrawer;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/appyet/activity/MainActivity;->a()Lnet/simonvt/menudrawer/MenuDrawer;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lnet/simonvt/menudrawer/MenuDrawer;->setTouchMode(I)V

    :cond_0
    :goto_2
    return-void

    :cond_1
    const-string v0, "-1"

    iput-object v0, p0, Lcom/appyet/c/a/a;->m:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appyet/c/a/a;->n:Lcom/appyet/a/a/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_2

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/appyet/c/a/a;->g:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/appyet/c/a/a;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09003e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public final onAttach(Landroid/app/Activity;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onAttach(Landroid/app/Activity;)V

    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/appyet/c/a/e;

    move-object v1, v0

    iput-object v1, p0, Lcom/appyet/c/a/a;->d:Lcom/appyet/c/a/e;
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

    invoke-virtual {p0}, Lcom/appyet/c/a/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/appyet/context/ApplicationContext;

    iput-object v0, p0, Lcom/appyet/c/a/a;->a:Lcom/appyet/context/ApplicationContext;

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

    iput-object v0, p0, Lcom/appyet/c/a/a;->h:Lcom/a/a/b/d;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/appyet/c/a/a;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public final onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/actionbarsherlock/app/SherlockFragment;->onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V

    const v0, 0x7f0f0005

    invoke-virtual {p2, v0, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    const v0, 0x7f0a00f5

    :try_start_0
    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/c/a/a;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->m:Lcom/appyet/manager/bw;

    iget-object v1, v1, Lcom/appyet/manager/bw;->a:Lcom/appyet/metadata/MetadataTheme;

    iget-boolean v1, v1, Lcom/appyet/metadata/MetadataTheme;->ActionBarFgColor:Z

    if-eqz v1, :cond_0

    const v1, 0x7f0200c7

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setIcon(I)Lcom/actionbarsherlock/view/MenuItem;

    :goto_0
    return-void

    :cond_0
    const v1, 0x7f0200d9

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setIcon(I)Lcom/actionbarsherlock/view/MenuItem;
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

    const v0, 0x7f030045

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 4

    const/4 v2, 0x0

    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    return v0

    :sswitch_0
    iget-object v0, p0, Lcom/appyet/c/a/a;->o:Lcom/appyet/c/a/g;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appyet/c/a/a;->o:Lcom/appyet/c/a/g;

    invoke-virtual {v0}, Lcom/appyet/c/a/g;->d()Lcom/appyet/f/h;

    move-result-object v0

    sget-object v1, Lcom/appyet/f/h;->c:Lcom/appyet/f/h;

    if-ne v0, v1, :cond_0

    :cond_1
    new-instance v0, Lcom/appyet/c/a/g;

    invoke-direct {v0, p0, v2}, Lcom/appyet/c/a/g;-><init>(Lcom/appyet/c/a/a;B)V

    iput-object v0, p0, Lcom/appyet/c/a/a;->o:Lcom/appyet/c/a/g;

    iget-object v0, p0, Lcom/appyet/c/a/a;->o:Lcom/appyet/c/a/g;

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/appyet/c/a/g;->a([Ljava/lang/Object;)Lcom/appyet/f/a;

    goto :goto_0

    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/appyet/c/a/a;->a:Lcom/appyet/context/ApplicationContext;

    const-class v2, Lcom/appyet/activity/forum/ForumSignInActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "ARG_MODULE_ID"

    iget-wide v2, p0, Lcom/appyet/c/a/a;->b:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v1, p0, Lcom/appyet/c/a/a;->a:Lcom/appyet/context/ApplicationContext;

    invoke-virtual {v1, v0}, Lcom/appyet/context/ApplicationContext;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :sswitch_2
    new-instance v0, Lcom/appyet/c/a/h;

    invoke-direct {v0, p0, v2}, Lcom/appyet/c/a/h;-><init>(Lcom/appyet/c/a/a;B)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/appyet/c/a/h;->a([Ljava/lang/Object;)Lcom/appyet/f/a;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a00f5 -> :sswitch_0
        0x7f0a010a -> :sswitch_1
        0x7f0a010b -> :sswitch_2
    .end sparse-switch
.end method

.method public final onPause()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/appyet/c/a/a;->o:Lcom/appyet/c/a/g;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appyet/c/a/a;->o:Lcom/appyet/c/a/g;

    invoke-virtual {v0}, Lcom/appyet/c/a/g;->d()Lcom/appyet/f/h;

    move-result-object v0

    sget-object v1, Lcom/appyet/f/h;->a:Lcom/appyet/f/h;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/appyet/c/a/a;->o:Lcom/appyet/c/a/g;

    invoke-virtual {v0}, Lcom/appyet/c/a/g;->d()Lcom/appyet/f/h;

    move-result-object v0

    sget-object v1, Lcom/appyet/f/h;->b:Lcom/appyet/f/h;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/appyet/c/a/a;->o:Lcom/appyet/c/a/g;

    invoke-virtual {v0}, Lcom/appyet/c/a/g;->e()Z
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
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    const v0, 0x7f0a00f5

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    const v0, 0x7f0a010a

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v3

    const v0, 0x7f0a010b

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v4

    iget-object v0, p0, Lcom/appyet/c/a/a;->j:Lcom/appyet/a/a/d;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/appyet/c/a/a;->j:Lcom/appyet/a/a/d;

    iget-object v0, v0, Lcom/appyet/a/a/d;->e:Lcom/appyet/a/a/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/c/a/a;->j:Lcom/appyet/a/a/d;

    iget-object v0, v0, Lcom/appyet/a/a/d;->e:Lcom/appyet/a/a/f;

    iget-boolean v0, v0, Lcom/appyet/a/a/f;->a:Z

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/appyet/c/a/a;->j:Lcom/appyet/a/a/d;

    iget-object v0, v0, Lcom/appyet/a/a/d;->d:Lcom/appyet/a/a/b;

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-interface {v3, v0}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    iget-object v0, p0, Lcom/appyet/c/a/a;->j:Lcom/appyet/a/a/d;

    iget-object v0, v0, Lcom/appyet/a/a/d;->e:Lcom/appyet/a/a/f;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/appyet/c/a/a;->j:Lcom/appyet/a/a/d;

    iget-object v0, v0, Lcom/appyet/a/a/d;->e:Lcom/appyet/a/a/f;

    iget-boolean v0, v0, Lcom/appyet/a/a/f;->a:Z

    if-eqz v0, :cond_2

    :goto_1
    invoke-interface {v4, v1}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    :goto_2
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onPrepareOptionsMenu(Lcom/actionbarsherlock/view/Menu;)V

    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    :cond_3
    invoke-interface {v3, v2}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    invoke-interface {v4, v2}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    goto :goto_2
.end method

.method public final onResume()V
    .locals 8

    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onResume()V

    :try_start_0
    iget-object v0, p0, Lcom/appyet/c/a/a;->k:Lcom/appyet/data/Module;

    invoke-virtual {v0}, Lcom/appyet/data/Module;->getIcon()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    if-eqz v0, :cond_6

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0}, Lcom/appyet/c/a/a;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "module/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/appyet/c/a/a;->k:Lcom/appyet/data/Module;

    invoke-virtual {v3}, Lcom/appyet/data/Module;->getIcon()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    :try_start_2
    invoke-static {v7}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Lcom/appyet/c/a/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

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

    invoke-virtual {p0}, Lcom/appyet/c/a/a;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Lcom/appyet/c/a/a;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setIcon(Landroid/graphics/drawable/Drawable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v7, :cond_0

    :try_start_3
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :cond_0
    :goto_0
    :try_start_4
    iget-object v0, p0, Lcom/appyet/c/a/a;->o:Lcom/appyet/c/a/g;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appyet/c/a/a;->o:Lcom/appyet/c/a/g;

    invoke-virtual {v0}, Lcom/appyet/c/a/g;->d()Lcom/appyet/f/h;

    move-result-object v0

    sget-object v1, Lcom/appyet/f/h;->c:Lcom/appyet/f/h;

    if-ne v0, v1, :cond_2

    :cond_1
    new-instance v0, Lcom/appyet/c/a/g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/appyet/c/a/g;-><init>(Lcom/appyet/c/a/a;B)V

    iput-object v0, p0, Lcom/appyet/c/a/a;->o:Lcom/appyet/c/a/g;

    iget-object v0, p0, Lcom/appyet/c/a/a;->o:Lcom/appyet/c/a/g;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/appyet/c/a/g;->a([Ljava/lang/Object;)Lcom/appyet/f/a;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :cond_2
    :try_start_5
    iget-object v0, p0, Lcom/appyet/c/a/a;->n:Lcom/appyet/a/a/a;

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/appyet/c/a/a;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/c/a/a;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v2, p0, Lcom/appyet/c/a/a;->k:Lcom/appyet/data/Module;

    invoke-virtual {v2}, Lcom/appyet/data/Module;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/appyet/f/w;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :goto_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "action_bar_title"

    const-string v2, "id"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    const v0, 0x7f0a0041

    :cond_3
    invoke-virtual {p0}, Lcom/appyet/c/a/a;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

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

    iget-object v1, p0, Lcom/appyet/c/a/a;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->m:Lcom/appyet/manager/bw;

    iget-object v1, v1, Lcom/appyet/manager/bw;->a:Lcom/appyet/metadata/MetadataTheme;

    iget-boolean v1, v1, Lcom/appyet/metadata/MetadataTheme;->ActionBarFgColor:Z

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lcom/appyet/c/a/a;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09004d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :cond_4
    :goto_2
    return-void

    :catch_0
    move-exception v0

    :goto_3
    :try_start_6
    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    invoke-virtual {p0}, Lcom/appyet/c/a/a;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const v2, 0x7f020116

    invoke-virtual {v0, v2}, Lcom/actionbarsherlock/app/ActionBar;->setIcon(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v1, :cond_0

    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_0

    :catch_1
    move-exception v0

    :try_start_8
    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    invoke-virtual {p0}, Lcom/appyet/c/a/a;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const v1, 0x7f020116

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setIcon(I)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v7, v1

    :goto_4
    if-eqz v7, :cond_5

    :try_start_9
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    :cond_5
    :goto_5
    :try_start_a
    throw v0

    :cond_6
    invoke-virtual {p0}, Lcom/appyet/c/a/a;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const v1, 0x7f020116

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setIcon(I)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    goto/16 :goto_0

    :cond_7
    :try_start_b
    invoke-virtual {p0}, Lcom/appyet/c/a/a;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/c/a/a;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v2, p0, Lcom/appyet/c/a/a;->n:Lcom/appyet/a/a/a;

    iget-object v2, v2, Lcom/appyet/a/a/a;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/appyet/f/w;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    goto/16 :goto_1

    :catch_3
    move-exception v0

    :try_start_c
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    goto :goto_2

    :cond_8
    :try_start_d
    invoke-virtual {p0}, Lcom/appyet/c/a/a;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09004f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3

    goto :goto_2

    :catch_4
    move-exception v1

    :try_start_e
    invoke-static {v1}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    invoke-virtual {p0}, Lcom/appyet/c/a/a;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v1

    const v2, 0x7f020116

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/app/ActionBar;->setIcon(I)V

    goto :goto_5

    :catch_5
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    invoke-virtual {p0}, Lcom/appyet/c/a/a;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const v1, 0x7f020116

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setIcon(I)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v7, v1

    goto :goto_4

    :catch_6
    move-exception v0

    move-object v1, v7

    goto/16 :goto_3
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/actionbarsherlock/app/SherlockFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    check-cast p1, Landroid/view/ViewGroup;

    new-instance v0, Luk/co/senab/a/a/a/e;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Luk/co/senab/a/a/a/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/appyet/c/a/a;->p:Luk/co/senab/a/a/a/e;

    invoke-virtual {p0}, Lcom/appyet/c/a/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

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

    iget-object v1, p0, Lcom/appyet/c/a/a;->p:Luk/co/senab/a/a/a/e;

    invoke-virtual {v0, v1}, Luk/co/senab/a/b/b;->a(Luk/co/senab/a/b/n;)V

    return-void

    :array_0
    .array-data 4
        0x7f0a0071
        0x7f0a0070
    .end array-data
.end method
