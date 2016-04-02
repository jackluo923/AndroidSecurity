.class public Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;
.super Lcom/actionbarsherlock/ActionBarSherlock;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;
.implements Lcom/actionbarsherlock/internal/view/menu/MenuBuilder$Callback;
.implements Lcom/actionbarsherlock/internal/view/menu/MenuPresenter$Callback;
.implements Lcom/actionbarsherlock/view/Window$Callback;


# annotations
.annotation runtime Lcom/actionbarsherlock/ActionBarSherlock$Implementation;
    api = 0x7
.end annotation


# static fields
.field protected static final DEFAULT_FEATURES:I = 0x0

.field private static final PANELS_TAG:Ljava/lang/String; = "sherlock:Panels"


# instance fields
.field private aActionBar:Lcom/actionbarsherlock/internal/app/ActionBarImpl;

.field private mActionMode:Lcom/actionbarsherlock/view/ActionMode;

.field private mActionModeView:Lcom/actionbarsherlock/internal/widget/ActionBarContextView;

.field private mCircularProgressBar:Lcom/actionbarsherlock/internal/widget/IcsProgressBar;

.field private mClosingActionMenu:Z

.field private mContentParent:Landroid/view/ViewGroup;

.field private mDecor:Landroid/view/ViewGroup;

.field private mFeatures:I

.field private mHorizontalProgressBar:Lcom/actionbarsherlock/internal/widget/IcsProgressBar;

.field private mIsDestroyed:Z

.field private mIsTitleReady:Z

.field private mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

.field private mMenuFrozenActionViewState:Landroid/os/Bundle;

.field private mMenuIsPrepared:Z

.field private mMenuRefreshContent:Z

.field protected mNativeItemMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/MenuItem;",
            "Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mReserveOverflow:Z

.field private mReserveOverflowSet:Z

.field private mUiOptions:I

.field private wActionBar:Lcom/actionbarsherlock/internal/widget/ActionBarView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Lcom/actionbarsherlock/ActionBarSherlock;-><init>(Landroid/app/Activity;I)V

    iput-boolean v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mReserveOverflowSet:Z

    iput-boolean v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mIsTitleReady:Z

    iput-boolean v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mIsDestroyed:Z

    iput v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mFeatures:I

    iput v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mUiOptions:I

    return-void
.end method

.method static synthetic access$000(Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mIsDestroyed:Z

    return v0
.end method

.method static synthetic access$100(Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;)Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method static synthetic access$300(Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;)Lcom/actionbarsherlock/internal/widget/ActionBarContextView;
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActionModeView:Lcom/actionbarsherlock/internal/widget/ActionBarContextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$500(Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;)Lcom/actionbarsherlock/view/ActionMode;
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActionMode:Lcom/actionbarsherlock/view/ActionMode;

    return-object v0
.end method

.method static synthetic access$502(Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;Lcom/actionbarsherlock/view/ActionMode;)Lcom/actionbarsherlock/view/ActionMode;
    .locals 0

    iput-object p1, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActionMode:Lcom/actionbarsherlock/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$600(Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public static cleanActivityName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v1, 0x2e

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private generateLayout()Landroid/view/ViewGroup;
    .locals 7

    const/16 v6, 0xa

    const/16 v2, 0x9

    const/4 v5, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/actionbarsherlock/R$styleable;->SherlockTheme:[I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must use Theme.Sherlock, Theme.Sherlock.Light, Theme.Sherlock.Light.DarkActionBar, or a derivative."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/16 v1, 0x3a

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0, v4}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->requestFeature(I)Z

    :cond_1
    :goto_0
    const/16 v1, 0x3c

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v2}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->requestFeature(I)Z

    :cond_2
    const/16 v1, 0x3d

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, v6}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->requestFeature(I)Z

    :cond_3
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, v4}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->hasFeature(I)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0, v2}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_5

    sget v0, Lcom/actionbarsherlock/R$layout;->abs__screen_action_bar_overlay:I

    :goto_1
    iget-object v1, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mDecor:Landroid/view/ViewGroup;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mDecor:Landroid/view/ViewGroup;

    sget v1, Lcom/actionbarsherlock/R$id;->abs__content:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_8

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Couldn\'t find content container view"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const/16 v1, 0x3b

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->requestFeature(I)Z

    goto :goto_0

    :cond_5
    sget v0, Lcom/actionbarsherlock/R$layout;->abs__screen_action_bar:I

    goto :goto_1

    :cond_6
    invoke-virtual {p0, v6}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0, v4}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->hasFeature(I)Z

    move-result v0

    if-nez v0, :cond_7

    sget v0, Lcom/actionbarsherlock/R$layout;->abs__screen_simple_overlay_action_mode:I

    goto :goto_1

    :cond_7
    sget v0, Lcom/actionbarsherlock/R$layout;->abs__screen_simple:I

    goto :goto_1

    :cond_8
    iget-object v1, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mDecor:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setId(I)V

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setId(I)V

    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->hasFeature(I)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-direct {p0, v3}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->getCircularProgressBar(Z)Lcom/actionbarsherlock/internal/widget/IcsProgressBar;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v1, v4}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->setIndeterminate(Z)V

    :cond_9
    return-object v0
