.class public Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/CharSequence;

.field private b:I

.field private c:Ljava/util/HashMap;

.field private d:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;->b:I

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;->a:Ljava/lang/CharSequence;

    iput p2, p0, Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;->b:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;->b:I

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;->a:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;->d:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;->b:I

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;->a:Ljava/lang/CharSequence;

    iput p2, p0, Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;->b:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;->b:I

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;->a:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;->d:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;->d:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getExternParam()Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;->c:Ljava/util/HashMap;

    return-object v0
.end method

.method public getName()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;->a:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getResId()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;->b:I

    return v0
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;->d:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setExternParam(Ljava/util/HashMap;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;->c:Ljava/util/HashMap;

    return-void
.end method

.method public setName(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;->a:Ljava/lang/CharSequence;

    return-void
.end method

.method public setResId(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;->b:I

    return-void
.end method
