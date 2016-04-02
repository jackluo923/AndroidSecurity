.class public Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;
.super Ljava/lang/Object;


# static fields
.field protected static final PLACEHOLDER_ID:I = 0x1b5

.field protected static final RELATIVELAYOUT_ID:I = 0x1b6


# instance fields
.field private a:Lcom/inmobi/re/container/IMWebView;

.field private b:Lcom/inmobi/re/container/mraidimpl/ResizeDimensions;

.field public resizeProperties:Lcom/inmobi/re/controller/JSController$ResizeProperties;


# direct methods
.method public constructor <init>(Lcom/inmobi/re/container/IMWebView;Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->b:Lcom/inmobi/re/container/mraidimpl/ResizeDimensions;

    iput-object p1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a:Lcom/inmobi/re/container/IMWebView;

    return-void
.end method

.method private a(Lcom/inmobi/re/controller/JSController$ResizeProperties;)Landroid/widget/FrameLayout;
    .locals 9

    const/4 v8, 0x1

    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->getOriginalParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-direct {p0}, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a()V

    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v2}, Lcom/inmobi/re/container/IMWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {}, Lcom/inmobi/commons/internal/WrapperFunctions;->getParamFillParent()I

    move-result v3

    invoke-static {}, Lcom/inmobi/commons/internal/WrapperFunctions;->getParamFillParent()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x1b3

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setId(I)V

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    iget v4, p1, Lcom/inmobi/re/controller/JSController$ResizeProperties;->width:I

    iget v5, p1, Lcom/inmobi/re/controller/JSController$ResizeProperties;->height:I

    invoke-direct {v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    new-instance v4, Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v5}, Lcom/inmobi/re/container/IMWebView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/16 v5, 0x1b6

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setId(I)V

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    iget v6, p1, Lcom/inmobi/re/controller/JSController$ResizeProperties;->width:I

    iget v7, p1, Lcom/inmobi/re/controller/JSController$ResizeProperties;->height:I

    invoke-direct {v5, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v6, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v4, v6, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p1, Lcom/inmobi/re/controller/JSController$ResizeProperties;->customClosePosition:Ljava/lang/String;

    invoke-direct {p0, v4, v5}, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a(Landroid/view/ViewGroup;Ljava/lang/String;)V

    invoke-virtual {v1, v4, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-direct {p0, v0, v1, v3, p1}, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Lcom/inmobi/re/container/IMWebView;Lcom/inmobi/re/controller/JSController$ResizeProperties;)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0, v8}, Lcom/inmobi/re/container/IMWebView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0, v8}, Lcom/inmobi/re/container/IMWebView;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->requestFocus()Z

    return-object v1
.end method

.method private a(Ljava/lang/String;)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 5

    const/high16 v4, 0x42480000    # 50.0f

    invoke-direct {p0, p1}, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v2}, Lcom/inmobi/re/container/IMWebView;->getDensity()F

    move-result v2

    mul-float/2addr v2, v4

    float-to-int v2, v2

    iget-object v3, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v3}, Lcom/inmobi/re/container/IMWebView;->getDensity()F

    move-result v3

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const-string v2, "top-right"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "bottom-right"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :cond_1
    const-string v2, "bottom-right"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "bottom-left"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "bottom-center"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :cond_3
    const-string v2, "bottom-center"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "top-center"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "center"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :cond_5
    const-string v2, "top-center"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :cond_6
    return-object v1
.end method

.method static synthetic a(Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;)Lcom/inmobi/re/container/IMWebView;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a:Lcom/inmobi/re/container/IMWebView;

    return-object v0
.end method

