.class public final Lcom/ali/user/mobile/avatar/EditAvatarActivity_;
.super Lcom/ali/user/mobile/avatar/EditAvatarActivity;
.source "EditAvatarActivity_.java"


# instance fields
.field private a:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/ali/user/mobile/avatar/EditAvatarActivity;-><init>()V

    .line 26
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/ali/user/mobile/avatar/EditAvatarActivity_;->a:Landroid/os/Handler;

    .line 90
    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 39
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->avatar_crop:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/avatar/EditAvatarActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/avatar/CropImageView;

    iput-object v0, p0, Lcom/ali/user/mobile/avatar/EditAvatarActivity_;->mCropImageView:Lcom/ali/user/mobile/avatar/CropImageView;

    .line 40
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->operations_rotate:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/avatar/EditAvatarActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, p0, Lcom/ali/user/mobile/avatar/EditAvatarActivity_;->mIvRotate:Lcom/alipay/mobile/commonui/widget/APImageView;

    .line 41
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->operations_cancel:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/avatar/EditAvatarActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButton;

    iput-object v0, p0, Lcom/ali/user/mobile/avatar/EditAvatarActivity_;->mBtnCancel:Lcom/alipay/mobile/commonui/widget/APButton;

    .line 42
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->operations_confirm:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/avatar/EditAvatarActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButton;

    iput-object v0, p0, Lcom/ali/user/mobile/avatar/EditAvatarActivity_;->mBtnConfirm:Lcom/alipay/mobile/commonui/widget/APButton;

    .line 43
    invoke-virtual {p0}, Lcom/ali/user/mobile/avatar/EditAvatarActivity_;->initActions()V

    .line 44
    return-void
.end method

.method static synthetic access$001(Lcom/ali/user/mobile/avatar/EditAvatarActivity_;I)V
    .locals 0

    .prologue
    .line 22
    invoke-super {p0, p1}, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->showToast(I)V

    return-void
.end method

.method public static intent(Landroid/content/Context;)Lcom/ali/user/mobile/avatar/EditAvatarActivity_$IntentBuilder_;
    .locals 1

    .prologue
    .line 73
    new-instance v0, Lcom/ali/user/mobile/avatar/EditAvatarActivity_$IntentBuilder_;

    invoke-direct {v0, p0}, Lcom/ali/user/mobile/avatar/EditAvatarActivity_$IntentBuilder_;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    sget v0, Lcom/ali/user/mobile/security/ui/R$layout;->avatar_crop_image:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/avatar/EditAvatarActivity_;->setContentView(I)V

    .line 33
    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 66
    invoke-static {}, Lcom/googlecode/androidannotations/api/SdkVersionHelper;->getSdkInt()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/ali/user/mobile/avatar/EditAvatarActivity_;->onBackPressed()V

    .line 69
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public final setContentView(I)V
    .locals 0

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->setContentView(I)V

    .line 49
    invoke-direct {p0}, Lcom/ali/user/mobile/avatar/EditAvatarActivity_;->a()V

    .line 50
    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->setContentView(Landroid/view/View;)V

    .line 61
    invoke-direct {p0}, Lcom/ali/user/mobile/avatar/EditAvatarActivity_;->a()V

    .line 62
    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .prologue
    .line 54
    invoke-super {p0, p1, p2}, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    invoke-direct {p0}, Lcom/ali/user/mobile/avatar/EditAvatarActivity_;->a()V

    .line 56
    return-void
.end method

.method public final showToast(I)V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/ali/user/mobile/avatar/EditAvatarActivity_;->a:Landroid/os/Handler;

    new-instance v1, Lcom/ali/user/mobile/avatar/EditAvatarActivity_$1;

    invoke-direct {v1, p0, p1}, Lcom/ali/user/mobile/avatar/EditAvatarActivity_$1;-><init>(Lcom/ali/user/mobile/avatar/EditAvatarActivity_;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 88
    return-void
.end method
