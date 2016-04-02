.class public Lae/gov/mol/fragment/Fragment_Home;
.super Lae/gov/mol/helper/CustomFragment;
.source "Fragment_Home.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lae/gov/mol/AnimationLayout$Listener;
.implements Lae/gov/mol/helper/SimpleGestureFilter$SimpleGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/gov/mol/fragment/Fragment_Home$BackProcessProfile;,
        Lae/gov/mol/fragment/Fragment_Home$GalleryPagerAdapter;,
        Lae/gov/mol/fragment/Fragment_Home$LoginBackProcess;
    }
.end annotation


# static fields
.field private static mLayout:Lae/gov/mol/AnimationLayout;


# instance fields
.field public ShouldSlideOpen:Z

.field public alertDialogBuilder:Landroid/app/AlertDialog$Builder;

.field public doubleBackToExitPressedOnce:Z

.field height:I

.field latitude:D

.field longitude:D

.field protected mAnimationIn:Landroid/view/animation/Animation;

.field mCheckBoxShowpassword:Landroid/widget/CheckBox;

.field private mCommonMethods:Lae/gov/mol/helper/CommonMethods;

.field private mDialogFragment_ForgotPassword:Lae/gov/mol/fragment/DialogFragment_ForgotPassword;

.field private mDialogFragment_RegisterNewUser:Lae/gov/mol/fragment/DialogFragment_RegisterNewUser;

.field mEditTextPassword:Landroid/widget/EditText;

.field mEditTextUserName:Landroid/widget/EditText;

.field mGalleryPagerAdapter:Lae/gov/mol/fragment/Fragment_Home$GalleryPagerAdapter;

.field private mImageViewIcon:Landroid/widget/ImageView;

.field mImageViewInstagram:Landroid/widget/ImageView;

.field mImageViewInstagramtop:Landroid/widget/ImageView;

.field private mImageViewLeft:Landroid/widget/ImageView;

.field mImageViewTwitter:Landroid/widget/ImageView;

.field mImageViewTwittertop:Landroid/widget/ImageView;

.field mImageViewYoutube:Landroid/widget/ImageView;

.field mImageViewYoutubetop:Landroid/widget/ImageView;

.field mImageViewfacebook:Landroid/widget/ImageView;

.field mImageViewfacebooktop:Landroid/widget/ImageView;

.field mIndicator:Lae/gov/mol/helper/CirclePageIndicator;

.field private mIntent:Landroid/content/Intent;

.field private mLinearLayoutAboutUs:Landroid/widget/LinearLayout;

.field private mLinearLayoutBusinessServicesNew:Landroid/widget/LinearLayout;

.field private mLinearLayoutCompaniesList:Landroid/widget/LinearLayout;

.field private mLinearLayoutContactUs:Landroid/widget/LinearLayout;

.field private mLinearLayoutEnquiryServicesNew:Landroid/widget/LinearLayout;

.field private mLinearLayoutFeedback:Landroid/widget/LinearLayout;

.field private mLinearLayoutHelp:Landroid/widget/LinearLayout;

.field private mLinearLayoutInquiry:Landroid/widget/LinearLayout;

.field private mLinearLayoutLabourServicesNew:Landroid/widget/LinearLayout;

.field private mLinearLayoutNews:Landroid/widget/LinearLayout;

.field private mLinearLayoutNotificationList:Landroid/widget/LinearLayout;

.field private mLinearLayoutReportViolation:Landroid/widget/LinearLayout;

.field private mLinearLayoutRules:Landroid/widget/LinearLayout;

.field private mLinearLayoutSidebarArb:Landroid/widget/LinearLayout;

.field private mLinearLayoutSidebarEnglish:Landroid/widget/LinearLayout;

.field private mLinearLayout_WelcomeScreen_Company_nofitication:Landroid/widget/LinearLayout;

.field private mLinearLayouteTasheel:Landroid/widget/LinearLayout;

.field private mListViewCompanies:Landroid/widget/ListView;

.field private mLoginBackProcess:Lae/gov/mol/fragment/Fragment_Home$LoginBackProcess;

.field private mLogin_DialogFragment:Lae/gov/mol/fragment/DialogFragment_Login;

.field mNewsVo:Lae/gov/mol/vo/NewsVo;

.field mNewsVoData:Lae/gov/mol/vo/NewsVo;

.field mPersonCompanyListVo:Lae/gov/mol/vo/PersonCompanyListVo;

.field mProfileVo:Lae/gov/mol/vo/ProfileVo;

.field mProgressDialog:Landroid/app/ProgressDialog;

.field private mRelativeLayoutAboutUs:Landroid/widget/RelativeLayout;

.field mRelativeLayoutAboutusTop:Landroid/widget/RelativeLayout;

.field mRelativeLayoutChangeLanguage:Landroid/widget/RelativeLayout;

.field mRelativeLayoutChildLogout:Landroid/widget/RelativeLayout;

.field mRelativeLayoutInspectionComplaint:Landroid/widget/RelativeLayout;

.field mRelativeLayoutInspectionComplaintTop:Landroid/widget/RelativeLayout;

.field mRelativeLayoutLanguage:Landroid/widget/RelativeLayout;

.field mRelativeLayoutLanguageTop:Landroid/widget/RelativeLayout;

.field private mRelativeLayoutLoginButton:Landroid/widget/RelativeLayout;

.field mRelativeLayoutMainLogin:Landroid/widget/RelativeLayout;

.field mRelativeLayoutMainLogout:Landroid/widget/RelativeLayout;

.field mRelativeLayoutNotification:Landroid/widget/RelativeLayout;

.field mRelativeLayoutNotificationTop:Landroid/widget/RelativeLayout;

.field private mRelativeLayoutProfile:Landroid/widget/RelativeLayout;

.field mRelativeLayoutRulesandProcedure:Landroid/widget/RelativeLayout;

.field mRelativeLayoutRulesandProcedureTop:Landroid/widget/RelativeLayout;

.field mRelativeLayoutUserPolicyTop:Landroid/widget/RelativeLayout;

.field private mRelativeLayout_fragment_home_transparent_layout:Landroid/widget/RelativeLayout;

.field protected mSidebar:Landroid/view/View;

.field private mSimpleGestureFilter:Lae/gov/mol/helper/SimpleGestureFilter;

.field mSlidingMenu_ListAdapter:Lae/gov/mol/fragment/SlidingMenu_ListAdapter;

.field mStringNewsid:Ljava/lang/String;

.field mStringUserId:Ljava/lang/String;

.field mTags:Lae/gov/mol/helper/Tags;

.field public mTempVo:Lae/gov/mol/vo/Temperature;

.field mTextViewForgotPassword:Landroid/widget/TextView;

.field private mTextViewLogin:Landroid/widget/TextView;

.field mTextViewLoginNew:Landroid/widget/TextView;

.field mTextViewName:Landroid/widget/TextView;

.field mTextViewRegister:Landroid/widget/TextView;

.field private mTextViewTemprature:Landroid/widget/TextView;

.field private mTextViewUserName:Landroid/widget/TextView;

.field public mTimer:Ljava/util/Timer;

.field mUserVo:Lae/gov/mol/vo/UserVo;

.field mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

.field message:Ljava/lang/String;

.field molFragmentActivity:Lae/gov/mol/MolFragmentActivity;

.field myImageLoader:Lcom/gov/mol/imageloader/MyImageLoader;

.field positionPages:I

.field private view:Landroid/view/View;

.field width:I

.field width60:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 88
    invoke-direct {p0}, Lae/gov/mol/helper/CustomFragment;-><init>()V

    .line 125
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/Fragment_Home;->message:Ljava/lang/String;

    .line 130
    iput-boolean v1, p0, Lae/gov/mol/fragment/Fragment_Home;->doubleBackToExitPressedOnce:Z

    .line 132
    iput v1, p0, Lae/gov/mol/fragment/Fragment_Home;->height:I

    .line 133
    iput v1, p0, Lae/gov/mol/fragment/Fragment_Home;->width:I

    .line 134
    iput v1, p0, Lae/gov/mol/fragment/Fragment_Home;->width60:I

    .line 135
    iput v1, p0, Lae/gov/mol/fragment/Fragment_Home;->positionPages:I

    .line 143
    iput-boolean v1, p0, Lae/gov/mol/fragment/Fragment_Home;->ShouldSlideOpen:Z

    .line 192
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/Fragment_Home;->mStringUserId:Ljava/lang/String;

    .line 196
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/Fragment_Home;->mStringNewsid:Ljava/lang/String;

    .line 88
    return-void
