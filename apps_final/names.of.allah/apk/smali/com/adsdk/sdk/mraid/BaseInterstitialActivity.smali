.class abstract Lcom/adsdk/sdk/mraid/BaseInterstitialActivity;
.super Landroid/app/Activity;


# static fields
.field public static final ACTION_INTERSTITIAL_CLICK:Ljava/lang/String; = "com.mopub.action.interstitial.click"

.field public static final ACTION_INTERSTITIAL_DISMISS:Ljava/lang/String; = "com.mopub.action.interstitial.dismiss"

.field public static final ACTION_INTERSTITIAL_FAIL:Ljava/lang/String; = "com.mopub.action.interstitial.fail"

.field public static final ACTION_INTERSTITIAL_SHOW:Ljava/lang/String; = "com.mopub.action.interstitial.show"

.field private static final CLOSE_BUTTON_PADDING:F = 8.0f

.field private static final CLOSE_BUTTON_SIZE:F = 50.0f

.field public static final HTML_INTERSTITIAL_INTENT_FILTER:Landroid/content/IntentFilter;


# instance fields
.field private mButtonPadding:I

.field private mButtonSize:I

.field private mCloseButton:Landroid/widget/ImageView;

.field private mLayout:Landroid/widget/RelativeLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/adsdk/sdk/mraid/BaseInterstitialActivity;->createHtmlInterstitialIntentFilter()Landroid/content/IntentFilter;

    move-result-object v0

    sput-object v0, Lcom/adsdk/sdk/mraid/BaseInterstitialActivity;->HTML_INTERSTITIAL_INTENT_FILTER:Landroid/content/IntentFilter;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private static createHtmlInterstitialIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.mopub.action.interstitial.fail"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.mopub.action.interstitial.show"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.mopub.action.interstitial.dismiss"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.mopub.action.interstitial.click"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object v0
.end method

.method private createInterstitialCloseButton()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Landroid/widget/ImageButton;

    invoke-direct {v0, p0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adsdk/sdk/mraid/BaseInterstitialActivity;->mCloseButton:Landroid/widget/ImageView;

    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    new-array v1, v4, [I

    const v2, -0x10100a7

    aput v2, v1, v3

    sget-object v2, Lcom/adsdk/sdk/mraid/Drawables;->INTERSTITIAL_CLOSE_BUTTON_NORMAL:Lcom/adsdk/sdk/mraid/Drawables;

    invoke-virtual {v2, p0}, Lcom/adsdk/sdk/mraid/Drawables;->decodeImage(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v1, v4, [I

    const v2, 0x10100a7

    aput v2, v1, v3

    sget-object v2, Lcom/adsdk/sdk/mraid/Drawables;->INTERSTITIAL_CLOSE_BUTTON_PRESSED:Lcom/adsdk/sdk/mraid/Drawables;

    invoke-virtual {v2, p0}, Lcom/adsdk/sdk/mraid/Drawables;->decodeImage(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/adsdk/sdk/mraid/BaseInterstitialActivity;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/BaseInterstitialActivity;->mCloseButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/BaseInterstitialActivity;->mCloseButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/adsdk/sdk/mraid/BaseInterstitialActivity$1;

    invoke-direct {v1, p0}, Lcom/adsdk/sdk/mraid/BaseInterstitialActivity$1;-><init>(Lcom/adsdk/sdk/mraid/BaseInterstitialActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/adsdk/sdk/mraid/BaseInterstitialActivity;->mButtonSize:I

    iget v2, p0, Lcom/adsdk/sdk/mraid/BaseInterstitialActivity;->mButtonSize:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget v1, p0, Lcom/adsdk/sdk/mraid/BaseInterstitialActivity;->mButtonPadding:I

    iget v2, p0, Lcom/adsdk/sdk/mraid/BaseInterstitialActivity;->mButtonPadding:I

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/adsdk/sdk/mraid/BaseInterstitialActivity;->mLayout:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/adsdk/sdk/mraid/BaseInterstitialActivity;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method protected broadcastInterstitialAction(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/support/v4/a/i;->a(Landroid/content/Context;)Landroid/support/v4/a/i;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/a/i;->a(Landroid/content/Intent;)Z

    return-void
.end method

.method public abstract getAdView()Landroid/view/View;
.end method

.method protected hideInterstitialCloseButton()V
    .locals 2

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/BaseInterstitialActivity;->mCloseButton:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/mraid/BaseInterstitialActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/BaseInterstitialActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const/high16 v0, 0x42480000    # 50.0f

    invoke-static {v0, p0}, Lcom/adsdk/sdk/mraid/Dips;->asIntPixels(FLandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/adsdk/sdk/mraid/BaseInterstitialActivity;->mButtonSize:I

    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {v0, p0}, Lcom/adsdk/sdk/mraid/Dips;->asIntPixels(FLandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/adsdk/sdk/mraid/BaseInterstitialActivity;->mButtonPadding:I

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adsdk/sdk/mraid/BaseInterstitialActivity;->mLayout:Landroid/widget/RelativeLayout;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/adsdk/sdk/mraid/BaseInterstitialActivity;->mLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/BaseInterstitialActivity;->getAdView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/BaseInterstitialActivity;->mLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/mraid/BaseInterstitialActivity;->setContentView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/adsdk/sdk/mraid/BaseInterstitialActivity;->createInterstitialCloseButton()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/BaseInterstitialActivity;->mLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected showInterstitialCloseButton()V
    .locals 2

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/BaseInterstitialActivity;->mCloseButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
