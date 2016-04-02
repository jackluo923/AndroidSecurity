.class public Lcom/alipay/android/phone/home/ui/DragReorderGridView;
.super Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter;
.source "DragReorderGridView.java"


# static fields
.field public static a:I

.field public static final b:I

.field public static final c:I

.field public static d:I

.field public static e:I


# instance fields
.field private final f:Ljava/lang/String;

.field private g:Z

.field private h:Z

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x4

    .line 40
    sput v0, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->a:I

    const/16 v0, 0xc

    sput v0, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->b:I

    .line 41
    sget v0, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->a:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->c:I

    .line 43
    sget v0, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->a:I

    mul-int/lit8 v0, v0, 0x3

    sput v0, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->d:I

    .line 44
    sget v0, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->a:I

    mul-int/lit8 v0, v0, 0x3

    sput v0, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->e:I

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    const-string/jumbo v0, "DragReorderGridView"

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->f:Ljava/lang/String;

    .line 33
    iput-boolean v1, p0, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->g:Z

    .line 34
    iput-boolean v1, p0, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->h:Z

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->i:I

    .line 70
    return-void
.end method

.method private a(IZ)V
    .locals 4

    .prologue
    .line 489
    invoke-virtual {p0, p1}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    .line 490
    if-eqz v1, :cond_0

    instance-of v0, v1, Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    .line 515
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, v1

    .line 494
    check-cast v0, Landroid/view/ViewGroup;

    sget v2, Lcom/alipay/android/phone/openplatform/R$id;->x:I

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 495
    if-eqz v2, :cond_0

    .line 498
    check-cast v1, Landroid/view/ViewGroup;

    sget v0, Lcom/alipay/android/phone/openplatform/R$id;->g:I

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 499
    if-eqz v0, :cond_0

    .line 502
    if-eqz p2, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 505
    :cond_2
    if-nez p2, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 508
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setCellLockIng postion:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ";isLocking:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 509
    if-eqz p2, :cond_4

    .line 510
    sget v1, Lcom/alipay/android/phone/openplatform/R$drawable;->f:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 514
    :goto_1
    if-eqz p2, :cond_5

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 512
    :cond_4
    sget v1, Lcom/alipay/android/phone/openplatform/R$drawable;->e:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 514
    :cond_5
    const/16 v0, 0x8

    goto :goto_2
.end method

.method private static a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 674
    if-eqz p0, :cond_0

    .line 675
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 676
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 678
    :cond_0
    return-void
.end method

