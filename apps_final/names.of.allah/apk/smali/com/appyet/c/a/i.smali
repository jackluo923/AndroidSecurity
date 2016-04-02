.class public final Lcom/appyet/c/a/i;
.super Lcom/actionbarsherlock/app/SherlockFragment;

# interfaces
.implements Landroid/support/v4/view/bb;
.implements Lcom/actionbarsherlock/widget/ShareActionProvider$OnShareTargetSelectedListener;
.implements Luk/co/senab/a/b/a/b;


# instance fields
.field private a:Lcom/appyet/c/a/k;

.field private b:Lcom/appyet/context/ApplicationContext;

.field private c:I

.field private d:Ljava/lang/Long;

.field private e:Lcom/appyet/data/Module;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Lcom/appyet/a/a/d;

.field private i:Landroid/support/v4/view/ViewPager;

.field private j:Lcom/appyet/a/a/e;

.field private k:Lcom/viewpagerindicator/UnderlinePageIndicator;

.field private l:Luk/co/senab/a/a/a/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    return-void
.end method

.method private a()Landroid/content/Intent;
    .locals 6

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.SUBJECT"

    iget-object v2, p0, Lcom/appyet/c/a/i;->j:Lcom/appyet/a/a/e;

    iget-object v2, v2, Lcom/appyet/a/a/e;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.TEXT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/appyet/c/a/i;->j:Lcom/appyet/a/a/e;

    iget-object v3, v3, Lcom/appyet/a/a/e;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/appyet/c/a/i;->h:Lcom/appyet/a/a/d;

    iget-object v4, p0, Lcom/appyet/c/a/i;->g:Ljava/lang/String;

    iget-object v5, p0, Lcom/appyet/c/a/i;->j:Lcom/appyet/a/a/e;

    iget-object v5, v5, Lcom/appyet/a/a/e;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/appyet/c/a/i;->j:Lcom/appyet/a/a/e;

    iget-object v5, v5, Lcom/appyet/a/a/e;->a:Ljava/lang/String;

    iget-object v5, p0, Lcom/appyet/c/a/i;->j:Lcom/appyet/a/a/e;

    iget-boolean v5, v5, Lcom/appyet/a/a/e;->m:Z

    invoke-static {v3, v4, v5}, Lcom/appyet/manager/an;->a(Lcom/appyet/a/a/d;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/appyet/c/a/i;)Landroid/support/v4/view/ViewPager;
    .locals 1

    iget-object v0, p0, Lcom/appyet/c/a/i;->i:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic b(Lcom/appyet/c/a/i;)Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/appyet/c/a/i;->d:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic c(Lcom/appyet/c/a/i;)Lcom/appyet/a/a/e;
    .locals 1

    iget-object v0, p0, Lcom/appyet/c/a/i;->j:Lcom/appyet/a/a/e;

    return-object v0
.end method

.method private c(I)V
    .locals 2

    :try_start_0
    iput p1, p0, Lcom/appyet/c/a/i;->c:I

    iget-object v0, p0, Lcom/appyet/c/a/i;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->e:Lcom/appyet/manager/ap;

    const-string v1, "ForumThread"

    invoke-virtual {v0, v1}, Lcom/appyet/manager/ap;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/appyet/c/a/i;->c(I)V

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