.method private a()V
    .locals 4

    :try_start_0
    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x1b5

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setId(I)V

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->getWidth()I

    move-result v0

    iget-object v3, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v3}, Lcom/inmobi/re/container/IMWebView;->getHeight()I

    move-result v3

    invoke-direct {v2, v0, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->getOriginalParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v3}, Lcom/inmobi/re/container/IMWebView;->getOriginalIndex()I

    move-result v3

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "[InMobi]-[RE]-4.4.1"

    const-string v2, "Exception in replaceByPlaceHolder "

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(Landroid/view/ViewGroup;Ljava/lang/String;)V
    .locals 5

    invoke-direct {p0, p2}, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a(Ljava/lang/String;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    new-instance v1, Lcom/inmobi/re/container/CustomView;

    iget-object v2, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v2}, Lcom/inmobi/re/container/IMWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v3}, Lcom/inmobi/re/container/IMWebView;->getDensity()F

    move-result v3

    sget-object v4, Lcom/inmobi/re/container/CustomView$SwitchIconType;->CLOSE_TRANSPARENT:Lcom/inmobi/re/container/CustomView$SwitchIconType;

    invoke-direct {v1, v2, v3, v4}, Lcom/inmobi/re/container/CustomView;-><init>(Landroid/content/Context;FLcom/inmobi/re/container/CustomView$SwitchIconType;)V

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController$a;

    invoke-direct {v0, p0}, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController$a;-><init>(Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;)V

    invoke-virtual {v1, v0}, Lcom/inmobi/re/container/CustomView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private a(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Lcom/inmobi/re/container/IMWebView;Lcom/inmobi/re/controller/JSController$ResizeProperties;)V
    .locals 8

    const/4 v0, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-array v1, v0, [I

    new-array v2, v0, [I

    invoke-virtual {p3}, Lcom/inmobi/re/container/IMWebView;->getOriginalParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v0, v1, v7

    aget v3, v2, v7

    sub-int/2addr v0, v3

    aput v0, v1, v7

    aget v0, v1, v6

    aget v2, v2, v6

    sub-int/2addr v0, v2

    aput v0, v1, v6

    aget v0, v1, v6

    iget v2, p4, Lcom/inmobi/re/controller/JSController$ResizeProperties;->offsetX:I

    add-int/2addr v0, v2

    aput v0, v1, v6

    aget v0, v1, v7

    iget v2, p4, Lcom/inmobi/re/controller/JSController$ResizeProperties;->offsetY:I

    add-int/2addr v0, v2

    aput v0, v1, v7

    iget-boolean v0, p4, Lcom/inmobi/re/controller/JSController$ResizeProperties;->allowOffscreen:Z

    if-nez v0, :cond_3

    iget v0, p4, Lcom/inmobi/re/controller/JSController$ResizeProperties;->width:I

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    aget v3, v1, v6

    sub-int/2addr v2, v3

    if-le v0, v2, :cond_0

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    iget v2, p4, Lcom/inmobi/re/controller/JSController$ResizeProperties;->width:I

    sub-int/2addr v0, v2

    aput v0, v1, v6

    :cond_0
    iget v0, p4, Lcom/inmobi/re/controller/JSController$ResizeProperties;->height:I

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    aget v3, v1, v7

    sub-int/2addr v2, v3

    if-le v0, v2, :cond_1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    iget v2, p4, Lcom/inmobi/re/controller/JSController$ResizeProperties;->height:I

    sub-int/2addr v0, v2

    aput v0, v1, v7

    :cond_1
    aget v0, v1, v6

    if-gez v0, :cond_2

    aput v6, v1, v6

    :cond_2
    aget v0, v1, v7

    if-gez v0, :cond_3

    aput v6, v1, v7

    :cond_3
    new-instance v0, Lcom/inmobi/re/container/mraidimpl/ResizeDimensions;

    aget v2, v1, v6

    aget v3, v1, v7

    iget v4, p4, Lcom/inmobi/re/controller/JSController$ResizeProperties;->width:I

    iget v5, p4, Lcom/inmobi/re/controller/JSController$ResizeProperties;->height:I

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/inmobi/re/container/mraidimpl/ResizeDimensions;-><init>(IIII)V

    iput-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->b:Lcom/inmobi/re/container/mraidimpl/ResizeDimensions;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v0, p4, Lcom/inmobi/re/controller/JSController$ResizeProperties;->width:I

    iget v3, p4, Lcom/inmobi/re/controller/JSController$ResizeProperties;->height:I

    invoke-direct {v2, v0, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    aget v0, v1, v6

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    aget v0, v1, v7

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const/4 v0, 0x3

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p3}, Lcom/inmobi/re/container/IMWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic b(Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;)Lcom/inmobi/re/container/mraidimpl/ResizeDimensions;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->b:Lcom/inmobi/re/container/mraidimpl/ResizeDimensions;

    return-object v0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "top-left"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "top-right"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "bottom-left"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "bottom-right"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "top-center"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "bottom-center"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "center"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "top-right"

    :cond_0
    return-object p1
.end method

.method private b()V
    .locals 3

    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v1}, Lcom/inmobi/re/container/IMWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->getOriginalParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/16 v1, 0x1b5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->getOriginalParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a:Lcom/inmobi/re/container/IMWebView;

    iget-object v2, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v2}, Lcom/inmobi/re/container/IMWebView;->getOriginalIndex()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->resetLayout()V

    return-void
