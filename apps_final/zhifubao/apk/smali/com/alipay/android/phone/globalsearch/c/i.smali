.class public final Lcom/alipay/android/phone/globalsearch/c/i;
.super Ljava/lang/Object;
.source "GiftItemView.java"


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lcom/alipay/mobile/commonbiz/image/ImageWorker;

.field private c:Lcom/alipay/mobile/commonbiz/image/plugin/RoundImagePlugin;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/alipay/android/phone/globalsearch/c/i;->a:Landroid/app/Activity;

    .line 24
    new-instance v0, Lcom/alipay/mobile/commonbiz/image/ImageWorker;

    sget v1, Lcom/alipay/android/phone/businesscommon/globalsearch/e;->b:I

    invoke-direct {v0, p1, v1}, Lcom/alipay/mobile/commonbiz/image/ImageWorker;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/alipay/android/phone/globalsearch/c/i;->b:Lcom/alipay/mobile/commonbiz/image/ImageWorker;

    .line 25
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/android/phone/businesscommon/globalsearch/e;->c:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 26
    const-string/jumbo v1, "TAG"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "roundHeight is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    iget-object v1, p0, Lcom/alipay/android/phone/globalsearch/c/i;->b:Lcom/alipay/mobile/commonbiz/image/ImageWorker;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonbiz/image/ImageWorker;->setHeight(I)Lcom/alipay/mobile/commonbiz/image/ImageWorker;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonbiz/image/ImageWorker;->setWidth(I)Lcom/alipay/mobile/commonbiz/image/ImageWorker;

    .line 29
    new-instance v1, Lcom/alipay/mobile/commonbiz/image/plugin/RoundImagePlugin;

    invoke-direct {v1}, Lcom/alipay/mobile/commonbiz/image/plugin/RoundImagePlugin;-><init>()V

    iput-object v1, p0, Lcom/alipay/android/phone/globalsearch/c/i;->c:Lcom/alipay/mobile/commonbiz/image/plugin/RoundImagePlugin;

    .line 30
    iget-object v1, p0, Lcom/alipay/android/phone/globalsearch/c/i;->c:Lcom/alipay/mobile/commonbiz/image/plugin/RoundImagePlugin;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonbiz/image/plugin/RoundImagePlugin;->setRoundHeight(I)V

    .line 31
    iget-object v1, p0, Lcom/alipay/android/phone/globalsearch/c/i;->c:Lcom/alipay/mobile/commonbiz/image/plugin/RoundImagePlugin;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonbiz/image/plugin/RoundImagePlugin;->setRoundWidth(I)V

    .line 32
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/view/ViewGroup;Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 36
    if-nez p1, :cond_0

    .line 37
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/c/i;->a:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/android/phone/businesscommon/globalsearch/g;->g:I

    invoke-virtual {v0, v1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 38
    new-instance v1, Lcom/alipay/android/phone/globalsearch/c/j;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/globalsearch/c/j;-><init>(Lcom/alipay/android/phone/globalsearch/c/i;)V

    .line 39
    sget v0, Lcom/alipay/android/phone/businesscommon/globalsearch/f;->l:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, v1, Lcom/alipay/android/phone/globalsearch/c/j;->a:Lcom/alipay/mobile/commonui/widget/APImageView;

    .line 40
    sget v0, Lcom/alipay/android/phone/businesscommon/globalsearch/f;->m:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, v1, Lcom/alipay/android/phone/globalsearch/c/j;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 41
    invoke-virtual {p1, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    .line 45
    :goto_0
    iget-object v1, v0, Lcom/alipay/android/phone/globalsearch/c/j;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v2, p3, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    iget-object v1, p0, Lcom/alipay/android/phone/globalsearch/c/i;->b:Lcom/alipay/mobile/commonbiz/image/ImageWorker;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/alipay/android/phone/globalsearch/c/j;->a:Lcom/alipay/mobile/commonui/widget/APImageView;

    if-eqz v1, :cond_1

    .line 47
    iget-object v1, v0, Lcom/alipay/android/phone/globalsearch/c/j;->a:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    .line 48
    iget-object v1, p0, Lcom/alipay/android/phone/globalsearch/c/i;->b:Lcom/alipay/mobile/commonbiz/image/ImageWorker;

    iget-object v2, p3, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->icon:Ljava/lang/String;

    iget-object v0, v0, Lcom/alipay/android/phone/globalsearch/c/j;->a:Lcom/alipay/mobile/commonui/widget/APImageView;

    iget-object v3, p0, Lcom/alipay/android/phone/globalsearch/c/i;->c:Lcom/alipay/mobile/commonbiz/image/plugin/RoundImagePlugin;

    invoke-virtual {v1, v2, v0, v3}, Lcom/alipay/mobile/commonbiz/image/ImageWorker;->loadImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/ImageWorkerPlugin;)Lcom/alipay/mobile/commonbiz/image/ImageWorker;

    .line 52
    :goto_1
    return-object p1

    .line 43
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/globalsearch/c/j;

    goto :goto_0

    .line 50
    :cond_1
    iget-object v0, v0, Lcom/alipay/android/phone/globalsearch/c/j;->a:Lcom/alipay/mobile/commonui/widget/APImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    goto :goto_1
.end method
