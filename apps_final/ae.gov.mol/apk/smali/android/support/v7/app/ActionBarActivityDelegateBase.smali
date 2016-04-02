.class Landroid/support/v7/app/ActionBarActivityDelegateBase;
.super Landroid/support/v7/app/ActionBarActivityDelegate;
.source "ActionBarActivityDelegateBase.java"

# interfaces
.implements Landroid/support/v7/internal/view/menu/MenuPresenter$Callback;
.implements Landroid/support/v7/internal/view/menu/MenuBuilder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/ActionBarActivityDelegateBase$ActionBarDrawableToggleImpl;,
        Landroid/support/v7/app/ActionBarActivityDelegateBase$ActionModeCallbackWrapper;
    }
.end annotation


# static fields
.field private static final ACTION_BAR_DRAWABLE_TOGGLE_ATTRS:[I

.field private static final TAG:Ljava/lang/String; = "ActionBarActivityDelegateBase"


# instance fields
.field private mActionBarView:Landroid/support/v7/internal/widget/ActionBarView;

.field private mActionMode:Landroid/support/v7/view/ActionMode;

.field private mFeatureIndeterminateProgress:Z

.field private mFeatureProgress:Z

.field private mInvalidateMenuPosted:Z

.field private final mInvalidateMenuRunnable:Ljava/lang/Runnable;

.field private mListMenuPresenter:Landroid/support/v7/internal/view/menu/ListMenuPresenter;

.field private mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

.field private mSubDecorInstalled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 48
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Landroid/support/v7/appcompat/R$attr;->homeAsUpIndicator:I

    aput v2, v0, v1

    sput-object v0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->ACTION_BAR_DRAWABLE_TOGGLE_ATTRS:[I

    return-void
.end method

.method constructor <init>(Landroid/support/v7/app/ActionBarActivity;)V
    .locals 1
    .param p1, "activity"    # Landroid/support/v7/app/ActionBarActivity;

    .prologue
    .line 81
    invoke-direct {p0, p1}, Landroid/support/v7/app/ActionBarActivityDelegate;-><init>(Landroid/support/v7/app/ActionBarActivity;)V

    .line 65
    new-instance v0, Landroid/support/v7/app/ActionBarActivityDelegateBase$1;

    invoke-direct {v0, p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase$1;-><init>(Landroid/support/v7/app/ActionBarActivityDelegateBase;)V

    iput-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mInvalidateMenuRunnable:Ljava/lang/Runnable;

    .line 82
    return-void
.end method

.method static synthetic access$000(Landroid/support/v7/app/ActionBarActivityDelegateBase;)Landroid/support/v7/internal/view/menu/MenuBuilder;
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/app/ActionBarActivityDelegateBase;

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->createMenu()Landroid/support/v7/internal/view/menu/MenuBuilder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Landroid/support/v7/app/ActionBarActivityDelegateBase;Landroid/support/v7/internal/view/menu/MenuBuilder;)V
    .locals 0
    .param p0, "x0"    # Landroid/support/v7/app/ActionBarActivityDelegateBase;
    .param p1, "x1"    # Landroid/support/v7/internal/view/menu/MenuBuilder;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->setMenu(Landroid/support/v7/internal/view/menu/MenuBuilder;)V

    return-void
.end method

.method static synthetic access$202(Landroid/support/v7/app/ActionBarActivityDelegateBase;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/support/v7/app/ActionBarActivityDelegateBase;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mInvalidateMenuPosted:Z

    return p1
.end method

.method static synthetic access$402(Landroid/support/v7/app/ActionBarActivityDelegateBase;Landroid/support/v7/view/ActionMode;)Landroid/support/v7/view/ActionMode;
    .locals 0
    .param p0, "x0"    # Landroid/support/v7/app/ActionBarActivityDelegateBase;
    .param p1, "x1"    # Landroid/support/v7/view/ActionMode;

    .prologue
    .line 44
    iput-object p1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActionMode:Landroid/support/v7/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$500()[I
    .locals 1

    .prologue
    .line 44
    sget-object v0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->ACTION_BAR_DRAWABLE_TOGGLE_ATTRS:[I

    return-object v0
.end method

.method static synthetic access$600(Landroid/support/v7/app/ActionBarActivityDelegateBase;)Landroid/support/v7/internal/widget/ActionBarView;
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/app/ActionBarActivityDelegateBase;

    .prologue
    .line 44
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActionBarView:Landroid/support/v7/internal/widget/ActionBarView;

    return-object v0
.end method

.method private createMenu()Landroid/support/v7/internal/view/menu/MenuBuilder;
    .locals 2

    .prologue
    .line 375
    new-instance v0, Landroid/support/v7/internal/view/menu/MenuBuilder;

    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->getActionBarThemedContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    .line 376
    .local v0, "menu":Landroid/support/v7/internal/view/menu/MenuBuilder;
    invoke-virtual {v0, p0}, Landroid/support/v7/internal/view/menu/MenuBuilder;->setCallback(Landroid/support/v7/internal/view/menu/MenuBuilder$Callback;)V

    .line 377
    return-object v0
.end method

.method private getCircularProgressBar()Landroid/support/v7/internal/widget/ProgressBarICS;
    .locals 3

    .prologue
    .line 547
    iget-object v1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActionBarView:Landroid/support/v7/internal/widget/ActionBarView;

    sget v2, Landroid/support/v7/appcompat/R$id;->progress_circular:I

    invoke-virtual {v1, v2}, Landroid/support/v7/internal/widget/ActionBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/ProgressBarICS;

    .line 548
    .local v0, "pb":Landroid/support/v7/internal/widget/ProgressBarICS;
    if-eqz v0, :cond_0

    .line 549
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ProgressBarICS;->setVisibility(I)V

    .line 551
    :cond_0
    return-object v0
.end method

.method private getHorizontalProgressBar()Landroid/support/v7/internal/widget/ProgressBarICS;
    .locals 3

    .prologue
    .line 555
    iget-object v1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActionBarView:Landroid/support/v7/internal/widget/ActionBarView;

    sget v2, Landroid/support/v7/appcompat/R$id;->progress_horizontal:I

    invoke-virtual {v1, v2}, Landroid/support/v7/internal/widget/ActionBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/ProgressBarICS;

    .line 556
    .local v0, "pb":Landroid/support/v7/internal/widget/ProgressBarICS;
    if-eqz v0, :cond_0

    .line 557
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ProgressBarICS;->setVisibility(I)V

    .line 559
    :cond_0
    return-object v0
.end method

.method private getListMenuView(Landroid/content/Context;Landroid/support/v7/internal/view/menu/MenuPresenter$Callback;)Landroid/support/v7/internal/view/menu/MenuView;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cb"    # Landroid/support/v7/internal/view/menu/MenuPresenter$Callback;

    .prologue
    .line 396
    iget-object v2, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    if-nez v2, :cond_0

    .line 397
    const/4 v2, 0x0

    .line 416
    :goto_0
    return-object v2

    .line 400
    :cond_0
    iget-object v2, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mListMenuPresenter:Landroid/support/v7/internal/view/menu/ListMenuPresenter;

    if-nez v2, :cond_1

    .line 401
    sget-object v2, Landroid/support/v7/appcompat/R$styleable;->Theme:[I

    invoke-virtual {p1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 402
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x4

    sget v3, Landroid/support/v7/appcompat/R$style;->Theme_AppCompat_CompactMenu:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 405
    .local v1, "listPresenterTheme":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 407
    new-instance v2, Landroid/support/v7/internal/view/menu/ListMenuPresenter;

    sget v3, Landroid/support/v7/appcompat/R$layout;->abc_list_menu_item_layout:I

    invoke-direct {v2, v3, v1}, Landroid/support/v7/internal/view/menu/ListMenuPresenter;-><init>(II)V

    iput-object v2, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mListMenuPresenter:Landroid/support/v7/internal/view/menu/ListMenuPresenter;

    .line 409
    iget-object v2, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mListMenuPresenter:Landroid/support/v7/internal/view/menu/ListMenuPresenter;

    invoke-virtual {v2, p2}, Landroid/support/v7/internal/view/menu/ListMenuPresenter;->setCallback(Landroid/support/v7/internal/view/menu/MenuPresenter$Callback;)V

    .line 410
    iget-object v2, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    iget-object v3, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mListMenuPresenter:Landroid/support/v7/internal/view/menu/ListMenuPresenter;

    invoke-virtual {v2, v3}, Landroid/support/v7/internal/view/menu/MenuBuilder;->addMenuPresenter(Landroid/support/v7/internal/view/menu/MenuPresenter;)V

    .line 416
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "listPresenterTheme":I
    :goto_1
    iget-object v2, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mListMenuPresenter:Landroid/support/v7/internal/view/menu/ListMenuPresenter;

    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/support/v7/internal/view/menu/ListMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Landroid/support/v7/internal/view/menu/MenuView;

    move-result-object v2

    goto :goto_0

    .line 413
    :cond_1
    iget-object v2, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mListMenuPresenter:Landroid/support/v7/internal/view/menu/ListMenuPresenter;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v7/internal/view/menu/ListMenuPresenter;->updateMenuView(Z)V

    goto :goto_1
.end method

.method private hideProgressBars(Landroid/support/v7/internal/widget/ProgressBarICS;Landroid/support/v7/internal/widget/ProgressBarICS;)V
    .locals 2
    .param p1, "horizontalProgressBar"    # Landroid/support/v7/internal/widget/ProgressBarICS;
    .param p2, "spinnyProgressBar"    # Landroid/support/v7/internal/widget/ProgressBarICS;

    .prologue
    const/4 v1, 0x4

    .line 538
    iget-boolean v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mFeatureIndeterminateProgress:Z

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/support/v7/internal/widget/ProgressBarICS;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 539
    invoke-virtual {p2, v1}, Landroid/support/v7/internal/widget/ProgressBarICS;->setVisibility(I)V

    .line 541
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mFeatureProgress:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/support/v7/internal/widget/ProgressBarICS;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 542
    invoke-virtual {p1, v1}, Landroid/support/v7/internal/widget/ProgressBarICS;->setVisibility(I)V

    .line 544
    :cond_1
    return-void
.end method

.method private reopenMenu(Landroid/support/v7/internal/view/menu/MenuBuilder;Z)V
    .locals 1
    .param p1, "menu"    # Landroid/support/v7/internal/view/menu/MenuBuilder;
    .param p2, "toggleMenuMode"    # Z

    .prologue
    .line 381
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActionBarView:Landroid/support/v7/internal/widget/ActionBarView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActionBarView:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->isOverflowReserved()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 382
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActionBarView:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_2

    .line 383
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActionBarView:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 384
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActionBarView:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->showOverflowMenu()Z

    .line 393
    :cond_1
    :goto_0
    return-void

    .line 387
    :cond_2
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActionBarView:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->hideOverflowMenu()Z

    goto :goto_0

    .line 392
    :cond_3
    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/MenuBuilder;->close()V

    goto :goto_0
.end method

.method private setMenu(Landroid/support/v7/internal/view/menu/MenuBuilder;)V
    .locals 2
    .param p1, "menu"    # Landroid/support/v7/internal/view/menu/MenuBuilder;

    .prologue
    .line 420
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    if-ne p1, v0, :cond_1

    .line 436
    :cond_0
    :goto_0
    return-void

    .line 424
    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_2

    .line 425
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    iget-object v1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mListMenuPresenter:Landroid/support/v7/internal/view/menu/ListMenuPresenter;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/MenuBuilder;->removeMenuPresenter(Landroid/support/v7/internal/view/menu/MenuPresenter;)V

    .line 427
    :cond_2
    iput-object p1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    .line 429
    if-eqz p1, :cond_3

    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mListMenuPresenter:Landroid/support/v7/internal/view/menu/ListMenuPresenter;

    if-eqz v0, :cond_3

    .line 431
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mListMenuPresenter:Landroid/support/v7/internal/view/menu/ListMenuPresenter;

    invoke-virtual {p1, v0}, Landroid/support/v7/internal/view/menu/MenuBuilder;->addMenuPresenter(Landroid/support/v7/internal/view/menu/MenuPresenter;)V

    .line 433
    :cond_3
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActionBarView:Landroid/support/v7/internal/widget/ActionBarView;

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActionBarView:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v0, p1, p0}, Landroid/support/v7/internal/widget/ActionBarView;->setMenu(Landroid/support/v4/internal/view/SupportMenu;Landroid/support/v7/internal/view/menu/MenuPresenter$Callback;)V

    goto :goto_0
.end method

.method private showProgressBars(Landroid/support/v7/internal/widget/ProgressBarICS;Landroid/support/v7/internal/widget/ProgressBarICS;)V
    .locals 3
    .param p1, "horizontalProgressBar"    # Landroid/support/v7/internal/widget/ProgressBarICS;
    .param p2, "spinnyProgressBar"    # Landroid/support/v7/internal/widget/ProgressBarICS;

    .prologue
    const/4 v2, 0x0

    .line 527
    iget-boolean v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mFeatureIndeterminateProgress:Z

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/support/v7/internal/widget/ProgressBarICS;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 528
    invoke-virtual {p2, v2}, Landroid/support/v7/internal/widget/ProgressBarICS;->setVisibility(I)V

    .line 531
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mFeatureProgress:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/support/v7/internal/widget/ProgressBarICS;->getProgress()I

    move-result v0

    const/16 v1, 0x2710

    if-ge v0, v1, :cond_1

    .line 532
    invoke-virtual {p1, v2}, Landroid/support/v7/internal/widget/ProgressBarICS;->setVisibility(I)V

    .line 534
    :cond_1
    return-void
.end method

.method private updateProgressBars(I)V
    .locals 8
    .param p1, "value"    # I

    .prologue
    const/16 v7, 0x8

    const/16 v6, 0x2710

    const/4 v4, 0x0

    .line 487
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->getCircularProgressBar()Landroid/support/v7/internal/widget/ProgressBarICS;

    move-result-object v0

    .line 488
    .local v0, "circularProgressBar":Landroid/support/v7/internal/widget/ProgressBarICS;
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->getHorizontalProgressBar()Landroid/support/v7/internal/widget/ProgressBarICS;

    move-result-object v1

    .line 490
    .local v1, "horizontalProgressBar":Landroid/support/v7/internal/widget/ProgressBarICS;
    const/4 v5, -0x1

    if-ne p1, v5, :cond_4

    .line 491
    iget-boolean v5, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mFeatureProgress:Z

    if-eqz v5, :cond_1

    .line 492
    invoke-virtual {v1}, Landroid/support/v7/internal/widget/ProgressBarICS;->getProgress()I

    move-result v2

    .line 493
    .local v2, "level":I
    invoke-virtual {v1}, Landroid/support/v7/internal/widget/ProgressBarICS;->isIndeterminate()Z

    move-result v5

    if-nez v5, :cond_0

    if-ge v2, v6, :cond_3

    :cond_0
    move v3, v4

    .line 495
    .local v3, "visibility":I
    :goto_0
    invoke-virtual {v1, v3}, Landroid/support/v7/internal/widget/ProgressBarICS;->setVisibility(I)V

    .line 497
    .end local v2    # "level":I
    .end local v3    # "visibility":I
    :cond_1
    iget-boolean v5, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mFeatureIndeterminateProgress:Z

    if-eqz v5, :cond_2

    .line 498
    invoke-virtual {v0, v4}, Landroid/support/v7/internal/widget/ProgressBarICS;->setVisibility(I)V

    .line 523
    :cond_2
    :goto_1
    return-void

    .line 493
    .restart local v2    # "level":I
    :cond_3
    const/4 v3, 0x4

    goto :goto_0

    .line 500
    .end local v2    # "level":I
    :cond_4
    const/4 v5, -0x2

    if-ne p1, v5, :cond_6

    .line 501
    iget-boolean v4, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mFeatureProgress:Z

    if-eqz v4, :cond_5

    .line 502
    invoke-virtual {v1, v7}, Landroid/support/v7/internal/widget/ProgressBarICS;->setVisibility(I)V

    .line 504
    :cond_5
    iget-boolean v4, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mFeatureIndeterminateProgress:Z

    if-eqz v4, :cond_2

    .line 505
    invoke-virtual {v0, v7}, Landroid/support/v7/internal/widget/ProgressBarICS;->setVisibility(I)V

    goto :goto_1

    .line 507
    :cond_6
    const/4 v5, -0x3

    if-ne p1, v5, :cond_7

    .line 508
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/support/v7/internal/widget/ProgressBarICS;->setIndeterminate(Z)V

    goto :goto_1

    .line 509
    :cond_7
    const/4 v5, -0x4

    if-ne p1, v5, :cond_8

    .line 510
    invoke-virtual {v1, v4}, Landroid/support/v7/internal/widget/ProgressBarICS;->setIndeterminate(Z)V

    goto :goto_1

    .line 511
    :cond_8
    if-ltz p1, :cond_2

    if-gt p1, v6, :cond_2

    .line 515
    add-int/lit8 v4, p1, 0x0

    invoke-virtual {v1, v4}, Landroid/support/v7/internal/widget/ProgressBarICS;->setProgress(I)V

    .line 517
    if-ge p1, v6, :cond_9

    .line 518
    invoke-direct {p0, v1, v0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->showProgressBars(Landroid/support/v7/internal/widget/ProgressBarICS;Landroid/support/v7/internal/widget/ProgressBarICS;)V

    goto :goto_1

    .line 520
    :cond_9
    invoke-direct {p0, v1, v0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->hideProgressBars(Landroid/support/v7/internal/widget/ProgressBarICS;Landroid/support/v7/internal/widget/ProgressBarICS;)V

    goto :goto_1
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 160
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->ensureSubDecor()V

    .line 161
    iget-boolean v1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mHasActionBar:Z

    if-eqz v1, :cond_0

    .line 162
    iget-object v1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActivity:Landroid/support/v7/app/ActionBarActivity;

    sget v2, Landroid/support/v7/appcompat/R$id;->action_bar_activity_content:I

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 164
    .local v0, "contentParent":Landroid/view/ViewGroup;
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 168
    .end local v0    # "contentParent":Landroid/view/ViewGroup;
    :goto_0
    return-void

    .line 166
    :cond_0
    iget-object v1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActivity:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v1, p1, p2}, Landroid/support/v7/app/ActionBarActivity;->superSetContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public createSupportActionBar()Landroid/support/v7/app/ActionBar;
    .locals 3

    .prologue
    .line 86
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->ensureSubDecor()V

    .line 87
    new-instance v0, Landroid/support/v7/app/ActionBarImplBase;

    iget-object v1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActivity:Landroid/support/v7/app/ActionBarActivity;

    iget-object v2, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActivity:Landroid/support/v7/app/ActionBarActivity;

    invoke-direct {v0, v1, v2}, Landroid/support/v7/app/ActionBarImplBase;-><init>(Landroid/support/v7/app/ActionBarActivity;Landroid/support/v7/app/ActionBar$Callback;)V

    return-object v0
.end method

.method final ensureSubDecor()V
    .locals 7

    .prologue
    .line 171
    iget-boolean v5, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mHasActionBar:Z

    if-eqz v5, :cond_3

    iget-boolean v5, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mSubDecorInstalled:Z

    if-nez v5, :cond_3

    .line 172
    iget-boolean v5, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mOverlayActionBar:Z

    if-eqz v5, :cond_4

    .line 173
    iget-object v5, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActivity:Landroid/support/v7/app/ActionBarActivity;

    sget v6, Landroid/support/v7/appcompat/R$layout;->abc_action_bar_decor_overlay:I

    invoke-virtual {v5, v6}, Landroid/support/v7/app/ActionBarActivity;->superSetContentView(I)V

    .line 177
    :goto_0
    iget-object v5, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActivity:Landroid/support/v7/app/ActionBarActivity;

    sget v6, Landroid/support/v7/appcompat/R$id;->action_bar:I

    invoke-virtual {v5, v6}, Landroid/support/v7/app/ActionBarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/support/v7/internal/widget/ActionBarView;

    iput-object v5, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActionBarView:Landroid/support/v7/internal/widget/ActionBarView;

    .line 178
    iget-object v5, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActionBarView:Landroid/support/v7/internal/widget/ActionBarView;

    iget-object v6, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActivity:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v5, v6}, Landroid/support/v7/internal/widget/ActionBarView;->setWindowCallback(Landroid/view/Window$Callback;)V

    .line 183
    iget-boolean v5, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mFeatureProgress:Z

    if-eqz v5, :cond_0

    .line 184
    iget-object v5, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActionBarView:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v5}, Landroid/support/v7/internal/widget/ActionBarView;->initProgress()V

    .line 186
    :cond_0
    iget-boolean v5, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mFeatureIndeterminateProgress:Z

    if-eqz v5, :cond_1

    .line 187
    iget-object v5, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActionBarView:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v5}, Landroid/support/v7/internal/widget/ActionBarView;->initIndeterminateProgress()V

    .line 193
    :cond_1
    const-string v5, "splitActionBarWhenNarrow"

    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->getUiOptionsFromMetadata()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 197
    .local v4, "splitWhenNarrow":Z
    if-eqz v4, :cond_5

    .line 198
    iget-object v5, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActivity:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v5}, Landroid/support/v7/app/ActionBarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Landroid/support/v7/appcompat/R$bool;->abc_split_action_bar_is_narrow:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 207
    .local v2, "splitActionBar":Z
    :goto_1
    iget-object v5, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActivity:Landroid/support/v7/app/ActionBarActivity;

    sget v6, Landroid/support/v7/appcompat/R$id;->split_action_bar:I

    invoke-virtual {v5, v6}, Landroid/support/v7/app/ActionBarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v7/internal/widget/ActionBarContainer;

    .line 209
    .local v3, "splitView":Landroid/support/v7/internal/widget/ActionBarContainer;
    if-eqz v3, :cond_2

    .line 210
    iget-object v5, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActionBarView:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v5, v3}, Landroid/support/v7/internal/widget/ActionBarView;->setSplitView(Landroid/support/v7/internal/widget/ActionBarContainer;)V

    .line 211
    iget-object v5, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActionBarView:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v5, v2}, Landroid/support/v7/internal/widget/ActionBarView;->setSplitActionBar(Z)V

    .line 212
    iget-object v5, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActionBarView:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v5, v4}, Landroid/support/v7/internal/widget/ActionBarView;->setSplitWhenNarrow(Z)V

    .line 214
    iget-object v5, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActivity:Landroid/support/v7/app/ActionBarActivity;

    sget v6, Landroid/support/v7/appcompat/R$id;->action_context_bar:I

    invoke-virtual {v5, v6}, Landroid/support/v7/app/ActionBarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/internal/widget/ActionBarContextView;

    .line 216
    .local v1, "cab":Landroid/support/v7/internal/widget/ActionBarContextView;
    invoke-virtual {v1, v3}, Landroid/support/v7/internal/widget/ActionBarContextView;->setSplitView(Landroid/support/v7/internal/widget/ActionBarContainer;)V

    .line 217
    invoke-virtual {v1, v2}, Landroid/support/v7/internal/widget/ActionBarContextView;->setSplitActionBar(Z)V

    .line 218
    invoke-virtual {v1, v4}, Landroid/support/v7/internal/widget/ActionBarContextView;->setSplitWhenNarrow(Z)V

    .line 221
    .end local v1    # "cab":Landroid/support/v7/internal/widget/ActionBarContextView;
    :cond_2
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mSubDecorInstalled:Z

    .line 223
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->supportInvalidateOptionsMenu()V

    .line 225
    .end local v2    # "splitActionBar":Z
    .end local v3    # "splitView":Landroid/support/v7/internal/widget/ActionBarContainer;
    .end local v4    # "splitWhenNarrow":Z
    :cond_3
    return-void

    .line 175
    :cond_4
    iget-object v5, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActivity:Landroid/support/v7/app/ActionBarActivity;

    sget v6, Landroid/support/v7/appcompat/R$layout;->abc_action_bar_decor:I

    invoke-virtual {v5, v6}, Landroid/support/v7/app/ActionBarActivity;->superSetContentView(I)V

    goto :goto_0

    .line 201
    .restart local v4    # "splitWhenNarrow":Z
    :cond_5
    iget-object v5, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActivity:Landroid/support/v7/app/ActionBarActivity;

    sget-object v6, Landroid/support/v7/appcompat/R$styleable;->ActionBarWindow:[I

    invoke-virtual {v5, v6}, Landroid/support/v7/app/ActionBarActivity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 202
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 204
    .restart local v2    # "splitActionBar":Z
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_1
.end method

.method getDrawerToggleDelegate()Landroid/support/v4/app/ActionBarDrawerToggle$Delegate;
    .locals 2

    .prologue
    .line 480
    new-instance v0, Landroid/support/v7/app/ActionBarActivityDelegateBase$ActionBarDrawableToggleImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/v7/app/ActionBarActivityDelegateBase$ActionBarDrawableToggleImpl;-><init>(Landroid/support/v7/app/ActionBarActivityDelegateBase;Landroid/support/v7/app/ActionBarActivityDelegateBase$1;)V

    return-object v0
.end method

.method public onBackPressed()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 441
    iget-object v1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActionMode:Landroid/support/v7/view/ActionMode;

    if-eqz v1, :cond_0

    .line 442
    iget-object v1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActionMode:Landroid/support/v7/view/ActionMode;

    invoke-virtual {v1}, Landroid/support/v7/view/ActionMode;->finish()V

    .line 452
    :goto_0
    return v0

    .line 447
    :cond_0
    iget-object v1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActionBarView:Landroid/support/v7/internal/widget/ActionBarView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActionBarView:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v1}, Landroid/support/v7/internal/widget/ActionBarView;->hasExpandedActionView()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 448
    iget-object v1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActionBarView:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v1}, Landroid/support/v7/internal/widget/ActionBarView;->collapseActionView()V

    goto :goto_0

    .line 452
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCloseMenu(Landroid/support/v7/internal/view/menu/MenuBuilder;Z)V
    .locals 1
    .param p1, "menu"    # Landroid/support/v7/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 335
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActivity:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarActivity;->closeOptionsMenu()V

    .line 336
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 94
    iget-boolean v1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mHasActionBar:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mSubDecorInstalled:Z

    if-eqz v1, :cond_0

    .line 97
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/ActionBarImplBase;

    .line 98
    .local v0, "actionBar":Landroid/support/v7/app/ActionBarImplBase;
    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBarImplBase;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 100
    .end local v0    # "actionBar":Landroid/support/v7/app/ActionBarImplBase;
    :cond_0
    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 301
    if-eqz p1, :cond_0

    .line 302
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActivity:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/ActionBarActivity;->superOnCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    .line 304
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .locals 6
    .param p1, "featureId"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 256
    const/4 v0, 0x0

    .line 258
    .local v0, "createdPanelView":Landroid/view/View;
    if-nez p1, :cond_2

    .line 259
    const/4 v2, 0x1

    .line 260
    .local v2, "show":Z
    iget-object v1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    .line 262
    .local v1, "menu":Landroid/support/v7/internal/view/menu/MenuBuilder;
    iget-object v3, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActionMode:Landroid/support/v7/view/ActionMode;

    if-nez v3, :cond_1

    .line 266
    if-nez v1, :cond_0

    .line 268
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->createMenu()Landroid/support/v7/internal/view/menu/MenuBuilder;

    move-result-object v1

    .line 269
    invoke-direct {p0, v1}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->setMenu(Landroid/support/v7/internal/view/menu/MenuBuilder;)V

    .line 272
    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 274
    iget-object v3, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActivity:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v3, v4, v1}, Landroid/support/v7/app/ActionBarActivity;->superOnCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v2

    .line 277
    :cond_0
    if-eqz v2, :cond_1

    .line 279
    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 281
    iget-object v3, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActivity:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v3, v4, v5, v1}, Landroid/support/v7/app/ActionBarActivity;->superOnPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v2

    .line 285
    :cond_1
    if-eqz v2, :cond_3

    .line 286
    iget-object v3, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActivity:Landroid/support/v7/app/ActionBarActivity;

    invoke-direct {p0, v3, p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->getListMenuView(Landroid/content/Context;Landroid/support/v7/internal/view/menu/MenuPresenter$Callback;)Landroid/support/v7/internal/view/menu/MenuView;

    move-result-object v0

    .end local v0    # "createdPanelView":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 289
    .restart local v0    # "createdPanelView":Landroid/view/View;
    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 296
    .end local v1    # "menu":Landroid/support/v7/internal/view/menu/MenuBuilder;
    .end local v2    # "show":Z
    :cond_2
    :goto_0
    return-object v0

    .line 292
    .restart local v1    # "menu":Landroid/support/v7/internal/view/menu/MenuBuilder;
    .restart local v2    # "show":Z
    :cond_3
    invoke-direct {p0, v5}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->setMenu(Landroid/support/v7/internal/view/menu/MenuBuilder;)V

    goto :goto_0
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 317
    if-nez p1, :cond_0

    .line 318
    invoke-static {p2}, Landroid/support/v7/internal/view/menu/MenuWrapperFactory;->createMenuItemWrapper(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object p2

    .line 320
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActivity:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/ActionBarActivity;->superOnMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onMenuItemSelected(Landroid/support/v7/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "menu"    # Landroid/support/v7/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 325
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActivity:Landroid/support/v7/app/ActionBarActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Landroid/support/v7/app/ActionBarActivity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onMenuModeChange(Landroid/support/v7/internal/view/menu/MenuBuilder;)V
    .locals 1
    .param p1, "menu"    # Landroid/support/v7/internal/view/menu/MenuBuilder;

    .prologue
    .line 330
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->reopenMenu(Landroid/support/v7/internal/view/menu/MenuBuilder;Z)V

    .line 331
    return-void
.end method

.method public onOpenSubMenu(Landroid/support/v7/internal/view/menu/MenuBuilder;)Z
    .locals 1
    .param p1, "subMenu"    # Landroid/support/v7/internal/view/menu/MenuBuilder;

    .prologue
    .line 340
    const/4 v0, 0x0

    return v0
.end method

.method public onPostResume()V
    .locals 2

    .prologue
    .line 112
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/ActionBarImplBase;

    .line 113
    .local v0, "ab":Landroid/support/v7/app/ActionBarImplBase;
    if-eqz v0, :cond_0

    .line 114
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBarImplBase;->setShowHideAnimationEnabled(Z)V

    .line 116
    :cond_0
    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menu"    # Landroid/view/Menu;

    .prologue
    .line 309
    if-eqz p1, :cond_0

    .line 310
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActivity:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/app/ActionBarActivity;->superOnPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    .line 312
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 104
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/ActionBarImplBase;

    .line 105
    .local v0, "ab":Landroid/support/v7/app/ActionBarImplBase;
    if-eqz v0, :cond_0

    .line 106
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBarImplBase;->setShowHideAnimationEnabled(Z)V

    .line 108
    :cond_0
    return-void
.end method

.method public onTitleChanged(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 249
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActionBarView:Landroid/support/v7/internal/widget/ActionBarView;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActionBarView:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarView;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 252
    :cond_0
    return-void
.end method

.method public setContentView(I)V
    .locals 4
    .param p1, "resId"    # I

    .prologue
    .line 133
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->ensureSubDecor()V

    .line 134
    iget-boolean v2, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mHasActionBar:Z

    if-eqz v2, :cond_0

    .line 135
    iget-object v2, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActivity:Landroid/support/v7/app/ActionBarActivity;

    sget v3, Landroid/support/v7/appcompat/R$id;->action_bar_activity_content:I

    invoke-virtual {v2, v3}, Landroid/support/v7/app/ActionBarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 137
    .local v0, "contentParent":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 138
    iget-object v2, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActivity:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v2}, Landroid/support/v7/app/ActionBarActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 139
    .local v1, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 143
    .end local v0    # "contentParent":Landroid/view/ViewGroup;
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    :goto_0
    return-void

    .line 141
    :cond_0
    iget-object v2, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActivity:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v2, p1}, Landroid/support/v7/app/ActionBarActivity;->superSetContentView(I)V

    goto :goto_0
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 120
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->ensureSubDecor()V

    .line 121
    iget-boolean v1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mHasActionBar:Z

    if-eqz v1, :cond_0

    .line 122
    iget-object v1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActivity:Landroid/support/v7/app/ActionBarActivity;

    sget v2, Landroid/support/v7/appcompat/R$id;->action_bar_activity_content:I

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 124
    .local v0, "contentParent":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 125
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 129
    .end local v0    # "contentParent":Landroid/view/ViewGroup;
    :goto_0
    return-void

    .line 127
    :cond_0
    iget-object v1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActivity:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v1, p1}, Landroid/support/v7/app/ActionBarActivity;->superSetContentView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 147
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->ensureSubDecor()V

    .line 148
    iget-boolean v1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mHasActionBar:Z

    if-eqz v1, :cond_0

    .line 149
    iget-object v1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActivity:Landroid/support/v7/app/ActionBarActivity;

    sget v2, Landroid/support/v7/appcompat/R$id;->action_bar_activity_content:I

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 151
    .local v0, "contentParent":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 152
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    .end local v0    # "contentParent":Landroid/view/ViewGroup;
    :goto_0
    return-void

    .line 154
    :cond_0
    iget-object v1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActivity:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v1, p1, p2}, Landroid/support/v7/app/ActionBarActivity;->superSetContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method setSupportProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 475
    add-int/lit8 v0, p1, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->updateProgressBars(I)V

    .line 476
    return-void