.end method

.method private getCircularProgressBar(Z)Lcom/actionbarsherlock/internal/widget/IcsProgressBar;
    .locals 2

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mCircularProgressBar:Lcom/actionbarsherlock/internal/widget/IcsProgressBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mCircularProgressBar:Lcom/actionbarsherlock/internal/widget/IcsProgressBar;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mContentParent:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->installDecor()V

    :cond_1
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mDecor:Landroid/view/ViewGroup;

    sget v1, Lcom/actionbarsherlock/R$id;->abs__progress_circular:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;

    iput-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mCircularProgressBar:Lcom/actionbarsherlock/internal/widget/IcsProgressBar;

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mCircularProgressBar:Lcom/actionbarsherlock/internal/widget/IcsProgressBar;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mCircularProgressBar:Lcom/actionbarsherlock/internal/widget/IcsProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mCircularProgressBar:Lcom/actionbarsherlock/internal/widget/IcsProgressBar;

    goto :goto_0
.end method

.method private getFeatures()I
    .locals 1

    iget v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mFeatures:I

    return v0
.end method

.method private getHorizontalProgressBar(Z)Lcom/actionbarsherlock/internal/widget/IcsProgressBar;
    .locals 2

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mHorizontalProgressBar:Lcom/actionbarsherlock/internal/widget/IcsProgressBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mHorizontalProgressBar:Lcom/actionbarsherlock/internal/widget/IcsProgressBar;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mContentParent:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->installDecor()V

    :cond_1
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mDecor:Landroid/view/ViewGroup;

    sget v1, Lcom/actionbarsherlock/R$id;->abs__progress_horizontal:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;

    iput-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mHorizontalProgressBar:Lcom/actionbarsherlock/internal/widget/IcsProgressBar;

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mHorizontalProgressBar:Lcom/actionbarsherlock/internal/widget/IcsProgressBar;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mHorizontalProgressBar:Lcom/actionbarsherlock/internal/widget/IcsProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mHorizontalProgressBar:Lcom/actionbarsherlock/internal/widget/IcsProgressBar;

    goto :goto_0
.end method

