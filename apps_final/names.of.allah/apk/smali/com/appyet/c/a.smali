.class public final Lcom/appyet/c/a;
.super Lcom/actionbarsherlock/app/SherlockFragment;

# interfaces
.implements Landroid/support/v4/view/bb;
.implements Lcom/actionbarsherlock/widget/ShareActionProvider$OnShareTargetSelectedListener;


# instance fields
.field private a:Lcom/appyet/c/g;

.field private b:Lcom/appyet/context/ApplicationContext;

.field private c:I

.field private d:Ljava/lang/Long;

.field private e:Landroid/support/v4/view/ViewPager;

.field private f:Lcom/viewpagerindicator/UnderlinePageIndicator;

.field private g:Lcom/appyet/c/i;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appyet/c/a;->g:Lcom/appyet/c/i;

    return-void
.end method

.method static synthetic a(Lcom/appyet/c/a;I)I
    .locals 0

    iput p1, p0, Lcom/appyet/c/a;->c:I

    return p1
.end method

.method private a()Landroid/content/Intent;
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/appyet/c/a;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iget-object v0, v0, Lcom/appyet/context/f;->b:Ljava/util/List;

    iget v1, p0, Lcom/appyet/c/a;->c:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/data/FeedItem;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "text/plain"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.extra.SUBJECT"

    invoke-virtual {v0}, Lcom/appyet/data/FeedItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.extra.TEXT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/appyet/data/FeedItem;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/appyet/data/FeedItem;->getLink()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/appyet/c/a;)Lcom/appyet/context/ApplicationContext;
    .locals 1

    iget-object v0, p0, Lcom/appyet/c/a;->b:Lcom/appyet/context/ApplicationContext;

    return-object v0
.end method

.method static synthetic b(Lcom/appyet/c/a;)Lcom/appyet/c/g;
    .locals 1

    iget-object v0, p0, Lcom/appyet/c/a;->a:Lcom/appyet/c/g;

    return-object v0
.end method

.method static synthetic c(Lcom/appyet/c/a;)I
    .locals 1

    iget v0, p0, Lcom/appyet/c/a;->c:I

    return v0
.end method