.method public final e()V
    .locals 1

    iget-object v0, p0, Lcom/appyet/c/a/i;->l:Luk/co/senab/a/a/a/e;

    invoke-virtual {v0}, Luk/co/senab/a/a/a/e;->a()V

    iget-object v0, p0, Lcom/appyet/c/a/i;->a:Lcom/appyet/c/a/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/c/a/i;->a:Lcom/appyet/c/a/k;

    invoke-virtual {v0}, Lcom/appyet/c/a/k;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/appyet/c/a/i;->a:Lcom/appyet/c/a/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/c/a/i;->a:Lcom/appyet/c/a/k;

    invoke-virtual {v0}, Lcom/appyet/c/a/k;->notifyDataSetChanged()V

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/actionbarsherlock/app/SherlockFragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public final onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/appyet/c/a/i;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/appyet/context/ApplicationContext;

    iput-object v0, p0, Lcom/appyet/c/a/i;->b:Lcom/appyet/context/ApplicationContext;

    invoke-virtual {p0}, Lcom/appyet/c/a/i;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "ARG_POSITION"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/appyet/c/a/i;->c:I

    invoke-virtual {p0}, Lcom/appyet/c/a/i;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "ARG_MODULE_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/c/a/i;->d:Ljava/lang/Long;

    iget-object v0, p0, Lcom/appyet/c/a/i;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->h:Lcom/appyet/manager/d;

    iget-object v1, p0, Lcom/appyet/c/a/i;->d:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/appyet/manager/d;->g(J)Lcom/appyet/data/Module;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/c/a/i;->e:Lcom/appyet/data/Module;

    iget-object v0, p0, Lcom/appyet/c/a/i;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->p:Lcom/appyet/manager/an;

    iget-object v1, p0, Lcom/appyet/c/a/i;->d:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/appyet/manager/an;->a(J)Lcom/appyet/a/a/d;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/c/a/i;->h:Lcom/appyet/a/a/d;

    invoke-virtual {p0}, Lcom/appyet/c/a/i;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "ARG_FORUM_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/c/a/i;->f:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/appyet/c/a/i;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "ARG_TOPIC_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/c/a/i;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/appyet/c/a/i;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->o:Lcom/appyet/context/g;

    iget-object v0, v0, Lcom/appyet/context/g;->b:Lcom/appyet/a/a/e;

    iput-object v0, p0, Lcom/appyet/c/a/i;->j:Lcom/appyet/a/a/e;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/appyet/c/a/i;->setHasOptionsMenu(Z)V

    invoke-virtual {p0}, Lcom/appyet/c/a/i;->getActivity()Landroid/support/v4/app/FragmentActivity;

    return-void
.end method

.method public final onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/actionbarsherlock/app/SherlockFragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    return-void
.end method

.method public final onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
    .locals 4

    const v0, 0x7f0f0008

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

    invoke-direct {p0}, Lcom/appyet/c/a/i;->a()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/widget/ShareActionProvider;->setShareIntent(Landroid/content/Intent;)V

    const v0, 0x7f0a00f5

    :try_start_0
    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0a0112

    invoke-interface {p1, v1}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v1

    const v2, 0x7f0a0111

    invoke-interface {p1, v2}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v2

    iget-object v3, p0, Lcom/appyet/c/a/i;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v3, v3, Lcom/appyet/context/ApplicationContext;->m:Lcom/appyet/manager/bw;

    iget-object v3, v3, Lcom/appyet/manager/bw;->a:Lcom/appyet/metadata/MetadataTheme;

    iget-boolean v3, v3, Lcom/appyet/metadata/MetadataTheme;->ActionBarFgColor:Z

    if-eqz v3, :cond_0

    const v3, 0x7f0200c7

    invoke-interface {v0, v3}, Lcom/actionbarsherlock/view/MenuItem;->setIcon(I)Lcom/actionbarsherlock/view/MenuItem;

    const v0, 0x7f0200c2

    invoke-interface {v1, v0}, Lcom/actionbarsherlock/view/MenuItem;->setIcon(I)Lcom/actionbarsherlock/view/MenuItem;

    const v0, 0x7f0200bd

    invoke-interface {v2, v0}, Lcom/actionbarsherlock/view/MenuItem;->setIcon(I)Lcom/actionbarsherlock/view/MenuItem;

    :goto_0
    iget-object v0, p0, Lcom/appyet/c/a/i;->j:Lcom/appyet/a/a/e;

    iget-boolean v0, v0, Lcom/appyet/a/a/e;->e:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-interface {v2, v0}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    :goto_2
    return-void

    :cond_0
    const v3, 0x7f0200d9

    invoke-interface {v0, v3}, Lcom/actionbarsherlock/view/MenuItem;->setIcon(I)Lcom/actionbarsherlock/view/MenuItem;

    const v0, 0x7f0200d4

    invoke-interface {v1, v0}, Lcom/actionbarsherlock/view/MenuItem;->setIcon(I)Lcom/actionbarsherlock/view/MenuItem;

    const v0, 0x7f0200ce

    invoke-interface {v2, v0}, Lcom/actionbarsherlock/view/MenuItem;->setIcon(I)Lcom/actionbarsherlock/view/MenuItem;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const v0, 0x7f030049

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/appyet/c/a/i;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->f:Lcom/appyet/manager/b;

    invoke-virtual {v0}, Lcom/appyet/manager/b;->c()V

    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onDestroy()V

    return-void
