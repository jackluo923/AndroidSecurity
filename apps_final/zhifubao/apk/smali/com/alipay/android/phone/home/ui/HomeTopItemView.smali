.class public Lcom/alipay/android/phone/home/ui/HomeTopItemView;
.super Lcom/alipay/mobile/commonui/widget/APFrameLayout;
.source "HomeTopItemView.java"


# static fields
.field public static f:I


# instance fields
.field a:Lcom/alipay/mobile/commonui/widget/APTextView;

.field b:Lcom/alipay/mobile/commonui/widget/APTextView;

.field c:Lcom/alipay/mobile/commonui/widget/APImageView;

.field d:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

.field e:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/android/phone/openplatform/R$dimen;->f:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/alipay/android/phone/home/ui/HomeTopItemView;->f:I

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/android/phone/home/ui/HomeTopItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alipay/android/phone/home/ui/HomeTopItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/commonui/widget/APFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/HomeTopItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/alipay/android/phone/openplatform/R$layout;->k:I

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 35
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/HomeTopItemView;->initView()V

    .line 36
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    .line 37
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 36
    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeTopItemView;->d:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    .line 38
    return-void
.end method


# virtual methods
.method initView()V
    .locals 1

    .prologue
    .line 67
    sget v0, Lcom/alipay/android/phone/openplatform/R$id;->v:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/home/ui/HomeTopItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeTopItemView;->a:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 68
    sget v0, Lcom/alipay/android/phone/openplatform/R$id;->w:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/home/ui/HomeTopItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeTopItemView;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 69
    sget v0, Lcom/alipay/android/phone/openplatform/R$id;->u:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/home/ui/HomeTopItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeTopItemView;->c:Lcom/alipay/mobile/commonui/widget/APImageView;

    .line 70
    new-instance v0, Lcom/alipay/android/phone/home/ui/ao;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/home/ui/ao;-><init>(Lcom/alipay/android/phone/home/ui/HomeTopItemView;)V

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/home/ui/HomeTopItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    return-void
.end method

.method public setAppInfo(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)Lcom/alipay/android/phone/home/ui/HomeTopItemView;
    .locals 6

    .prologue
    const/4 v1, -0x1

    .line 49
    iput-object p1, p0, Lcom/alipay/android/phone/home/ui/HomeTopItemView;->e:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    .line 50
    const-string/jumbo v0, "indexStage"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isIconRemote(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 51
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getLocalIconId()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 52
    sget v0, Lcom/alipay/mobile/openplatform/common/R$drawable;->app_default:I

    .line 54
    :goto_0
    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/HomeTopItemView;->c:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageResource(I)V

    .line 61
    :goto_1
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeTopItemView;->a:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeTopItemView;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    const-string/jumbo v1, "21.1\u5143"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    return-object p0

    .line 53
    :cond_0
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getLocalIconId()I

    move-result v0

    goto :goto_0

    .line 56
    :cond_1
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getLocalIconId()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 57
    sget v0, Lcom/alipay/mobile/openplatform/common/R$drawable;->app_default:I

    move v3, v0

    .line 59
    :goto_2
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeTopItemView;->d:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    const-string/jumbo v1, "indexStage"

    invoke-virtual {p1, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getIconUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/phone/home/ui/HomeTopItemView;->c:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/HomeTopItemView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    sget v4, Lcom/alipay/android/phone/home/ui/HomeTopItemView;->f:I

    sget v5, Lcom/alipay/android/phone/home/ui/HomeTopItemView;->f:I

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->loadImage(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;II)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;

    goto :goto_1

    .line 58
    :cond_2
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getLocalIconId()I

    move-result v0

    move v3, v0

    goto :goto_2
.end method
