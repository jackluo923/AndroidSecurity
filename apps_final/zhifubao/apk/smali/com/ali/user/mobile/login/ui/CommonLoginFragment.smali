.class public abstract Lcom/ali/user/mobile/login/ui/CommonLoginFragment;
.super Lcom/ali/user/mobile/base/BaseFragment;
.source "CommonLoginFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ali/user/mobile/context/LoginHandler;


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EFragment;
.end annotation


# instance fields
.field protected isDropdownAccount:Z

.field protected isExternalLoginParam:Z

.field protected mAccountCompleteTextView:Lcom/ali/user/mobile/ui/widget/AUInputBox;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "userAccountInput"
    .end annotation
.end field

.field protected mAccountImageView:Lcom/alipay/mobile/commonui/widget/APImageView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "userAccountImage"
    .end annotation
.end field

.field protected mAccountInputView:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

.field protected mApplicationContext:Landroid/content/Context;

.field protected mArrowDownView:Landroid/widget/ImageButton;

.field protected mCurrentSelectedAccount:Ljava/lang/String;

.field protected mCurrentSelectedHistory:Lcom/ali/user/mobile/login/LoginHistory;

.field protected mFaceLoginBtn:Landroid/widget/TextView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "facelogin_btn"
    .end annotation
.end field

.field protected mForgetPassword:Landroid/widget/TextView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "forgetPassword"
    .end annotation
.end field

.field protected mForgetPasswordCenter:Landroid/widget/TextView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "forgetPasswordCenter"
    .end annotation
.end field

.field protected mHasNullChecker:Lcom/ali/user/mobile/ui/widget/EditTextHasNullChecker;

.field protected mLoginButton:Landroid/widget/Button;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "loginButton"
    .end annotation
.end field

.field protected mLoginHistoryList:Lcom/alipay/mobile/commonui/widget/APListView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "historyList"
    .end annotation
.end field

.field protected mPasswordChangeView:Landroid/widget/ImageButton;

.field protected mPasswordInput:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

.field protected mPasswordInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "userPasswordInput"
    .end annotation
.end field

.field protected mPasswordInputType:Ljava/lang/String;

.field protected mRegistNewTV:Landroid/widget/TextView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "registNewUser"
    .end annotation
.end field

.field protected mSwitchLoginAndForgetPassword:Landroid/view/View;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "switchLoginAndForgetPassword"
    .end annotation
.end field

.field protected mSwitchUserLogin:Landroid/widget/TextView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "switchLogin"
    .end annotation
.end field

.field protected mTitleBar:Lcom/alipay/mobile/commonui/widget/APTitleBar;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "titleBar"
    .end annotation
.end field

.field protected mViewContainers:Landroid/view/View;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "viewContainers"
    .end annotation
.end field

.field protected subviewContainer:Landroid/widget/LinearLayout;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "subviewContainers"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/ali/user/mobile/base/BaseFragment;-><init>()V

    .line 83
    const-string/jumbo v0, "n"

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/CommonLoginFragment;->mPasswordInputType:Ljava/lang/String;

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ali/user/mobile/login/ui/CommonLoginFragment;->isExternalLoginParam:Z

    .line 42
    return-void
.end method


# virtual methods
.method protected afterViews()V
    .locals 3

    .prologue
    .line 151
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/CommonLoginFragment;->mAccountCompleteTextView:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->getEtContent()Landroid/widget/EditText;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/CommonLoginFragment;->mAccountInputView:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    .line 152
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/CommonLoginFragment;->mAccountCompleteTextView:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->getSpecialFuncImg()Landroid/widget/ImageButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/CommonLoginFragment;->mArrowDownView:Landroid/widget/ImageButton;

    .line 153
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/CommonLoginFragment;->mPasswordInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->getEtContent()Landroid/widget/EditText;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/CommonLoginFragment;->mPasswordInput:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    .line 154
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/CommonLoginFragment;->mPasswordInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->getSpecialFuncImg()Landroid/widget/ImageButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/CommonLoginFragment;->mPasswordChangeView:Landroid/widget/ImageButton;

    .line 157
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/CommonLoginFragment;->mForgetPasswordCenter:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/CommonLoginFragment;->mForgetPassword:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/CommonLoginFragment;->mFaceLoginBtn:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/CommonLoginFragment;->mPasswordInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->getSpecialFuncImg()Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/CommonLoginFragment;->mSwitchUserLogin:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/CommonLoginFragment;->mRegistNewTV:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/CommonLoginFragment;->mLoginButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/CommonLoginFragment;->mArrowDownView:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/CommonLoginFragment;->mHasNullChecker:Lcom/ali/user/mobile/ui/widget/EditTextHasNullChecker;

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/CommonLoginFragment;->mLoginButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/EditTextHasNullChecker;->addNeedEnabledButton(Landroid/widget/Button;)V

    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/CommonLoginFragment;->mHasNullChecker:Lcom/ali/user/mobile/ui/widget/EditTextHasNullChecker;

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/CommonLoginFragment;->mAccountInputView:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/EditTextHasNullChecker;->addNeedCheckView(Landroid/widget/EditText;)V

    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/CommonLoginFragment;->mAccountInputView:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/CommonLoginFragment;->mHasNullChecker:Lcom/ali/user/mobile/ui/widget/EditTextHasNullChecker;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/CommonLoginFragment;->mHasNullChecker:Lcom/ali/user/mobile/ui/widget/EditTextHasNullChecker;

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/CommonLoginFragment;->mPasswordInput:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/EditTextHasNullChecker;->addNeedCheckView(Landroid/widget/EditText;)V

    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/CommonLoginFragment;->mPasswordInput:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/CommonLoginFragment;->mHasNullChecker:Lcom/ali/user/mobile/ui/widget/EditTextHasNullChecker;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 172
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/CommonLoginFragment;->mPasswordInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/CommonLoginFragment;->mPasswordInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->getEtContent()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    if-nez v1, :cond_0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->setGreatWall(Z)V

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/CommonLoginFragment;->mPasswordInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    new-instance v2, Lcom/ali/user/mobile/login/ui/CommonLoginFragment$1;

    invoke-direct {v2, p0, v0}, Lcom/ali/user/mobile/login/ui/CommonLoginFragment$1;-><init>(Lcom/ali/user/mobile/login/ui/CommonLoginFragment;Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;)V

    invoke-virtual {v1, v2}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/CommonLoginFragment;->mAccountInputView:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/ali/user/mobile/login/ui/CommonLoginFragment$2;

    invoke-direct {v0, p0}, Lcom/ali/user/mobile/login/ui/CommonLoginFragment$2;-><init>(Lcom/ali/user/mobile/login/ui/CommonLoginFragment;)V

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/CommonLoginFragment;->mAccountInputView:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 173
    :cond_0
    return-void