.end method

.method public final onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    return v0

    :sswitch_0
    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/appyet/c/a/i;->j:Lcom/appyet/a/a/e;

    iget v1, v1, Lcom/appyet/a/a/e;->h:I

    div-int/lit8 v1, v1, 0xa

    add-int/lit8 v3, v1, 0x1

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_2

    mul-int/lit8 v0, v1, 0xa

    add-int/lit8 v4, v0, 0x1

    add-int/lit8 v0, v1, 0x1

    mul-int/lit8 v0, v0, 0xa

    iget-object v5, p0, Lcom/appyet/c/a/i;->j:Lcom/appyet/a/a/e;

    iget v5, v5, Lcom/appyet/a/a/e;->h:I

    add-int/lit8 v5, v5, 0x1

    if-le v0, v5, :cond_1

    iget-object v0, p0, Lcom/appyet/c/a/i;->j:Lcom/appyet/a/a/e;

    iget v0, v0, Lcom/appyet/a/a/e;->h:I

    add-int/lit8 v0, v0, 0x1

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/appyet/c/a/i;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080109

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ")"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/appyet/c/a/i;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0800f3

    invoke-virtual {p0, v2}, Lcom/appyet/c/a/i;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/appyet/c/a/i;->i:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    new-instance v3, Lcom/appyet/c/a/j;

    invoke-direct {v3, p0}, Lcom/appyet/c/a/j;-><init>(Lcom/appyet/c/a/i;)V

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto/16 :goto_0

    :sswitch_1
    :try_start_3
    iget-object v0, p0, Lcom/appyet/c/a/i;->a:Lcom/appyet/c/a/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/c/a/i;->a:Lcom/appyet/c/a/k;

    invoke-virtual {v0}, Lcom/appyet/c/a/k;->notifyDataSetChanged()V

    goto/16 :goto_0

    :sswitch_2
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/appyet/c/a/i;->b:Lcom/appyet/context/ApplicationContext;

    const-class v2, Lcom/appyet/activity/forum/ForumReplyPostActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "ARG_MODULE_ID"

    iget-object v2, p0, Lcom/appyet/c/a/i;->d:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "ARG_FORUM_ID"

    iget-object v2, p0, Lcom/appyet/c/a/i;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "ARG_TOPIC_ID"

    iget-object v2, p0, Lcom/appyet/c/a/i;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/appyet/c/a/i;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a00f5 -> :sswitch_1
        0x7f0a0111 -> :sswitch_2
        0x7f0a0112 -> :sswitch_0
    .end sparse-switch
.end method

.method public final onPause()V
    .locals 1

    iget-object v0, p0, Lcom/appyet/c/a/i;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->f:Lcom/appyet/manager/b;

    invoke-virtual {v0}, Lcom/appyet/manager/b;->a()V

    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onPause()V

    return-void
.end method