.method private hideProgressBars(Lcom/actionbarsherlock/internal/widget/IcsProgressBar;Lcom/actionbarsherlock/internal/widget/IcsProgressBar;)V
    .locals 5

    const/4 v4, 0x4

    iget v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mFeatures:I

    iget-object v1, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActivity:Landroid/app/Activity;

    const v2, 0x10a0001

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    and-int/lit8 v2, v0, 0x20

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2, v1}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p2, v4}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->setVisibility(I)V

    :cond_0
    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1, v1}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p1, v4}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private initActionBar()V
    .locals 3

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mDecor:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->installDecor()V

    :cond_0
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->aActionBar:Lcom/actionbarsherlock/internal/app/ActionBarImpl;

    if-nez v0, :cond_1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->hasFeature(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isChild()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;

    iget-object v1, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActivity:Landroid/app/Activity;

    iget v2, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mFeatures:I

    invoke-direct {v0, v1, v2}, Lcom/actionbarsherlock/internal/app/ActionBarImpl;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->aActionBar:Lcom/actionbarsherlock/internal/app/ActionBarImpl;

    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mIsDelegate:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->wActionBar:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    iget-object v1, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->setWindowTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private initializePanelMenu()Z
    .locals 5

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActivity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->wActionBar:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget v3, Lcom/actionbarsherlock/R$attr;->actionBarWidgetTheme:I

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v2, :cond_0

    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    :goto_0
    new-instance v1, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    invoke-direct {v1, v0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->setCallback(Lcom/actionbarsherlock/internal/view/menu/MenuBuilder$Callback;)V

    return v4

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method private installDecor()V
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mDecor:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v3, 0x1020002

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mDecor:Landroid/view/ViewGroup;

    :cond_0
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mContentParent:Landroid/view/ViewGroup;

    if-nez v0, :cond_8

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mDecor:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-lez v3, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v3, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mDecor:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_1

    iget-object v5, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mDecor:Landroid/view/ViewGroup;

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mDecor:Landroid/view/ViewGroup;

    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->generateLayout()Landroid/view/ViewGroup;

    move-result-object v3

    iput-object v3, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mContentParent:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v4, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mDecor:Landroid/view/ViewGroup;

    sget v3, Lcom/actionbarsherlock/R$id;->abs__action_bar:I

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;

    iput-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->wActionBar:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->wActionBar:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->wActionBar:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    invoke-virtual {v0, p0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->setWindowCallback(Lcom/actionbarsherlock/view/Window$Callback;)V

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->wActionBar:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->wActionBar:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    iget-object v3, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->setWindowTitle(Ljava/lang/CharSequence;)V

    :cond_3
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->wActionBar:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->initProgress()V

    :cond_4
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->wActionBar:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->initIndeterminateProgress()V

    :cond_5
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->loadUiOptionsFromManifest(Landroid/app/Activity;)I

    move-result v0

    if-eqz v0, :cond_6

    iput v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mUiOptions:I

    :cond_6
    iget v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mUiOptions:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_9

    move v3, v1

    :goto_2
    if-eqz v3, :cond_a

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActivity:Landroid/app/Activity;

    sget v1, Lcom/actionbarsherlock/R$bool;->abs__split_action_bar_is_narrow:I

    invoke-static {v0, v1}, Lcom/actionbarsherlock/internal/ResourcesCompat;->getResources_getBoolean(Landroid/content/Context;I)Z

    move-result v0

    move v2, v0

    :goto_3
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mDecor:Landroid/view/ViewGroup;

    sget v1, Lcom/actionbarsherlock/R$id;->abs__split_action_bar:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_b

    iget-object v1, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->wActionBar:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    invoke-virtual {v1, v0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->setSplitView(Lcom/actionbarsherlock/internal/widget/ActionBarContainer;)V

    iget-object v1, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->wActionBar:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->setSplitActionBar(Z)V

    iget-object v1, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->wActionBar:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    invoke-virtual {v1, v3}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->setSplitWhenNarrow(Z)V

    iget-object v1, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mDecor:Landroid/view/ViewGroup;

    sget v4, Lcom/actionbarsherlock/R$id;->abs__action_context_bar:I

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;

    iput-object v1, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActionModeView:Lcom/actionbarsherlock/internal/widget/ActionBarContextView;

    iget-object v1, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActionModeView:Lcom/actionbarsherlock/internal/widget/ActionBarContextView;

    invoke-virtual {v1, v0}, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->setSplitView(Lcom/actionbarsherlock/internal/widget/ActionBarContainer;)V

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActionModeView:Lcom/actionbarsherlock/internal/widget/ActionBarContextView;

    invoke-virtual {v0, v2}, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->setSplitActionBar(Z)V

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActionModeView:Lcom/actionbarsherlock/internal/widget/ActionBarContextView;

    invoke-virtual {v0, v3}, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->setSplitWhenNarrow(Z)V

    :cond_7
    :goto_4
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mDecor:Landroid/view/ViewGroup;

    new-instance v1, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat$1;

    invoke-direct {v1, p0}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat$1;-><init>(Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_8
    return-void

    :cond_9
    move v3, v2

    goto :goto_2

    :cond_a
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/actionbarsherlock/R$styleable;->SherlockTheme:[I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v1, 0x3e

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    move v2, v0

    goto :goto_3

    :cond_b
    if-eqz v2, :cond_7

    const-string v0, "ActionBarSherlock"

    const-string v1, "Requested split action bar with incompatible window decor! Ignoring request."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method private isReservingOverflow()Z
    .locals 1

    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mReserveOverflowSet:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->reserveOverflow(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mReserveOverflow:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mReserveOverflowSet:Z

    :cond_0
    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mReserveOverflow:Z

    return v0
.end method

.method private static loadUiOptionsFromManifest(Landroid/app/Activity;)I
    .locals 14

    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v9, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, v9, v0}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "AndroidManifest.xml"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->openXmlResourceParser(Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getEventType()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    move v1, v0

    move v0, v2

    :goto_0
    if-eq v1, v7, :cond_8

    const/4 v3, 0x2

    if-ne v1, v3, :cond_7

    :try_start_1
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "application"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getAttributeCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_1

    const-string v3, "uiOptions"

    invoke-interface {v10, v1}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    invoke-interface {v10, v1, v3}, Landroid/content/res/XmlResourceParser;->getAttributeIntValue(II)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    move v1, v0

    :goto_2
    :try_start_2
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->nextToken()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v0

    move v13, v0

    move v0, v1

    move v1, v13

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    move v1, v0

    goto :goto_2

    :cond_2
    :try_start_3
    const-string v3, "activity"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getAttributeCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v3, v2

    move-object v4, v5

    move-object v6, v5

    :goto_3
    if-ltz v1, :cond_6

    invoke-interface {v10, v1}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, "uiOptions"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    const/4 v6, 0x0

    invoke-interface {v10, v1, v6}, Landroid/content/res/XmlResourceParser;->getAttributeIntValue(II)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    :cond_3
    :goto_4
    if-eqz v6, :cond_4

    if-eqz v4, :cond_4

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    :cond_5
    const-string v12, "name"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v10, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->cleanActivityName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result v11

    if-eqz v11, :cond_6

    move v3, v7

    goto :goto_4

    :cond_6
    if-nez v3, :cond_8

    :cond_7
    move v1, v0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v1, v0

    move v0, v2

    :goto_5
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_8
    return v0

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v0

    move-object v13, v0

    move v0, v1

    move-object v1, v13

    goto :goto_5
.end method

.method private onIntChanged(II)V
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    :cond_0
    invoke-direct {p0, p2}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->updateProgressBars(I)V

    :cond_1
    return-void
.end method

.method private preparePanel()Z
    .locals 5

    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-boolean v2, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mMenuIsPrepared:Z

    if-eqz v2, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mMenuRefreshContent:Z

    if-eqz v2, :cond_6

    :cond_2
    iget-object v2, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    if-nez v2, :cond_3

    invoke-direct {p0}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->initializePanelMenu()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    if-eqz v2, :cond_0

    :cond_3
    iget-object v2, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->wActionBar:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->wActionBar:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    iget-object v3, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    invoke-virtual {v2, v3, p0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->setMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/internal/view/menu/MenuPresenter$Callback;)V

    :cond_4
    iget-object v2, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    invoke-virtual {v2}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    iget-object v2, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    invoke-virtual {p0, v2}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->callbackCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z

    move-result v2

    if-nez v2, :cond_5

    iput-object v4, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    iget-object v1, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->wActionBar:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->wActionBar:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    invoke-virtual {v1, v4, p0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->setMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/internal/view/menu/MenuPresenter$Callback;)V

    goto :goto_0

    :cond_5
    iput-boolean v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mMenuRefreshContent:Z

    :cond_6
    iget-object v2, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    invoke-virtual {v2}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    iget-object v2, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mMenuFrozenActionViewState:Landroid/os/Bundle;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    iget-object v3, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mMenuFrozenActionViewState:Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->restoreActionViewStates(Landroid/os/Bundle;)V

    iput-object v4, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mMenuFrozenActionViewState:Landroid/os/Bundle;

    :cond_7
    iget-object v2, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    invoke-virtual {p0, v2}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->callbackPrepareOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v1, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->wActionBar:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->wActionBar:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    invoke-virtual {v1, v4, p0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->setMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/internal/view/menu/MenuPresenter$Callback;)V

    :cond_8
    iget-object v1, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    goto :goto_0

    :cond_9
    const/4 v2, -0x1

    invoke-static {v2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v2

    iget-object v3, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    invoke-virtual {v2}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v2

    if-eq v2, v1, :cond_a

    move v0, v1

    :cond_a
    invoke-virtual {v3, v0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->setQwertyMode(Z)V

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    iput-boolean v1, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mMenuIsPrepared:Z

    move v0, v1

    goto :goto_0
.end method

.method private reopenMenu(Z)V
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->wActionBar:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->wActionBar:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->isOverflowReserved()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->wActionBar:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->wActionBar:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->callbackPrepareOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->wActionBar:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->showOverflowMenu()Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->wActionBar:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->hideOverflowMenu()Z

    goto :goto_0
.end method

.method private setFeatureInt(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->updateInt(IIZ)V

    return-void
.end method

.method private showProgressBars(Lcom/actionbarsherlock/internal/widget/IcsProgressBar;Lcom/actionbarsherlock/internal/widget/IcsProgressBar;)V
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mFeatures:I

    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->getVisibility()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    invoke-virtual {p2, v3}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->setVisibility(I)V

    :cond_0
    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->getProgress()I

    move-result v0

    const/16 v1, 0x2710

    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v3}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private updateInt(IIZ)V
    .locals 2

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mContentParent:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    shl-int/2addr v0, p1

    invoke-direct {p0}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->getFeatures()I

    move-result v1

    and-int/2addr v0, v1

    if-nez v0, :cond_2

    if-eqz p3, :cond_0

    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->onIntChanged(II)V

    goto :goto_0
.end method

.method private updateProgressBars(I)V
    .locals 8

    const/16 v7, 0x8

    const/16 v6, 0x2710

    const/4 v5, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v5}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->getCircularProgressBar(Z)Lcom/actionbarsherlock/internal/widget/IcsProgressBar;

    move-result-object v2

    invoke-direct {p0, v5}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->getHorizontalProgressBar(Z)Lcom/actionbarsherlock/internal/widget/IcsProgressBar;

    move-result-object v3

    iget v4, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mFeatures:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_4

    and-int/lit8 v0, v4, 0x4

    if-eqz v0, :cond_1

    invoke-virtual {v3}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->getProgress()I

    move-result v0

    invoke-virtual {v3}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->isIndeterminate()Z

    move-result v5

    if-nez v5, :cond_0

    if-ge v0, v6, :cond_3

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->setVisibility(I)V

    :cond_1
    and-int/lit8 v0, v4, 0x20

    if-eqz v0, :cond_2

    invoke-virtual {v2, v1}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->setVisibility(I)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    const/4 v0, 0x4

    goto :goto_0

    :cond_4
    const/4 v0, -0x2

    if-ne p1, v0, :cond_6

    and-int/lit8 v0, v4, 0x4

    if-eqz v0, :cond_5

    invoke-virtual {v3, v7}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->setVisibility(I)V

    :cond_5
    and-int/lit8 v0, v4, 0x20

    if-eqz v0, :cond_2

    invoke-virtual {v2, v7}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->setVisibility(I)V

    goto :goto_1

    :cond_6
    const/4 v0, -0x3

    if-ne p1, v0, :cond_7

    invoke-virtual {v3, v5}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->setIndeterminate(Z)V

    goto :goto_1

    :cond_7
    const/4 v0, -0x4

    if-ne p1, v0, :cond_8

    invoke-virtual {v3, v1}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->setIndeterminate(Z)V

    goto :goto_1

    :cond_8
    if-ltz p1, :cond_a

    if-gt p1, v6, :cond_a

    add-int/lit8 v0, p1, 0x0

    invoke-virtual {v3, v0}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->setProgress(I)V

    if-ge p1, v6, :cond_9

    invoke-direct {p0, v3, v2}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->showProgressBars(Lcom/actionbarsherlock/internal/widget/IcsProgressBar;Lcom/actionbarsherlock/internal/widget/IcsProgressBar;)V

    goto :goto_1

    :cond_9
    invoke-direct {p0, v3, v2}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->hideProgressBars(Lcom/actionbarsherlock/internal/widget/IcsProgressBar;Lcom/actionbarsherlock/internal/widget/IcsProgressBar;)V

    goto :goto_1

    :cond_a
    const/16 v0, 0x4e20

    if-gt v0, p1, :cond_2

    const/16 v0, 0x7530

    if-gt p1, v0, :cond_2

    add-int/lit16 v0, p1, -0x4e20

    invoke-virtual {v3, v0}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->setSecondaryProgress(I)V

    invoke-direct {p0, v3, v2}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->showProgressBars(Lcom/actionbarsherlock/internal/widget/IcsProgressBar;Lcom/actionbarsherlock/internal/widget/IcsProgressBar;)V

    goto :goto_1
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mContentParent:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->installDecor()V

    :cond_0
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->initActionBar()V

    return-void
.end method

.method checkCloseActionMenu(Lcom/actionbarsherlock/view/Menu;)V
    .locals 1

    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mClosingActionMenu:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mClosingActionMenu:Z

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->wActionBar:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->dismissPopupMenus()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mClosingActionMenu:Z

    goto :goto_0
.end method

.method public dispatchCloseOptionsMenu()Z
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->isReservingOverflow()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->wActionBar:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->wActionBar:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->hideOverflowMenu()Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->aActionBar:Lcom/actionbarsherlock/internal/app/ActionBarImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->aActionBar:Lcom/actionbarsherlock/internal/app/ActionBarImpl;

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public dispatchCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public dispatchDestroy()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mIsDestroyed:Z

    return-void
.end method

.method public dispatchInvalidateOptionsMenu()V
    .locals 2

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    invoke-virtual {v1, v0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->saveActionViewStates(Landroid/os/Bundle;)V

    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v1

    if-lez v1, :cond_0

    iput-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mMenuFrozenActionViewState:Landroid/os/Bundle;

    :cond_0
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->clear()V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mMenuRefreshContent:Z

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->wActionBar:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mMenuIsPrepared:Z

    invoke-direct {p0}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->preparePanel()Z

    :cond_2
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    iget-object v2, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActionMode:Lcom/actionbarsherlock/view/ActionMode;

    if-eqz v2, :cond_1

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActionMode:Lcom/actionbarsherlock/view/ActionMode;

    invoke-virtual {v1}, Lcom/actionbarsherlock/view/ActionMode;->finish()V

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->wActionBar:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->wActionBar:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    invoke-virtual {v2}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->hasExpandedActionView()Z

    move-result v2

    if-eqz v2, :cond_2

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->wActionBar:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    invoke-virtual {v1}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->collapseActionView()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchMenuOpened(ILandroid/view/Menu;)Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x8

    if-eq p1, v1, :cond_0

    if-nez p1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->aActionBar:Lcom/actionbarsherlock/internal/app/ActionBarImpl;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->aActionBar:Lcom/actionbarsherlock/internal/app/ActionBarImpl;

    invoke-virtual {v1, v0}, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->dispatchMenuVisibilityChanged(Z)V

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchOpenOptionsMenu()Z
    .locals 1

    invoke-direct {p0}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->isReservingOverflow()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->wActionBar:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->showOverflowMenu()Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Native callback invoked. Create a test case and report!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public dispatchPanelClosed(ILandroid/view/Menu;)V
    .locals 2

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->aActionBar:Lcom/actionbarsherlock/internal/app/ActionBarImpl;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->aActionBar:Lcom/actionbarsherlock/internal/app/ActionBarImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->dispatchMenuVisibilityChanged(Z)V

    :cond_1
    return-void
.end method

.method public dispatchPause()V
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->wActionBar:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->wActionBar:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->wActionBar:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->hideOverflowMenu()Z

    :cond_0
    return-void
.end method

.method public dispatchPostCreate(Landroid/os/Bundle;)V
    .locals 1

    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mIsDelegate:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mIsTitleReady:Z

    :cond_0
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mDecor:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->initActionBar()V

    :cond_1
    return-void
.end method

.method public dispatchPostResume()V
    .locals 2

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->aActionBar:Lcom/actionbarsherlock/internal/app/ActionBarImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->aActionBar:Lcom/actionbarsherlock/internal/app/ActionBarImpl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->setShowHideAnimationEnabled(Z)V

    :cond_0
    return-void
.end method

.method public dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActionMode:Lcom/actionbarsherlock/view/ActionMode;

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iput-boolean v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mMenuIsPrepared:Z

    invoke-direct {p0}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->preparePanel()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->isReservingOverflow()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mNativeItemMap:Ljava/util/HashMap;

    if-nez v1, :cond_2

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mNativeItemMap:Ljava/util/HashMap;

    :goto_1
    iget-object v1, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    iget-object v1, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mNativeItemMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p0, v1}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->bindNativeOverflow(Landroid/view/Menu;Landroid/view/MenuItem$OnMenuItemClickListener;Ljava/util/HashMap;)Z

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mNativeItemMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    goto :goto_1
.end method

.method public dispatchRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "sherlock:Panels"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mMenuFrozenActionViewState:Landroid/os/Bundle;

    return-void
.end method

.method public dispatchSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mMenuFrozenActionViewState:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    iget-object v1, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mMenuFrozenActionViewState:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->saveActionViewStates(Landroid/os/Bundle;)V

    :cond_0
    const-string v0, "sherlock:Panels"

    iget-object v1, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mMenuFrozenActionViewState:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public dispatchStop()V
    .locals 2

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->aActionBar:Lcom/actionbarsherlock/internal/app/ActionBarImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->aActionBar:Lcom/actionbarsherlock/internal/app/ActionBarImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->setShowHideAnimationEnabled(Z)V

    :cond_0
    return-void
.end method

.method public dispatchTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 1

    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mIsDelegate:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mIsTitleReady:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->wActionBar:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->wActionBar:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->setWindowTitle(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public ensureActionBar()V
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mDecor:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->initActionBar()V

    :cond_0
    return-void
.end method

.method public getActionBar()Lcom/actionbarsherlock/app/ActionBar;
    .locals 1

    invoke-direct {p0}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->initActionBar()V

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->aActionBar:Lcom/actionbarsherlock/internal/app/ActionBarImpl;

    return-object v0
.end method

.method protected getThemedContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->aActionBar:Lcom/actionbarsherlock/internal/app/ActionBarImpl;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public hasFeature(I)Z
    .locals 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mFeatures:I

    shl-int v2, v0, p1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCloseMenu(Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->checkCloseActionMenu(Lcom/actionbarsherlock/view/Menu;)V

    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mNativeItemMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->invoke()Z

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_0
    const-string v0, "ActionBarSherlock"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Options item \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" not found in mapping"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onMenuItemSelected(ILcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1

    invoke-virtual {p0, p2}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->callbackOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onMenuItemSelected(Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1

    invoke-virtual {p0, p2}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->callbackOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onMenuModeChange(Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->reopenMenu(Z)V

    return-void
.end method

.method public onOpenSubMenu(Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public requestFeature(I)Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mContentParent:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "requestFeature() must be called before adding content"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_1
    iget v1, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mFeatures:I

    shl-int v2, v0, p1

    or-int/2addr v1, v2

    iput v1, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mFeatures:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public setContentView(I)V
    .locals 2

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mContentParent:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->installDecor()V

    :goto_0
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    :cond_0
    invoke-direct {p0}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->initActionBar()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    goto :goto_0
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mContentParent:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->installDecor()V

    :goto_0
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    :cond_0
    invoke-direct {p0}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->initActionBar()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    goto :goto_0
.end method

.method public setProgress(I)V
    .locals 3

    add-int/lit8 v0, p1, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->updateInt(IIZ)V

    return-void
.end method

.method public setProgressBarIndeterminate(Z)V
    .locals 3

    if-eqz p1, :cond_0

    const/4 v0, -0x3

    :goto_0
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->updateInt(IIZ)V

    return-void

    :cond_0
    const/4 v0, -0x4

    goto :goto_0
.end method

.method public setProgressBarIndeterminateVisibility(Z)V
    .locals 3

    if-eqz p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->updateInt(IIZ)V

    return-void

    :cond_0
    const/4 v0, -0x2

    goto :goto_0
.end method

.method public setProgressBarVisibility(Z)V
    .locals 3

    if-eqz p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->updateInt(IIZ)V

    return-void

    :cond_0
    const/4 v0, -0x2

    goto :goto_0
.end method

.method public setSecondaryProgress(I)V
    .locals 3

    add-int/lit16 v0, p1, 0x4e20

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->updateInt(IIZ)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->dispatchTitleChanged(Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public setUiOptions(I)V
    .locals 0

    iput p1, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mUiOptions:I

    return-void
.end method

.method public setUiOptions(II)V
    .locals 2

    iget v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mUiOptions:I

    xor-int/lit8 v1, p2, -0x1

    and-int/2addr v0, v1

    and-int v1, p1, p2

    or-int/2addr v0, v1

    iput v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mUiOptions:I

    return-void
.end method

.method public startActionMode(Lcom/actionbarsherlock/view/ActionMode$Callback;)Lcom/actionbarsherlock/view/ActionMode;
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActionMode:Lcom/actionbarsherlock/view/ActionMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActionMode:Lcom/actionbarsherlock/view/ActionMode;

    invoke-virtual {v0}, Lcom/actionbarsherlock/view/ActionMode;->finish()V

    :cond_0
    new-instance v2, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat$ActionModeCallbackWrapper;

    invoke-direct {v2, p0, p1}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat$ActionModeCallbackWrapper;-><init>(Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;Lcom/actionbarsherlock/view/ActionMode$Callback;)V

    invoke-direct {p0}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->initActionBar()V

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->aActionBar:Lcom/actionbarsherlock/internal/app/ActionBarImpl;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->aActionBar:Lcom/actionbarsherlock/internal/app/ActionBarImpl;

    invoke-virtual {v0, v2}, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->startActionMode(Lcom/actionbarsherlock/view/ActionMode$Callback;)Lcom/actionbarsherlock/view/ActionMode;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_3

    iput-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActionMode:Lcom/actionbarsherlock/view/ActionMode;

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActionMode:Lcom/actionbarsherlock/view/ActionMode;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/actionbarsherlock/ActionBarSherlock$OnActionModeStartedListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/actionbarsherlock/ActionBarSherlock$OnActionModeStartedListener;

    iget-object v1, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActionMode:Lcom/actionbarsherlock/view/ActionMode;

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/ActionBarSherlock$OnActionModeStartedListener;->onActionModeStarted(Lcom/actionbarsherlock/view/ActionMode;)V

    :cond_2
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActionMode:Lcom/actionbarsherlock/view/ActionMode;

    return-object v0

    :cond_3
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActionModeView:Lcom/actionbarsherlock/internal/widget/ActionBarContextView;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mDecor:Landroid/view/ViewGroup;

    sget v3, Lcom/actionbarsherlock/R$id;->abs__action_mode_bar_stub:I

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;

    iput-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActionModeView:Lcom/actionbarsherlock/internal/widget/ActionBarContextView;

    :cond_4
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActionModeView:Lcom/actionbarsherlock/internal/widget/ActionBarContextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActionModeView:Lcom/actionbarsherlock/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->killMode()V

    new-instance v0, Lcom/actionbarsherlock/internal/view/StandaloneActionMode;

    iget-object v3, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActionModeView:Lcom/actionbarsherlock/internal/widget/ActionBarContextView;

    const/4 v5, 0x1

    invoke-direct {v0, v3, v4, v2, v5}, Lcom/actionbarsherlock/internal/view/StandaloneActionMode;-><init>(Landroid/content/Context;Lcom/actionbarsherlock/internal/widget/ActionBarContextView;Lcom/actionbarsherlock/view/ActionMode$Callback;Z)V

    invoke-virtual {v0}, Lcom/actionbarsherlock/view/ActionMode;->getMenu()Lcom/actionbarsherlock/view/Menu;

    move-result-object v2

    invoke-interface {p1, v0, v2}, Lcom/actionbarsherlock/view/ActionMode$Callback;->onCreateActionMode(Lcom/actionbarsherlock/view/ActionMode;Lcom/actionbarsherlock/view/Menu;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Lcom/actionbarsherlock/view/ActionMode;->invalidate()V

    iget-object v1, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActionModeView:Lcom/actionbarsherlock/internal/widget/ActionBarContextView;

    invoke-virtual {v1, v0}, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->initForMode(Lcom/actionbarsherlock/view/ActionMode;)V

    iget-object v1, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActionModeView:Lcom/actionbarsherlock/internal/widget/ActionBarContextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->setVisibility(I)V

    iput-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActionMode:Lcom/actionbarsherlock/view/ActionMode;

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActionModeView:Lcom/actionbarsherlock/internal/widget/ActionBarContextView;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->sendAccessibilityEvent(I)V

    goto :goto_1

    :cond_5
    iput-object v1, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActionMode:Lcom/actionbarsherlock/view/ActionMode;

    goto :goto_1

    :cond_6
    move-object v0, v1

    goto :goto_0
.end method