.end method

.method setSupportProgressBarIndeterminate(Z)V
    .locals 1
    .param p1, "indeterminate"    # Z

    .prologue
    .line 469
    if-eqz p1, :cond_0

    const/4 v0, -0x3

    :goto_0
    invoke-direct {p0, v0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->updateProgressBars(I)V

    .line 471
    return-void

    .line 469
    :cond_0
    const/4 v0, -0x4

    goto :goto_0
.end method

.method setSupportProgressBarIndeterminateVisibility(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 463
    if-eqz p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-direct {p0, v0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->updateProgressBars(I)V

    .line 465
    return-void

    .line 463
    :cond_0
    const/4 v0, -0x2

    goto :goto_0
.end method

.method setSupportProgressBarVisibility(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 457
    if-eqz p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-direct {p0, v0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->updateProgressBars(I)V

    .line 459
    return-void

    .line 457
    :cond_0
    const/4 v0, -0x2

    goto :goto_0
.end method

.method public startSupportActionMode(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;
    .locals 4
    .param p1, "callback"    # Landroid/support/v7/view/ActionMode$Callback;

    .prologue
    .line 345
    if-nez p1, :cond_0

    .line 346
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "ActionMode callback can not be null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 349
    :cond_0
    iget-object v2, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActionMode:Landroid/support/v7/view/ActionMode;

    if-eqz v2, :cond_1

    .line 350
    iget-object v2, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActionMode:Landroid/support/v7/view/ActionMode;

    invoke-virtual {v2}, Landroid/support/v7/view/ActionMode;->finish()V

    .line 353
    :cond_1
    new-instance v1, Landroid/support/v7/app/ActionBarActivityDelegateBase$ActionModeCallbackWrapper;

    invoke-direct {v1, p0, p1}, Landroid/support/v7/app/ActionBarActivityDelegateBase$ActionModeCallbackWrapper;-><init>(Landroid/support/v7/app/ActionBarActivityDelegateBase;Landroid/support/v7/view/ActionMode$Callback;)V

    .line 355
    .local v1, "wrappedCallback":Landroid/support/v7/view/ActionMode$Callback;
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/ActionBarImplBase;

    .line 356
    .local v0, "ab":Landroid/support/v7/app/ActionBarImplBase;
    if-eqz v0, :cond_2

    .line 357
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBarImplBase;->startActionMode(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActionMode:Landroid/support/v7/view/ActionMode;

    .line 360
    :cond_2
    iget-object v2, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActionMode:Landroid/support/v7/view/ActionMode;

    if-eqz v2, :cond_3

    .line 361
    iget-object v2, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActivity:Landroid/support/v7/app/ActionBarActivity;

    iget-object v3, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActionMode:Landroid/support/v7/view/ActionMode;

    invoke-virtual {v2, v3}, Landroid/support/v7/app/ActionBarActivity;->onSupportActionModeStarted(Landroid/support/v7/view/ActionMode;)V

    .line 363
    :cond_3
    iget-object v2, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActionMode:Landroid/support/v7/view/ActionMode;

    return-object v2
.end method

.method public supportInvalidateOptionsMenu()V
    .locals 2

    .prologue
    .line 368
    iget-boolean v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mInvalidateMenuPosted:Z

    if-nez v0, :cond_0

    .line 369
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mInvalidateMenuPosted:Z

    .line 370
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActivity:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mInvalidateMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 372
    :cond_0
    return-void
.end method

.method public supportRequestWindowFeature(I)Z
    .locals 1
    .param p1, "featureId"    # I

    .prologue
    const/4 v0, 0x1

    .line 229
    packed-switch p1, :pswitch_data_0

    .line 243
    :pswitch_0
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActivity:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBarActivity;->requestWindowFeature(I)Z

    move-result v0

    :goto_0
    return v0

    .line 231
    :pswitch_1
    iput-boolean v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mHasActionBar:Z

    goto :goto_0

    .line 234
    :pswitch_2
    iput-boolean v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mOverlayActionBar:Z

    goto :goto_0

    .line 237
    :pswitch_3
    iput-boolean v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mFeatureProgress:Z

    goto :goto_0

    .line 240
    :pswitch_4
    iput-boolean v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mFeatureIndeterminateProgress:Z

    goto :goto_0

    .line 229
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