.end method

.method public closeSafeKeyboard()V
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/CommonLoginFragment;->mPasswordInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->getEtContent()Landroid/widget/EditText;

    move-result-object v0

    .line 217
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    if-eqz v1, :cond_0

    .line 218
    check-cast v0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    .line 219
    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->closeSafeKeyboard()V

    .line 221
    :cond_0
    return-void
.end method

.method protected abstract getLayout()I
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 112
    invoke-super {p0, p1}, Lcom/ali/user/mobile/base/BaseFragment;->onAttach(Landroid/app/Activity;)V

    .line 113
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/CommonLoginFragment;->mApplicationContext:Landroid/content/Context;

    .line 114
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 106
    invoke-super {p0, p1}, Lcom/ali/user/mobile/base/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 107
    new-instance v0, Lcom/ali/user/mobile/ui/widget/EditTextHasNullChecker;

    invoke-direct {v0}, Lcom/ali/user/mobile/ui/widget/EditTextHasNullChecker;-><init>()V

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/CommonLoginFragment;->mHasNullChecker:Lcom/ali/user/mobile/ui/widget/EditTextHasNullChecker;

    .line 108
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/CommonLoginFragment;->getLayout()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 126
    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 131
    invoke-super {p0, p1, p2}, Lcom/ali/user/mobile/base/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 133
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->switchLogin:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/CommonLoginFragment;->mSwitchUserLogin:Landroid/widget/TextView;

    .line 134
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->subviewContainers:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/CommonLoginFragment;->subviewContainer:Landroid/widget/LinearLayout;

    .line 135
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->userAccountInput:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/ui/widget/AUInputBox;

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/CommonLoginFragment;->mAccountCompleteTextView:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    .line 136
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->historyList:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APListView;

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/CommonLoginFragment;->mLoginHistoryList:Lcom/alipay/mobile/commonui/widget/APListView;

    .line 137
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->userAccountImage:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/CommonLoginFragment;->mAccountImageView:Lcom/alipay/mobile/commonui/widget/APImageView;

    .line 138
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->userPasswordInput:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/ui/widget/AUInputBox;

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/CommonLoginFragment;->mPasswordInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    .line 139
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->viewContainers:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/CommonLoginFragment;->mViewContainers:Landroid/view/View;

    .line 140
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->registNewUser:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/CommonLoginFragment;->mRegistNewTV:Landroid/widget/TextView;

    .line 141
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->loginButton:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/CommonLoginFragment;->mLoginButton:Landroid/widget/Button;

    .line 142
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->titleBar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/CommonLoginFragment;->mTitleBar:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    .line 143
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->forgetPasswordCenter:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/CommonLoginFragment;->mForgetPasswordCenter:Landroid/widget/TextView;

    .line 144
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->switchLoginAndForgetPassword:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/CommonLoginFragment;->mSwitchLoginAndForgetPassword:Landroid/view/View;

    .line 145
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->forgetPassword:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/CommonLoginFragment;->mForgetPassword:Landroid/widget/TextView;

    .line 146
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->facelogin_btn:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/CommonLoginFragment;->mFaceLoginBtn:Landroid/widget/TextView;

    .line 147
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/CommonLoginFragment;->afterViews()V

    .line 148
    return-void
.end method

.method protected refreshFaceEntry()V
    .locals 0

    .prologue
    .line 175
    return-void
.end method

.method protected abstract setPortraitImage(ZLjava/lang/String;)V
.end method