.method private a()Z
    .locals 1

    .prologue
    .line 388
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->getRealAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->getRealAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    instance-of v0, v0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;

    if-eqz v0, :cond_0

    .line 389
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->getRealAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->f()Z

    move-result v0

    .line 391
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(I)Z
    .locals 1

    .prologue
    .line 421
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->getRealAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    instance-of v0, v0, Lcom/alipay/android/phone/home/ui/DragReorderListAdapter;

    if-eqz v0, :cond_0

    .line 422
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->getRealAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/home/ui/DragReorderListAdapter;

    invoke-interface {v0, p1}, Lcom/alipay/android/phone/home/ui/DragReorderListAdapter;->a(I)Z

    move-result v0

    .line 424
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static b(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 681
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 682
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 683
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 684
    if-eqz v0, :cond_0

    .line 685
    const/4 v0, 0x4

    .line 687
    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 689
    :cond_1
    return-void
.end method

.method private b()Z
    .locals 1

    .prologue
    .line 407
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->getRealAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->getRealAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    instance-of v0, v0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;

    if-eqz v0, :cond_0

    .line 408
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->getRealAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->a()Z

    move-result v0

    .line 410
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(I)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 429
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->getRealAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->getRealAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    instance-of v0, v0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;

    if-eqz v0, :cond_1

    .line 430
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->getRealAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;

    invoke-virtual {v0, p1}, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->b(I)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v0

    .line 431
    if-nez v0, :cond_0

    move v0, v1

    .line 443
    :goto_0
    return v0

    .line 437
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "DragReorderGridView"

    .line 438
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, " app :"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " isMoveable:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isMovable()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 437
    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->print(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isMovable()Z

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 443
    goto :goto_0
.end method

.method private c()I
    .locals 1

    .prologue
    .line 414
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->getRealAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->getRealAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    instance-of v0, v0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;

    if-eqz v0, :cond_0

    .line 415
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->getRealAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->g()I

    move-result v0

    .line 417
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 453
    iput-boolean v0, p0, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->g:Z

    .line 454
    invoke-direct {p0, p1, v0}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->a(IZ)V

    .line 455
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->i:I

    .line 456
    return-void
.end method

.method private d()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 459
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->getCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->getHeaderViewCount()I

    move-result v1

    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->getNumColumns()I

    move-result v2

    mul-int/2addr v1, v2

    if-gt v0, v1, :cond_1

    .line 468
    :cond_0
    :goto_0
    return-void

    .line 462
    :cond_1
    iget-boolean v0, p0, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->h:Z

    if-eqz v0, :cond_0

    .line 463
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->getHeaderViewCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->getNumColumns()I

    move-result v1

    mul-int/2addr v0, v1

    :goto_1
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->getCount()I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 466
    iput-boolean v3, p0, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->h:Z

    goto :goto_0

    .line 464
    :cond_2
    invoke-direct {p0, v0, v3}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->a(IZ)V

    .line 463
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method protected animationReorder(II)V
    .locals 11

    .prologue
    .line 519
    if-le p2, p1, :cond_1

    const/4 v0, 0x1

    .line 524
    :goto_0
    if-eqz v0, :cond_a

    .line 525
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v9, v0

    :goto_1
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-lt v9, v0, :cond_2

    .line 622
    :cond_0
    return-void

    .line 519
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 527
    :cond_2
    invoke-direct {p0}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    sget v0, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->b:I

    if-lt v9, v0, :cond_3

    .line 528
    sget v0, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->b:I

    sget v1, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->a:I

    add-int/2addr v0, v1

    if-lt v9, v0, :cond_5

    .line 529
    :cond_3
    invoke-direct {p0}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    sget v0, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->c:I

    if-eq v9, v0, :cond_5

    .line 532
    sget v0, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->c:I

    add-int/lit8 v0, v0, 0x1

    if-eq v9, v0, :cond_5

    .line 533
    :cond_4
    invoke-virtual {p0, v9}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->findViewByPosition(I)Landroid/view/View;

    move-result-object v10

    .line 536
    if-eqz v10, :cond_5

    .line 537
    invoke-direct {p0}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    add-int/lit8 v0, v9, 0x1

    sget v1, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->b:I

    if-ne v0, v1, :cond_6

    .line 540
    add-int/lit8 v0, v9, 0x1

    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->getNumColumns()I

    move-result v1

    rem-int/2addr v0, v1

    if-nez v0, :cond_6

    .line 541
    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v0

    neg-int v0, v0

    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->getNumColumns()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    mul-int/2addr v1, v0

    .line 542
    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-direct {p0}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->c()I

    move-result v2

    add-int/2addr v0, v2

    move v6, v0

    move v2, v1

    .line 564
    :goto_2
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    int-to-float v2, v2

    .line 567
    const/4 v3, 0x0

    .line 568
    const/4 v4, 0x0

    const/4 v5, 0x0

    int-to-float v6, v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 566
    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 569
    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 570
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillEnabled(Z)V

    .line 571
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 572
    invoke-virtual {v10}, Landroid/view/View;->clearAnimation()V

    .line 573
    invoke-virtual {v10, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 526
    :cond_5
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_1

    .line 545
    :cond_6
    invoke-direct {p0}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->b()Z

    move-result v0

    if-eqz v0, :cond_7

    add-int/lit8 v0, v9, 0x1

    sget v1, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->c:I

    if-ne v0, v1, :cond_7

    .line 546
    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->getNumColumns()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    mul-int/2addr v1, v0

    .line 547
    const/4 v0, 0x0

    move v6, v0

    move v2, v1

    .line 549
    goto :goto_2

    .line 550
    :cond_7
    invoke-direct {p0}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->b()Z

    move-result v0

    if-eqz v0, :cond_8

    sget v0, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->c:I

    add-int/lit8 v0, v0, 0x2

    if-ne v9, v0, :cond_8

    .line 551
    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v0

    neg-int v0, v0

    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->getNumColumns()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    mul-int/2addr v1, v0

    .line 552
    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v0

    move v6, v0

    move v2, v1

    .line 554
    goto :goto_2

    .line 555
    :cond_8
    add-int/lit8 v0, v9, 0x1

    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->getNumColumns()I

    move-result v1

    rem-int/2addr v0, v1

    if-nez v0, :cond_9

    .line 556
    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v0

    neg-int v0, v0

    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->getNumColumns()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    mul-int/2addr v1, v0

    .line 557
    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v0

    move v6, v0

    move v2, v1

    .line 559
    goto :goto_2

    .line 561
    :cond_9
    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 562
    const/4 v0, 0x0

    move v6, v0

    move v2, v1

    goto/16 :goto_2

    .line 576
    :cond_a
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v9, v0

    :goto_3
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-le v9, v0, :cond_0

    .line 578
    invoke-direct {p0}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->a()Z

    move-result v0

    if-eqz v0, :cond_b

    sget v0, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->b:I

    if-lt v9, v0, :cond_b

    .line 579
    sget v0, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->b:I

    sget v1, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->a:I

    add-int/2addr v0, v1

    if-lt v9, v0, :cond_d

    .line 580
    :cond_b
    invoke-direct {p0}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->b()Z

    move-result v0

    if-eqz v0, :cond_c

    sget v0, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->c:I

    if-eq v9, v0, :cond_d

    .line 583
    sget v0, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->c:I

    add-int/lit8 v0, v0, 0x1

    if-eq v9, v0, :cond_d

    .line 584
    :cond_c
    invoke-virtual {p0, v9}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->findViewByPosition(I)Landroid/view/View;

    move-result-object v10

    .line 587
    if-eqz v10, :cond_d

    .line 588
    invoke-direct {p0}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->a()Z

    move-result v0

    if-eqz v0, :cond_e

    add-int/lit8 v0, v9, -0x1

    sget v1, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->b:I

    sget v2, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->a:I

    add-int/2addr v1, v2

    if-ne v0, v1, :cond_e

    .line 591
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->getNumColumns()I

    move-result v0

    add-int/2addr v0, v9

    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->getNumColumns()I

    move-result v1

    rem-int/2addr v0, v1

    if-nez v0, :cond_e

    .line 592
    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->getNumColumns()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    mul-int/2addr v1, v0

    .line 593
    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v0

    neg-int v0, v0

    invoke-direct {p0}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->c()I

    move-result v2

    sub-int/2addr v0, v2

    move v6, v0

    move v2, v1

    .line 610
    :goto_4
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    int-to-float v2, v2

    .line 613
    const/4 v3, 0x0

    .line 614
    const/4 v4, 0x0

    const/4 v5, 0x0

    int-to-float v6, v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 612
    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 615
    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 616
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillEnabled(Z)V

    .line 617
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 618
    invoke-virtual {v10}, Landroid/view/View;->clearAnimation()V

    .line 619
    invoke-virtual {v10, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 577
    :cond_d
    add-int/lit8 v0, v9, -0x1

    move v9, v0

    goto/16 :goto_3

    .line 596
    :cond_e
    invoke-direct {p0}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->b()Z

    move-result v0

    if-eqz v0, :cond_f

    add-int/lit8 v0, v9, -0x2

    sget v1, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->c:I

    if-ne v0, v1, :cond_f

    .line 597
    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v0

    neg-int v0, v0

    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->getNumColumns()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    mul-int/2addr v1, v0

    .line 598
    const/4 v0, 0x0

    move v6, v0

    move v2, v1

    .line 600
    goto :goto_4

    .line 601
    :cond_f
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->getNumColumns()I

    move-result v0

    add-int/2addr v0, v9

    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->getNumColumns()I

    move-result v1

    rem-int/2addr v0, v1

    if-nez v0, :cond_10

    .line 602
    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->getNumColumns()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    mul-int/2addr v1, v0

    .line 603
    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v0

    neg-int v0, v0

    move v6, v0

    move v2, v1

    .line 605
    goto :goto_4

    .line 607
    :cond_10
    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v0

    neg-int v1, v0

    .line 608
    const/4 v0, 0x0

    move v6, v0

    move v2, v1

    goto :goto_4
.end method

.method getRealAdapter()Landroid/widget/ListAdapter;
    .locals 2

    .prologue
    .line 399
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 400
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;

    if-eqz v1, :cond_0

    .line 401
    check-cast v0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 403
    :cond_0
    return-object v0
.end method

.method public isLockMode()Z
    .locals 1

    .prologue
    .line 483
    iget-boolean v0, p0, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->h:Z

    return v0
.end method

.method protected isReorderable(IZ)Z
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 74
    if-eqz p2, :cond_6

    .line 75
    invoke-virtual {p0, p1}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->reCaculatePosition(I)I

    move-result v0

    .line 76
    invoke-direct {p0}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 77
    sget v1, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->b:I

    if-lt v0, v1, :cond_1

    sget v1, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->b:I

    sget v4, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->a:I

    add-int/2addr v1, v4

    if-ge v0, v1, :cond_1

    .line 118
    :cond_0
    :goto_0
    return v2

    .line 81
    :cond_1
    invoke-direct {p0}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 82
    sget v1, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->c:I

    if-eq v0, v1, :cond_0

    .line 83
    sget v1, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->c:I

    add-int/lit8 v1, v1, 0x1

    if-eq v0, v1, :cond_0

    .line 87
    :cond_2
    invoke-direct {p0, v0}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    invoke-direct {p0, v0}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->b(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 92
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->finishDrag()V

    iget-boolean v0, p0, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->mIsEditMode:Z

    if-eqz v0, :cond_4

    iput v5, p0, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->mOrigPosition:I

    iput-boolean v2, p0, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->mIsEditMode:Z

    invoke-virtual {p0, v5}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->updateEditingPosition(I)V

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->mDragReorderListener:Lcom/alipay/mobile/commonui/widget/draggridview/DragReorderListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->mDragReorderListener:Lcom/alipay/mobile/commonui/widget/draggridview/DragReorderListener;

    iget-boolean v1, p0, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->appHasMoved:Z

    invoke-interface {v0, v1}, Lcom/alipay/mobile/commonui/widget/draggridview/DragReorderListener;->onQuitEditMode(Z)V

    :cond_3
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->invalidate()V

    .line 93
    :cond_4
    iput-boolean v3, p0, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->g:Z

    iput p1, p0, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->i:I

    invoke-direct {p0, p1, v3}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->a(IZ)V

    goto :goto_0

    :cond_5
    move v2, v3

    .line 96
    goto :goto_0

    .line 98
    :cond_6
    invoke-virtual {p0, p1}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->reCaculatePosition(I)I

    move-result v0

    .line 99
    invoke-direct {p0}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->b()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 100
    sget v1, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->c:I

    if-eq v0, v1, :cond_0

    .line 101
    sget v1, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->c:I

    add-int/lit8 v1, v1, 0x1

    if-eq v0, v1, :cond_0

    .line 104
    :cond_7
    invoke-direct {p0}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->a()Z

    move-result v1

    if-eqz v1, :cond_8

    sget v1, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->b:I

    if-lt v0, v1, :cond_8

    .line 105
    sget v1, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->b:I

    sget v4, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->a:I

    add-int/2addr v1, v4

    if-lt v0, v1, :cond_0

    .line 109
    :cond_8
    invoke-direct {p0, v0}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    invoke-direct {p0, v0}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->b(I)Z

    move-result v0

    if-nez v0, :cond_b

    .line 113
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->getCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->getHeaderViewCount()I

    move-result v1

    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->getNumColumns()I

    move-result v4

    mul-int/2addr v1, v4

    if-le v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->h:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->getHeaderViewCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->getNumColumns()I

    move-result v1

    mul-int/2addr v0, v1

    :goto_1
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->getCount()I

    move-result v1

    if-lt v0, v1, :cond_9

    iput-boolean v3, p0, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->h:Z

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->reCaculatePosition(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->b(I)Z

    move-result v1

    if-eqz v1, :cond_a

    move v1, v2

    :goto_2
    invoke-direct {p0, v0, v1}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->a(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_a
    move v1, v3

    goto :goto_2

    .line 116
    :cond_b
    invoke-direct {p0}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->d()V

    move v2, v3

    .line 118
    goto/16 :goto_0
.end method

.method protected onDispatchDraw(Landroid/graphics/Canvas;)V
    .locals 14

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x1

    .line 143
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->getFirstVisiblePosition()I

    move-result v1

    iput v1, p0, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->mCurrentFirstVisibleItem:I

    .line 146
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->getChildCount()I

    move-result v8

    .line 147
    if-lez v8, :cond_1

    .line 148
    iget v1, p0, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->mCurrentFirstVisibleItem:I

    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->getHeaderViewCount()I

    move-result v2

    .line 149
    sget v3, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->a:I

    mul-int/2addr v2, v3

    if-ge v1, v2, :cond_2

    .line 150
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->getHeaderViewCount()I

    move-result v1

    sget v2, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->a:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->mCurrentFirstVisibleItem:I

    sub-int/2addr v1, v2

    .line 151
    :goto_0
    invoke-virtual {p0, v1}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 152
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "DragReorderGridView"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "mCurrentFirstVisibleItem "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->mCurrentFirstVisibleItem:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", visibleHeaderGridNum "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ",localView "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->print(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    sget v1, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->a:I

    div-int v1, v8, v1

    .line 154
    sget v2, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->a:I

    rem-int v2, v8, v2

    if-lez v2, :cond_0

    move v0, v6

    .line 153
    :cond_0
    add-int v10, v1, v0

    .line 156
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->getMeasuredWidth()I

    move-result v0

    sget v1, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->a:I

    div-int v11, v0, v1

    .line 159
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 160
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 161
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 162
    sget v1, Lcom/alipay/android/phone/openplatform/R$color;->f:I

    .line 161
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 164
    add-int/lit8 v0, v8, -0x1

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    move v7, v6

    .line 167
    :goto_1
    sget v0, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->a:I

    if-lt v7, v0, :cond_3

    .line 305
    const/4 v1, 0x0

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->getWidth()I

    move-result v0

    int-to-float v3, v0

    .line 306
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v4, v0

    move-object v0, p1

    .line 305
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 308
    :goto_2
    add-int/lit8 v0, v10, 0x1

    if-lt v6, v0, :cond_13

    .line 316
    :cond_1
    invoke-super {p0, p1}, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter;->onDispatchDraw(Landroid/graphics/Canvas;)V

    .line 321
    :goto_3
    return-void

    :cond_2
    move v1, v0

    .line 150
    goto/16 :goto_0

    .line 168
    :cond_3
    invoke-direct {p0}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->a()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 169
    iget v0, p0, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->mCurrentFirstVisibleItem:I

    sget v1, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->b:I

    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->getHeaderViewCount()I

    move-result v2

    .line 170
    sget v3, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->a:I

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    if-gt v0, v1, :cond_e

    .line 172
    sget v0, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->b:I

    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->getHeaderViewCount()I

    move-result v1

    sget v2, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->a:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 173
    iget v1, p0, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->mCurrentFirstVisibleItem:I

    .line 172
    sub-int/2addr v0, v1

    .line 175
    if-ltz v0, :cond_9

    if-ge v0, v8, :cond_9

    .line 176
    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 177
    if-lez v0, :cond_4

    .line 179
    invoke-direct {p0}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->b()Z

    move-result v0

    if-eqz v0, :cond_8

    sget v0, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->a:I

    div-int/lit8 v0, v0, 0x2

    if-ne v7, v0, :cond_8

    .line 180
    iget v0, p0, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->mCurrentFirstVisibleItem:I

    sget v1, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->a:I

    mul-int/lit8 v1, v1, 0x0

    if-ne v0, v1, :cond_6

    .line 181
    mul-int v0, v11, v7

    int-to-float v1, v0

    .line 182
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v2, v0

    .line 183
    mul-int v0, v11, v7

    int-to-float v3, v0

    .line 185
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v0

    int-to-float v4, v0

    move-object v0, p1

    .line 181
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 186
    mul-int v0, v11, v7

    int-to-float v1, v0

    .line 187
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    int-to-float v2, v0

    .line 189
    mul-int v0, v11, v7

    int-to-float v3, v0

    .line 190
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v4, v0

    move-object v0, p1

    .line 186
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 218
    :cond_4
    :goto_4
    mul-int v0, v11, v7

    int-to-float v1, v0

    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v2, v0

    .line 219
    mul-int v0, v11, v7

    int-to-float v3, v0

    .line 220
    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v0

    int-to-float v4, v0

    move-object v0, p1

    .line 218
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 167
    :cond_5
    :goto_5
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto/16 :goto_1

    .line 191
    :cond_6
    iget v0, p0, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->mCurrentFirstVisibleItem:I

    sget v1, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->a:I

    mul-int/lit8 v1, v1, 0x1

    if-ne v0, v1, :cond_7

    .line 192
    mul-int v0, v11, v7

    int-to-float v1, v0

    .line 193
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v2, v0

    .line 194
    mul-int v0, v11, v7

    int-to-float v3, v0

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v4, v0

    move-object v0, p1

    .line 192
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 317
    :catch_0
    move-exception v0

    .line 318
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "DragReorderGridView"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onDispatchDraw"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 196
    :cond_7
    :try_start_1
    iget v0, p0, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->mCurrentFirstVisibleItem:I

    sget v1, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->a:I

    mul-int/lit8 v1, v1, 0x2

    if-ne v0, v1, :cond_4

    .line 197
    :cond_8
    mul-int v0, v11, v7

    int-to-float v1, v0

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v2, v0

    .line 209
    mul-int v0, v11, v7

    int-to-float v3, v0

    .line 211
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v4, v0

    move-object v0, p1

    .line 208
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_4

    .line 221
    :cond_9
    if-lez v0, :cond_d

    .line 222
    add-int/lit8 v1, v8, -0x1

    invoke-virtual {p0, v1}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 223
    if-lez v0, :cond_5

    .line 225
    invoke-direct {p0}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->b()Z

    move-result v0

    if-eqz v0, :cond_c

    sget v0, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->a:I

    div-int/lit8 v0, v0, 0x2

    if-ne v7, v0, :cond_c

    .line 226
    iget v0, p0, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->mCurrentFirstVisibleItem:I

    sget v1, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->a:I

    mul-int/lit8 v1, v1, 0x0

    if-ne v0, v1, :cond_a

    .line 227
    mul-int v0, v11, v7

    int-to-float v1, v0

    .line 228
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v2, v0

    .line 229
    mul-int v0, v11, v7

    int-to-float v3, v0

    .line 231
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v0

    int-to-float v4, v0

    move-object v0, p1

    .line 227
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 232
    mul-int v0, v11, v7

    int-to-float v1, v0

    .line 233
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    int-to-float v2, v0

    .line 235
    mul-int v0, v11, v7

    int-to-float v3, v0

    .line 236
    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v0

    int-to-float v4, v0

    move-object v0, p1

    .line 232
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_5

    .line 237
    :cond_a
    iget v0, p0, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->mCurrentFirstVisibleItem:I

    sget v1, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->a:I

    mul-int/lit8 v1, v1, 0x1

    if-ne v0, v1, :cond_b

    .line 238
    mul-int v0, v11, v7

    int-to-float v1, v0

    .line 239
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v2, v0

    .line 240
    mul-int v0, v11, v7

    int-to-float v3, v0

    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v0

    int-to-float v4, v0

    move-object v0, p1

    .line 238
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_5

    .line 242
    :cond_b
    iget v0, p0, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->mCurrentFirstVisibleItem:I

    sget v1, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->a:I

    mul-int/lit8 v1, v1, 0x2

    if-ne v0, v1, :cond_5

    .line 243
    mul-int v0, v11, v7

    int-to-float v1, v0

    .line 244
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v2, v0

    .line 245
    mul-int v0, v11, v7

    int-to-float v3, v0

    .line 247
    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v0

    int-to-float v4, v0

    move-object v0, p1

    .line 243
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_5

    .line 251
    :cond_c
    if-eqz p1, :cond_5

    if-eqz v9, :cond_5

    .line 252
    if-eqz v13, :cond_5

    .line 253
    mul-int v0, v11, v7

    int-to-float v1, v0

    .line 254
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v2, v0

    .line 255
    mul-int v0, v11, v7

    int-to-float v3, v0

    .line 257
    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v0

    int-to-float v4, v0

    move-object v0, p1

    .line 253
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_5

    .line 263
    :cond_d
    mul-int v0, v11, v7

    int-to-float v1, v0

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v2, v0

    .line 264
    mul-int v0, v11, v7

    int-to-float v3, v0

    .line 266
    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v0

    int-to-float v4, v0

    move-object v0, p1

    .line 263
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_5

    .line 273
    :cond_e
    mul-int v0, v11, v7

    int-to-float v1, v0

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v2, v0

    .line 274
    mul-int v0, v11, v7

    int-to-float v3, v0

    .line 275
    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v0

    int-to-float v4, v0

    move-object v0, p1

    .line 273
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_5

    .line 278
    :cond_f
    invoke-direct {p0}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->b()Z

    move-result v0

    if-eqz v0, :cond_12

    sget v0, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->a:I

    div-int/lit8 v0, v0, 0x2

    if-ne v7, v0, :cond_12

    .line 279
    iget v0, p0, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->mCurrentFirstVisibleItem:I

    sget v1, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->a:I

    mul-int/lit8 v1, v1, 0x0

    if-ne v0, v1, :cond_10

    .line 280
    mul-int v0, v11, v7

    int-to-float v1, v0

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v2, v0

    .line 281
    mul-int v0, v11, v7

    int-to-float v3, v0

    .line 283
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v0

    int-to-float v4, v0

    move-object v0, p1

    .line 280
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 284
    mul-int v0, v11, v7

    int-to-float v1, v0

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 285
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    int-to-float v2, v0

    .line 286
    mul-int v0, v11, v7

    int-to-float v3, v0

    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v0

    int-to-float v4, v0

    move-object v0, p1

    .line 284
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_5

    .line 287
    :cond_10
    iget v0, p0, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->mCurrentFirstVisibleItem:I

    sget v1, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->a:I

    mul-int/lit8 v1, v1, 0x1

    if-ne v0, v1, :cond_11

    .line 288
    mul-int v0, v11, v7

    int-to-float v1, v0

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v2, v0

    .line 289
    mul-int v0, v11, v7

    int-to-float v3, v0

    .line 290
    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v0

    int-to-float v4, v0

    move-object v0, p1

    .line 288
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_5

    .line 292
    :cond_11
    mul-int v0, v11, v7

    int-to-float v1, v0

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v2, v0

    .line 293
    mul-int v0, v11, v7

    int-to-float v3, v0

    .line 295
    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v0

    int-to-float v4, v0

    move-object v0, p1

    .line 292
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_5

    .line 298
    :cond_12
    mul-int v0, v11, v7

    int-to-float v1, v0

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v2, v0

    .line 299
    mul-int v0, v11, v7

    int-to-float v3, v0

    .line 300
    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v0

    int-to-float v4, v0

    move-object v0, p1

    .line 298
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_5

    .line 309
    :cond_13
    sget v0, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->a:I

    add-int/lit8 v1, v6, -0x1

    mul-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 310
    const/4 v1, 0x0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    .line 311
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v4, v0

    move-object v0, p1

    .line 310
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 308
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto/16 :goto_2
.end method

.method protected onMeasure(II)V
    .locals 3

    .prologue
    .line 381
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter;->onMeasure(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 385
    :goto_0
    return-void

    .line 382
    :catch_0
    move-exception v0

    .line 383
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "DragReorderGridView"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 326
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    packed-switch v1, :pswitch_data_0

    .line 362
    :cond_0
    :goto_0
    :pswitch_0
    :try_start_0
    invoke-super {p0, p1}, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 375
    :cond_1
    :goto_1
    return v0

    .line 328
    :pswitch_1
    iget-boolean v1, p0, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->g:Z

    if-eqz v1, :cond_1

    .line 329
    iget v1, p0, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->i:I

    invoke-direct {p0, v1}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->c(I)V

    goto :goto_0

    .line 334
    :pswitch_2
    iget-boolean v1, p0, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->g:Z

    if-eqz v1, :cond_2

    .line 335
    iget v1, p0, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->i:I

    invoke-direct {p0, v1}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->c(I)V

    .line 337
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    if-nez v1, :cond_0

    .line 338
    invoke-direct {p0}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->d()V

    .line 339
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->finishDrag()V

    goto :goto_1

    .line 345
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    if-nez v1, :cond_0

    .line 346
    iget-boolean v1, p0, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->g:Z

    if-eqz v1, :cond_3

    .line 350
    iget v1, p0, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->i:I

    invoke-direct {p0, v1}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->c(I)V

    goto :goto_0

    .line 353
    :cond_3
    invoke-direct {p0}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->d()V

    .line 355
    iget-boolean v1, p0, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->mIsDragging:Z

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->mOrigPosition:I

    iget v2, p0, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->mEditingPosition:I

    if-eq v1, v2, :cond_4

    .line 356
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "DragReorderGridView"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "move cancel, origPosition != mEditPosition, "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->mOrigPosition:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 357
    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->mEditingPosition:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 356
    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->print(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->quitEditMode()V

    goto :goto_0

    .line 360
    :cond_4
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->finishDrag()V

    goto :goto_0

    .line 372
    :catch_0
    move-exception v1

    .line 373
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "DragReorderGridView"

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 326
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected setCellEditing(IZZ)V
    .locals 6

    .prologue
    .line 632
    invoke-virtual {p0, p1}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    .line 633
    if-eqz v1, :cond_0

    instance-of v0, v1, Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    .line 671
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, v1

    .line 637
    check-cast v0, Landroid/view/ViewGroup;

    iget v2, p0, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->mEditActionViewId:I

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 638
    if-eqz v2, :cond_0

    .line 642
    instance-of v0, v2, Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->mActionIconResId:I

    if-lez v0, :cond_2

    move-object v0, v2

    .line 643
    check-cast v0, Landroid/widget/ImageView;

    iget v3, p0, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->mActionIconResId:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 645
    :cond_2
    invoke-virtual {v1, p2}, Landroid/view/View;->setSelected(Z)V

    .line 646
    if-eqz p2, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 649
    :cond_3
    if-nez p2, :cond_4

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 652
    :cond_4
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v3, "DragReorderGridView"

    .line 653
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "setCellEditing,position:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ",isEditing:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 652
    invoke-interface {v0, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->print(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    if-eqz p2, :cond_5

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 656
    if-eqz p2, :cond_6

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->mEditActionOnClickListener:Landroid/view/View$OnClickListener;

    :goto_2
    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 657
    sget v0, Lcom/alipay/android/phone/openplatform/R$id;->I:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 658
    sget v2, Lcom/alipay/android/phone/openplatform/R$id;->e:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 659
    sget v3, Lcom/alipay/android/phone/openplatform/R$id;->E:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 660
    if-eqz p2, :cond_7

    .line 661
    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->a(Landroid/view/View;)V

    .line 662
    invoke-static {v1}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->a(Landroid/view/View;)V

    .line 663
    invoke-static {v2}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->a(Landroid/view/View;)V

    goto :goto_0

    .line 655
    :cond_5
    const/16 v0, 0x8

    goto :goto_1

    .line 656
    :cond_6
    const/4 v0, 0x0

    goto :goto_2

    .line 665
    :cond_7
    if-eqz p3, :cond_0

    .line 666
    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->b(Landroid/view/View;)V

    .line 667
    invoke-static {v1}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->b(Landroid/view/View;)V

    .line 668
    invoke-static {v2}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->b(Landroid/view/View;)V

    goto/16 :goto_0
.end method
