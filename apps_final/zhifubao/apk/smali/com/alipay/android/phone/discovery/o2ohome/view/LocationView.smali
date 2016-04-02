.class public Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView;
.super Landroid/widget/RelativeLayout;
.source "LocationView.java"


# instance fields
.field private animationEarth:Landroid/view/animation/Animation;

.field private animationIcon:Landroid/view/animation/Animation;

.field private btnRetry:Lcom/alipay/mobile/commonui/widget/APButton;

.field private emStyle:Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView$emStyleType;

.field private textFailure:Landroid/widget/TextView;

.field private textTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 34
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/android/phone/discovery/o2ohome/R$layout;->view_location_failure:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 35
    sget v0, Lcom/alipay/android/phone/discovery/o2ohome/R$id;->text_title:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView;->textTitle:Landroid/widget/TextView;

    .line 36
    sget v0, Lcom/alipay/android/phone/discovery/o2ohome/R$id;->text_failure:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView;->textFailure:Landroid/widget/TextView;

    .line 37
    sget v0, Lcom/alipay/android/phone/discovery/o2ohome/R$id;->btn_retry:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButton;

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView;->btnRetry:Lcom/alipay/mobile/commonui/widget/APButton;

    .line 38
    sget v0, Lcom/alipay/android/phone/discovery/o2ohome/R$color;->color_location_bg:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView;->setBackgroundResource(I)V

    .line 40
    new-instance v0, Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView$1;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView$1;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView;)V

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    sget v0, Lcom/alipay/android/phone/discovery/o2ohome/R$anim;->locate_icon_translate:I

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView;->animationIcon:Landroid/view/animation/Animation;

    .line 48
    sget v0, Lcom/alipay/android/phone/discovery/o2ohome/R$anim;->locate_earch_translate:I

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView;->animationEarth:Landroid/view/animation/Animation;

    .line 49
    return-void
.end method

.method private startAnimation()V
    .locals 2

    .prologue
    .line 81
    sget v0, Lcom/alipay/android/phone/discovery/o2ohome/R$id;->locate_icon:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 82
    if-eqz v0, :cond_0

    .line 83
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView;->animationIcon:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 86
    :cond_0
    sget v0, Lcom/alipay/android/phone/discovery/o2ohome/R$id;->img_locate_earth_1:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 87
    if-eqz v0, :cond_1

    .line 88
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView;->animationEarth:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 91
    :cond_1
    sget v0, Lcom/alipay/android/phone/discovery/o2ohome/R$id;->img_locate_earth_2:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 92
    if-eqz v0, :cond_2

    .line 93
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView;->animationEarth:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 95
    :cond_2
    return-void
.end method

.method private stopAnimation()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v0, 0x0

    .line 98
    new-array v1, v4, [I

    sget v2, Lcom/alipay/android/phone/discovery/o2ohome/R$id;->locate_icon:I

    aput v2, v1, v0

    const/4 v2, 0x1

    sget v3, Lcom/alipay/android/phone/discovery/o2ohome/R$id;->img_locate_earth_1:I

    aput v3, v1, v2

    const/4 v2, 0x2

    sget v3, Lcom/alipay/android/phone/discovery/o2ohome/R$id;->img_locate_earth_2:I

    aput v3, v1, v2

    .line 99
    :goto_0
    if-lt v0, v4, :cond_0

    .line 105
    return-void

    .line 100
    :cond_0
    aget v2, v1, v0

    invoke-virtual {p0, v2}, Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 101
    if-eqz v2, :cond_1

    .line 102
    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    .line 99
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public changeStyleType(Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView$emStyleType;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 52
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView;->emStyle:Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView$emStyleType;

    .line 53
    sget-object v0, Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView$emStyleType;->EM_STYLE_LOADING:Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView$emStyleType;

    if-ne p1, v0, :cond_0

    .line 54
    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView;->startAnimation()V

    .line 55
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView;->btnRetry:Lcom/alipay/mobile/commonui/widget/APButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setVisibility(I)V

    .line 56
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView;->textFailure:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/alipay/android/phone/discovery/o2ohome/R$string;->location_locating:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    :goto_0
    sget-object v0, Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView$emStyleType;->EM_STYLE_HIDE:Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView$emStyleType;

    if-ne p1, v0, :cond_2

    .line 66
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView;->setVisibility(I)V

    .line 70
    :goto_1
    return-void

    .line 57
    :cond_0
    sget-object v0, Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView$emStyleType;->EM_STYLE_FAILURE:Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView$emStyleType;

    if-ne p1, v0, :cond_1

    .line 58
    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView;->stopAnimation()V

    .line 59
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView;->btnRetry:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APButton;->setVisibility(I)V

    .line 60
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView;->textFailure:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/alipay/android/phone/discovery/o2ohome/R$string;->location_failure:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 62
    :cond_1
    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView;->stopAnimation()V

    goto :goto_0

    .line 68
    :cond_2
    invoke-virtual {p0, v3}, Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView;->setVisibility(I)V

    goto :goto_1
.end method

.method public setBtnAction(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView;->btnRetry:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    return-void
.end method