.end method


# virtual methods
.method public closeResized()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->getViewState()Lcom/inmobi/re/container/IMWebView$ViewState;

    move-result-object v0

    sget-object v1, Lcom/inmobi/re/container/IMWebView$ViewState;->DEFAULT:Lcom/inmobi/re/container/IMWebView$ViewState;

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView$ViewState;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a:Lcom/inmobi/re/container/IMWebView;

    iget-object v1, v0, Lcom/inmobi/re/container/IMWebView;->mutex:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a:Lcom/inmobi/re/container/IMWebView;

    iget-object v0, v0, Lcom/inmobi/re/container/IMWebView;->isMutexAquired:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a:Lcom/inmobi/re/container/IMWebView;

    iget-object v0, v0, Lcom/inmobi/re/container/IMWebView;->mutex:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a:Lcom/inmobi/re/container/IMWebView;

    iget-object v0, v0, Lcom/inmobi/re/container/IMWebView;->doNotFireVisibilityChanged:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-direct {p0}, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->b()V

    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->closeResized()V

    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0, v3}, Lcom/inmobi/re/container/IMWebView;->setVisibility(I)V

    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a:Lcom/inmobi/re/container/IMWebView;

    sget-object v1, Lcom/inmobi/re/container/IMWebView$ViewState;->DEFAULT:Lcom/inmobi/re/container/IMWebView$ViewState;

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView;->setState(Lcom/inmobi/re/container/IMWebView$ViewState;)V

    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a:Lcom/inmobi/re/container/IMWebView;

    iget-object v0, v0, Lcom/inmobi/re/container/IMWebView;->doNotFireVisibilityChanged:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public doResize(Landroid/os/Bundle;)V
    .locals 5

    const/4 v1, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a:Lcom/inmobi/re/container/IMWebView;

    iget-object v0, v0, Lcom/inmobi/re/container/IMWebView;->doNotFireVisibilityChanged:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :try_start_0
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->getOriginalParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->saveOriginalViewParent()V

    :cond_0
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getId()I

    move-result v0

    const/16 v1, 0x1b3

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v1}, Lcom/inmobi/re/container/IMWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a:Lcom/inmobi/re/container/IMWebView;

    iget-object v3, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->resizeProperties:Lcom/inmobi/re/controller/JSController$ResizeProperties;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Lcom/inmobi/re/container/IMWebView;Lcom/inmobi/re/controller/JSController$ResizeProperties;)V

    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->resizeProperties:Lcom/inmobi/re/controller/JSController$ResizeProperties;

    iget-object v0, v0, Lcom/inmobi/re/controller/JSController$ResizeProperties;->customClosePosition:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a(Ljava/lang/String;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->resizeProperties:Lcom/inmobi/re/controller/JSController$ResizeProperties;

    iget v2, v2, Lcom/inmobi/re/controller/JSController$ResizeProperties;->width:I

    iget-object v3, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->resizeProperties:Lcom/inmobi/re/controller/JSController$ResizeProperties;

    iget v3, v3, Lcom/inmobi/re/controller/JSController$ResizeProperties;->height:I

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v2, v0}, Lcom/inmobi/re/container/IMWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a:Lcom/inmobi/re/container/IMWebView;

    sget-object v1, Lcom/inmobi/re/container/IMWebView$ViewState;->RESIZED:Lcom/inmobi/re/container/IMWebView$ViewState;

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView;->setState(Lcom/inmobi/re/container/IMWebView$ViewState;)V

    :cond_1
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->requestLayout()V

    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->invalidate()V

    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a:Lcom/inmobi/re/container/IMWebView;

    new-instance v1, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController$b;

    invoke-direct {v1, p0}, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController$b;-><init>(Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;)V

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView;->postInHandler(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a:Lcom/inmobi/re/container/IMWebView;

    iget-object v0, v0, Lcom/inmobi/re/container/IMWebView;->doNotFireVisibilityChanged:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->resizeProperties:Lcom/inmobi/re/controller/JSController$ResizeProperties;

    invoke-direct {p0, v0}, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a(Lcom/inmobi/re/controller/JSController$ResizeProperties;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a:Lcom/inmobi/re/container/IMWebView;

    iget-object v0, v0, Lcom/inmobi/re/container/IMWebView;->mAudioVideoController:Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;

    iget-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->resizeProperties:Lcom/inmobi/re/controller/JSController$ResizeProperties;

    iget v1, v1, Lcom/inmobi/re/controller/JSController$ResizeProperties;->width:I

    iput v1, v0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoValidateWidth:I

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a:Lcom/inmobi/re/container/IMWebView;

    sget-object v1, Lcom/inmobi/re/container/IMWebView$ViewState;->RESIZED:Lcom/inmobi/re/container/IMWebView$ViewState;

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView;->setState(Lcom/inmobi/re/container/IMWebView$ViewState;)V

    :cond_3
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a:Lcom/inmobi/re/container/IMWebView;

    iget-object v1, v0, Lcom/inmobi/re/container/IMWebView;->mutex:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a:Lcom/inmobi/re/container/IMWebView;

    iget-object v0, v0, Lcom/inmobi/re/container/IMWebView;->isMutexAquired:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a:Lcom/inmobi/re/container/IMWebView;

    iget-object v0, v0, Lcom/inmobi/re/container/IMWebView;->mutex:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->requestLayout()V

    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->invalidate()V

    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a:Lcom/inmobi/re/container/IMWebView;

    new-instance v1, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController$c;

    invoke-direct {v1, p0}, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController$c;-><init>(Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;)V

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView;->postInHandler(Ljava/lang/Runnable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :goto_1
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a:Lcom/inmobi/re/container/IMWebView;

    iget-object v0, v0, Lcom/inmobi/re/container/IMWebView;->doNotFireVisibilityChanged:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v1

    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception v0

    const-string v1, "[InMobi]-[RE]-4.4.1"

    const-string v2, "Exception in doresize "

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a:Lcom/inmobi/re/container/IMWebView;

    sget-object v1, Lcom/inmobi/re/container/IMWebView$ViewState;->DEFAULT:Lcom/inmobi/re/container/IMWebView$ViewState;

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView;->setState(Lcom/inmobi/re/container/IMWebView$ViewState;)V

    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a:Lcom/inmobi/re/container/IMWebView;

    iget-object v1, v0, Lcom/inmobi/re/container/IMWebView;->mutex:Ljava/lang/Object;

    monitor-enter v1

    :try_start_5
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a:Lcom/inmobi/re/container/IMWebView;

    iget-object v0, v0, Lcom/inmobi/re/container/IMWebView;->isMutexAquired:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a:Lcom/inmobi/re/container/IMWebView;

    iget-object v0, v0, Lcom/inmobi/re/container/IMWebView;->mutex:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onOrientationChange()V
    .locals 2

    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->getStateVariable()Lcom/inmobi/re/container/IMWebView$ViewState;

    move-result-object v0

    sget-object v1, Lcom/inmobi/re/container/IMWebView$ViewState;->RESIZED:Lcom/inmobi/re/container/IMWebView$ViewState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->resizeProperties:Lcom/inmobi/re/controller/JSController$ResizeProperties;

    iget-boolean v0, v0, Lcom/inmobi/re/controller/JSController$ResizeProperties;->allowOffscreen:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->doResize(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    new-instance v0, Lcom/inmobi/re/controller/JSController$ResizeProperties;

    invoke-direct {v0}, Lcom/inmobi/re/controller/JSController$ResizeProperties;-><init>()V

    iput-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->resizeProperties:Lcom/inmobi/re/controller/JSController$ResizeProperties;

    return-void
.end method
