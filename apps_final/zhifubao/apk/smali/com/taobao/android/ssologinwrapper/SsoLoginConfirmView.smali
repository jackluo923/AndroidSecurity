.class public Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView;
.super Landroid/widget/FrameLayout;


# instance fields
.field private a:Landroid/view/ViewGroup;

.field private b:Landroid/widget/Button;

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Lcom/taobao/android/ssologinwrapper/remote/RemoteImageRequest;

.field private j:Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView;->a()V

    invoke-direct {p0}, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView;->a()V

    invoke-direct {p0}, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView;->a()V

    invoke-direct {p0}, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView;->b()V

    return-void
.end method

.method private a()V
    .locals 5

    invoke-virtual {p0}, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string/jumbo v2, "sso_login_confirm"

    const-string/jumbo v3, "layout"

    invoke-virtual {p0}, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView;->a:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView;->a:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "sso_btn_login"

    invoke-static {v0, v1, v2}, Lcom/taobao/android/ssologinwrapper/utils/Utils;->findViewById(Landroid/view/View;Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView;->b:Landroid/widget/Button;

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView;->a:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "sso_btn_cancel"

    invoke-static {v0, v1, v2}, Lcom/taobao/android/ssologinwrapper/utils/Utils;->findViewById(Landroid/view/View;Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView;->c:Landroid/widget/Button;

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView;->a:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "sso_tv_other_account"

    invoke-static {v0, v1, v2}, Lcom/taobao/android/ssologinwrapper/utils/Utils;->findViewById(Landroid/view/View;Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView;->a:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "sso_iv_account"

    invoke-static {v0, v1, v2}, Lcom/taobao/android/ssologinwrapper/utils/Utils;->findViewById(Landroid/view/View;Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView;->e:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView;->a:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "sso_tv_nick"

    invoke-static {v0, v1, v2}, Lcom/taobao/android/ssologinwrapper/utils/Utils;->findViewById(Landroid/view/View;Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView;->f:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView;->a:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "sso_tv_ssoinfo"

    invoke-static {v0, v1, v2}, Lcom/taobao/android/ssologinwrapper/utils/Utils;->findViewById(Landroid/view/View;Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView;->g:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView;->a:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "sso_tv_title"

    invoke-static {v0, v1, v2}, Lcom/taobao/android/ssologinwrapper/utils/Utils;->findViewById(Landroid/view/View;Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView;->h:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$000(Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView;)Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmListener;
    .locals 1

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView;->j:Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView;)Lcom/taobao/android/ssologinwrapper/remote/RemoteImageRequest;
    .locals 1

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView;->i:Lcom/taobao/android/ssologinwrapper/remote/RemoteImageRequest;

    return-object v0
.end method

.method static synthetic access$200(Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView;->e:Landroid/widget/ImageView;

    return-object v0
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView;->b:Landroid/widget/Button;

    new-instance v1, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView$1;

    invoke-direct {v1, p0}, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView$1;-><init>(Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView;->c:Landroid/widget/Button;

    new-instance v1, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView$2;

    invoke-direct {v1, p0}, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView$2;-><init>(Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView;->d:Landroid/widget/TextView;

    new-instance v1, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView$3;

    invoke-direct {v1, p0}, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView$3;-><init>(Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public getAccountNameView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView;->f:Landroid/widget/TextView;

    return-object v0
.end method

.method public getCancelView()Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView;->c:Landroid/widget/Button;

    return-object v0
.end method

.method public getLoginConfirmView()Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView;->b:Landroid/widget/Button;

    return-object v0
.end method

.method public getLogoView()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView;->e:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getOtherAccountView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method public getSsoInfoView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView;->g:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTitleView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView;->h:Landroid/widget/TextView;

    return-object v0
.end method

.method public setSsoLoginConfirmListener(Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmListener;)V
    .locals 0

    iput-object p1, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView;->j:Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmListener;

    return-void
.end method

.method public setUserInfo(Lcom/taobao/android/sso/UserInfo;)V
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView;->i:Lcom/taobao/android/ssologinwrapper/remote/RemoteImageRequest;

    if-nez v0, :cond_0

    new-instance v0, Lcom/taobao/android/ssologinwrapper/remote/RemoteImageRequest;

    invoke-direct {v0}, Lcom/taobao/android/ssologinwrapper/remote/RemoteImageRequest;-><init>()V

    iput-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView;->i:Lcom/taobao/android/ssologinwrapper/remote/RemoteImageRequest;

    :cond_0
    iget-object v0, p1, Lcom/taobao/android/sso/UserInfo;->mPhotoUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView$4;

    invoke-direct {v0, p0, p1}, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView$4;-><init>(Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView;Lcom/taobao/android/sso/UserInfo;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView$4;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView;->f:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/taobao/android/sso/UserInfo;->mNick:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/taobao/android/sso/UserInfo;->mShareApp:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView;->g:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView;->g:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u5728"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/taobao/android/sso/UserInfo;->mShareApp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u5df2\u767b\u5f55"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
