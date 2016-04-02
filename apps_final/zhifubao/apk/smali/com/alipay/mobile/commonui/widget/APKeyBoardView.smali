.class public Lcom/alipay/mobile/commonui/widget/APKeyBoardView;
.super Landroid/widget/TableLayout;

# interfaces
.implements Lcom/alipay/mobile/commonui/widget/controller/IKeyBoardNum;
.implements Lcom/alipay/mobile/commonui/widget/controller/IKeyBoardTab;
.implements Lcom/alipay/mobile/commonui/widget/controller/IKeyBoardType;


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:[Ljava/lang/String;


# instance fields
.field private c:Lcom/alipay/mobile/commonui/widget/controller/IKeyBoardController;

.field private d:Ljava/util/ArrayList;

.field private e:Ljava/util/ArrayList;

.field private f:Ljava/util/ArrayList;

.field private g:Ljava/lang/StringBuilder;

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "1"

    aput-object v1, v0, v3

    const-string/jumbo v1, "2"

    aput-object v1, v0, v4

    const-string/jumbo v1, "3"

    aput-object v1, v0, v5

    const-string/jumbo v1, "4"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string/jumbo v2, "5"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "6"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "7"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "8"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "9"

    aput-object v2, v0, v1

    sput-object v0, Lcom/alipay/mobile/commonui/widget/APKeyBoardView;->a:[Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, ""

    aput-object v1, v0, v3

    const-string/jumbo v1, "0"

    aput-object v1, v0, v4

    const-string/jumbo v1, "\u5220\u9664"

    aput-object v1, v0, v5

    sput-object v0, Lcom/alipay/mobile/commonui/widget/APKeyBoardView;->b:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/TableLayout;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x20

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APKeyBoardView;->h:I

    invoke-direct {p0, p1}, Lcom/alipay/mobile/commonui/widget/APKeyBoardView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/TableLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0x20

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APKeyBoardView;->h:I

    invoke-direct {p0, p1}, Lcom/alipay/mobile/commonui/widget/APKeyBoardView;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 5

    const/4 v0, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/commonui/widget/APKeyBoardView;->d:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/commonui/widget/APKeyBoardView;->e:Ljava/util/ArrayList;

    sget-object v1, Lcom/alipay/mobile/commonui/widget/APKeyBoardView;->a:[Ljava/lang/String;

    array-length v2, v1

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    new-instance v3, Lcom/alipay/mobile/commonui/widget/controller/KeyBoardModel;

    invoke-direct {v3}, Lcom/alipay/mobile/commonui/widget/controller/KeyBoardModel;-><init>()V

    add-int/lit8 v4, v1, 0x0

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/commonui/widget/controller/KeyBoardModel;->setId(I)V

    sget-object v4, Lcom/alipay/mobile/commonui/widget/APKeyBoardView;->a:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/commonui/widget/controller/KeyBoardModel;->setName(Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/commonui/widget/controller/KeyBoardModel;->setType(I)V

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/commonui/widget/controller/KeyBoardModel;->setTab(I)V

    iget-object v4, p0, Lcom/alipay/mobile/commonui/widget/APKeyBoardView;->d:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    new-instance v1, Lcom/alipay/mobile/commonui/widget/controller/KeyBoardModel;

    invoke-direct {v1}, Lcom/alipay/mobile/commonui/widget/controller/KeyBoardModel;-><init>()V

    const/high16 v2, 0x1000000

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/controller/KeyBoardModel;->setId(I)V

    sget-object v2, Lcom/alipay/mobile/commonui/widget/APKeyBoardView;->b:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/controller/KeyBoardModel;->setName(Ljava/lang/String;)V

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/controller/KeyBoardModel;->setType(I)V

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/APKeyBoardView;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-direct {p0, p1}, Lcom/alipay/mobile/commonui/widget/APKeyBoardView;->b(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APKeyBoardView;->g:Ljava/lang/StringBuilder;

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/commonui/widget/APKeyBoardView;Ljava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APKeyBoardView;->g:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/16 v1, 0x19

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APKeyBoardView;->g:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcom/alipay/mobile/commonui/widget/APKeyBoardView;)Lcom/alipay/mobile/commonui/widget/controller/IKeyBoardController;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APKeyBoardView;->c:Lcom/alipay/mobile/commonui/widget/controller/IKeyBoardController;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/commonui/widget/APKeyBoardView;I)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APKeyBoardView;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alipay/mobile/commonui/widget/APKeyBoardView;)Ljava/lang/StringBuilder;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APKeyBoardView;->g:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method static synthetic access$400(Lcom/alipay/mobile/commonui/widget/APKeyBoardView;)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APKeyBoardView;->g:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APKeyBoardView;->g:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APKeyBoardView;->g:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APKeyBoardView;->g:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/APKeyBoardView;->g:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method static synthetic access$500(Lcom/alipay/mobile/commonui/widget/APKeyBoardView;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APKeyBoardView;->e:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/alipay/mobile/commonui/widget/APKeyBoardView;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APKeyBoardView;->g:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/16 v1, 0x19

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APKeyBoardView;->g:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method private b(Landroid/content/Context;)V
    .locals 14

    const/16 v13, 0x11

    const/4 v12, 0x2

    const/4 v11, 0x3

    const/4 v1, 0x0

    const/4 v10, 0x1

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APKeyBoardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/alipay/mobile/ui/R$dimen;->table_keyboard_item_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APKeyBoardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/alipay/mobile/ui/R$color;->table_keyboard_key:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APKeyBoardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/alipay/mobile/ui/R$color;->table_keyboard_line:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APKeyBoardView;->setBackgroundColor(I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APKeyBoardView;->f:Ljava/util/ArrayList;

    move v3, v1

    :goto_0
    if-ge v3, v11, :cond_1

    new-instance v6, Landroid/widget/TableRow;

    invoke-direct {v6, p1}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    move v2, v1

    :goto_1
    if-ge v2, v11, :cond_0

    mul-int/lit8 v0, v3, 0x3

    add-int v7, v0, v2

    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APKeyBoardView;->d:Ljava/util/ArrayList;

    mul-int/lit8 v9, v3, 0x3

    add-int/2addr v9, v2

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/controller/KeyBoardModel;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/controller/KeyBoardModel;->getId()I

    move-result v0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setId(I)V

    invoke-virtual {v8, v13}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setFocusable(Z)V

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/APKeyBoardView;->h:I

    int-to-float v0, v0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setTextColor(I)V

    sget-object v0, Lcom/alipay/mobile/commonui/widget/APKeyBoardView;->a:[Ljava/lang/String;

    mul-int/lit8 v9, v3, 0x3

    add-int/2addr v9, v2

    aget-object v0, v0, v9

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/alipay/mobile/ui/R$drawable;->table_frame_gray_selector:I

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APKeyBoardView;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6, v8}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    invoke-virtual {v8}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/TableRow$LayoutParams;

    iput v10, v0, Landroid/widget/TableRow$LayoutParams;->width:I

    iput v4, v0, Landroid/widget/TableRow$LayoutParams;->height:I

    new-instance v0, Lcom/alipay/mobile/commonui/widget/APKeyBoardView$1;

    invoke-direct {v0, p0, v7}, Lcom/alipay/mobile/commonui/widget/APKeyBoardView$1;-><init>(Lcom/alipay/mobile/commonui/widget/APKeyBoardView;I)V

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v6}, Lcom/alipay/mobile/commonui/widget/APKeyBoardView;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_1
    new-instance v3, Landroid/widget/TableRow;

    invoke-direct {v3, p1}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    move v2, v1

    :goto_2
    if-ge v2, v11, :cond_4

    if-ne v2, v12, :cond_2

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setFocusable(Z)V

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setClickable(Z)V

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APKeyBoardView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/alipay/mobile/ui/R$drawable;->table_deleted_key_selector:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    sget v6, Lcom/alipay/mobile/ui/R$drawable;->table_frame_gray_selector:I

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    new-instance v6, Lcom/alipay/mobile/commonui/widget/APKeyBoardView$2;

    invoke-direct {v6, p0, v12}, Lcom/alipay/mobile/commonui/widget/APKeyBoardView$2;-><init>(Lcom/alipay/mobile/commonui/widget/APKeyBoardView;I)V

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v3, v0}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/TableRow$LayoutParams;

    iput v10, v0, Landroid/widget/TableRow$LayoutParams;->width:I

    iput v4, v0, Landroid/widget/TableRow$LayoutParams;->height:I

    :goto_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_2
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APKeyBoardView;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/controller/KeyBoardModel;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/controller/KeyBoardModel;->getId()I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setId(I)V

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setTextColor(I)V

    sget-object v0, Lcom/alipay/mobile/commonui/widget/APKeyBoardView;->b:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setFocusable(Z)V

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/APKeyBoardView;->h:I

    int-to-float v0, v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setGravity(I)V

    sget v0, Lcom/alipay/mobile/ui/R$drawable;->table_frame_gray_selector:I

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    invoke-virtual {v3, v6}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/TableRow$LayoutParams;

    iput v10, v0, Landroid/widget/TableRow$LayoutParams;->width:I

    iput v4, v0, Landroid/widget/TableRow$LayoutParams;->height:I

    if-nez v2, :cond_3

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setClickable(Z)V

    goto :goto_3

    :cond_3
    new-instance v0, Lcom/alipay/mobile/commonui/widget/APKeyBoardView$3;

    invoke-direct {v0, p0, v10}, Lcom/alipay/mobile/commonui/widget/APKeyBoardView$3;-><init>(Lcom/alipay/mobile/commonui/widget/APKeyBoardView;I)V

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    :cond_4
    invoke-virtual {p0, v3}, Lcom/alipay/mobile/commonui/widget/APKeyBoardView;->addView(Landroid/view/View;)V

    move v0, v1

    :goto_4
    if-ge v0, v11, :cond_5

    invoke-virtual {p0, v0, v10}, Lcom/alipay/mobile/commonui/widget/APKeyBoardView;->setColumnStretchable(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APKeyBoardView;->g:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APKeyBoardView;->g:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APKeyBoardView;->g:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/APKeyBoardView;->g:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method public setKeyBoardController(Lcom/alipay/mobile/commonui/widget/controller/IKeyBoardController;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/APKeyBoardView;->c:Lcom/alipay/mobile/commonui/widget/controller/IKeyBoardController;

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APKeyBoardView;->g:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APKeyBoardView;->g:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    rsub-int/lit8 v1, v1, 0x1a

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APKeyBoardView;->g:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method