.end method

.method private SliderActivationDeactivationListner(Z)V
    .locals 3
    .param p1, "Activate"    # Z

    .prologue
    const/4 v2, 0x0

    .line 956
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Home;->mRelativeLayout_fragment_home_transparent_layout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 957
    if-eqz p1, :cond_1

    .line 958
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Home;->mRelativeLayout_fragment_home_transparent_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 959
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Home;->mRelativeLayout_fragment_home_transparent_layout:Landroid/widget/RelativeLayout;

    new-instance v1, Lae/gov/mol/fragment/Fragment_Home$27;

    invoke-direct {v1, p0}, Lae/gov/mol/fragment/Fragment_Home$27;-><init>(Lae/gov/mol/fragment/Fragment_Home;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 972
    :cond_0
    :goto_0
    return-void

    .line 967
    :cond_1
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Home;->mRelativeLayout_fragment_home_transparent_layout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 968
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Home;->mRelativeLayout_fragment_home_transparent_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 969
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Home;->mRelativeLayout_fragment_home_transparent_layout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public static ToggleLayout(Z)V
    .locals 4
    .param p0, "Delayed"    # Z

    .prologue
    .line 928
    sget-object v0, Lae/gov/mol/fragment/Fragment_Home;->mLayout:Lae/gov/mol/AnimationLayout;

    if-eqz v0, :cond_0

    .line 929
    if-eqz p0, :cond_1

    .line 930
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lae/gov/mol/fragment/Fragment_Home$26;

    invoke-direct {v1}, Lae/gov/mol/fragment/Fragment_Home$26;-><init>()V

    .line 937
    const-wide/16 v2, 0x1f4

    .line 930
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 943
    :cond_0
    :goto_0
    return-void

    .line 939
    :cond_1
    sget-object v0, Lae/gov/mol/fragment/Fragment_Home;->mLayout:Lae/gov/mol/AnimationLayout;

    invoke-virtual {v0}, Lae/gov/mol/AnimationLayout;->toggleSidebar()V

    .line 940
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Visiblity "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lae/gov/mol/fragment/Fragment_Home;->mLayout:Lae/gov/mol/AnimationLayout;

    invoke-virtual {v1}, Lae/gov/mol/AnimationLayout;->isOpening()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic access$0(Lae/gov/mol/fragment/Fragment_Home;)Lae/gov/mol/fragment/DialogFragment_Login;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Home;->mLogin_DialogFragment:Lae/gov/mol/fragment/DialogFragment_Login;

    return-object v0
.end method

.method static synthetic access$1(Lae/gov/mol/fragment/Fragment_Home;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Home;->mTextViewUserName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2(Lae/gov/mol/fragment/Fragment_Home;)Lae/gov/mol/helper/SimpleGestureFilter;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Home;->mSimpleGestureFilter:Lae/gov/mol/helper/SimpleGestureFilter;

    return-object v0
.end method

.method static synthetic access$3(Lae/gov/mol/fragment/Fragment_Home;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lae/gov/mol/fragment/Fragment_Home;->mIntent:Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$4(Lae/gov/mol/fragment/Fragment_Home;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Home;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$5(Lae/gov/mol/fragment/Fragment_Home;)V
    .locals 0

    .prologue
    .line 844
    invoke-direct {p0}, Lae/gov/mol/fragment/Fragment_Home;->showCompanyList()V

    return-void
.end method

.method static synthetic access$6(Lae/gov/mol/fragment/Fragment_Home;)V
    .locals 0

    .prologue
    .line 831
    invoke-direct {p0}, Lae/gov/mol/fragment/Fragment_Home;->reLogin()V

    return-void
.end method

.method static synthetic access$7()Lae/gov/mol/AnimationLayout;
    .locals 1

    .prologue
    .line 115
    sget-object v0, Lae/gov/mol/fragment/Fragment_Home;->mLayout:Lae/gov/mol/AnimationLayout;

    return-object v0
.end method

.method private changeLanguage()V
    .locals 2

    .prologue
    .line 777
    invoke-static {}, Lae/gov/mol/MolApplication;->getLanguage()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 830
    :goto_0
    return-void

    .line 780
    :pswitch_0
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Home;->molFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    invoke-static {v0}, Lae/gov/mol/MolApplication;->resetAboutUsCache(Landroid/content/Context;)V

    .line 782
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lae/gov/mol/fragment/Fragment_Home$24;

    invoke-direct {v1, p0}, Lae/gov/mol/fragment/Fragment_Home$24;-><init>(Lae/gov/mol/fragment/Fragment_Home;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 809
    :pswitch_1
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Home;->molFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    invoke-static {v0}, Lae/gov/mol/MolApplication;->resetAboutUsCache(Landroid/content/Context;)V

    .line 810
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lae/gov/mol/fragment/Fragment_Home$25;

    invoke-direct {v1, p0}, Lae/gov/mol/fragment/Fragment_Home$25;-><init>(Lae/gov/mol/fragment/Fragment_Home;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 777
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private reLogin()V
    .locals 0

    .prologue
    .line 842
    return-void
.end method

.method private showCompanyList()V
    .locals 4

    .prologue
    .line 846
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Home;->molFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    new-instance v1, Lae/gov/mol/fragment/FragmentCompanyList;

    invoke-direct {v1}, Lae/gov/mol/fragment/FragmentCompanyList;-><init>()V

    const/4 v2, 0x1

    const/16 v3, 0x1001

    invoke-virtual {v0, v1, v2, v3}, Lae/gov/mol/MolFragmentActivity;->replaceFragment(Landroid/support/v4/app/Fragment;ZI)V

    .line 847
    return-void
.end method

.method private validateLoginInput()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 853
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mEditTextUserName:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mEditTextPassword:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 854
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mEditTextUserName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 855
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->molFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    const v2, 0x7f090176

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/Fragment_Home;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 864
    :cond_0
    :goto_0
    return v0

    .line 858
    :cond_1
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mEditTextPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 859
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->molFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    const v2, 0x7f090177

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/Fragment_Home;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 862
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public GetDeviceHeight()V
    .locals 2

    .prologue
    .line 979
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->molFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    invoke-virtual {v1}, Lae/gov/mol/MolFragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 981
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    iput v1, p0, Lae/gov/mol/fragment/Fragment_Home;->width:I

    .line 982
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    iput v1, p0, Lae/gov/mol/fragment/Fragment_Home;->height:I

    .line 983
    iget v1, p0, Lae/gov/mol/fragment/Fragment_Home;->width:I

    mul-int/lit8 v1, v1, 0x55

    div-int/lit8 v1, v1, 0x64

    iput v1, p0, Lae/gov/mol/fragment/Fragment_Home;->width:I

    .line 984
    iget v1, p0, Lae/gov/mol/fragment/Fragment_Home;->width:I

    mul-int/lit8 v1, v1, 0x1e

    div-int/lit8 v1, v1, 0x64

    iput v1, p0, Lae/gov/mol/fragment/Fragment_Home;->height:I

    .line 985
    return-void
.end method

.method public GetDeviceWidth()V
    .locals 2

    .prologue
    .line 989
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->molFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    invoke-virtual {v1}, Lae/gov/mol/MolFragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 991
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    iput v1, p0, Lae/gov/mol/fragment/Fragment_Home;->width60:I

    .line 992
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    iput v1, p0, Lae/gov/mol/fragment/Fragment_Home;->height:I

    .line 993
    iget v1, p0, Lae/gov/mol/fragment/Fragment_Home;->width:I

    mul-int/lit8 v1, v1, 0x28

    div-int/lit8 v1, v1, 0x64

    iput v1, p0, Lae/gov/mol/fragment/Fragment_Home;->width60:I

    .line 994
    iget v1, p0, Lae/gov/mol/fragment/Fragment_Home;->width:I

    mul-int/lit8 v1, v1, 0x1e

    div-int/lit8 v1, v1, 0x64

    iput v1, p0, Lae/gov/mol/fragment/Fragment_Home;->height:I

    .line 995
    return-void
.end method

.method public SetUserLoginStatus()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 565
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->molFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    invoke-static {v1}, Lae/gov/mol/MolApplication;->getUserLoggedin(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 567
    .local v0, "mUserId":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 568
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mTextViewLogin:Landroid/widget/TextView;

    const v2, 0x7f09016d

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/Fragment_Home;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 569
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mTextViewUserName:Landroid/widget/TextView;

    const v2, 0x7f090123

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/Fragment_Home;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 570
    sget-object v1, Lae/gov/mol/MolApplication;->mPersonCompanyList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mSlidingMenu_ListAdapter:Lae/gov/mol/fragment/SlidingMenu_ListAdapter;

    if-eqz v1, :cond_0

    .line 571
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mListViewCompanies:Landroid/widget/ListView;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 572
    sput-object v4, Lae/gov/mol/MolApplication;->mPersonCompanyList:Ljava/util/ArrayList;

    .line 573
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mLinearLayoutCompaniesList:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 574
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mLinearLayoutNotificationList:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 575
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mLinearLayout_WelcomeScreen_Company_nofitication:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 591
    :cond_0
    :goto_0
    return-void

    .line 579
    :cond_1
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mTextViewLogin:Landroid/widget/TextView;

    const v2, 0x7f09016e

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/Fragment_Home;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 580
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->molFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    invoke-static {v1}, Lae/gov/mol/MolApplication;->getTasheelUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 582
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mTextViewUserName:Landroid/widget/TextView;

    iget-object v2, p0, Lae/gov/mol/fragment/Fragment_Home;->molFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    invoke-static {v2}, Lae/gov/mol/MolApplication;->getTasheelUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 584
    sget-object v1, Lae/gov/mol/MolApplication;->mPersonCompanyList:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 585
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->molFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    invoke-static {v1}, Lae/gov/mol/MolApplication;->isLoggedIn(Landroid/content/Context;)Z

    goto :goto_0
.end method

.method public checkBoxPadding()V
    .locals 6

    .prologue
    .line 1382
    invoke-virtual {p0}, Lae/gov/mol/fragment/Fragment_Home;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 1383
    .local v0, "scale":F
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mCheckBoxShowpassword:Landroid/widget/CheckBox;

    iget-object v2, p0, Lae/gov/mol/fragment/Fragment_Home;->mCheckBoxShowpassword:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->getPaddingLeft()I

    move-result v2

    const/high16 v3, 0x41200000    # 10.0f

    mul-float/2addr v3, v0

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v3, v3

    add-int/2addr v2, v3

    .line 1384
    iget-object v3, p0, Lae/gov/mol/fragment/Fragment_Home;->mCheckBoxShowpassword:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->getPaddingTop()I

    move-result v3

    .line 1385
    iget-object v4, p0, Lae/gov/mol/fragment/Fragment_Home;->mCheckBoxShowpassword:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->getPaddingRight()I

    move-result v4

    .line 1386
    iget-object v5, p0, Lae/gov/mol/fragment/Fragment_Home;->mCheckBoxShowpassword:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->getPaddingBottom()I

    move-result v5

    .line 1383
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/CheckBox;->setPadding(IIII)V

    .line 1387
    return-void
.end method

.method public checkLoggedIn()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1366
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->molFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    invoke-static {v1}, Lae/gov/mol/MolApplication;->isLoggedIn(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1367
    const/4 v0, 0x1

    .line 1371
    :goto_0
    return v0

    .line 1369
    :cond_0
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    const v2, 0x7f0900c8

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/Fragment_Home;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lae/gov/mol/helper/CommonMethods;->showToast(Ljava/lang/String;)V

    .line 1370
    invoke-static {v0}, Lae/gov/mol/fragment/Fragment_Home;->ToggleLayout(Z)V

    goto :goto_0
.end method

.method public hideKeybord()V
    .locals 3

    .prologue
    .line 1376
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->molFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lae/gov/mol/MolFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1377
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mEditTextUserName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1378
    return-void
.end method

.method public ismLayoutOpen()Z
    .locals 1

    .prologue
    .line 946
    sget-object v0, Lae/gov/mol/fragment/Fragment_Home;->mLayout:Lae/gov/mol/AnimationLayout;

    if-eqz v0, :cond_0

    .line 947
    sget-object v0, Lae/gov/mol/fragment/Fragment_Home;->mLayout:Lae/gov/mol/AnimationLayout;

    iget-boolean v0, v0, Lae/gov/mol/AnimationLayout;->mOpened:Z

    .line 949
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x2

    const/4 v5, 0x0

    const/16 v3, 0x1001

    const/4 v4, 0x1

    .line 595
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    invoke-virtual {v1}, Lae/gov/mol/webservices/WebServiceResponse;->checkInternetConnectivity()Z

    move-result v1

    if-nez v1, :cond_1

    .line 596
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->molFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    const v2, 0x7f090099

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/Fragment_Home;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 770
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 600
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 655
    :sswitch_1
    invoke-virtual {p0}, Lae/gov/mol/fragment/Fragment_Home;->checkLoggedIn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 656
    sget-object v1, Lae/gov/mol/MolApplication;->mCompanyList:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 657
    invoke-direct {p0}, Lae/gov/mol/fragment/Fragment_Home;->showCompanyList()V

    goto :goto_0

    .line 603
    :sswitch_2
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lae/gov/mol/fragment/Fragment_Home;->molFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    invoke-virtual {v2}, Lae/gov/mol/MolFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mIntent:Landroid/content/Intent;

    .line 604
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/Fragment_Home;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 609
    :sswitch_3
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->molFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    invoke-static {v1}, Lae/gov/mol/helper/CommonMethods;->IsUpcoming(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 610
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->molFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    new-instance v2, Lae/gov/mol/fragment/Fragment_Help;

    invoke-direct {v2}, Lae/gov/mol/fragment/Fragment_Help;-><init>()V

    invoke-virtual {v1, v2, v4, v3}, Lae/gov/mol/MolFragmentActivity;->replaceFragment(Landroid/support/v4/app/Fragment;ZI)V

    goto :goto_0

    .line 614
    :sswitch_4
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->molFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    new-instance v2, Lae/gov/mol/fragment/AboutUs/FragmentNews;

    invoke-direct {v2}, Lae/gov/mol/fragment/AboutUs/FragmentNews;-><init>()V

    invoke-virtual {v1, v2, v4, v3}, Lae/gov/mol/MolFragmentActivity;->replaceFragment(Landroid/support/v4/app/Fragment;ZI)V

    goto :goto_0

    .line 617
    :sswitch_5
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->molFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    new-instance v2, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures;

    invoke-direct {v2}, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures;-><init>()V

    invoke-virtual {v1, v2, v4, v3}, Lae/gov/mol/MolFragmentActivity;->replaceFragment(Landroid/support/v4/app/Fragment;ZI)V

    goto :goto_0

    .line 620
    :sswitch_6
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->molFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    new-instance v2, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Service;

    invoke-direct {v2}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Service;-><init>()V

    invoke-virtual {v1, v2, v4, v3}, Lae/gov/mol/MolFragmentActivity;->replaceFragment(Landroid/support/v4/app/Fragment;ZI)V

    goto :goto_0

    .line 623
    :sswitch_7
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->molFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    invoke-static {v1}, Lae/gov/mol/MolApplication;->isLoggedIn(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 626
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->alertDialogBuilder:Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0900c7

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/Fragment_Home;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 627
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->alertDialogBuilder:Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0900c8

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/Fragment_Home;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 628
    const v2, 0x7f09016d

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/Fragment_Home;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lae/gov/mol/fragment/Fragment_Home$21;

    invoke-direct {v3, p0}, Lae/gov/mol/fragment/Fragment_Home$21;-><init>(Lae/gov/mol/fragment/Fragment_Home;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 632
    const v2, 0x7f090170

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/Fragment_Home;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lae/gov/mol/fragment/Fragment_Home$22;

    invoke-direct {v3, p0}, Lae/gov/mol/fragment/Fragment_Home$22;-><init>(Lae/gov/mol/fragment/Fragment_Home;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 637
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->alertDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 638
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 645
    .end local v0    # "alertDialog":Landroid/app/AlertDialog;
    :sswitch_8
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lae/gov/mol/fragment/Fragment_Home;->molFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    invoke-virtual {v2}, Lae/gov/mol/MolFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mIntent:Landroid/content/Intent;

    .line 646
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/Fragment_Home;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 650
    :sswitch_9
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->molFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    new-instance v2, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;

    invoke-direct {v2}, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;-><init>()V

    invoke-virtual {v1, v2, v4, v3}, Lae/gov/mol/MolFragmentActivity;->replaceFragment(Landroid/support/v4/app/Fragment;ZI)V

    goto/16 :goto_0

    .line 659
    :cond_2
    new-instance v1, Lae/gov/mol/helper/CustomFragment$getCompanyList;

    iget-object v2, p0, Lae/gov/mol/fragment/Fragment_Home;->molFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    invoke-static {v2}, Lae/gov/mol/MolApplication;->getUserLoggedin(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/Fragment_Home;->molFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    new-instance v4, Lae/gov/mol/fragment/Fragment_Home$23;

    invoke-direct {v4, p0}, Lae/gov/mol/fragment/Fragment_Home$23;-><init>(Lae/gov/mol/fragment/Fragment_Home;)V

    invoke-direct {v1, p0, v2, v3, v4}, Lae/gov/mol/helper/CustomFragment$getCompanyList;-><init>(Lae/gov/mol/helper/CustomFragment;Ljava/lang/String;Lae/gov/mol/helper/CustomFragmentActivity;Lae/gov/mol/helper/CustomFragment$CompanyWebserviceStatus;)V

    new-array v2, v5, [Ljava/lang/Void;

    .line 668
    invoke-virtual {v1, v2}, Lae/gov/mol/helper/CustomFragment$getCompanyList;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 676
    :sswitch_a
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->molFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    new-instance v2, Lae/gov/mol/fragment/LabourServices/FragmentLabourService;

    invoke-direct {v2}, Lae/gov/mol/fragment/LabourServices/FragmentLabourService;-><init>()V

    invoke-virtual {v1, v2, v4, v3}, Lae/gov/mol/MolFragmentActivity;->replaceFragment(Landroid/support/v4/app/Fragment;ZI)V

    goto/16 :goto_0

    .line 681
    :sswitch_b
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->molFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    new-instance v2, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Service;

    invoke-direct {v2}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Service;-><init>()V

    invoke-virtual {v1, v2, v4, v3}, Lae/gov/mol/MolFragmentActivity;->replaceFragment(Landroid/support/v4/app/Fragment;ZI)V

    goto/16 :goto_0

    .line 685
    :sswitch_c
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->molFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    new-instance v2, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures;

    invoke-direct {v2}, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures;-><init>()V

    invoke-virtual {v1, v2, v4, v3}, Lae/gov/mol/MolFragmentActivity;->replaceFragment(Landroid/support/v4/app/Fragment;ZI)V

    goto/16 :goto_0

    .line 690
    :sswitch_d
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->molFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    new-instance v2, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures;

    invoke-direct {v2}, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures;-><init>()V

    invoke-virtual {v1, v2, v4, v3}, Lae/gov/mol/MolFragmentActivity;->replaceFragment(Landroid/support/v4/app/Fragment;ZI)V

    goto/16 :goto_0

    .line 724
    :sswitch_e
    invoke-direct {p0}, Lae/gov/mol/fragment/Fragment_Home;->validateLoginInput()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 726
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mLoginBackProcess:Lae/gov/mol/fragment/Fragment_Home$LoginBackProcess;

    if-nez v1, :cond_3

    .line 727
    invoke-virtual {p0}, Lae/gov/mol/fragment/Fragment_Home;->hideKeybord()V

    .line 728
    new-instance v1, Lae/gov/mol/fragment/Fragment_Home$LoginBackProcess;

    invoke-direct {v1, p0}, Lae/gov/mol/fragment/Fragment_Home$LoginBackProcess;-><init>(Lae/gov/mol/fragment/Fragment_Home;)V

    iput-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mLoginBackProcess:Lae/gov/mol/fragment/Fragment_Home$LoginBackProcess;

    .line 729
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mLoginBackProcess:Lae/gov/mol/fragment/Fragment_Home$LoginBackProcess;

    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p0, Lae/gov/mol/fragment/Fragment_Home;->mEditTextUserName:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v3, p0, Lae/gov/mol/fragment/Fragment_Home;->mEditTextPassword:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/Fragment_Home$LoginBackProcess;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 731
    :cond_3
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mLoginBackProcess:Lae/gov/mol/fragment/Fragment_Home$LoginBackProcess;

    iget-boolean v1, v1, Lae/gov/mol/fragment/Fragment_Home$LoginBackProcess;->isRunning:Z

    if-nez v1, :cond_0

    .line 732
    new-instance v1, Lae/gov/mol/fragment/Fragment_Home$LoginBackProcess;

    invoke-direct {v1, p0}, Lae/gov/mol/fragment/Fragment_Home$LoginBackProcess;-><init>(Lae/gov/mol/fragment/Fragment_Home;)V

    iput-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mLoginBackProcess:Lae/gov/mol/fragment/Fragment_Home$LoginBackProcess;

    .line 733
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mLoginBackProcess:Lae/gov/mol/fragment/Fragment_Home$LoginBackProcess;

    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p0, Lae/gov/mol/fragment/Fragment_Home;->mEditTextUserName:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v3, p0, Lae/gov/mol/fragment/Fragment_Home;->mEditTextPassword:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/Fragment_Home$LoginBackProcess;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 742
    :sswitch_f
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mDialogFragment_ForgotPassword:Lae/gov/mol/fragment/DialogFragment_ForgotPassword;

    invoke-virtual {v1, v2, v5}, Lae/gov/mol/fragment/DialogFragment_ForgotPassword;->showDialog(IZ)V

    goto/16 :goto_0

    .line 748
    :sswitch_10
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mDialogFragment_RegisterNewUser:Lae/gov/mol/fragment/DialogFragment_RegisterNewUser;

    invoke-virtual {v1, v2, v5}, Lae/gov/mol/fragment/DialogFragment_RegisterNewUser;->showDialog(IZ)V

    goto/16 :goto_0

    .line 753
    :sswitch_11
    invoke-direct {p0}, Lae/gov/mol/fragment/Fragment_Home;->changeLanguage()V

    goto/16 :goto_0

    .line 757
    :sswitch_12
    invoke-direct {p0}, Lae/gov/mol/fragment/Fragment_Home;->changeLanguage()V

    goto/16 :goto_0

    .line 762
    :sswitch_13
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->molFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    invoke-static {v1}, Lae/gov/mol/MolApplication;->Logout(Landroid/content/Context;)V

    .line 763
    invoke-virtual {p0, v5}, Lae/gov/mol/fragment/Fragment_Home;->updateUserLoggedInStatus(Z)V

    goto/16 :goto_0

    .line 600
    :sswitch_data_0
    .sparse-switch
        0x7f060373 -> :sswitch_1
        0x7f060376 -> :sswitch_a
        0x7f060379 -> :sswitch_b
        0x7f06037c -> :sswitch_8
        0x7f06037f -> :sswitch_9
        0x7f060382 -> :sswitch_2
        0x7f060386 -> :sswitch_4
        0x7f060388 -> :sswitch_0
        0x7f06038a -> :sswitch_5
        0x7f06038e -> :sswitch_3
        0x7f060390 -> :sswitch_6
        0x7f060392 -> :sswitch_7
        0x7f06070f -> :sswitch_d
        0x7f060712 -> :sswitch_11
        0x7f060718 -> :sswitch_e
        0x7f060719 -> :sswitch_f
        0x7f06071a -> :sswitch_10
        0x7f06072c -> :sswitch_c
        0x7f06072d -> :sswitch_12
        0x7f06072e -> :sswitch_13
    .end sparse-switch
.end method

.method public onContentTouchedWhenOpening()Z
    .locals 1

    .prologue
    .line 901
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 204
    invoke-super {p0, p1}, Lae/gov/mol/helper/CustomFragment;->onCreate(Landroid/os/Bundle;)V

    .line 205
    invoke-virtual {p0}, Lae/gov/mol/fragment/Fragment_Home;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lae/gov/mol/MolFragmentActivity;

    iput-object v0, p0, Lae/gov/mol/fragment/Fragment_Home;->molFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    .line 206
    new-instance v0, Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->molFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    invoke-direct {v0, v1}, Lae/gov/mol/helper/CommonMethods;-><init>(Lae/gov/mol/helper/CustomFragmentActivity;)V

    iput-object v0, p0, Lae/gov/mol/fragment/Fragment_Home;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    .line 207
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->molFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lae/gov/mol/fragment/Fragment_Home;->alertDialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 208
    new-instance v0, Lae/gov/mol/vo/PersonCompanyListVo;

    invoke-direct {v0}, Lae/gov/mol/vo/PersonCompanyListVo;-><init>()V

    iput-object v0, p0, Lae/gov/mol/fragment/Fragment_Home;->mPersonCompanyListVo:Lae/gov/mol/vo/PersonCompanyListVo;

    .line 209
    new-instance v0, Lae/gov/mol/webservices/WebServiceResponse;

    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->molFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    invoke-direct {v0, v1}, Lae/gov/mol/webservices/WebServiceResponse;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lae/gov/mol/fragment/Fragment_Home;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    .line 210
    new-instance v0, Lae/gov/mol/vo/ProfileVo;

    invoke-direct {v0}, Lae/gov/mol/vo/ProfileVo;-><init>()V

    iput-object v0, p0, Lae/gov/mol/fragment/Fragment_Home;->mProfileVo:Lae/gov/mol/vo/ProfileVo;

    .line 211
    new-instance v0, Lae/gov/mol/vo/NewsVo;

    invoke-direct {v0}, Lae/gov/mol/vo/NewsVo;-><init>()V

    iput-object v0, p0, Lae/gov/mol/fragment/Fragment_Home;->mNewsVo:Lae/gov/mol/vo/NewsVo;

    .line 212
    new-instance v0, Lae/gov/mol/helper/Tags;

    invoke-direct {v0}, Lae/gov/mol/helper/Tags;-><init>()V

    iput-object v0, p0, Lae/gov/mol/fragment/Fragment_Home;->mTags:Lae/gov/mol/helper/Tags;

    .line 213
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedinstance"    # Landroid/os/Bundle;

    .prologue
    const v6, 0x7f09008a

    const/16 v5, 0x8

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 218
    const v1, 0x7f03007c

    invoke-virtual {p1, v1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->view:Landroid/view/View;

    .line 220
    invoke-virtual {p0}, Lae/gov/mol/fragment/Fragment_Home;->GetDeviceHeight()V

    .line 221
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->view:Landroid/view/View;

    const v2, 0x7f060722

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mRelativeLayoutProfile:Landroid/widget/RelativeLayout;

    .line 222
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->view:Landroid/view/View;

    const v2, 0x7f060726

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mRelativeLayoutAboutUs:Landroid/widget/RelativeLayout;

    .line 223
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->view:Landroid/view/View;

    const v2, 0x7f060739

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mLinearLayoutCompaniesList:Landroid/widget/LinearLayout;

    .line 224
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->view:Landroid/view/View;

    const v2, 0x7f06073c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mLinearLayoutNotificationList:Landroid/widget/LinearLayout;

    .line 225
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->view:Landroid/view/View;

    const v2, 0x7f06073b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mListViewCompanies:Landroid/widget/ListView;

    .line 226
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->view:Landroid/view/View;

    const v2, 0x7f060742

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mRelativeLayoutLoginButton:Landroid/widget/RelativeLayout;

    .line 227
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->view:Landroid/view/View;

    const v2, 0x7f060367

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mImageViewLeft:Landroid/widget/ImageView;

    .line 228
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mImageViewLeft:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 229
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->view:Landroid/view/View;

    const v2, 0x7f060743

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mTextViewLogin:Landroid/widget/TextView;

    .line 230
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->view:Landroid/view/View;

    const v2, 0x7f060738

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mLinearLayout_WelcomeScreen_Company_nofitication:Landroid/widget/LinearLayout;

    .line 232
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->view:Landroid/view/View;

    const v2, 0x7f060720

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mTextViewUserName:Landroid/widget/TextView;

    .line 233
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->view:Landroid/view/View;

    const v2, 0x7f06036c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mTextViewTemprature:Landroid/widget/TextView;

    .line 234
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->view:Landroid/view/View;

    const v2, 0x7f06036d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mImageViewIcon:Landroid/widget/ImageView;

    .line 235
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->view:Landroid/view/View;

    const v2, 0x7f060592

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mCheckBoxShowpassword:Landroid/widget/CheckBox;

    .line 236
    invoke-virtual {p0}, Lae/gov/mol/fragment/Fragment_Home;->checkBoxPadding()V

    .line 237
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mTextViewTemprature:Landroid/widget/TextView;

    iget-object v2, p0, Lae/gov/mol/fragment/Fragment_Home;->molFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    invoke-static {v2}, Lae/gov/mol/MolApplication;->getTemperature(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Get Temp ICon"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lae/gov/mol/fragment/Fragment_Home;->molFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    invoke-static {v2}, Lae/gov/mol/MolApplication;->getTemperatureIcon(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    .line 240
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->molFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    invoke-static {v1, v4, v3}, Lae/gov/mol/fragment/DialogFragment_Login;->newInstance(Lae/gov/mol/helper/CustomFragmentActivity;IZ)Lae/gov/mol/fragment/DialogFragment_Login;

    move-result-object v1

    iput-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mLogin_DialogFragment:Lae/gov/mol/fragment/DialogFragment_Login;

    .line 242
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->molFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    invoke-static {v1, v4, v3}, Lae/gov/mol/fragment/DialogFragment_ForgotPassword;->newInstance(Lae/gov/mol/helper/CustomFragmentActivity;IZ)Lae/gov/mol/fragment/DialogFragment_ForgotPassword;

    move-result-object v1

    iput-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mDialogFragment_ForgotPassword:Lae/gov/mol/fragment/DialogFragment_ForgotPassword;

    .line 244
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->molFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    invoke-static {v1, v4, v3}, Lae/gov/mol/fragment/DialogFragment_RegisterNewUser;->newInstance(Lae/gov/mol/helper/CustomFragmentActivity;IZ)Lae/gov/mol/fragment/DialogFragment_RegisterNewUser;

    move-result-object v1

    iput-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mDialogFragment_RegisterNewUser:Lae/gov/mol/fragment/DialogFragment_RegisterNewUser;

    .line 246
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->view:Landroid/view/View;

    const v2, 0x7f060394

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mRelativeLayout_fragment_home_transparent_layout:Landroid/widget/RelativeLayout;

    .line 248
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mLinearLayout_WelcomeScreen_Company_nofitication:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 249
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mLinearLayoutNotificationList:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 251
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mRelativeLayoutLoginButton:Landroid/widget/RelativeLayout;

    new-instance v2, Lae/gov/mol/fragment/Fragment_Home$1;

    invoke-direct {v2, p0}, Lae/gov/mol/fragment/Fragment_Home$1;-><init>(Lae/gov/mol/fragment/Fragment_Home;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 264
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mCheckBoxShowpassword:Landroid/widget/CheckBox;

    new-instance v2, Lae/gov/mol/fragment/Fragment_Home$2;

    invoke-direct {v2, p0}, Lae/gov/mol/fragment/Fragment_Home$2;-><init>(Lae/gov/mol/fragment/Fragment_Home;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 276
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mImageViewLeft:Landroid/widget/ImageView;

    new-instance v2, Lae/gov/mol/fragment/Fragment_Home$3;

    invoke-direct {v2, p0}, Lae/gov/mol/fragment/Fragment_Home$3;-><init>(Lae/gov/mol/fragment/Fragment_Home;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->view:Landroid/view/View;

    const v2, 0x7f060364

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mSidebar:Landroid/view/View;

    .line 287
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mSidebar:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, p0, Lae/gov/mol/fragment/Fragment_Home;->width:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 288
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->view:Landroid/view/View;

    const v2, 0x7f060363

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lae/gov/mol/AnimationLayout;

    sput-object v1, Lae/gov/mol/fragment/Fragment_Home;->mLayout:Lae/gov/mol/AnimationLayout;

    .line 289
    sget-object v1, Lae/gov/mol/fragment/Fragment_Home;->mLayout:Lae/gov/mol/AnimationLayout;

    invoke-virtual {v1, p0}, Lae/gov/mol/AnimationLayout;->setListener(Lae/gov/mol/AnimationLayout$Listener;)V

    .line 292
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->molFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    invoke-static {v1}, Lae/gov/mol/MolApplication;->getUserLoggedin(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 293
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mTextViewUserName:Landroid/widget/TextView;

    iget-object v2, p0, Lae/gov/mol/fragment/Fragment_Home;->molFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    invoke-static {v2}, Lae/gov/mol/MolApplication;->getTasheelUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    :goto_0
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mRelativeLayoutProfile:Landroid/widget/RelativeLayout;

    new-instance v2, Lae/gov/mol/fragment/Fragment_Home$4;

    invoke-direct {v2, p0}, Lae/gov/mol/fragment/Fragment_Home$4;-><init>(Lae/gov/mol/fragment/Fragment_Home;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 310
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->view:Landroid/view/View;

    const v2, 0x7f06037c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mLinearLayoutAboutUs:Landroid/widget/LinearLayout;

    .line 311
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->view:Landroid/view/View;

    const v2, 0x7f06037f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mLinearLayoutReportViolation:Landroid/widget/LinearLayout;

    .line 312
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->view:Landroid/view/View;

    const v2, 0x7f060382

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mLinearLayoutContactUs:Landroid/widget/LinearLayout;

    .line 313
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->view:Landroid/view/View;

    const v2, 0x7f060386

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mLinearLayoutNews:Landroid/widget/LinearLayout;

    .line 314
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->view:Landroid/view/View;

    const v2, 0x7f06038e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mLinearLayoutHelp:Landroid/widget/LinearLayout;

    .line 315
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->view:Landroid/view/View;

    const v2, 0x7f060388

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mLinearLayoutFeedback:Landroid/widget/LinearLayout;

    .line 316
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->view:Landroid/view/View;

    const v2, 0x7f06038a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mLinearLayoutRules:Landroid/widget/LinearLayout;

    .line 317
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->view:Landroid/view/View;

    const v2, 0x7f060390

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mLinearLayoutInquiry:Landroid/widget/LinearLayout;

    .line 318
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->view:Landroid/view/View;

    const v2, 0x7f060392

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mLinearLayouteTasheel:Landroid/widget/LinearLayout;

    .line 320
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->view:Landroid/view/View;

    const v2, 0x7f060373

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mLinearLayoutBusinessServicesNew:Landroid/widget/LinearLayout;

    .line 321
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->view:Landroid/view/View;

    const v2, 0x7f060376

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mLinearLayoutLabourServicesNew:Landroid/widget/LinearLayout;

    .line 322
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->view:Landroid/view/View;

    const v2, 0x7f060379

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mLinearLayoutEnquiryServicesNew:Landroid/widget/LinearLayout;

    .line 323
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->view:Landroid/view/View;

    const v2, 0x7f060716

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mEditTextUserName:Landroid/widget/EditText;

    .line 324
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->view:Landroid/view/View;

    const v2, 0x7f060717

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mEditTextPassword:Landroid/widget/EditText;

    .line 326
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->view:Landroid/view/View;

    const v2, 0x7f060718

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mTextViewLoginNew:Landroid/widget/TextView;

    .line 327
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->view:Landroid/view/View;

    const v2, 0x7f060719

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mTextViewForgotPassword:Landroid/widget/TextView;

    .line 328
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->view:Landroid/view/View;

    const v2, 0x7f06071a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mTextViewRegister:Landroid/widget/TextView;

    .line 332
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->view:Landroid/view/View;

    const v2, 0x7f06072d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mRelativeLayoutLanguage:Landroid/widget/RelativeLayout;

    .line 333
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->view:Landroid/view/View;

    const v2, 0x7f060712

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mRelativeLayoutLanguageTop:Landroid/widget/RelativeLayout;

    .line 334
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->view:Landroid/view/View;

    const v2, 0x7f06072e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mRelativeLayoutChildLogout:Landroid/widget/RelativeLayout;

    .line 336
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->view:Landroid/view/View;

    const v2, 0x7f06071f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mRelativeLayoutMainLogin:Landroid/widget/RelativeLayout;

    .line 337
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->view:Landroid/view/View;

    const v2, 0x7f060700

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mRelativeLayoutMainLogout:Landroid/widget/RelativeLayout;

    .line 338
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->view:Landroid/view/View;

    const v2, 0x7f06072c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mRelativeLayoutRulesandProcedure:Landroid/widget/RelativeLayout;

    .line 339
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->view:Landroid/view/View;

    const v2, 0x7f06070f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mRelativeLayoutRulesandProcedureTop:Landroid/widget/RelativeLayout;

    .line 346
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->view:Landroid/view/View;

    const v2, 0x7f060703

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mRelativeLayoutAboutusTop:Landroid/widget/RelativeLayout;

    .line 347
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->view:Landroid/view/View;

    const v2, 0x7f060707

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mRelativeLayoutNotificationTop:Landroid/widget/RelativeLayout;

    .line 348
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->view:Landroid/view/View;

    const v2, 0x7f06070b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mRelativeLayoutUserPolicyTop:Landroid/widget/RelativeLayout;

    .line 349
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->view:Landroid/view/View;

    const v2, 0x7f060727

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mRelativeLayoutNotification:Landroid/widget/RelativeLayout;

    .line 350
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->view:Landroid/view/View;

    const v2, 0x7f060731

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mImageViewfacebook:Landroid/widget/ImageView;

    .line 351
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->view:Landroid/view/View;

    const v2, 0x7f060732

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mImageViewInstagram:Landroid/widget/ImageView;

    .line 352
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->view:Landroid/view/View;

    const v2, 0x7f060733

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mImageViewTwitter:Landroid/widget/ImageView;

    .line 353
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->view:Landroid/view/View;

    const v2, 0x7f060734

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mImageViewYoutube:Landroid/widget/ImageView;

    .line 355
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->view:Landroid/view/View;

    const v2, 0x7f06071b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mImageViewfacebooktop:Landroid/widget/ImageView;

    .line 356
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->view:Landroid/view/View;

    const v2, 0x7f06071c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mImageViewInstagramtop:Landroid/widget/ImageView;

    .line 357
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->view:Landroid/view/View;

    const v2, 0x7f06071d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mImageViewTwittertop:Landroid/widget/ImageView;

    .line 358
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->view:Landroid/view/View;

    const v2, 0x7f06071e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mImageViewYoutubetop:Landroid/widget/ImageView;

    .line 360
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mLinearLayoutAboutUs:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 361
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mLinearLayoutContactUs:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 362
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mLinearLayoutFeedback:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 363
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mLinearLayoutHelp:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 364
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mLinearLayoutNews:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 365
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mLinearLayoutRules:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 366
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mLinearLayoutInquiry:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 367
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mLinearLayouteTasheel:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 369
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mTextViewLoginNew:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 370
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mTextViewForgotPassword:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 371
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mTextViewRegister:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 372
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mRelativeLayoutLanguage:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 373
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mRelativeLayoutLanguageTop:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 374
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mRelativeLayoutChildLogout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 377
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mLinearLayoutBusinessServicesNew:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 378
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mLinearLayoutLabourServicesNew:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 379
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mLinearLayoutEnquiryServicesNew:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 380
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mRelativeLayoutRulesandProcedure:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 381
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mRelativeLayoutRulesandProcedureTop:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 383
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mLinearLayoutReportViolation:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 393
    invoke-virtual {p0}, Lae/gov/mol/fragment/Fragment_Home;->SetUserLoginStatus()V

    .line 394
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mListViewCompanies:Landroid/widget/ListView;

    new-instance v2, Lae/gov/mol/fragment/Fragment_Home$5;

    invoke-direct {v2, p0}, Lae/gov/mol/fragment/Fragment_Home$5;-><init>(Lae/gov/mol/fragment/Fragment_Home;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 407
    invoke-virtual {p0}, Lae/gov/mol/fragment/Fragment_Home;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 408
    .local v0, "mBundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 409
    invoke-virtual {p0, v6}, Lae/gov/mol/fragment/Fragment_Home;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lae/gov/mol/fragment/Fragment_Home;->ShouldSlideOpen:Z

    .line 410
    invoke-virtual {p0, v6}, Lae/gov/mol/fragment/Fragment_Home;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 413
    :cond_0
    new-instance v1, Lae/gov/mol/helper/SimpleGestureFilter;

    iget-object v2, p0, Lae/gov/mol/fragment/Fragment_Home;->molFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    invoke-direct {v1, v2, p0}, Lae/gov/mol/helper/SimpleGestureFilter;-><init>(Landroid/app/Activity;Lae/gov/mol/helper/SimpleGestureFilter$SimpleGestureListener;)V

    iput-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mSimpleGestureFilter:Lae/gov/mol/helper/SimpleGestureFilter;

    .line 415
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mRelativeLayout_fragment_home_transparent_layout:Landroid/widget/RelativeLayout;

    new-instance v2, Lae/gov/mol/fragment/Fragment_Home$6;

    invoke-direct {v2, p0}, Lae/gov/mol/fragment/Fragment_Home$6;-><init>(Lae/gov/mol/fragment/Fragment_Home;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 424
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mRelativeLayoutAboutUs:Landroid/widget/RelativeLayout;

    new-instance v2, Lae/gov/mol/fragment/Fragment_Home$7;

    invoke-direct {v2, p0}, Lae/gov/mol/fragment/Fragment_Home$7;-><init>(Lae/gov/mol/fragment/Fragment_Home;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 433
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mRelativeLayoutAboutusTop:Landroid/widget/RelativeLayout;

    new-instance v2, Lae/gov/mol/fragment/Fragment_Home$8;

    invoke-direct {v2, p0}, Lae/gov/mol/fragment/Fragment_Home$8;-><init>(Lae/gov/mol/fragment/Fragment_Home;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 441
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mRelativeLayoutNotificationTop:Landroid/widget/RelativeLayout;

    new-instance v2, Lae/gov/mol/fragment/Fragment_Home$9;

    invoke-direct {v2, p0}, Lae/gov/mol/fragment/Fragment_Home$9;-><init>(Lae/gov/mol/fragment/Fragment_Home;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 450
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mRelativeLayoutUserPolicyTop:Landroid/widget/RelativeLayout;

    new-instance v2, Lae/gov/mol/fragment/Fragment_Home$10;

    invoke-direct {v2, p0}, Lae/gov/mol/fragment/Fragment_Home$10;-><init>(Lae/gov/mol/fragment/Fragment_Home;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 457
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mRelativeLayoutNotification:Landroid/widget/RelativeLayout;

    new-instance v2, Lae/gov/mol/fragment/Fragment_Home$11;

    invoke-direct {v2, p0}, Lae/gov/mol/fragment/Fragment_Home$11;-><init>(Lae/gov/mol/fragment/Fragment_Home;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 466
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mImageViewfacebook:Landroid/widget/ImageView;

    new-instance v2, Lae/gov/mol/fragment/Fragment_Home$12;

    invoke-direct {v2, p0}, Lae/gov/mol/fragment/Fragment_Home$12;-><init>(Lae/gov/mol/fragment/Fragment_Home;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 476
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mImageViewInstagram:Landroid/widget/ImageView;

    new-instance v2, Lae/gov/mol/fragment/Fragment_Home$13;

    invoke-direct {v2, p0}, Lae/gov/mol/fragment/Fragment_Home$13;-><init>(Lae/gov/mol/fragment/Fragment_Home;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 486
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mImageViewTwitter:Landroid/widget/ImageView;

    new-instance v2, Lae/gov/mol/fragment/Fragment_Home$14;

    invoke-direct {v2, p0}, Lae/gov/mol/fragment/Fragment_Home$14;-><init>(Lae/gov/mol/fragment/Fragment_Home;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 496
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mImageViewYoutube:Landroid/widget/ImageView;

    new-instance v2, Lae/gov/mol/fragment/Fragment_Home$15;

    invoke-direct {v2, p0}, Lae/gov/mol/fragment/Fragment_Home$15;-><init>(Lae/gov/mol/fragment/Fragment_Home;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 505
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mImageViewfacebooktop:Landroid/widget/ImageView;

    new-instance v2, Lae/gov/mol/fragment/Fragment_Home$16;

    invoke-direct {v2, p0}, Lae/gov/mol/fragment/Fragment_Home$16;-><init>(Lae/gov/mol/fragment/Fragment_Home;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 513
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mImageViewInstagramtop:Landroid/widget/ImageView;

    new-instance v2, Lae/gov/mol/fragment/Fragment_Home$17;

    invoke-direct {v2, p0}, Lae/gov/mol/fragment/Fragment_Home$17;-><init>(Lae/gov/mol/fragment/Fragment_Home;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 521
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mImageViewTwittertop:Landroid/widget/ImageView;

    new-instance v2, Lae/gov/mol/fragment/Fragment_Home$18;

    invoke-direct {v2, p0}, Lae/gov/mol/fragment/Fragment_Home$18;-><init>(Lae/gov/mol/fragment/Fragment_Home;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 529
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mImageViewYoutubetop:Landroid/widget/ImageView;

    new-instance v2, Lae/gov/mol/fragment/Fragment_Home$19;

    invoke-direct {v2, p0}, Lae/gov/mol/fragment/Fragment_Home$19;-><init>(Lae/gov/mol/fragment/Fragment_Home;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 541
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->view:Landroid/view/View;

    new-instance v2, Lae/gov/mol/fragment/Fragment_Home$20;

    invoke-direct {v2, p0}, Lae/gov/mol/fragment/Fragment_Home$20;-><init>(Lae/gov/mol/fragment/Fragment_Home;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 550
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->molFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    invoke-static {v1}, Lae/gov/mol/MolApplication;->isLoggedIn(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/Fragment_Home;->updateUserLoggedInStatus(Z)V

    .line 552
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->view:Landroid/view/View;

    return-object v1

    .line 295
    .end local v0    # "mBundle":Landroid/os/Bundle;
    :cond_1
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mTextViewUserName:Landroid/widget/TextView;

    const v2, 0x7f090123

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/Fragment_Home;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 1360
    invoke-super {p0}, Lae/gov/mol/helper/CustomFragment;->onDestroyView()V

    .line 1361
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Home;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 1362
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Home;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1364
    :cond_0
    return-void
.end method

.method public onDoubleTap()V
    .locals 0

    .prologue
    .line 1055
    return-void
.end method

.method public onLanguageChange(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 869
    invoke-static {}, Lae/gov/mol/MolApplication;->getLanguage()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 885
    :goto_0
    return-void

    .line 871
    :pswitch_0
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Home;->molFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    const-string v1, "ar"

    invoke-static {v0, v1}, Lae/gov/mol/MolApplication;->SetLocale(Landroid/content/Context;Ljava/lang/String;)V

    .line 872
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Home;->mLinearLayoutSidebarArb:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 873
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Home;->mLinearLayoutSidebarEnglish:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 874
    invoke-virtual {p0}, Lae/gov/mol/fragment/Fragment_Home;->SetUserLoginStatus()V

    goto :goto_0

    .line 877
    :pswitch_1
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Home;->molFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    const-string v1, "en"

    invoke-static {v0, v1}, Lae/gov/mol/MolApplication;->SetLocale(Landroid/content/Context;Ljava/lang/String;)V

    .line 878
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Home;->mLinearLayoutSidebarArb:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 879
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Home;->mLinearLayoutSidebarEnglish:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 880
    invoke-virtual {p0}, Lae/gov/mol/fragment/Fragment_Home;->SetUserLoginStatus()V

    goto :goto_0

    .line 869
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 907
    sget-object v0, Lae/gov/mol/MolApplication;->mPersonCompanyList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 908
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Home;->mListViewCompanies:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    sget-object v0, Lae/gov/mol/MolApplication;->mPersonCompanyList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 909
    new-instance v0, Lae/gov/mol/fragment/SlidingMenu_ListAdapter;

    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->molFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    sget-object v2, Lae/gov/mol/MolApplication;->mPersonCompanyList:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lae/gov/mol/fragment/SlidingMenu_ListAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lae/gov/mol/fragment/Fragment_Home;->mSlidingMenu_ListAdapter:Lae/gov/mol/fragment/SlidingMenu_ListAdapter;

    .line 910
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Home;->mListViewCompanies:Landroid/widget/ListView;

    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mSlidingMenu_ListAdapter:Lae/gov/mol/fragment/SlidingMenu_ListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 911
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Home;->mLinearLayout_WelcomeScreen_Company_nofitication:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 912
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Home;->mLinearLayoutCompaniesList:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 915
    :cond_0
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Home;->mTextViewTemprature:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 916
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Home;->mTextViewTemprature:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->molFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    invoke-static {v1}, Lae/gov/mol/MolApplication;->getTemperature(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 918
    :cond_1
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Home;->mImageViewIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 919
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Home;->mImageViewIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lae/gov/mol/fragment/Fragment_Home;->setImageIcon(Landroid/widget/ImageView;)V

    .line 924
    :cond_2
    invoke-super {p0}, Lae/gov/mol/helper/CustomFragment;->onResume()V

    .line 925
    return-void
.end method

.method public onSidebarClosed()V
    .locals 1

    .prologue
    .line 894
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lae/gov/mol/fragment/Fragment_Home;->SliderActivationDeactivationListner(Z)V

    .line 895
    invoke-virtual {p0}, Lae/gov/mol/fragment/Fragment_Home;->hideKeybord()V

    .line 896
    return-void
.end method

.method public onSidebarOpened()V
    .locals 1

    .prologue
    .line 889
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lae/gov/mol/fragment/Fragment_Home;->SliderActivationDeactivationListner(Z)V

    .line 890
    return-void
.end method

.method public onSwipe(I)V
    .locals 2
    .param p1, "direction"    # I

    .prologue
    const/4 v1, 0x0

    .line 1040
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 1041
    const-string v0, "SWIPE_LEFT"

    invoke-static {v0}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    .line 1042
    invoke-virtual {p0}, Lae/gov/mol/fragment/Fragment_Home;->ismLayoutOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1043
    invoke-static {v1}, Lae/gov/mol/fragment/Fragment_Home;->ToggleLayout(Z)V

    .line 1050
    :cond_0
    :goto_0
    return-void

    .line 1045
    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 1046
    invoke-virtual {p0}, Lae/gov/mol/fragment/Fragment_Home;->ismLayoutOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1047
    invoke-static {v1}, Lae/gov/mol/fragment/Fragment_Home;->ToggleLayout(Z)V

    goto :goto_0
.end method

.method public onTap()V
    .locals 1

    .prologue
    .line 1059
    invoke-virtual {p0}, Lae/gov/mol/fragment/Fragment_Home;->ismLayoutOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1060
    const/4 v0, 0x0

    invoke-static {v0}, Lae/gov/mol/fragment/Fragment_Home;->ToggleLayout(Z)V

    .line 1062
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 558
    invoke-super {p0, p1, p2}, Lae/gov/mol/helper/CustomFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 559
    return-void
.end method

.method public setImageIcon(Landroid/widget/ImageView;)V
    .locals 4
    .param p1, "mImageView"    # Landroid/widget/ImageView;

    .prologue
    .line 999
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->molFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    invoke-static {v1}, Lae/gov/mol/MolApplication;->getTemperatureIcon(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1001
    .local v0, "imgURl":Ljava/lang/String;
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->molFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    iget-object v1, v1, Lae/gov/mol/MolFragmentActivity;->mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-object v2, p0, Lae/gov/mol/fragment/Fragment_Home;->molFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    invoke-static {v2}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->createDefault(Landroid/content/Context;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->init(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;)V

    .line 1002
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->molFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    iget-object v1, v1, Lae/gov/mol/MolFragmentActivity;->mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    const/4 v2, 0x0

    new-instance v3, Lae/gov/mol/fragment/Fragment_Home$28;

    invoke-direct {v3, p0, p1}, Lae/gov/mol/fragment/Fragment_Home$28;-><init>(Lae/gov/mol/fragment/Fragment_Home;Landroid/widget/ImageView;)V

    invoke-virtual {v1, v0, p1, v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;)V

    .line 1036
    return-void
.end method

.method public showFacebook()V
    .locals 3

    .prologue
    .line 1394
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const v2, 0x7f0900b8

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/Fragment_Home;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1395
    .local v0, "browserIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lae/gov/mol/fragment/Fragment_Home;->startActivity(Landroid/content/Intent;)V

    .line 1396
    return-void
.end method

.method public showInstagram()V
    .locals 3

    .prologue
    .line 1399
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Home;->molFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    const v1, 0x7f0901b4

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/Fragment_Home;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1400
    return-void
.end method

.method public showTwitter()V
    .locals 3

    .prologue
    .line 1390
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Home;->molFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    const v1, 0x7f0901b4

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/Fragment_Home;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1391
    return-void
.end method

.method public showYoutube()V
    .locals 3

    .prologue
    .line 1403
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const v2, 0x7f0900b9

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/Fragment_Home;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1404
    .local v0, "browserIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lae/gov/mol/fragment/Fragment_Home;->startActivity(Landroid/content/Intent;)V

    .line 1405
    return-void
.end method

.method public updateUserLoggedInStatus(Z)V
    .locals 5
    .param p1, "mloginStatus"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 1339
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mRelativeLayoutMainLogout:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_0

    .line 1340
    iget-object v4, p0, Lae/gov/mol/fragment/Fragment_Home;->mRelativeLayoutMainLogout:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_3

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1342
    :cond_0
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mRelativeLayoutMainLogin:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_2

    .line 1343
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mEditTextUserName:Landroid/widget/EditText;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mEditTextPassword:Landroid/widget/EditText;

    if-eqz v1, :cond_1

    .line 1344
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mEditTextUserName:Landroid/widget/EditText;

    const-string v4, ""

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1345
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mEditTextPassword:Landroid/widget/EditText;

    const-string v4, ""

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1347
    :cond_1
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mRelativeLayoutMainLogin:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_4

    :goto_1
    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1349
    :cond_2
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->molFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    invoke-static {v1}, Lae/gov/mol/MolApplication;->getTasheelUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1350
    .local v0, "mUserName":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1351
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mTextViewUserName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1356
    :goto_2
    return-void

    .end local v0    # "mUserName":Ljava/lang/String;
    :cond_3
    move v1, v3

    .line 1340
    goto :goto_0

    :cond_4
    move v3, v2

    .line 1347
    goto :goto_1

    .line 1353
    .restart local v0    # "mUserName":Ljava/lang/String;
    :cond_5
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home;->mTextViewUserName:Landroid/widget/TextView;

    const v2, 0x7f090122

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2
.end method
