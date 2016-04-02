.class public final Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity_;
.super Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity;
.source "AliUserRegisterChoiceRegionActivity_.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity;-><init>()V

    .line 74
    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 38
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->register_region_title:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity_;->mRegisterTitle:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    .line 39
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->contacts_letters_list:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/ui/widget/AUBladeView;

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity_;->mLetterView:Lcom/ali/user/mobile/ui/widget/AUBladeView;

    .line 40
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->register_list:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APPinnedHeaderListView;

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity_;->mListView:Lcom/alipay/mobile/commonui/widget/APPinnedHeaderListView;

    .line 41
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity_;->init()V

    .line 42
    return-void
.end method

.method public static intent(Landroid/content/Context;)Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity_$IntentBuilder_;
    .locals 1

    .prologue
    .line 71
    new-instance v0, Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity_$IntentBuilder_;

    invoke-direct {v0, p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity_$IntentBuilder_;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    sget v0, Lcom/ali/user/mobile/security/ui/R$layout;->activity_register_region:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity_;->setContentView(I)V

    .line 32
    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 64
    invoke-static {}, Lcom/googlecode/androidannotations/api/SdkVersionHelper;->getSdkInt()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity_;->onBackPressed()V

    .line 67
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public final setContentView(I)V
    .locals 0

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity;->setContentView(I)V

    .line 47
    invoke-direct {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity_;->a()V

    .line 48
    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity;->setContentView(Landroid/view/View;)V

    .line 59
    invoke-direct {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity_;->a()V

    .line 60
    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .prologue
    .line 52
    invoke-super {p0, p1, p2}, Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    invoke-direct {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity_;->a()V

    .line 54
    return-void
.end method
