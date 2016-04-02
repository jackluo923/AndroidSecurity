.class public Lcom/alipay/mobile/quinox/splash/TextAndNumberView;
.super Landroid/widget/LinearLayout;
.source "TextAndNumberView.java"


# instance fields
.field private context:Landroid/content/Context;

.field params:Landroid/widget/LinearLayout$LayoutParams;

.field private textView:Landroid/widget/TextView;

.field private viewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/quinox/splash/NumberView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/splash/TextAndNumberView;->viewList:Ljava/util/List;

    .line 24
    iput-object p1, p0, Lcom/alipay/mobile/quinox/splash/TextAndNumberView;->context:Landroid/content/Context;

    .line 25
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/splash/TextAndNumberView;->init()V

    .line 26
    return-void
.end method

.method private addNumberView(I)V
    .locals 5

    .prologue
    .line 56
    const/4 v0, 0x1

    :goto_0
    if-le v0, p1, :cond_1

    .line 63
    iget-object v0, p0, Lcom/alipay/mobile/quinox/splash/TextAndNumberView;->textView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/alipay/mobile/quinox/splash/TextAndNumberView;->textView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/quinox/splash/TextAndNumberView;->removeView(Landroid/view/View;)V

    .line 65
    iget-object v0, p0, Lcom/alipay/mobile/quinox/splash/TextAndNumberView;->textView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/quinox/splash/TextAndNumberView;->addView(Landroid/view/View;)V

    .line 67
    :cond_0
    return-void

    .line 57
    :cond_1
    new-instance v1, Lcom/alipay/mobile/quinox/splash/NumberView;

    iget-object v2, p0, Lcom/alipay/mobile/quinox/splash/TextAndNumberView;->context:Landroid/content/Context;

    const-string/jumbo v3, "0123456789"

    mul-int/lit8 v4, v0, 0xa

    rsub-int/lit8 v4, v4, 0x32

    int-to-float v4, v4

    invoke-direct {v1, v2, v3, v4}, Lcom/alipay/mobile/quinox/splash/NumberView;-><init>(Landroid/content/Context;Ljava/lang/String;F)V

    .line 58
    iget-object v2, p0, Lcom/alipay/mobile/quinox/splash/TextAndNumberView;->params:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/quinox/splash/NumberView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/quinox/splash/NumberView;->setId(I)V

    .line 60
    iget-object v2, p0, Lcom/alipay/mobile/quinox/splash/TextAndNumberView;->viewList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/quinox/splash/TextAndNumberView;->addView(Landroid/view/View;)V

    .line 56
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private addTextView()V
    .locals 4

    .prologue
    const/4 v1, -0x2

    .line 37
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 38
    iget-object v1, p0, Lcom/alipay/mobile/quinox/splash/TextAndNumberView;->viewList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_0

    .line 48
    :goto_0
    return-void

    .line 40
    :cond_0
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alipay/mobile/quinox/splash/TextAndNumberView;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/alipay/mobile/quinox/splash/TextAndNumberView;->textView:Landroid/widget/TextView;

    .line 41
    iget-object v1, p0, Lcom/alipay/mobile/quinox/splash/TextAndNumberView;->textView:Landroid/widget/TextView;

    const-string/jumbo v2, "\u4e2a\u597d\u53cb\u6b63\u5728\u53d1\u7ea2\u5305"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    iget-object v1, p0, Lcom/alipay/mobile/quinox/splash/TextAndNumberView;->textView:Landroid/widget/TextView;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 43
    iget-object v1, p0, Lcom/alipay/mobile/quinox/splash/TextAndNumberView;->textView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 44
    iget-object v1, p0, Lcom/alipay/mobile/quinox/splash/TextAndNumberView;->textView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alipay/mobile/quinox/splash/TextAndNumberView;->context:Landroid/content/Context;

    const/high16 v3, 0x41700000    # 15.0f

    invoke-static {v2, v3}, Lcom/alipay/mobile/quinox/splash/TextAndNumberView;->sp2px(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 45
    iget-object v1, p0, Lcom/alipay/mobile/quinox/splash/TextAndNumberView;->textView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    iget-object v0, p0, Lcom/alipay/mobile/quinox/splash/TextAndNumberView;->textView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/quinox/splash/TextAndNumberView;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private init()V
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 29
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/splash/TextAndNumberView;->params:Landroid/widget/LinearLayout$LayoutParams;

    .line 30
    iget-object v0, p0, Lcom/alipay/mobile/quinox/splash/TextAndNumberView;->params:Landroid/widget/LinearLayout$LayoutParams;

    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 31
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/alipay/mobile/quinox/splash/TextAndNumberView;->addNumberView(I)V

    .line 32
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/splash/TextAndNumberView;->addTextView()V

    .line 33
    return-void
.end method

.method public static sp2px(Landroid/content/Context;F)I
    .locals 2

    .prologue
    .line 51
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 52
    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method


# virtual methods
.method public setNumber(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 70
    const-string/jumbo v0, "n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 71
    iget-object v0, p0, Lcom/alipay/mobile/quinox/splash/TextAndNumberView;->context:Landroid/content/Context;

    const-string/jumbo v1, "hongbao_welcome"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 72
    const-string/jumbo v1, "num"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 73
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/splash/TextAndNumberView;->removeAllViews()V

    .line 75
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/splash/TextAndNumberView;->addTextView()V

    .line 76
    iget-object v0, p0, Lcom/alipay/mobile/quinox/splash/TextAndNumberView;->textView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "N"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/quinox/splash/TextAndNumberView;->textView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    :cond_0
    return-void

    .line 79
    :cond_1
    const-string/jumbo v1, "num"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 84
    :cond_2
    const-string/jumbo v0, ""

    .line 86
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 87
    const-string/jumbo v2, "hongbaonum"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    .line 91
    :goto_0
    const-string/jumbo v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    .line 93
    iget-object v0, p0, Lcom/alipay/mobile/quinox/splash/TextAndNumberView;->viewList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v4, v0, :cond_4

    .line 94
    iget-object v0, p0, Lcom/alipay/mobile/quinox/splash/TextAndNumberView;->viewList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int v0, v4, v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/quinox/splash/TextAndNumberView;->addNumberView(I)V

    .line 102
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/quinox/splash/TextAndNumberView;->viewList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/alipay/mobile/quinox/splash/TextAndNumberView;->viewList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/quinox/splash/NumberView;

    add-int/lit8 v2, v3, 0x1

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/quinox/splash/NumberView;->setNum(Ljava/lang/String;)V

    .line 102
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 88
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    move-object v1, v0

    goto :goto_0

    .line 95
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/quinox/splash/TextAndNumberView;->viewList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_3

    move v2, v3

    .line 96
    :goto_2
    iget-object v0, p0, Lcom/alipay/mobile/quinox/splash/TextAndNumberView;->viewList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v4

    if-ge v2, v0, :cond_3

    .line 97
    iget-object v0, p0, Lcom/alipay/mobile/quinox/splash/TextAndNumberView;->viewList:Ljava/util/List;

    iget-object v5, p0, Lcom/alipay/mobile/quinox/splash/TextAndNumberView;->viewList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/quinox/splash/NumberView;

    .line 98
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/quinox/splash/TextAndNumberView;->removeView(Landroid/view/View;)V

    .line 99
    iget-object v0, p0, Lcom/alipay/mobile/quinox/splash/TextAndNumberView;->viewList:Ljava/util/List;

    iget-object v5, p0, Lcom/alipay/mobile/quinox/splash/TextAndNumberView;->viewList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v0, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 96
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2
.end method