.method private c(I)V
    .locals 4

    :try_start_0
    iput p1, p0, Lcom/appyet/c/a;->c:I

    iget-object v0, p0, Lcom/appyet/c/a;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iget-object v0, v0, Lcom/appyet/context/f;->b:Ljava/util/List;

    if-eqz v0, :cond_4

    if-ltz p1, :cond_4

    iget-object v0, p0, Lcom/appyet/c/a;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iget-object v0, v0, Lcom/appyet/context/f;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_4

    iget-object v0, p0, Lcom/appyet/c/a;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iget-object v0, v0, Lcom/appyet/context/f;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/data/FeedItem;

    iget-object v1, p0, Lcom/appyet/c/a;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    invoke-virtual {v0}, Lcom/appyet/data/FeedItem;->getFeedItemId()Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lcom/appyet/context/f;->f:Ljava/lang/Long;

    invoke-virtual {v0}, Lcom/appyet/data/FeedItem;->getIsRead()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/appyet/c/a;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->d:Lcom/appyet/manager/bp;

    invoke-virtual {v1}, Lcom/appyet/manager/bp;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/appyet/data/FeedItem;->getIsStar()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/appyet/data/FeedItem;->setIsRead(Z)V

    :cond_1
    sget-object v1, Lcom/appyet/data/FeedItem$FlagEnum;->Update:Lcom/appyet/data/FeedItem$FlagEnum;

    invoke-virtual {v0, v1}, Lcom/appyet/data/FeedItem;->setFlag(Lcom/appyet/data/FeedItem$FlagEnum;)V

    :cond_2
    invoke-virtual {p0}, Lcom/appyet/c/a;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->supportInvalidateOptionsMenu()V

    :goto_0
    iget-object v0, p0, Lcom/appyet/c/a;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->e:Lcom/appyet/manager/ap;

    const-string v1, "FeedArticleDetail"

    invoke-virtual {v0, v1}, Lcom/appyet/manager/ap;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appyet/c/a;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->d:Lcom/appyet/manager/bp;

    invoke-virtual {v0}, Lcom/appyet/manager/bp;->V()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/appyet/c/a;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->d:Lcom/appyet/manager/bp;

    iget-object v1, p0, Lcom/appyet/c/a;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->d:Lcom/appyet/manager/bp;

    invoke-virtual {v1}, Lcom/appyet/manager/bp;->U()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/appyet/manager/bp;->i(I)V

    iget-object v0, p0, Lcom/appyet/c/a;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->d:Lcom/appyet/manager/bp;

    invoke-virtual {v0}, Lcom/appyet/manager/bp;->U()I

    move-result v0

    const/16 v1, 0xc8

    if-le v0, v1, :cond_3

    iget-object v0, p0, Lcom/appyet/c/a;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->g:Lcom/appyet/manager/bl;

    invoke-virtual {v0}, Lcom/appyet/manager/bl;->a()Lcom/appyet/manager/bo;

    move-result-object v0

    sget-object v1, Lcom/appyet/manager/bo;->a:Lcom/appyet/manager/bo;

    if-eq v0, v1, :cond_3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/appyet/c/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const v1, 0x7f0800be

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(I)V

    const v1, 0x7f0800c1

    invoke-virtual {p0, v1}, Lcom/appyet/c/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v1, -0x1

    const v2, 0x7f0800bf

    invoke-virtual {p0, v2}, Lcom/appyet/c/a;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/appyet/c/c;

    invoke-direct {v3, p0}, Lcom/appyet/c/c;-><init>(Lcom/appyet/c/a;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v1, -0x2

    const v2, 0x7f080062

    invoke-virtual {p0, v2}, Lcom/appyet/c/a;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/appyet/c/d;

    invoke-direct {v3, p0}, Lcom/appyet/c/d;-><init>(Lcom/appyet/c/a;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_3
    :goto_1
    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/appyet/c/a;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    invoke-virtual {p0}, Lcom/appyet/c/a;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method static synthetic d(Lcom/appyet/c/a;)Landroid/support/v4/view/ViewPager;
    .locals 1

    iget-object v0, p0, Lcom/appyet/c/a;->e:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic e(Lcom/appyet/c/a;)Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/appyet/c/a;->d:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic f(Lcom/appyet/c/a;)V
    .locals 6

    const v0, 0x7f0a0041

    :try_start_0
    const-string v1, ""

    iget-object v2, p0, Lcom/appyet/c/a;->a:Lcom/appyet/c/g;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/appyet/c/a;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iget-boolean v1, v1, Lcom/appyet/context/f;->j:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/appyet/c/a;->a:Lcom/appyet/c/g;

    invoke-virtual {v2}, Lcom/appyet/c/g;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/appyet/c/a;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v2, v2, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iget-object v2, v2, Lcom/appyet/context/f;->g:Lcom/appyet/context/d;

    sget-object v3, Lcom/appyet/context/d;->b:Lcom/appyet/context/d;

    if-ne v2, v3, :cond_3

    invoke-virtual {p0}, Lcom/appyet/c/a;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/appyet/c/a;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v4, v4, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iget-object v4, v4, Lcom/appyet/context/f;->h:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "action_bar_title"

    const-string v3, "id"

    const-string v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_7

    :goto_1
    invoke-virtual {p0}, Lcom/appyet/c/a;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

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

    iget-object v1, p0, Lcom/appyet/c/a;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->m:Lcom/appyet/manager/bw;

    iget-object v1, v1, Lcom/appyet/manager/bw;->a:Lcom/appyet/metadata/MetadataTheme;

    iget-boolean v1, v1, Lcom/appyet/metadata/MetadataTheme;->ActionBarFgColor:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/appyet/c/a;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09004d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_2
    return-void

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/appyet/c/a;->a:Lcom/appyet/c/g;

    invoke-virtual {v2}, Lcom/appyet/c/g;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "+)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/appyet/c/a;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09004f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_2

    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/appyet/c/a;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v2, v2, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iget-object v2, v2, Lcom/appyet/context/f;->a:Lcom/appyet/data/Module;

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/appyet/c/a;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/appyet/c/a;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v5, p0, Lcom/appyet/c/a;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v5, v5, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iget-object v5, v5, Lcom/appyet/context/f;->a:Lcom/appyet/data/Module;

    invoke-virtual {v5}, Lcom/appyet/data/Module;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/appyet/f/w;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "action_bar_title"

    const-string v3, "id"

    const-string v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_6

    :goto_3
    invoke-virtual {p0}, Lcom/appyet/c/a;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

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

    iget-object v1, p0, Lcom/appyet/c/a;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->m:Lcom/appyet/manager/bw;

    iget-object v1, v1, Lcom/appyet/manager/bw;->a:Lcom/appyet/metadata/MetadataTheme;

    iget-boolean v1, v1, Lcom/appyet/metadata/MetadataTheme;->ActionBarFgColor:Z

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/appyet/c/a;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09004d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/appyet/c/a;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09004f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/appyet/c/a;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const v1, 0x7f080116

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    :cond_6
    move v0, v1

    goto :goto_3

    :cond_7
    move v0, v1

    goto/16 :goto_1
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/appyet/c/a;->c(I)V

    iget-object v0, p0, Lcom/appyet/c/a;->a:Lcom/appyet/c/g;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appyet/c/a;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iget-boolean v0, v0, Lcom/appyet/context/f;->j:Z

    if-nez v0, :cond_1

    add-int/lit8 v0, p1, 0x1

    iget-object v1, p0, Lcom/appyet/c/a;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iget-object v1, v1, Lcom/appyet/context/f;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/appyet/c/a;->g:Lcom/appyet/c/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/c/a;->g:Lcom/appyet/c/i;

    invoke-virtual {v0}, Lcom/appyet/c/i;->d()Lcom/appyet/f/h;

    move-result-object v0

    sget-object v1, Lcom/appyet/f/h;->a:Lcom/appyet/f/h;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/appyet/c/a;->g:Lcom/appyet/c/i;

    invoke-virtual {v0}, Lcom/appyet/c/i;->d()Lcom/appyet/f/h;

    move-result-object v0

    sget-object v1, Lcom/appyet/f/h;->c:Lcom/appyet/f/h;

    if-ne v0, v1, :cond_1

    :cond_0
    new-instance v0, Lcom/appyet/c/i;

    invoke-direct {v0, p0}, Lcom/appyet/c/i;-><init>(Lcom/appyet/c/a;)V

    iput-object v0, p0, Lcom/appyet/c/a;->g:Lcom/appyet/c/i;

    iget-object v0, p0, Lcom/appyet/c/a;->g:Lcom/appyet/c/i;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/appyet/c/i;->a([Ljava/lang/Object;)Lcom/appyet/f/a;

    :cond_1
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

    invoke-virtual {p0}, Lcom/appyet/c/a;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/appyet/context/ApplicationContext;

    iput-object v0, p0, Lcom/appyet/c/a;->b:Lcom/appyet/context/ApplicationContext;

    invoke-virtual {p0}, Lcom/appyet/c/a;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "ARG_POSITION"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/appyet/c/a;->c:I

    invoke-virtual {p0}, Lcom/appyet/c/a;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "ARG_MODULE_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/c/a;->d:Ljava/lang/Long;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/appyet/c/a;->setHasOptionsMenu(Z)V

    invoke-virtual {p0}, Lcom/appyet/c/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    return-void
.end method

.method public final onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/actionbarsherlock/app/SherlockFragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    return-void
.end method

.method public final onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
    .locals 3

    const v0, 0x7f0f0003

    invoke-virtual {p2, v0, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    const v0, 0x7f0a00fc

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/actionbarsherlock/view/MenuItem;->getActionProvider()Lcom/actionbarsherlock/view/ActionProvider;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/widget/ShareActionProvider;

    const-string v1, "share_history.xml"

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/widget/ShareActionProvider;->setShareHistoryFileName(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/actionbarsherlock/widget/ShareActionProvider;->setOnShareTargetSelectedListener(Lcom/actionbarsherlock/widget/ShareActionProvider$OnShareTargetSelectedListener;)V

    invoke-direct {p0}, Lcom/appyet/c/a;->a()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/widget/ShareActionProvider;->setShareIntent(Landroid/content/Intent;)V

    :try_start_0
    iget-object v0, p0, Lcom/appyet/c/a;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iget-object v0, v0, Lcom/appyet/context/f;->b:Ljava/util/List;

    iget v1, p0, Lcom/appyet/c/a;->c:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/data/FeedItem;

    const v1, 0x7f0a00fd

    invoke-interface {p1, v1}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v1

    iget-object v2, p0, Lcom/appyet/c/a;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v2, v2, Lcom/appyet/context/ApplicationContext;->m:Lcom/appyet/manager/bw;

    iget-object v2, v2, Lcom/appyet/manager/bw;->a:Lcom/appyet/metadata/MetadataTheme;

    iget-boolean v2, v2, Lcom/appyet/metadata/MetadataTheme;->ActionBarFgColor:Z

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/appyet/data/FeedItem;->getIsStar()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f0200fb

    invoke-interface {v1, v2}, Lcom/actionbarsherlock/view/MenuItem;->setIcon(I)Lcom/actionbarsherlock/view/MenuItem;

    :goto_0
    iget-object v1, p0, Lcom/appyet/c/a;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iget-object v1, v1, Lcom/appyet/context/f;->d:Ljava/util/Hashtable;

    invoke-virtual {v0}, Lcom/appyet/data/FeedItem;->getFeed()Lcom/appyet/data/Feed;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appyet/data/Feed;->getFeedId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/metadata/MetadataModuleFeed;

    const v1, 0x7f0a00ff

    invoke-interface {p1, v1}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v1

    iget-boolean v2, v0, Lcom/appyet/metadata/MetadataModuleFeed;->IsShowTransalte:Z

    invoke-interface {v1, v2}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    const v1, 0x7f0a0101

    invoke-interface {p1, v1}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v1

    iget-boolean v0, v0, Lcom/appyet/metadata/MetadataModuleFeed;->IsShowCopyLink:Z

    invoke-interface {v1, v0}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    :goto_1
    return-void

    :cond_0
    const v2, 0x7f0200fa

    invoke-interface {v1, v2}, Lcom/actionbarsherlock/view/MenuItem;->setIcon(I)Lcom/actionbarsherlock/view/MenuItem;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_1

    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lcom/appyet/data/FeedItem;->getIsStar()Z

    move-result v2

    if-eqz v2, :cond_2

    const v2, 0x7f0200fb

    invoke-interface {v1, v2}, Lcom/actionbarsherlock/view/MenuItem;->setIcon(I)Lcom/actionbarsherlock/view/MenuItem;

    goto :goto_0

    :cond_2
    const v2, 0x7f0200f9

    invoke-interface {v1, v2}, Lcom/actionbarsherlock/view/MenuItem;->setIcon(I)Lcom/actionbarsherlock/view/MenuItem;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const v0, 0x7f03003e

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/appyet/c/a;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->f:Lcom/appyet/manager/b;

    invoke-virtual {v0}, Lcom/appyet/manager/b;->c()V

    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onDestroy()V

    return-void
.end method

.method public final onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 5

    :try_start_0
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    return v0

    :pswitch_0
    :try_start_1
    invoke-virtual {p0}, Lcom/appyet/c/a;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/appyet/c/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f08006f

    invoke-virtual {p0, v2}, Lcom/appyet/c/a;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/appyet/c/a;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v2, v2, Lcom/appyet/context/ApplicationContext;->d:Lcom/appyet/manager/bp;

    invoke-virtual {v2}, Lcom/appyet/manager/bp;->K()I

    move-result v2

    new-instance v3, Lcom/appyet/c/b;

    invoke-direct {v3, p0}, Lcom/appyet/c/b;-><init>(Lcom/appyet/c/a;)V

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :pswitch_1
    :try_start_3
    iget-object v0, p0, Lcom/appyet/c/a;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iget-object v0, v0, Lcom/appyet/context/f;->b:Ljava/util/List;

    iget v1, p0, Lcom/appyet/c/a;->c:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/data/FeedItem;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/appyet/c/a;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->m:Lcom/appyet/manager/bw;

    iget-object v1, v1, Lcom/appyet/manager/bw;->a:Lcom/appyet/metadata/MetadataTheme;

    iget-boolean v1, v1, Lcom/appyet/metadata/MetadataTheme;->ActionBarFgColor:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/appyet/data/FeedItem;->getIsStar()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f0200fa

    invoke-interface {p1, v1}, Lcom/actionbarsherlock/view/MenuItem;->setIcon(I)Lcom/actionbarsherlock/view/MenuItem;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :goto_1
    :try_start_4
    new-instance v1, Lcom/appyet/c/j;

    invoke-direct {v1, p0, v0}, Lcom/appyet/c/j;-><init>(Lcom/appyet/c/a;Lcom/appyet/data/FeedItem;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/appyet/c/j;->a([Ljava/lang/Object;)Lcom/appyet/f/a;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    :try_start_5
    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_1
    const v1, 0x7f0200fb

    invoke-interface {p1, v1}, Lcom/actionbarsherlock/view/MenuItem;->setIcon(I)Lcom/actionbarsherlock/view/MenuItem;

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/appyet/data/FeedItem;->getIsStar()Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x7f0200f9

    invoke-interface {p1, v1}, Lcom/actionbarsherlock/view/MenuItem;->setIcon(I)Lcom/actionbarsherlock/view/MenuItem;

    goto :goto_1

    :cond_3
    const v1, 0x7f0200fb

    invoke-interface {p1, v1}, Lcom/actionbarsherlock/view/MenuItem;->setIcon(I)Lcom/actionbarsherlock/view/MenuItem;

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/appyet/c/a;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iget-object v0, v0, Lcom/appyet/context/f;->b:Ljava/util/List;

    iget v1, p0, Lcom/appyet/c/a;->c:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/data/FeedItem;

    if-eqz v0, :cond_0

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/appyet/c/a;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v2

    const-class v3, Lcom/appyet/activity/TranslateActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "URL"

    invoke-virtual {v0}, Lcom/appyet/data/FeedItem;->getLink()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/appyet/c/a;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/appyet/c/a;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iget-object v0, v0, Lcom/appyet/context/f;->b:Ljava/util/List;

    iget v1, p0, Lcom/appyet/c/a;->c:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/data/FeedItem;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    if-eqz v0, :cond_0

    :try_start_6
    invoke-virtual {v0}, Lcom/appyet/data/FeedItem;->getLink()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/appyet/c/a;->b:Lcom/appyet/context/ApplicationContext;

    const-string v2, "clipboard"

    invoke-virtual {v1, v2}, Lcom/appyet/context/ApplicationContext;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/ClipboardManager;

    invoke-virtual {v0}, Lcom/appyet/data/FeedItem;->getLink()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/appyet/c/a;->b:Lcom/appyet/context/ApplicationContext;

    const v2, 0x7f080082

    invoke-virtual {p0, v2}, Lcom/appyet/c/a;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/appyet/data/FeedItem;->getLink()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Error; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_0

    :catch_3
    move-exception v0

    :try_start_7
    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto/16 :goto_0

    :catch_4
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Error;)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/appyet/c/a;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iget-object v0, v0, Lcom/appyet/context/f;->b:Ljava/util/List;

    iget v1, p0, Lcom/appyet/c/a;->c:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/data/FeedItem;

    if-eqz v0, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/appyet/data/FeedItem;->getIsDeleted()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/appyet/data/FeedItem;->setIsDeleted(Z)V

    new-instance v1, Lcom/appyet/c/f;

    invoke-direct {v1, p0, v0}, Lcom/appyet/c/f;-><init>(Lcom/appyet/c/a;Lcom/appyet/data/FeedItem;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/appyet/c/f;->a([Ljava/lang/Object;)Lcom/appyet/f/a;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0a00fd
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public final onPause()V
    .locals 3

    const/4 v2, 0x0

    :try_start_0
    new-instance v0, Lcom/appyet/c/h;

    invoke-direct {v0, p0}, Lcom/appyet/c/h;-><init>(Lcom/appyet/c/a;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/appyet/c/h;->a([Ljava/lang/Object;)Lcom/appyet/f/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/appyet/c/a;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iget-object v0, v0, Lcom/appyet/context/f;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/c/a;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iget-object v0, v0, Lcom/appyet/context/f;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/data/FeedItem;

    invoke-virtual {v0, v2}, Lcom/appyet/data/FeedItem;->setArticle(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/appyet/data/FeedItem;->setDescription(Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/appyet/c/a;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->f:Lcom/appyet/manager/b;

    invoke-virtual {v0}, Lcom/appyet/manager/b;->a()V

    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onPause()V

    return-void
.end method

.method public final onResume()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/appyet/c/a;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iget-object v0, v0, Lcom/appyet/context/f;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/c/a;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iget-object v0, v0, Lcom/appyet/context/f;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/appyet/c/a;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    invoke-virtual {p0}, Lcom/appyet/c/a;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onResume()V

    iget-object v0, p0, Lcom/appyet/c/a;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->f:Lcom/appyet/manager/b;

    invoke-virtual {v0}, Lcom/appyet/manager/b;->b()V

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "pageItem"

    iget-object v1, p0, Lcom/appyet/c/a;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public final onShareTargetSelected(Lcom/actionbarsherlock/widget/ShareActionProvider;Landroid/content/Intent;)Z
    .locals 4

    iget-object v0, p0, Lcom/appyet/c/a;->b:Lcom/appyet/context/ApplicationContext;

    iget v0, v0, Lcom/appyet/context/ApplicationContext;->y:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/appyet/c/a;->b:Lcom/appyet/context/ApplicationContext;

    iget v0, v0, Lcom/appyet/context/ApplicationContext;->y:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/appyet/c/a;->b:Lcom/appyet/context/ApplicationContext;

    invoke-virtual {v0, p2}, Lcom/appyet/context/ApplicationContext;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/appyet/c/a;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->e:Lcom/appyet/manager/ap;

    const-string v1, "Share"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FeedArticle"

    invoke-virtual {v0, v1, v2, v3}, Lcom/appyet/manager/ap;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/appyet/c/a;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0085

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/appyet/c/a;->e:Landroid/support/v4/view/ViewPager;

    iget-object v0, p0, Lcom/appyet/c/a;->a:Lcom/appyet/c/g;

    if-nez v0, :cond_0

    new-instance v0, Lcom/appyet/c/g;

    invoke-virtual {p0}, Lcom/appyet/c/a;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/appyet/c/g;-><init>(Lcom/appyet/c/a;Landroid/support/v4/app/FragmentManager;)V

    iput-object v0, p0, Lcom/appyet/c/a;->a:Lcom/appyet/c/g;

    :cond_0
    iget-object v0, p0, Lcom/appyet/c/a;->e:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/appyet/c/a;->a:Lcom/appyet/c/g;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/aa;)V

    iget-object v0, p0, Lcom/appyet/c/a;->e:Landroid/support/v4/view/ViewPager;

    iget v1, p0, Lcom/appyet/c/a;->c:I

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    iget v0, p0, Lcom/appyet/c/a;->c:I

    invoke-direct {p0, v0}, Lcom/appyet/c/a;->c(I)V

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/appyet/c/a;->e:Landroid/support/v4/view/ViewPager;

    const-string v1, "pageItem"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/appyet/c/a;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0086

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viewpagerindicator/UnderlinePageIndicator;

    iput-object v0, p0, Lcom/appyet/c/a;->f:Lcom/viewpagerindicator/UnderlinePageIndicator;

    iget-object v0, p0, Lcom/appyet/c/a;->f:Lcom/viewpagerindicator/UnderlinePageIndicator;

    iget-object v1, p0, Lcom/appyet/c/a;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/UnderlinePageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    iget-object v0, p0, Lcom/appyet/c/a;->f:Lcom/viewpagerindicator/UnderlinePageIndicator;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/UnderlinePageIndicator;->setThumbWidth(I)V

    iget-object v0, p0, Lcom/appyet/c/a;->f:Lcom/viewpagerindicator/UnderlinePageIndicator;

    iget v1, p0, Lcom/appyet/c/a;->c:I

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/UnderlinePageIndicator;->setCurrentItem(I)V

    iget-object v0, p0, Lcom/appyet/c/a;->f:Lcom/viewpagerindicator/UnderlinePageIndicator;

    invoke-virtual {v0, p0}, Lcom/viewpagerindicator/UnderlinePageIndicator;->setOnPageChangeListener(Landroid/support/v4/view/bb;)V

    iget-object v0, p0, Lcom/appyet/c/a;->f:Lcom/viewpagerindicator/UnderlinePageIndicator;

    invoke-virtual {p0}, Lcom/appyet/c/a;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09005e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/UnderlinePageIndicator;->setSelectedColor(I)V

    invoke-virtual {p0}, Lcom/appyet/c/a;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

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

    invoke-virtual {p0}, Lcom/appyet/c/a;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0084

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/appyet/c/a;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->f:Lcom/appyet/manager/b;

    invoke-virtual {p0}, Lcom/appyet/c/a;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/appyet/manager/b;->a(Landroid/app/Activity;Landroid/view/ViewGroup;)V

    invoke-super {p0, p1, p2}, Lcom/actionbarsherlock/app/SherlockFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method
