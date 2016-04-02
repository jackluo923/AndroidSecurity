.class public final Lcom/appyet/c/at;
.super Lcom/actionbarsherlock/app/SherlockFragment;

# interfaces
.implements Luk/co/senab/photoview/i;


# instance fields
.field private a:I

.field private b:Lcom/appyet/context/ApplicationContext;

.field private c:Luk/co/senab/photoview/PhotoView;

.field private d:Landroid/widget/ProgressBar;

.field private e:Landroid/os/Handler;

.field private f:Ljava/lang/Runnable;

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:Lcom/a/a/b/f;

.field private j:Lcom/a/a/b/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    invoke-static {}, Lcom/a/a/b/f;->a()Lcom/a/a/b/f;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/c/at;->i:Lcom/a/a/b/f;

    return-void
.end method

.method static synthetic a(Lcom/appyet/c/at;)V
    .locals 4

    iget-object v0, p0, Lcom/appyet/c/at;->e:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/appyet/c/at;->e:Landroid/os/Handler;

    :cond_0
    iget-object v0, p0, Lcom/appyet/c/at;->f:Ljava/lang/Runnable;

    if-nez v0, :cond_1

    new-instance v0, Lcom/appyet/c/aw;

    invoke-direct {v0, p0}, Lcom/appyet/c/aw;-><init>(Lcom/appyet/c/at;)V

    iput-object v0, p0, Lcom/appyet/c/at;->f:Ljava/lang/Runnable;

    :cond_1
    iget-object v0, p0, Lcom/appyet/c/at;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/appyet/c/at;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/appyet/c/at;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/appyet/c/at;->f:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic a(Lcom/appyet/c/at;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/appyet/c/at;->h:Z

    return p1
.end method

.method static synthetic b(Lcom/appyet/c/at;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/appyet/c/at;->d:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic c(Lcom/appyet/c/at;)Lcom/appyet/context/ApplicationContext;
    .locals 1

    iget-object v0, p0, Lcom/appyet/c/at;->b:Lcom/appyet/context/ApplicationContext;

    return-object v0
.end method

.method static synthetic d(Lcom/appyet/c/at;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/appyet/c/at;->h:Z

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    const/16 v1, 0xe

    invoke-virtual {p0}, Lcom/appyet/c/at;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/appyet/c/at;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->hide()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/appyet/c/at;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/appyet/c/at;->e:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appyet/c/at;->f:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appyet/c/at;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/appyet/c/at;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/appyet/c/at;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->show()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/appyet/c/at;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_1

    const-string v0, "POSITION"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "POSITION"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/appyet/c/at;->a:I

    :cond_0
    const-string v0, "IMAGE_LINK"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "IMAGE_LINK"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/c/at;->g:Ljava/lang/String;

    :cond_1
    invoke-virtual {p0}, Lcom/appyet/c/at;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/appyet/context/ApplicationContext;

    iput-object v0, p0, Lcom/appyet/c/at;->b:Lcom/appyet/context/ApplicationContext;

    invoke-virtual {p0}, Lcom/appyet/c/at;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/appyet/c/at;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "IMAGE_LINK"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/appyet/c/at;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "IMAGE_LINK"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/c/at;->g:Ljava/lang/String;

    :cond_2
    invoke-virtual {p0}, Lcom/appyet/c/at;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    new-instance v1, Lcom/appyet/c/au;

    invoke-direct {v1, p0}, Lcom/appyet/c/au;-><init>(Lcom/appyet/c/at;)V

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->addOnMenuVisibilityListener(Lcom/actionbarsherlock/app/ActionBar$OnMenuVisibilityListener;)V

    new-instance v0, Lcom/a/a/b/e;

    invoke-direct {v0}, Lcom/a/a/b/e;-><init>()V

    const v1, 0x7f0200e5

    invoke-virtual {v0, v1}, Lcom/a/a/b/e;->a(I)Lcom/a/a/b/e;

    move-result-object v0

    const v1, 0x7f0200e7

    invoke-virtual {v0, v1}, Lcom/a/a/b/e;->b(I)Lcom/a/a/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/b/e;->b()Lcom/a/a/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/b/e;->d()Lcom/a/a/b/e;

    move-result-object v0

    sget-object v1, Lcom/a/a/b/a/e;->c:Lcom/a/a/b/a/e;

    invoke-virtual {v0, v1}, Lcom/a/a/b/e;->a(Lcom/a/a/b/a/e;)Lcom/a/a/b/e;

    move-result-object v0

    new-instance v1, Lcom/a/a/b/c/b;

    invoke-direct {v1}, Lcom/a/a/b/c/b;-><init>()V

    invoke-virtual {v0, v1}, Lcom/a/a/b/e;->a(Lcom/a/a/b/c/a;)Lcom/a/a/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/b/e;->f()Lcom/a/a/b/d;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/c/at;->j:Lcom/a/a/b/d;

    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const v0, 0x7f030050

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onDestroy()V

    return-void
.end method

.method public final onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onDestroyView()V

    return-void
.end method

.method public final onDetach()V
    .locals 2

    iget-object v0, p0, Lcom/appyet/c/at;->c:Luk/co/senab/photoview/PhotoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Luk/co/senab/photoview/PhotoView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onDetach()V

    return-void
.end method

.method public final onPause()V
    .locals 2

    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onPause()V

    iget-object v0, p0, Lcom/appyet/c/at;->e:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/c/at;->f:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/c/at;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/appyet/c/at;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final onResume()V
    .locals 1

    invoke-virtual {p0}, Lcom/appyet/c/at;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/appyet/manager/ar;->a(Landroid/content/Context;)V

    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onResume()V

    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "POSITION"

    iget v1, p0, Lcom/appyet/c/at;->a:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "IMAGE_LINK"

    iget-object v1, p0, Lcom/appyet/c/at;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    :try_start_0
    invoke-virtual {p0}, Lcom/appyet/c/at;->getView()Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0a00bf

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Luk/co/senab/photoview/PhotoView;

    iput-object v0, p0, Lcom/appyet/c/at;->c:Luk/co/senab/photoview/PhotoView;

    iget-object v0, p0, Lcom/appyet/c/at;->c:Luk/co/senab/photoview/PhotoView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Luk/co/senab/photoview/PhotoView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/appyet/c/at;->c:Luk/co/senab/photoview/PhotoView;

    invoke-virtual {v0, p0}, Luk/co/senab/photoview/PhotoView;->setOnViewTapListener(Luk/co/senab/photoview/i;)V

    const v0, 0x7f0a0073

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/appyet/c/at;->d:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/appyet/c/at;->i:Lcom/a/a/b/f;

    iget-object v1, p0, Lcom/appyet/c/at;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/appyet/c/at;->c:Luk/co/senab/photoview/PhotoView;

    iget-object v3, p0, Lcom/appyet/c/at;->j:Lcom/a/a/b/d;

    new-instance v4, Lcom/appyet/c/av;

    invoke-direct {v4, p0}, Lcom/appyet/c/av;-><init>(Lcom/appyet/c/at;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/a/a/b/f;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/a/a/b/d;Lcom/a/a/b/a/d;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-super {p0, p1, p2}, Lcom/actionbarsherlock/app/SherlockFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method
