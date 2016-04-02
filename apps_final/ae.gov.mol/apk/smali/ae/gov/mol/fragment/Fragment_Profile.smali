.class public Lae/gov/mol/fragment/Fragment_Profile;
.super Lae/gov/mol/helper/CustomFragment;
.source "Fragment_Profile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/gov/mol/fragment/Fragment_Profile$BackProcess;,
        Lae/gov/mol/fragment/Fragment_Profile$ProfileProcess;
    }
.end annotation


# instance fields
.field mButtonCancel:Landroid/widget/Button;

.field mButtonSave:Landroid/widget/Button;

.field mCommonMethods:Lae/gov/mol/helper/CommonMethods;

.field mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

.field mEditTextEmailId:Landroid/widget/EditText;

.field mEditTextPhoneNumber:Landroid/widget/EditText;

.field mErrorHandlerandForgotPassWordVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

.field mImageViewEditEmail:Landroid/widget/ImageView;

.field mImageViewEditPhoneNumber:Landroid/widget/ImageView;

.field mImageViewHeaderHome:Landroid/widget/ImageView;

.field mImageViewProfileImage:Landroid/widget/ImageView;

.field mLinearLayout:Landroid/widget/LinearLayout;

.field mProfileVo:Lae/gov/mol/vo/ProfileVo;

.field mProgressDialog:Landroid/app/ProgressDialog;

.field mRelativeLayout:Landroid/widget/RelativeLayout;

.field mRelativeLayoutEmailEdit:Landroid/widget/RelativeLayout;

.field mRelativeLayoutMobileEdit:Landroid/widget/RelativeLayout;

.field mResultResponse:Ljava/lang/String;

.field mStringResult:Ljava/lang/String;

.field mStringUserId:Ljava/lang/String;

.field mTextViewCompanyNumber:Landroid/widget/TextView;

.field mTextViewHeader:Landroid/widget/TextView;

.field mTextViewName:Landroid/widget/TextView;

.field mView:Landroid/view/View;

.field mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lae/gov/mol/helper/CustomFragment;-><init>()V

    .line 64
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/Fragment_Profile;->mStringResult:Ljava/lang/String;

    .line 66
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/Fragment_Profile;->mResultResponse:Ljava/lang/String;

    .line 69
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/Fragment_Profile;->mStringUserId:Ljava/lang/String;

    .line 43
    return-void
.end method

.method static synthetic access$0(Lae/gov/mol/fragment/Fragment_Profile;)V
    .locals 0

    .prologue
    .line 321
    invoke-direct {p0}, Lae/gov/mol/fragment/Fragment_Profile;->reloadProfileInformation()V

    return-void
.end method

