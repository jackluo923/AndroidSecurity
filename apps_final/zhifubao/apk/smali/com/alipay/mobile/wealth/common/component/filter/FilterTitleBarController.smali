.class public Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController;
.super Ljava/lang/Object;
.source "FilterTitleBarController.java"


# instance fields
.field private a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/content/Context;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/alipay/mobile/commonui/widget/APPopMenu;

.field private f:I

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/wealth/common/component/filter/FilterItem;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController$ActionListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alipay/mobile/commonui/widget/APTitleBar;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController;->f:I

    .line 42
    iput-object p1, p0, Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController;->c:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    .line 44
    invoke-direct {p0, p3}, Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController;->a(Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/alipay/mobile/commonui/widget/APTitleBar;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/alipay/mobile/commonui/widget/APTitleBar;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/wealth/common/component/filter/FilterItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController;->f:I

    .line 49
    iput-object p1, p0, Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController;->c:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    .line 52
    invoke-virtual {p0, p3}, Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController;->setFilterListData(Ljava/util/List;)V

    .line 54
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 60
    :goto_0
    return-void

    .line 54
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/wealth/common/component/filter/FilterItem;

    .line 55
    invoke-virtual {v0}, Lcom/alipay/mobile/wealth/common/component/filter/FilterItem;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 56
    invoke-virtual {v0}, Lcom/alipay/mobile/wealth/common/component/filter/FilterItem;->getFilterName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 149
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController;->g:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    .line 150
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 167
    :goto_0
    return-object v0

    .line 152
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 153
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_2

    move-object v0, v2

    .line 167
    goto :goto_0

    .line 154
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/wealth/common/component/filter/FilterItem;

    .line 155
    invoke-virtual {v0}, Lcom/alipay/mobile/wealth/common/component/filter/FilterItem;->getFilterName()Ljava/lang/String;

    move-result-object v3

    .line 156
    new-instance v4, Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;

    invoke-virtual {v0}, Lcom/alipay/mobile/wealth/common/component/filter/FilterItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 157
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 158
    invoke-virtual {v0}, Lcom/alipay/mobile/wealth/common/component/filter/FilterItem;->getFilterType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    invoke-virtual {v4, v5}, Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;->setExternParam(Ljava/util/HashMap;)V

    .line 160
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x2c

    add-int/lit16 v0, v0, 0xcf

    div-int/lit8 v0, v0, 0x3

    int-to-float v0, v0

    iget-object v3, p0, Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController;->c:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/alipay/mobile/common/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    .line 163
    iget v3, p0, Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController;->f:I

    if-le v0, v3, :cond_3

    .line 164
    iput v0, p0, Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController;->f:I

    .line 153
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->getTitleTextView()Lcom/alipay/mobile/commonui/widget/APTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController;->b:Landroid/widget/TextView;

    .line 64
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController;->b:Landroid/widget/TextView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 67
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    new-instance v1, Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController$1;-><init>(Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setTitleTextClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController;)Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController$ActionListener;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController;->h:Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController$ActionListener;

    return-object v0
.end method

.method static synthetic access$1(Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController;)Lcom/alipay/mobile/commonui/widget/APPopMenu;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController;->e:Lcom/alipay/mobile/commonui/widget/APPopMenu;

    return-object v0
.end method

.method static synthetic access$2(Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3(Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController;)Ljava/util/List;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController;->g:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$4(Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$5(Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController;->c:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getActionListener()Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController$ActionListener;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController;->h:Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController$ActionListener;

    return-object v0
.end method

.method public getFilterListData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/wealth/common/component/filter/FilterItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController;->g:Ljava/util/List;

    return-object v0
.end method

.method public setActionListener(Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController$ActionListener;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController;->h:Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController$ActionListener;

    .line 121
    return-void
.end method

.method public setFilterListData(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/wealth/common/component/filter/FilterItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 128
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 129
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 130
    const-string/jumbo v1, "filterListData must not not and must have item"

    .line 129
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_1
    iput-object p1, p0, Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController;->g:Ljava/util/List;

    .line 133
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController;->e:Lcom/alipay/mobile/commonui/widget/APPopMenu;

    if-eqz v0, :cond_3

    .line 135
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController;->e:Lcom/alipay/mobile/commonui/widget/APPopMenu;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APPopMenu;->getPopWindow()Landroid/widget/PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController;->e:Lcom/alipay/mobile/commonui/widget/APPopMenu;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APPopMenu;->getPopWindow()Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 136
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController;->e:Lcom/alipay/mobile/commonui/widget/APPopMenu;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APPopMenu;->dismiss()V

    .line 139
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController;->e:Lcom/alipay/mobile/commonui/widget/APPopMenu;

    .line 145
    :goto_0
    return-void

    .line 142
    :cond_3
    invoke-direct {p0}, Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController;->d:Ljava/util/ArrayList;

    .line 143
    new-instance v0, Lcom/alipay/mobile/commonui/widget/APPopMenu;

    iget-object v1, p0, Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController;->d:Ljava/util/ArrayList;

    iget v3, p0, Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController;->f:I

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/mobile/commonui/widget/APPopMenu;-><init>(Landroid/content/Context;Ljava/util/ArrayList;I)V

    iput-object v0, p0, Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController;->e:Lcom/alipay/mobile/commonui/widget/APPopMenu;

    goto :goto_0
.end method
