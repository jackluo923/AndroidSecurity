.class public Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenu;
.super Ljava/lang/Object;
.source "PopMenu.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:[Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenu$PopItem;

.field private c:Landroid/widget/LinearLayout;

.field private d:Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenu$OnMenuItemClikListener;

.field private final e:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenu$PopItem;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenu;-><init>(Landroid/content/Context;[Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenu$PopItem;II)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenu$PopItem;II)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenu$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenu$1;-><init>(Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenu;)V

    iput-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenu;->e:Landroid/view/View$OnClickListener;

    .line 32
    iput-object p1, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenu;->a:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenu;->b:[Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenu$PopItem;

    .line 34
    invoke-direct {p0, p3, p4}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenu;->a(II)V

    .line 35
    return-void
.end method

.method private a(II)V
    .locals 12

    .prologue
    const/4 v2, 0x0

    .line 112
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 113
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenu;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    .line 114
    sget v0, Lcom/alipay/mobile/publicsvc/common/R$layout;->pub_popmenu:I

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenu;->c:Landroid/widget/LinearLayout;

    .line 115
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenu;->b:[Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenu$PopItem;

    array-length v0, v0

    new-array v7, v0, [Landroid/view/View;

    move v1, v2

    move v3, v2

    .line 117
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenu;->b:[Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenu$PopItem;

    array-length v0, v0

    if-lt v1, v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenu;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 143
    const/high16 v1, 0x42300000    # 44.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    .line 144
    :goto_1
    iget-object v1, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenu;->b:[Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenu$PopItem;

    array-length v1, v1

    if-lt v2, v1, :cond_6

    .line 149
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "PopMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "PopMenu init elapse "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 150
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v3, v6, v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 149
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    return-void

    .line 118
    :cond_0
    sget v0, Lcom/alipay/mobile/publicsvc/common/R$layout;->pub_popmenu_item:I

    iget-object v8, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenu;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v0, v8, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    .line 119
    sget v0, Lcom/alipay/mobile/publicsvc/common/R$id;->menu_item:I

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 120
    if-eqz p2, :cond_1

    .line 121
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 123
    :cond_1
    if-lez p1, :cond_2

    .line 124
    invoke-virtual {v0, p1, v2, p1, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 126
    :cond_2
    iget-object v9, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenu;->b:[Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenu$PopItem;

    aget-object v9, v9, v1

    .line 127
    if-eqz v9, :cond_5

    .line 128
    iget-object v10, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenu;->b:[Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenu$PopItem;

    array-length v10, v10

    add-int/lit8 v10, v10, -0x1

    if-ne v1, v10, :cond_3

    .line 129
    sget v10, Lcom/alipay/mobile/publicsvc/common/R$id;->menu_item_divider:I

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 130
    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 132
    :cond_3
    iget-object v9, v9, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenu$PopItem;->mLabel:Ljava/lang/String;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    sget v9, Lcom/alipay/mobile/publicsvc/common/R$id;->position_tag:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 134
    iget-object v9, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenu;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    invoke-virtual {v0, v2, v2}, Landroid/widget/TextView;->measure(II)V

    .line 136
    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v9

    if-ge v3, v9, :cond_4

    .line 137
    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    .line 139
    :cond_4
    aput-object v8, v7, v1

    .line 117
    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    .line 145
    :cond_6
    aget-object v1, v7, v2

    .line 146
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v3, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 147
    iget-object v8, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenu;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1
.end method

.method static synthetic access$0(Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenu;)Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenu$OnMenuItemClikListener;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenu;->d:Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenu$OnMenuItemClikListener;

    return-object v0
.end method

.method static synthetic access$1(Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenu;)[Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenu$PopItem;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenu;->b:[Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenu$PopItem;

    return-object v0
.end method


# virtual methods
.method public getContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenu;->c:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public setDividerColor(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenu;->c:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 60
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenu;->b:[Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenu$PopItem;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 66
    :cond_0
    return-void

    .line 61
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenu;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 62
    sget v2, Lcom/alipay/mobile/publicsvc/common/R$id;->menu_item_divider:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 63
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 60
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setMenuItemClickListener(Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenu$OnMenuItemClikListener;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenu;->d:Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenu$OnMenuItemClikListener;

    .line 25
    return-void
.end method

.method public setMenuItemHeight(I)V
    .locals 3

    .prologue
    .line 102
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenu;->c:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 103
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenu;->b:[Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenu$PopItem;

    array-length v0, v0

    if-lt v1, v0, :cond_1

    .line 109
    :cond_0
    return-void

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenu;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 105
    sget v2, Lcom/alipay/mobile/publicsvc/common/R$id;->menu_item:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 106
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setHeight(I)V

    .line 103
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public setTextColor(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 74
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenu;->c:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 75
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenu;->b:[Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenu$PopItem;

    array-length v0, v0

    if-lt v1, v0, :cond_1

    .line 81
    :cond_0
    return-void

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenu;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 77
    sget v2, Lcom/alipay/mobile/publicsvc/common/R$id;->menu_item:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 78
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 75
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public setTextSize(F)V
    .locals 3

    .prologue
    .line 88
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenu;->c:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 89
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenu;->b:[Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenu$PopItem;

    array-length v0, v0

    if-lt v1, v0, :cond_1

    .line 95
    :cond_0
    return-void

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenu;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 91
    sget v2, Lcom/alipay/mobile/publicsvc/common/R$id;->menu_item:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 92
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 89
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method