.method private reloadProfileInformation()V
    .locals 3

    .prologue
    .line 323
    :try_start_0
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Profile;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v2, p0, Lae/gov/mol/fragment/Fragment_Profile;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-static {v2}, Lae/gov/mol/MolApplication;->getUserImage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lae/gov/mol/helper/CommonMethods;->getImageFromBase64(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 324
    .local v0, "mBitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 325
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Profile;->mImageViewProfileImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    .end local v0    # "mBitmap":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Profile;->mEditTextPhoneNumber:Landroid/widget/EditText;

    if-eqz v1, :cond_1

    .line 334
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Profile;->mEditTextPhoneNumber:Landroid/widget/EditText;

    iget-object v2, p0, Lae/gov/mol/fragment/Fragment_Profile;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-static {v2}, Lae/gov/mol/MolApplication;->getMobileNUmberProfile(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 336
    :cond_1
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Profile;->mEditTextEmailId:Landroid/widget/EditText;

    if-eqz v1, :cond_2

    .line 337
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Profile;->mEditTextEmailId:Landroid/widget/EditText;

    iget-object v2, p0, Lae/gov/mol/fragment/Fragment_Profile;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-static {v2}, Lae/gov/mol/MolApplication;->getEmailProfile(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 339
    :cond_2
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Profile;->mTextViewName:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    .line 340
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Profile;->mTextViewName:Landroid/widget/TextView;

    iget-object v2, p0, Lae/gov/mol/fragment/Fragment_Profile;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-static {v2}, Lae/gov/mol/MolApplication;->getUserNameProfile(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 342
    :cond_3
    return-void

    .line 329
    :catch_0
    move-exception v1

    goto :goto_0

    .line 327
    :catch_1
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 79
    invoke-super {p0, p1}, Lae/gov/mol/helper/CustomFragment;->onCreate(Landroid/os/Bundle;)V

    .line 80
    invoke-virtual {p0}, Lae/gov/mol/fragment/Fragment_Profile;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lae/gov/mol/helper/CustomFragmentActivity;

    iput-object v0, p0, Lae/gov/mol/fragment/Fragment_Profile;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    .line 81
    new-instance v0, Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Profile;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-direct {v0, v1}, Lae/gov/mol/helper/CommonMethods;-><init>(Lae/gov/mol/helper/CustomFragmentActivity;)V

    iput-object v0, p0, Lae/gov/mol/fragment/Fragment_Profile;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    .line 82
    new-instance v0, Lae/gov/mol/vo/ProfileVo;

    invoke-direct {v0}, Lae/gov/mol/vo/ProfileVo;-><init>()V

    iput-object v0, p0, Lae/gov/mol/fragment/Fragment_Profile;->mProfileVo:Lae/gov/mol/vo/ProfileVo;

    .line 83
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 88
    const v1, 0x7f0300ba

    invoke-virtual {p1, v1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lae/gov/mol/fragment/Fragment_Profile;->mView:Landroid/view/View;

    .line 89
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Profile;->mView:Landroid/view/View;

    const v2, 0x7f060633

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lae/gov/mol/fragment/Fragment_Profile;->mRelativeLayout:Landroid/widget/RelativeLayout;

    .line 90
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Profile;->mView:Landroid/view/View;

    const v2, 0x7f060758

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lae/gov/mol/fragment/Fragment_Profile;->mTextViewHeader:Landroid/widget/TextView;

    .line 91
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Profile;->mView:Landroid/view/View;

    const v2, 0x7f060757

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lae/gov/mol/fragment/Fragment_Profile;->mImageViewHeaderHome:Landroid/widget/ImageView;

    .line 92
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Profile;->mTextViewHeader:Landroid/widget/TextView;

    const v2, 0x7f090228

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/Fragment_Profile;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Profile;->mView:Landroid/view/View;

    const v2, 0x7f06063c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lae/gov/mol/fragment/Fragment_Profile;->mRelativeLayoutEmailEdit:Landroid/widget/RelativeLayout;

    .line 94
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Profile;->mView:Landroid/view/View;

    const v2, 0x7f060641

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lae/gov/mol/fragment/Fragment_Profile;->mRelativeLayoutMobileEdit:Landroid/widget/RelativeLayout;

    .line 96
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Profile;->mView:Landroid/view/View;

    const v2, 0x7f060635

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lae/gov/mol/fragment/Fragment_Profile;->mImageViewProfileImage:Landroid/widget/ImageView;

    .line 97
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Profile;->mImageViewHeaderHome:Landroid/widget/ImageView;

    new-instance v2, Lae/gov/mol/fragment/Fragment_Profile$1;

    invoke-direct {v2, p0}, Lae/gov/mol/fragment/Fragment_Profile$1;-><init>(Lae/gov/mol/fragment/Fragment_Profile;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Profile;->mView:Landroid/view/View;

    const v2, 0x7f060636

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lae/gov/mol/fragment/Fragment_Profile;->mTextViewName:Landroid/widget/TextView;

    .line 107
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Profile;->mView:Landroid/view/View;

    const v2, 0x7f060638

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lae/gov/mol/fragment/Fragment_Profile;->mTextViewCompanyNumber:Landroid/widget/TextView;

    .line 108
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Profile;->mView:Landroid/view/View;

    const v2, 0x7f06063e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lae/gov/mol/fragment/Fragment_Profile;->mEditTextEmailId:Landroid/widget/EditText;

    .line 109
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Profile;->mView:Landroid/view/View;

    const v2, 0x7f060643

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lae/gov/mol/fragment/Fragment_Profile;->mEditTextPhoneNumber:Landroid/widget/EditText;

    .line 110
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Profile;->mView:Landroid/view/View;

    const v2, 0x7f06063f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lae/gov/mol/fragment/Fragment_Profile;->mImageViewEditEmail:Landroid/widget/ImageView;

    .line 111
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Profile;->mView:Landroid/view/View;

    const v2, 0x7f060644

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lae/gov/mol/fragment/Fragment_Profile;->mImageViewEditPhoneNumber:Landroid/widget/ImageView;

    .line 112
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Profile;->mView:Landroid/view/View;

    const v2, 0x7f060647

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lae/gov/mol/fragment/Fragment_Profile;->mButtonSave:Landroid/widget/Button;

    .line 113
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Profile;->mView:Landroid/view/View;

    const v2, 0x7f060648

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lae/gov/mol/fragment/Fragment_Profile;->mButtonCancel:Landroid/widget/Button;

    .line 114
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Profile;->mView:Landroid/view/View;

    const v2, 0x7f060646

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lae/gov/mol/fragment/Fragment_Profile;->mLinearLayout:Landroid/widget/LinearLayout;

    .line 116
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Profile;->mTextViewCompanyNumber:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Profile;->mButtonSave:Landroid/widget/Button;

    new-instance v2, Lae/gov/mol/fragment/Fragment_Profile$2;

    invoke-direct {v2, p0}, Lae/gov/mol/fragment/Fragment_Profile$2;-><init>(Lae/gov/mol/fragment/Fragment_Profile;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Profile;->mButtonCancel:Landroid/widget/Button;

    new-instance v2, Lae/gov/mol/fragment/Fragment_Profile$3;

    invoke-direct {v2, p0}, Lae/gov/mol/fragment/Fragment_Profile$3;-><init>(Lae/gov/mol/fragment/Fragment_Profile;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Profile;->mRelativeLayoutEmailEdit:Landroid/widget/RelativeLayout;

    new-instance v2, Lae/gov/mol/fragment/Fragment_Profile$4;

    invoke-direct {v2, p0}, Lae/gov/mol/fragment/Fragment_Profile$4;-><init>(Lae/gov/mol/fragment/Fragment_Profile;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Profile;->mRelativeLayoutMobileEdit:Landroid/widget/RelativeLayout;

    new-instance v2, Lae/gov/mol/fragment/Fragment_Profile$5;

    invoke-direct {v2, p0}, Lae/gov/mol/fragment/Fragment_Profile$5;-><init>(Lae/gov/mol/fragment/Fragment_Profile;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Profile;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-static {v1}, Lae/gov/mol/MolApplication;->getUserNameProfile(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, "mUserName":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 173
    new-instance v1, Lae/gov/mol/fragment/Fragment_Profile$ProfileProcess;

    iget-object v2, p0, Lae/gov/mol/fragment/Fragment_Profile;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-direct {v1, p0, v2}, Lae/gov/mol/fragment/Fragment_Profile$ProfileProcess;-><init>(Lae/gov/mol/fragment/Fragment_Profile;Landroid/content/Context;)V

    new-array v2, v3, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/Fragment_Profile$ProfileProcess;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 178
    :goto_0
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Profile;->mView:Landroid/view/View;

    return-object v1

    .line 175
    :cond_0
    invoke-direct {p0}, Lae/gov/mol/fragment/Fragment_Profile;->reloadProfileInformation()V

    goto :goto_0
.end method
