.class public final Lcom/appyet/c/ar;
.super Lcom/actionbarsherlock/app/SherlockFragment;

# interfaces
.implements Landroid/support/v4/view/bb;
.implements Lcom/actionbarsherlock/widget/ShareActionProvider$OnShareTargetSelectedListener;


# instance fields
.field private a:Lcom/appyet/c/as;

.field private b:Lcom/appyet/context/ApplicationContext;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lcom/appyet/view/PhotoViewPager;

.field private g:Lcom/viewpagerindicator/c;

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    return-void
.end method

.method private a()Landroid/content/Intent;
    .locals 4

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/appyet/c/ar;->d:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "android.intent.extra.SUBJECT"

    iget-object v2, p0, Lcom/appyet/c/ar;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    iget-object v1, p0, Lcom/appyet/c/ar;->d:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/appyet/c/ar;->e:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, "android.intent.extra.TEXT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/appyet/c/ar;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/appyet/c/ar;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    iget-object v1, p0, Lcom/appyet/c/ar;->e:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, "android.intent.extra.TEXT"

    iget-object v2, p0, Lcom/appyet/c/ar;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/appyet/c/ar;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/appyet/c/ar;->h:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/appyet/c/ar;->c:I

    iput p1, p0, Lcom/appyet/c/ar;->c:I

    return-void
.end method

.method public final a(IFI)V
    .locals 0

    return-void
.end method

.method public final b(I)V
    .locals 0

    return-void
.end method

.method public final onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/appyet/c/ar;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/appyet/context/ApplicationContext;

    iput-object v0, p0, Lcom/appyet/c/ar;->b:Lcom/appyet/context/ApplicationContext;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/appyet/c/ar;->setHasOptionsMenu(Z)V

    :try_start_0
    invoke-virtual {p0}, Lcom/appyet/c/ar;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "SHARE_TITLE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "SHARE_TITLE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/appyet/c/ar;->d:Ljava/lang/String;

    :cond_0
    const-string v1, "SHARE_URL"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "SHARE_URL"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/appyet/c/ar;->e:Ljava/lang/String;

    :cond_1
    const-string v1, "SELECTED_POSITION"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "SELECTED_POSITION"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/appyet/c/ar;->c:I

    :cond_2
    const-string v1, "IMAGE_LINKS"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "IMAGE_LINKS"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/c/ar;->h:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public final onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/actionbarsherlock/app/SherlockFragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    return-void
.end method

.method public final onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
    .locals 2

    const v0, 0x7f0f000a

    invoke-virtual {p2, v0, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    const v0, 0x7f0a00f3

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/actionbarsherlock/view/MenuItem;->getActionProvider()Lcom/actionbarsherlock/view/ActionProvider;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/widget/ShareActionProvider;

    const-string v1, "share_history.xml"

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/widget/ShareActionProvider;->setShareHistoryFileName(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/actionbarsherlock/widget/ShareActionProvider;->setOnShareTargetSelectedListener(Lcom/actionbarsherlock/widget/ShareActionProvider$OnShareTargetSelectedListener;)V

    invoke-direct {p0}, Lcom/appyet/c/ar;->a()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/widget/ShareActionProvider;->setShareIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const v0, 0x7f03004e

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1

    :try_start_0
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    return v0

    :pswitch_0
    :try_start_1
    invoke-virtual {p0}, Lcom/appyet/c/ar;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public final onResume()V
    .locals 0

    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onResume()V

    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "pageItem"

    iget-object v1, p0, Lcom/appyet/c/ar;->f:Lcom/appyet/view/PhotoViewPager;

    invoke-virtual {v1}, Lcom/appyet/view/PhotoViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public final onShareTargetSelected(Lcom/actionbarsherlock/widget/ShareActionProvider;Landroid/content/Intent;)Z
    .locals 4

    iget-object v0, p0, Lcom/appyet/c/ar;->b:Lcom/appyet/context/ApplicationContext;

    iget v0, v0, Lcom/appyet/context/ApplicationContext;->y:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/appyet/c/ar;->b:Lcom/appyet/context/ApplicationContext;

    iget v0, v0, Lcom/appyet/context/ApplicationContext;->y:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/appyet/c/ar;->b:Lcom/appyet/context/ApplicationContext;

    invoke-virtual {v0, p2}, Lcom/appyet/context/ApplicationContext;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/appyet/c/ar;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->e:Lcom/appyet/manager/ap;

    const-string v1, "Share"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Image"

    invoke-virtual {v0, v1, v2, v3}, Lcom/appyet/manager/ap;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/appyet/c/ar;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0085

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/appyet/view/PhotoViewPager;

    iput-object v0, p0, Lcom/appyet/c/ar;->f:Lcom/appyet/view/PhotoViewPager;

    iget-object v0, p0, Lcom/appyet/c/ar;->a:Lcom/appyet/c/as;

    if-nez v0, :cond_0

    new-instance v0, Lcom/appyet/c/as;

    invoke-virtual {p0}, Lcom/appyet/c/ar;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/appyet/c/as;-><init>(Lcom/appyet/c/ar;Landroid/support/v4/app/FragmentManager;)V

    iput-object v0, p0, Lcom/appyet/c/ar;->a:Lcom/appyet/c/as;

    :cond_0
    iget-object v0, p0, Lcom/appyet/c/ar;->f:Lcom/appyet/view/PhotoViewPager;

    iget-object v1, p0, Lcom/appyet/c/ar;->a:Lcom/appyet/c/as;

    invoke-virtual {v0, v1}, Lcom/appyet/view/PhotoViewPager;->setAdapter(Landroid/support/v4/view/aa;)V

    iget-object v0, p0, Lcom/appyet/c/ar;->f:Lcom/appyet/view/PhotoViewPager;

    iget v1, p0, Lcom/appyet/c/ar;->c:I

    invoke-virtual {v0, v1}, Lcom/appyet/view/PhotoViewPager;->setCurrentItem(I)V

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/appyet/c/ar;->f:Lcom/appyet/view/PhotoViewPager;

    const-string v1, "pageItem"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/appyet/view/PhotoViewPager;->setCurrentItem(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/appyet/c/ar;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0086

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viewpagerindicator/LinePageIndicator;

    iput-object v0, p0, Lcom/appyet/c/ar;->g:Lcom/viewpagerindicator/c;

    iget-object v0, p0, Lcom/appyet/c/ar;->g:Lcom/viewpagerindicator/c;

    iget-object v1, p0, Lcom/appyet/c/ar;->f:Lcom/appyet/view/PhotoViewPager;

    invoke-interface {v0, v1}, Lcom/viewpagerindicator/c;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    iget-object v0, p0, Lcom/appyet/c/ar;->g:Lcom/viewpagerindicator/c;

    invoke-interface {v0, p0}, Lcom/viewpagerindicator/c;->setOnPageChangeListener(Landroid/support/v4/view/bb;)V

    iget-object v0, p0, Lcom/appyet/c/ar;->g:Lcom/viewpagerindicator/c;

    iget v1, p0, Lcom/appyet/c/ar;->c:I

    invoke-interface {v0, v1}, Lcom/viewpagerindicator/c;->setCurrentItem(I)V

    invoke-virtual {p0}, Lcom/appyet/c/ar;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/appyet/activity/ImageViewerActivity;

    invoke-virtual {v0}, Lcom/appyet/activity/ImageViewerActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {v0, v3}, Lcom/actionbarsherlock/app/ActionBar;->setHomeButtonEnabled(Z)V

    invoke-super {p0, p1, p2}, Lcom/actionbarsherlock/app/SherlockFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method