.method public final onResume()V
    .locals 8

    :try_start_0
    iget-object v0, p0, Lcom/appyet/c/a/i;->e:Lcom/appyet/data/Module;

    invoke-virtual {v0}, Lcom/appyet/data/Module;->getIcon()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0}, Lcom/appyet/c/a/i;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "module/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/appyet/c/a/i;->e:Lcom/appyet/data/Module;

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

    invoke-virtual {p0}, Lcom/appyet/c/a/i;->getActivity()Landroid/support/v4/app/FragmentActivity;

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

    invoke-virtual {p0}, Lcom/appyet/c/a/i;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Lcom/appyet/c/a/i;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

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
    invoke-virtual {p0}, Lcom/appyet/c/a/i;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/c/a/i;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->o:Lcom/appyet/context/g;

    iget-object v1, v1, Lcom/appyet/context/g;->b:Lcom/appyet/a/a/e;

    iget-object v1, v1, Lcom/appyet/a/a/e;->c:Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/appyet/c/a/i;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

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

    iget-object v1, p0, Lcom/appyet/c/a/i;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->m:Lcom/appyet/manager/bw;

    iget-object v1, v1, Lcom/appyet/manager/bw;->a:Lcom/appyet/metadata/MetadataTheme;

    iget-boolean v1, v1, Lcom/appyet/metadata/MetadataTheme;->ActionBarFgColor:Z

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/appyet/c/a/i;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09004d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :goto_1
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onResume()V

    iget-object v0, p0, Lcom/appyet/c/a/i;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->f:Lcom/appyet/manager/b;

    invoke-virtual {v0}, Lcom/appyet/manager/b;->b()V

    return-void

    :catch_0
    move-exception v0

    :goto_2
    :try_start_5
    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    invoke-virtual {p0}, Lcom/appyet/c/a/i;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const v2, 0x7f020116

    invoke-virtual {v0, v2}, Lcom/actionbarsherlock/app/ActionBar;->setIcon(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v1, :cond_0

    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_7
    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    invoke-virtual {p0}, Lcom/appyet/c/a/i;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const v1, 0x7f020116

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setIcon(I)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v7, v1

    :goto_3
    if-eqz v7, :cond_2

    :try_start_8
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    :cond_2
    :goto_4
    :try_start_9
    throw v0

    :cond_3
    invoke-virtual {p0}, Lcom/appyet/c/a/i;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const v1, 0x7f020116

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setIcon(I)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    goto/16 :goto_0

    :cond_4
    :try_start_a
    invoke-virtual {p0}, Lcom/appyet/c/a/i;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09004f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    goto :goto_1

    :catch_3
    move-exception v0

    :try_start_b
    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_1

    :catch_4
    move-exception v1

    invoke-static {v1}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    invoke-virtual {p0}, Lcom/appyet/c/a/i;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v1

    const v2, 0x7f020116

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/app/ActionBar;->setIcon(I)V

    goto :goto_4

    :catch_5
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    invoke-virtual {p0}, Lcom/appyet/c/a/i;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const v1, 0x7f020116

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setIcon(I)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v7, v1

    goto :goto_3

    :catch_6
    move-exception v0

    move-object v1, v7

    goto/16 :goto_2
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "pageItem"

    iget-object v1, p0, Lcom/appyet/c/a/i;->i:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public final onShareTargetSelected(Lcom/actionbarsherlock/widget/ShareActionProvider;Landroid/content/Intent;)Z
    .locals 4

    iget-object v0, p0, Lcom/appyet/c/a/i;->b:Lcom/appyet/context/ApplicationContext;

    iget v0, v0, Lcom/appyet/context/ApplicationContext;->y:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/appyet/c/a/i;->b:Lcom/appyet/context/ApplicationContext;

    iget v0, v0, Lcom/appyet/context/ApplicationContext;->y:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/appyet/c/a/i;->b:Lcom/appyet/context/ApplicationContext;

    invoke-virtual {v0, p2}, Lcom/appyet/context/ApplicationContext;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/appyet/c/a/i;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->e:Lcom/appyet/manager/ap;

    const-string v1, "Share"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ForumThread"

    invoke-virtual {v0, v1, v2, v3}, Lcom/appyet/manager/ap;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x1

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    new-instance v1, Luk/co/senab/a/a/a/e;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Luk/co/senab/a/a/a/e;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/appyet/c/a/i;->l:Luk/co/senab/a/a/a/e;

    invoke-virtual {p0}, Lcom/appyet/c/a/i;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Luk/co/senab/a/b/a;->a(Landroid/app/Activity;)Luk/co/senab/a/b/b;

    move-result-object v1

    invoke-static {}, Luk/co/senab/a/b/h;->a()Luk/co/senab/a/b/i;

    move-result-object v2

    iget-object v2, v2, Luk/co/senab/a/b/i;->a:Luk/co/senab/a/b/h;

    iput-object v2, v1, Luk/co/senab/a/b/b;->a:Luk/co/senab/a/b/h;

    iput-object v0, v1, Luk/co/senab/a/b/b;->c:Landroid/view/ViewGroup;

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-virtual {v1, v0}, Luk/co/senab/a/b/b;->a([I)Luk/co/senab/a/b/b;

    move-result-object v0

    iput-object p0, v0, Luk/co/senab/a/b/b;->b:Luk/co/senab/a/b/a/b;

    iget-object v1, p0, Lcom/appyet/c/a/i;->l:Luk/co/senab/a/a/a/e;

    invoke-virtual {v0, v1}, Luk/co/senab/a/b/b;->a(Luk/co/senab/a/b/n;)V

    invoke-virtual {p0}, Lcom/appyet/c/a/i;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0085

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/appyet/c/a/i;->i:Landroid/support/v4/view/ViewPager;

    iget-object v0, p0, Lcom/appyet/c/a/i;->a:Lcom/appyet/c/a/k;

    if-nez v0, :cond_0

    new-instance v0, Lcom/appyet/c/a/k;

    invoke-virtual {p0}, Lcom/appyet/c/a/i;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/appyet/c/a/k;-><init>(Lcom/appyet/c/a/i;Landroid/support/v4/app/FragmentManager;)V

    iput-object v0, p0, Lcom/appyet/c/a/i;->a:Lcom/appyet/c/a/k;

    :cond_0
    iget-object v0, p0, Lcom/appyet/c/a/i;->i:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/appyet/c/a/i;->a:Lcom/appyet/c/a/k;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/aa;)V

    iget-object v0, p0, Lcom/appyet/c/a/i;->i:Landroid/support/v4/view/ViewPager;

    iget v1, p0, Lcom/appyet/c/a/i;->c:I

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    iget v0, p0, Lcom/appyet/c/a/i;->c:I

    invoke-direct {p0, v0}, Lcom/appyet/c/a/i;->c(I)V

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/appyet/c/a/i;->i:Landroid/support/v4/view/ViewPager;

    const-string v1, "pageItem"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/appyet/c/a/i;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0086

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viewpagerindicator/UnderlinePageIndicator;

    iput-object v0, p0, Lcom/appyet/c/a/i;->k:Lcom/viewpagerindicator/UnderlinePageIndicator;

    iget-object v0, p0, Lcom/appyet/c/a/i;->k:Lcom/viewpagerindicator/UnderlinePageIndicator;

    iget-object v1, p0, Lcom/appyet/c/a/i;->i:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/UnderlinePageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    iget-object v0, p0, Lcom/appyet/c/a/i;->k:Lcom/viewpagerindicator/UnderlinePageIndicator;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/UnderlinePageIndicator;->setThumbWidth(I)V

    iget-object v0, p0, Lcom/appyet/c/a/i;->k:Lcom/viewpagerindicator/UnderlinePageIndicator;

    iget v1, p0, Lcom/appyet/c/a/i;->c:I

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/UnderlinePageIndicator;->setCurrentItem(I)V

    iget-object v0, p0, Lcom/appyet/c/a/i;->k:Lcom/viewpagerindicator/UnderlinePageIndicator;

    invoke-virtual {v0, p0}, Lcom/viewpagerindicator/UnderlinePageIndicator;->setOnPageChangeListener(Landroid/support/v4/view/bb;)V

    iget-object v0, p0, Lcom/appyet/c/a/i;->k:Lcom/viewpagerindicator/UnderlinePageIndicator;

    invoke-virtual {p0}, Lcom/appyet/c/a/i;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09005e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/UnderlinePageIndicator;->setSelectedColor(I)V

    invoke-virtual {p0}, Lcom/appyet/c/a/i;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/appyet/activity/MainActivity;

    invoke-virtual {v0}, Lcom/appyet/activity/MainActivity;->a()Lnet/simonvt/menudrawer/MenuDrawer;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/appyet/activity/MainActivity;->a()Lnet/simonvt/menudrawer/MenuDrawer;

    move-result-object v1

    invoke-virtual {v1, v3}, Lnet/simonvt/menudrawer/MenuDrawer;->setTouchMode(I)V

    :cond_2
    invoke-virtual {v0}, Lcom/appyet/activity/MainActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {v0, v3}, Lcom/actionbarsherlock/app/ActionBar;->setHomeButtonEnabled(Z)V

    invoke-virtual {p0}, Lcom/appyet/c/a/i;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a00a6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/appyet/c/a/i;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->f:Lcom/appyet/manager/b;

    invoke-virtual {p0}, Lcom/appyet/c/a/i;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/appyet/manager/b;->a(Landroid/app/Activity;Landroid/view/ViewGroup;)V

    invoke-super {p0, p1, p2}, Lcom/actionbarsherlock/app/SherlockFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0a0085
        0x7f0a0088
    .end array-data
.end method
