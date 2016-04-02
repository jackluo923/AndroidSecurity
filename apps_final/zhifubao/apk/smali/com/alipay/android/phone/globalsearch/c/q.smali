.class public final Lcom/alipay/android/phone/globalsearch/c/q;
.super Ljava/lang/Object;
.source "O2OItemView.java"


# instance fields
.field private a:Lcom/alipay/mobile/commonbiz/image/ImageWorker;

.field private b:Landroid/app/Activity;

.field private c:[I

.field private d:[I

.field private e:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 5

    .prologue
    const/4 v1, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/alipay/android/phone/globalsearch/c/q;->c:[I

    .line 26
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/alipay/android/phone/globalsearch/c/q;->d:[I

    .line 30
    iput-object p1, p0, Lcom/alipay/android/phone/globalsearch/c/q;->b:Landroid/app/Activity;

    .line 31
    new-instance v0, Lcom/alipay/mobile/commonbiz/image/ImageWorker;

    sget v1, Lcom/alipay/android/phone/businesscommon/globalsearch/e;->b:I

    invoke-direct {v0, p1, v1}, Lcom/alipay/mobile/commonbiz/image/ImageWorker;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/alipay/android/phone/globalsearch/c/q;->a:Lcom/alipay/mobile/commonbiz/image/ImageWorker;

    .line 32
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/android/phone/businesscommon/globalsearch/d;->a:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 33
    iget-object v1, p0, Lcom/alipay/android/phone/globalsearch/c/q;->a:Lcom/alipay/mobile/commonbiz/image/ImageWorker;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonbiz/image/ImageWorker;->setHeight(I)Lcom/alipay/mobile/commonbiz/image/ImageWorker;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonbiz/image/ImageWorker;->setWidth(I)Lcom/alipay/mobile/commonbiz/image/ImageWorker;

    .line 35
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/c/q;->c:[I

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/android/phone/businesscommon/globalsearch/d;->d:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    aput v1, v0, v3

    .line 36
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/c/q;->c:[I

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/android/phone/businesscommon/globalsearch/d;->e:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    aput v1, v0, v4

    .line 38
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/c/q;->d:[I

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/android/phone/businesscommon/globalsearch/d;->c:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    aput v1, v0, v3

    .line 39
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/c/q;->d:[I

    iget-object v1, p0, Lcom/alipay/android/phone/globalsearch/c/q;->d:[I

    aget v1, v1, v3

    aput v1, v0, v4

    .line 41
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/android/phone/businesscommon/globalsearch/d;->b:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/phone/globalsearch/c/q;->e:I

    .line 42
    return-void
.end method

.method private a(Landroid/widget/LinearLayout;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/LinearLayout;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 140
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 141
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    return-void

    .line 141
    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 142
    new-instance v1, Lcom/alipay/mobile/commonui/widget/APImageView;

    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/c/q;->b:Landroid/app/Activity;

    invoke-direct {v1, v0}, Lcom/alipay/mobile/commonui/widget/APImageView;-><init>(Landroid/content/Context;)V

    .line 143
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v3, p0, Lcom/alipay/android/phone/globalsearch/c/q;->d:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    iget-object v4, p0, Lcom/alipay/android/phone/globalsearch/c/q;->d:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    invoke-direct {v0, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 144
    iget v3, p0, Lcom/alipay/android/phone/globalsearch/c/q;->e:I

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 145
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 146
    invoke-static {}, Lcom/alipay/android/phone/businesscommon/globalsearch/a/b;->a()Lcom/alipay/android/phone/businesscommon/globalsearch/a/b;

    move-result-object v0

    iget-object v3, p0, Lcom/alipay/android/phone/globalsearch/c/q;->d:[I

    sget v4, Lcom/alipay/android/phone/businesscommon/globalsearch/e;->d:I

    const/4 v5, 0x5

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/android/phone/businesscommon/globalsearch/a/b;->a(Landroid/widget/ImageView;Ljava/lang/String;[III)V

    .line 147
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/view/ViewGroup;Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;)Landroid/view/View;
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 46
    if-nez p1, :cond_0

    .line 47
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/c/q;->b:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/android/phone/businesscommon/globalsearch/g;->m:I

    invoke-virtual {v0, v1, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 48
    new-instance v1, Lcom/alipay/android/phone/globalsearch/c/r;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/globalsearch/c/r;-><init>(Lcom/alipay/android/phone/globalsearch/c/q;)V

    .line 49
    sget v0, Lcom/alipay/android/phone/businesscommon/globalsearch/f;->p:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, v1, Lcom/alipay/android/phone/globalsearch/c/r;->a:Lcom/alipay/mobile/commonui/widget/APImageView;

    .line 50
    sget v0, Lcom/alipay/android/phone/businesscommon/globalsearch/f;->B:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, v1, Lcom/alipay/android/phone/globalsearch/c/r;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 51
    sget v0, Lcom/alipay/android/phone/businesscommon/globalsearch/f;->q:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lcom/alipay/android/phone/globalsearch/c/r;->c:Landroid/widget/LinearLayout;

    .line 52
    sget v0, Lcom/alipay/android/phone/businesscommon/globalsearch/f;->J:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RatingBar;

    iput-object v0, v1, Lcom/alipay/android/phone/globalsearch/c/r;->d:Landroid/widget/RatingBar;

    .line 53
    sget v0, Lcom/alipay/android/phone/businesscommon/globalsearch/f;->H:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, v1, Lcom/alipay/android/phone/globalsearch/c/r;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 54
    sget v0, Lcom/alipay/android/phone/businesscommon/globalsearch/f;->E:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, v1, Lcom/alipay/android/phone/globalsearch/c/r;->f:Lcom/alipay/mobile/commonui/widget/APImageView;

    .line 55
    sget v0, Lcom/alipay/android/phone/businesscommon/globalsearch/f;->F:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, v1, Lcom/alipay/android/phone/globalsearch/c/r;->g:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 56
    sget v0, Lcom/alipay/android/phone/businesscommon/globalsearch/f;->c:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, v1, Lcom/alipay/android/phone/globalsearch/c/r;->h:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 57
    sget v0, Lcom/alipay/android/phone/businesscommon/globalsearch/f;->i:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, v1, Lcom/alipay/android/phone/globalsearch/c/r;->i:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 58
    sget v0, Lcom/alipay/android/phone/businesscommon/globalsearch/f;->t:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, v1, Lcom/alipay/android/phone/globalsearch/c/r;->j:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 59
    sget v0, Lcom/alipay/android/phone/businesscommon/globalsearch/f;->u:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, v1, Lcom/alipay/android/phone/globalsearch/c/r;->k:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 63
    invoke-virtual {p1, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    .line 67
    :goto_0
    iget-object v2, p3, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->extJson:Lcom/alibaba/fastjson/JSONObject;

    .line 68
    if-nez v2, :cond_1

    .line 136
    :goto_1
    return-object p1

    .line 65
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/globalsearch/c/r;

    goto :goto_0

    .line 71
    :cond_1
    const-string/jumbo v1, ""

    .line 72
    const-string/jumbo v3, "shopName"

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 73
    const-string/jumbo v1, "shopName"

    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 74
    iget-object v3, v0, Lcom/alipay/android/phone/globalsearch/c/r;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v3, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    :cond_2
    iget-object v3, v0, Lcom/alipay/android/phone/globalsearch/c/r;->a:Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v4, Lcom/alipay/android/phone/businesscommon/globalsearch/e;->b:I

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageResource(I)V

    .line 77
    const-string/jumbo v3, "shopLogoUrl"

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 78
    const-string/jumbo v3, "shopLogoUrl"

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 79
    const-string/jumbo v4, "jiushi"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "name : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " , O2O icon url : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v4, v0, Lcom/alipay/android/phone/globalsearch/c/r;->a:Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v5, Lcom/alipay/android/phone/businesscommon/globalsearch/f;->s:I

    invoke-virtual {v4, v5, v3}, Lcom/alipay/mobile/commonui/widget/APImageView;->setTag(ILjava/lang/Object;)V

    .line 81
    iget-object v4, v0, Lcom/alipay/android/phone/globalsearch/c/r;->a:Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v5, Lcom/alipay/android/phone/businesscommon/globalsearch/f;->r:I

    invoke-virtual {v4, v5, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setTag(ILjava/lang/Object;)V

    .line 82
    invoke-static {}, Lcom/alipay/android/phone/businesscommon/globalsearch/a/b;->a()Lcom/alipay/android/phone/businesscommon/globalsearch/a/b;

    move-result-object v1

    iget-object v4, v0, Lcom/alipay/android/phone/globalsearch/c/r;->a:Lcom/alipay/mobile/commonui/widget/APImageView;

    iget-object v5, p0, Lcom/alipay/android/phone/globalsearch/c/q;->c:[I

    sget v6, Lcom/alipay/android/phone/businesscommon/globalsearch/e;->b:I

    invoke-virtual {v1, v4, v3, v5, v6}, Lcom/alipay/android/phone/businesscommon/globalsearch/a/b;->a(Landroid/widget/ImageView;Ljava/lang/String;[II)V

    .line 84
    :cond_3
    const-string/jumbo v1, "rank"

    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 85
    const-string/jumbo v1, "rank"

    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson/JSONObject;->getFloatValue(Ljava/lang/String;)F

    move-result v1

    .line 86
    iget-object v3, v0, Lcom/alipay/android/phone/globalsearch/c/r;->d:Landroid/widget/RatingBar;

    invoke-virtual {v3, v1}, Landroid/widget/RatingBar;->setRating(F)V

    .line 88
    :cond_4
    const-string/jumbo v1, "priceAverage"

    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 89
    iget-object v1, v0, Lcom/alipay/android/phone/globalsearch/c/r;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    const-string/jumbo v3, "priceAverage"

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v1, v0, Lcom/alipay/android/phone/globalsearch/c/r;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v1, v7}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    .line 95
    :goto_2
    const-string/jumbo v1, "friendRecommend"

    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 96
    iget-object v1, v0, Lcom/alipay/android/phone/globalsearch/c/r;->g:Lcom/alipay/mobile/commonui/widget/APTextView;

    const-string/jumbo v3, "friendRecommend"

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v1, v0, Lcom/alipay/android/phone/globalsearch/c/r;->g:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v1, v7}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    .line 98
    iget-object v1, v0, Lcom/alipay/android/phone/globalsearch/c/r;->f:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v1, v7}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    .line 107
    :cond_5
    iget-object v1, v0, Lcom/alipay/android/phone/globalsearch/c/r;->h:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v1, v8}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    .line 111
    :goto_3
    const-string/jumbo v1, "distance"

    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 112
    iget-object v1, v0, Lcom/alipay/android/phone/globalsearch/c/r;->i:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v1, v7}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    .line 113
    iget-object v1, v0, Lcom/alipay/android/phone/globalsearch/c/r;->i:Lcom/alipay/mobile/commonui/widget/APTextView;

    const-string/jumbo v3, "distance"

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    :goto_4
    const-string/jumbo v1, "itemDiscount"

    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 119
    iget-object v1, v0, Lcom/alipay/android/phone/globalsearch/c/r;->j:Lcom/alipay/mobile/commonui/widget/APTextView;

    const-string/jumbo v3, "itemDiscount"

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v1, v0, Lcom/alipay/android/phone/globalsearch/c/r;->j:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v1, v7}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    .line 124
    :goto_5
    const-string/jumbo v1, "itemUnit"

    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 125
    iget-object v1, v0, Lcom/alipay/android/phone/globalsearch/c/r;->k:Lcom/alipay/mobile/commonui/widget/APTextView;

    const-string/jumbo v3, "itemUnit"

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v1, v0, Lcom/alipay/android/phone/globalsearch/c/r;->k:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v1, v7}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    .line 130
    :goto_6
    iget-object v1, p3, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->actIcons:Ljava/util/List;

    if-eqz v1, :cond_b

    iget-object v1, p3, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->actIcons:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    .line 131
    iget-object v1, v0, Lcom/alipay/android/phone/globalsearch/c/r;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 132
    iget-object v0, v0, Lcom/alipay/android/phone/globalsearch/c/r;->c:Landroid/widget/LinearLayout;

    iget-object v1, p3, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->actIcons:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/alipay/android/phone/globalsearch/c/q;->a(Landroid/widget/LinearLayout;Ljava/util/List;)V

    goto/16 :goto_1

    .line 92
    :cond_6
    iget-object v1, v0, Lcom/alipay/android/phone/globalsearch/c/r;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v1, v8}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 101
    :cond_7
    iget-object v1, v0, Lcom/alipay/android/phone/globalsearch/c/r;->g:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v1, v8}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    .line 102
    iget-object v1, v0, Lcom/alipay/android/phone/globalsearch/c/r;->f:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v1, v8}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    .line 103
    const-string/jumbo v1, "buyerSum"

    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 104
    iget-object v1, v0, Lcom/alipay/android/phone/globalsearch/c/r;->h:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v1, v7}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    .line 105
    iget-object v1, v0, Lcom/alipay/android/phone/globalsearch/c/r;->h:Lcom/alipay/mobile/commonui/widget/APTextView;

    const-string/jumbo v3, "buyerSum"

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 115
    :cond_8
    iget-object v1, v0, Lcom/alipay/android/phone/globalsearch/c/r;->i:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v1, v8}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    goto :goto_4

    .line 122
    :cond_9
    iget-object v1, v0, Lcom/alipay/android/phone/globalsearch/c/r;->j:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v1, v8}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    goto :goto_5

    .line 128
    :cond_a
    iget-object v1, v0, Lcom/alipay/android/phone/globalsearch/c/r;->k:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v1, v8}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    goto :goto_6

    .line 134
    :cond_b
    iget-object v0, v0, Lcom/alipay/android/phone/globalsearch/c/r;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1
.end method
