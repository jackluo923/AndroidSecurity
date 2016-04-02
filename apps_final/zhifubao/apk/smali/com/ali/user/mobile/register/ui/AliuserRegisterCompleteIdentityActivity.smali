.class public Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity;
.super Lcom/ali/user/mobile/register/ui/BaseRegisterActivity;
.source "AliuserRegisterCompleteIdentityActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Lcom/ali/user/mobile/ui/widget/AUInputBox;

.field private b:Lcom/ali/user/mobile/ui/widget/AUInputBox;

.field private c:Landroid/widget/EditText;

.field private d:Landroid/widget/EditText;

.field private e:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/ali/user/mobile/register/ui/BaseRegisterActivity;-><init>()V

    return-void
.end method

.method private a(Landroid/widget/EditText;)V
    .locals 5

    .prologue
    .line 142
    invoke-virtual {p1}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 143
    const/16 v1, 0x9

    sget v2, Lcom/ali/user/mobile/security/ui/R$id;->identityLayout:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 144
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/ali/user/mobile/security/ui/R$dimen;->inputbox_edit_margin_top:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 145
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/ali/user/mobile/security/ui/R$dimen;->inputbox_edit_margin_left:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 146
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/ali/user/mobile/security/ui/R$dimen;->inputbox_edit_margin_right:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 147
    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 148
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 149
    return-void
.end method

.method static synthetic access$3(Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity;->c:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$4(Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity;->d:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method protected afterVerifyIdentity(Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/VerifyIDCardRes;)V
    .locals 1

    .prologue
    .line 101
    new-instance v0, Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity$2;

    invoke-direct {v0, p0, p1}, Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity$2;-><init>(Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity;Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/VerifyIDCardRes;)V

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 139
    return-void
.end method

.method protected doVerifyIdentity()V
    .locals 1

    .prologue
    .line 83
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity;->showProgress(Ljava/lang/String;)V

    .line 84
    new-instance v0, Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity$1;

    invoke-direct {v0, p0}, Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity$1;-><init>(Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 98
    return-void
.end method

.method public bridge synthetic getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/ali/user/mobile/register/ui/BaseRegisterActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/ali/user/mobile/register/ui/BaseRegisterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method protected initViewChains()V
    .locals 2

    .prologue
    .line 69
    new-instance v0, Lcom/ali/user/mobile/ui/widget/EditTextHasNullChecker;

    invoke-direct {v0}, Lcom/ali/user/mobile/ui/widget/EditTextHasNullChecker;-><init>()V

    .line 70
    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity;->e:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/EditTextHasNullChecker;->addNeedEnabledButton(Landroid/widget/Button;)V

    .line 72
    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/EditTextHasNullChecker;->addNeedCheckView(Landroid/widget/EditText;)V

    .line 73
    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/EditTextHasNullChecker;->addNeedCheckView(Landroid/widget/EditText;)V

    .line 74
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 78
    const-string/jumbo v0, "UC-ZC-150512-18"

    const-string/jumbo v1, "zcnoneok"

    const-string/jumbo v2, "RegisterCompleteIdentity"

    iget-object v3, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity;->mToken:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/ali/user/mobile/utils/LogAgent;->logBehavorClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity;->doVerifyIdentity()V

    .line 80
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/ali/user/mobile/register/ui/BaseRegisterActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    sget v0, Lcom/ali/user/mobile/security/ui/R$layout;->activity_complete_identity:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity;->setContentView(I)V

    .line 42
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->realNameInputBox:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/ui/widget/AUInputBox;

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity;->a:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity;->a:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->getEtContent()Landroid/widget/EditText;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity;->c:Landroid/widget/EditText;

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->identityNumInputBox:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/ui/widget/AUInputBox;

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity;->b:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity;->b:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->getEtContent()Landroid/widget/EditText;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity;->d:Landroid/widget/EditText;

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->comfirmAndSubmit:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity;->e:Landroid/widget/Button;

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity;->e:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity;->a:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity;->c:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/ali/user/mobile/utils/WidgetVisualStyleSetting;->initFocusChangeBackground(Landroid/view/View;Landroid/widget/EditText;)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity;->b:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity;->d:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/ali/user/mobile/utils/WidgetVisualStyleSetting;->initFocusChangeBackground(Landroid/view/View;Landroid/widget/EditText;)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity;->b:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    sget v1, Lcom/ali/user/mobile/security/ui/R$drawable;->bg_input_unfocus:I

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->setBackgroundResource(I)V

    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/ali/user/mobile/security/ui/R$dimen;->defaultFontSizeSP:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x6

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity;->a:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {v1}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->getInputName()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setWidth(I)V

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity;->b:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {v1}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->getInputName()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setWidth(I)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity;->a:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->getEtContent()Landroid/widget/EditText;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity;->a(Landroid/widget/EditText;)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity;->b:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->getEtContent()Landroid/widget/EditText;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity;->a(Landroid/widget/EditText;)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity;->c:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity;->showInputMethodPannel(Landroid/view/View;)V

    .line 43
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity;->initViewChains()V

    .line 44
    return-void
.end method

.method public bridge synthetic startActivityForResult(Landroid/content/Intent;I)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1, p2}, Lcom/ali/user/mobile/register/ui/BaseRegisterActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
