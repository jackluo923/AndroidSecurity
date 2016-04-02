.class public final Lcom/alipay/android/phone/globalsearch/c/s;
.super Ljava/lang/Object;
.source "StockItemView.java"


# instance fields
.field private a:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/alipay/android/phone/globalsearch/c/s;->a:Landroid/app/Activity;

    .line 21
    return-void
.end method

.method private static a(Landroid/view/View;Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 107
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 108
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 109
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 110
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :goto_0
    return-void

    .line 111
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->printStackTraceAndMore(Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/view/ViewGroup;Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;)Landroid/view/View;
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 25
    if-nez p1, :cond_1

    .line 26
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/c/s;->a:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/android/phone/businesscommon/globalsearch/g;->o:I

    invoke-virtual {v0, v1, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 27
    new-instance v1, Lcom/alipay/android/phone/globalsearch/c/t;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/globalsearch/c/t;-><init>(Lcom/alipay/android/phone/globalsearch/c/s;)V

    .line 28
    sget v0, Lcom/alipay/android/phone/businesscommon/globalsearch/f;->B:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, v1, Lcom/alipay/android/phone/globalsearch/c/t;->a:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 29
    sget v0, Lcom/alipay/android/phone/businesscommon/globalsearch/f;->z:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, v1, Lcom/alipay/android/phone/globalsearch/c/t;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 30
    sget v0, Lcom/alipay/android/phone/businesscommon/globalsearch/f;->O:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, v1, Lcom/alipay/android/phone/globalsearch/c/t;->c:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 31
    sget v0, Lcom/alipay/android/phone/businesscommon/globalsearch/f;->G:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, v1, Lcom/alipay/android/phone/globalsearch/c/t;->d:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 32
    sget v0, Lcom/alipay/android/phone/businesscommon/globalsearch/f;->I:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, v1, Lcom/alipay/android/phone/globalsearch/c/t;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 33
    sget v0, Lcom/alipay/android/phone/businesscommon/globalsearch/f;->M:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, v1, Lcom/alipay/android/phone/globalsearch/c/t;->f:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 36
    invoke-virtual {p1, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    .line 40
    :goto_0
    iget-object v1, v0, Lcom/alipay/android/phone/globalsearch/c/t;->a:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v2, p3, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    iget-object v1, p3, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->extJson:Lcom/alibaba/fastjson/JSONObject;

    .line 47
    if-nez v1, :cond_2

    .line 92
    :cond_0
    :goto_1
    return-object p1

    .line 38
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/globalsearch/c/t;

    goto :goto_0

    .line 50
    :cond_2
    const-string/jumbo v2, "market"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 51
    iget-object v2, v0, Lcom/alipay/android/phone/globalsearch/c/t;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    const-string/jumbo v3, "market"

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget-object v2, v0, Lcom/alipay/android/phone/globalsearch/c/t;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v2, v4}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    .line 53
    const-string/jumbo v2, "marketColor"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 54
    iget-object v2, v0, Lcom/alipay/android/phone/globalsearch/c/t;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    const-string/jumbo v3, "marketColor"

    invoke-static {v2, v1, v3}, Lcom/alipay/android/phone/globalsearch/c/s;->a(Landroid/view/View;Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)V

    .line 59
    :cond_3
    :goto_2
    const-string/jumbo v2, "price"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 60
    iget-object v2, v0, Lcom/alipay/android/phone/globalsearch/c/t;->d:Lcom/alipay/mobile/commonui/widget/APTextView;

    const-string/jumbo v3, "price"

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    :goto_3
    const-string/jumbo v2, "symbol"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 66
    iget-object v2, v0, Lcom/alipay/android/phone/globalsearch/c/t;->c:Lcom/alipay/mobile/commonui/widget/APTextView;

    const-string/jumbo v3, "symbol"

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    :cond_4
    const-string/jumbo v2, "priceChangeRatio"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 69
    iget-object v2, v0, Lcom/alipay/android/phone/globalsearch/c/t;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    const-string/jumbo v3, "priceChangeRatio"

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v2, v0, Lcom/alipay/android/phone/globalsearch/c/t;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v2, v4}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    .line 71
    const-string/jumbo v2, "priceChangeColor"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 72
    iget-object v2, v0, Lcom/alipay/android/phone/globalsearch/c/t;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    const-string/jumbo v3, "priceChangeColor"

    invoke-static {v2, v1, v3}, Lcom/alipay/android/phone/globalsearch/c/s;->a(Landroid/view/View;Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)V

    .line 78
    :cond_5
    :goto_4
    const-string/jumbo v2, "state"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 79
    iget-object v2, v0, Lcom/alipay/android/phone/globalsearch/c/t;->f:Lcom/alipay/mobile/commonui/widget/APTextView;

    const-string/jumbo v3, "state"

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v2, v0, Lcom/alipay/android/phone/globalsearch/c/t;->f:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v2, v4}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    .line 81
    const-string/jumbo v2, "stateColor"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 82
    iget-object v0, v0, Lcom/alipay/android/phone/globalsearch/c/t;->f:Lcom/alipay/mobile/commonui/widget/APTextView;

    const-string/jumbo v2, "stateColor"

    invoke-static {v0, v1, v2}, Lcom/alipay/android/phone/globalsearch/c/s;->a(Landroid/view/View;Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 57
    :cond_6
    iget-object v2, v0, Lcom/alipay/android/phone/globalsearch/c/t;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v2, v5}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 62
    :cond_7
    iget-object v2, v0, Lcom/alipay/android/phone/globalsearch/c/t;->d:Lcom/alipay/mobile/commonui/widget/APTextView;

    const-string/jumbo v3, "--"

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 75
    :cond_8
    iget-object v2, v0, Lcom/alipay/android/phone/globalsearch/c/t;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v2, v5}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    goto :goto_4

    .line 84
    :cond_9
    const-string/jumbo v2, "priceChangeRatio"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 85
    iget-object v1, v0, Lcom/alipay/android/phone/globalsearch/c/t;->f:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    .line 86
    iget-object v1, v0, Lcom/alipay/android/phone/globalsearch/c/t;->f:Lcom/alipay/mobile/commonui/widget/APTextView;

    const-string/jumbo v2, "--"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v0, v0, Lcom/alipay/android/phone/globalsearch/c/t;->f:Lcom/alipay/mobile/commonui/widget/APTextView;

    const-string/jumbo v1, "#A5A5A5"

    :try_start_0
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->printStackTraceAndMore(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 89
    :cond_a
    iget-object v0, v0, Lcom/alipay/android/phone/globalsearch/c/t;->f:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    goto/16 :goto_1
.end method
