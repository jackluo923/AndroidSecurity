.class public Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;
.super Lae/gov/mol/helper/CustomFragment;
.source "Fragment_ENetwasalForm.java"


# static fields
.field static final DATE_DIALOG_ID:I = 0x64

.field public static final DATE_SCREEN:I = 0x4

.field public static final DATE_SCREEN_FORM:I = 0x5

.field public static final ESERVICE_SCREEN:I = 0x3

.field public static final INPUT_SCREEN:I = 0x2

.field public static final LIST_SCREEN:I = 0x1

.field public static final SCREEN_TYPE:Ljava/lang/String; = "screen_type"

.field public static final SCREEN_TYPE_FORM:Ljava/lang/String; = "screen_type_form"

.field private static misActivityFinish:Z


# instance fields
.field date:Landroid/app/DatePickerDialog$OnDateSetListener;

.field public date_picker:Landroid/widget/DatePicker;

.field public day:I

.field private mAdapter:Lae/gov/mol/fragment/eTasheel/ENetwasal_CompanyListAdapter;

.field mBundleForDateForm:Landroid/os/Bundle;

.field mButtonSubmit:Landroid/widget/Button;

.field mCommonMethods:Lae/gov/mol/helper/CommonMethods;

.field public mCompanyNumber:Ljava/lang/String;

.field private mCurrentScreenType:I

.field private mCurrentScrrenFormType:I

.field mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

.field mEditTextField:Landroid/widget/EditText;

.field mEditTextFromDate:Landroid/widget/EditText;

.field mEditTextToDate:Landroid/widget/EditText;

.field mFragmentBundle:Landroid/os/Bundle;

.field mImageViewHome:Landroid/widget/ImageView;

.field mIntMonth:I

.field mIntYear:I

.field private mListViewCompanyList:Landroid/widget/ListView;

.field mRelativeLayout:Landroid/widget/RelativeLayout;

.field private mScrollView:Landroid/widget/ScrollView;

.field public mStringCompanyName:Ljava/lang/String;

.field mTextViewHeader:Landroid/widget/TextView;

.field mTextViewTitle:Landroid/widget/TextView;

.field public month:I

.field myCalendar:Ljava/util/Calendar;

.field strEnterTag:Ljava/lang/String;

.field strIsFrom:Ljava/lang/String;

.field strNumber:Ljava/lang/String;

.field strTitle:Ljava/lang/String;

.field view:Landroid/view/View;

.field public year:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    sput-boolean v0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->misActivityFinish:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Lae/gov/mol/helper/CustomFragment;-><init>()V

    .line 76
    const/4 v0, 0x2

    iput v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->mCurrentScreenType:I

    .line 78
    const/4 v0, 0x6

    iput v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->mCurrentScrrenFormType:I

    .line 101
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->myCalendar:Ljava/util/Calendar;

    .line 108
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->mStringCompanyName:Ljava/lang/String;

    .line 109
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->mCompanyNumber:Ljava/lang/String;

    .line 62
    return-void
.end method

.method static synthetic access$0(Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;)I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->mCurrentScrrenFormType:I

    return v0
.end method

.method private initList()V
    .locals 3

    .prologue
    .line 245
    sget-object v0, Lae/gov/mol/MolApplication;->mPersonCompanyList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 246
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lae/gov/mol/MolApplication;->mPersonCompanyList:Ljava/util/ArrayList;

    .line 248
    :cond_0
    new-instance v0, Lae/gov/mol/fragment/eTasheel/ENetwasal_CompanyListAdapter;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    sget-object v2, Lae/gov/mol/MolApplication;->mPersonCompanyList:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lae/gov/mol/fragment/eTasheel/ENetwasal_CompanyListAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->mAdapter:Lae/gov/mol/fragment/eTasheel/ENetwasal_CompanyListAdapter;

    .line 249
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->mListViewCompanyList:Landroid/widget/ListView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->mAdapter:Lae/gov/mol/fragment/eTasheel/ENetwasal_CompanyListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 250
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->mTextViewHeader:Landroid/widget/TextView;

    const v1, 0x7f09013d

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    return-void
.end method

.method public static isActivityFinish()Z
    .locals 1

    .prologue
    .line 460
    sget-boolean v0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->misActivityFinish:Z

    return v0
.end method

.method public static setActivityFinish(Z)V
    .locals 0
    .param p0, "misActivityFinish"    # Z

    .prologue
    .line 456
    sput-boolean p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->misActivityFinish:Z

    .line 457
    return-void
.end method


# virtual methods
.method public GetInquiry(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6
    .param p1, "strNumber"    # Ljava/lang/String;
    .param p2, "mStrCompanyName"    # Ljava/lang/String;
    .param p3, "isCompanyNo"    # Z

    .prologue
    const/16 v5, 0x1001

    const/4 v4, 0x1

    .line 280
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->mFragmentBundle:Landroid/os/Bundle;

    .line 281
    if-eqz p3, :cond_1

    .line 282
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->mFragmentBundle:Landroid/os/Bundle;

    const v2, 0x7f090044

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    :goto_0
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->mFragmentBundle:Landroid/os/Bundle;

    const v2, 0x7f090061

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->mFragmentBundle:Landroid/os/Bundle;

    const v2, 0x7f090042

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->strEnterTag:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->strIsFrom:Ljava/lang/String;

    const v2, 0x7f090141

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 294
    new-instance v0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    invoke-direct {v0}, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;-><init>()V

    .line 295
    .local v0, "mFragment":Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->mFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->setArguments(Landroid/os/Bundle;)V

    .line 296
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-virtual {v1, v0, v4, v5}, Lae/gov/mol/helper/CustomFragmentActivity;->replaceFragment(Landroid/support/v4/app/Fragment;ZI)V

    .line 429
    .end local v0    # "mFragment":Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;
    :cond_0
    :goto_1
    return-void

    .line 286
    :cond_1
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->mFragmentBundle:Landroid/os/Bundle;

    const v2, 0x7f090043

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 299
    :cond_2
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->strIsFrom:Ljava/lang/String;

    const v2, 0x7f0900c9

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 301
    new-instance v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;

    invoke-direct {v0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;-><init>()V

    .line 302
    .local v0, "mFragment":Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->mFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->setArguments(Landroid/os/Bundle;)V

    .line 303
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-virtual {v1, v0, v4, v5}, Lae/gov/mol/helper/CustomFragmentActivity;->replaceFragment(Landroid/support/v4/app/Fragment;ZI)V

    goto :goto_1

    .line 305
    .end local v0    # "mFragment":Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;
    :cond_3
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->strIsFrom:Ljava/lang/String;

    const v2, 0x7f09013f

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 307
    new-instance v0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasal_CompanyQuota_Details;

    invoke-direct {v0}, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasal_CompanyQuota_Details;-><init>()V

    .line 308
    .local v0, "mFragment":Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasal_CompanyQuota_Details;
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->mFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasal_CompanyQuota_Details;->setArguments(Landroid/os/Bundle;)V

    .line 309
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-virtual {v1, v0, v4, v5}, Lae/gov/mol/helper/CustomFragmentActivity;->replaceFragment(Landroid/support/v4/app/Fragment;ZI)V

    goto :goto_1

    .line 311
    .end local v0    # "mFragment":Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasal_CompanyQuota_Details;
    :cond_4
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->strIsFrom:Ljava/lang/String;

    const v2, 0x7f090143

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 312
    new-instance v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_CardList;

    invoke-direct {v0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_CardList;-><init>()V

    .line 313
    .local v0, "mFragment":Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_CardList;
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->mFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_CardList;->setArguments(Landroid/os/Bundle;)V

    .line 314
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-virtual {v1, v0, v4, v5}, Lae/gov/mol/helper/CustomFragmentActivity;->replaceFragment(Landroid/support/v4/app/Fragment;ZI)V

    goto :goto_1

    .line 316
    .end local v0    # "mFragment":Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_CardList;
    :cond_5
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->strIsFrom:Ljava/lang/String;

    const v2, 0x7f090142

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 318
    new-instance v0, Lae/gov/mol/fragment/eTasheel/FragmentExpiredLabourCardSection;

    invoke-direct {v0}, Lae/gov/mol/fragment/eTasheel/FragmentExpiredLabourCardSection;-><init>()V

    .line 319
    .local v0, "mFragment":Lae/gov/mol/fragment/eTasheel/FragmentExpiredLabourCardSection;
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->mFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lae/gov/mol/fragment/eTasheel/FragmentExpiredLabourCardSection;->setArguments(Landroid/os/Bundle;)V

    .line 320
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-virtual {v1, v0, v4, v5}, Lae/gov/mol/helper/CustomFragmentActivity;->replaceFragment(Landroid/support/v4/app/Fragment;ZI)V

    goto/16 :goto_1

    .line 322
    .end local v0    # "mFragment":Lae/gov/mol/fragment/eTasheel/FragmentExpiredLabourCardSection;
    :cond_6
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->strIsFrom:Ljava/lang/String;

    const v2, 0x7f090140

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 324
    new-instance v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPersonCode;

    invoke-direct {v0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPersonCode;-><init>()V

    .line 325
    .local v0, "mFragment":Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPersonCode;
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->mFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPersonCode;->setArguments(Landroid/os/Bundle;)V

    .line 326
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-virtual {v1, v0, v4, v5}, Lae/gov/mol/helper/CustomFragmentActivity;->replaceFragment(Landroid/support/v4/app/Fragment;ZI)V

    goto/16 :goto_1

    .line 328
    .end local v0    # "mFragment":Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPersonCode;
    :cond_7
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->strIsFrom:Ljava/lang/String;

    const v2, 0x7f090144

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 330
    new-instance v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;

    invoke-direct {v0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;-><init>()V

    .line 331
    .local v0, "mFragment":Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->mFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;->setArguments(Landroid/os/Bundle;)V

    .line 332
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-virtual {v1, v0, v4, v5}, Lae/gov/mol/helper/CustomFragmentActivity;->replaceFragment(Landroid/support/v4/app/Fragment;ZI)V

    goto/16 :goto_1

    .line 334
    .end local v0    # "mFragment":Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;
    :cond_8
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->strIsFrom:Ljava/lang/String;

    const v2, 0x7f09015d

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 336
    new-instance v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;

    invoke-direct {v0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;-><init>()V

    .line 337
    .local v0, "mFragment":Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->mFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;->setArguments(Landroid/os/Bundle;)V

    .line 338
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-virtual {v1, v0, v4, v5}, Lae/gov/mol/helper/CustomFragmentActivity;->replaceFragment(Landroid/support/v4/app/Fragment;ZI)V

    goto/16 :goto_1

    .line 340
    .end local v0    # "mFragment":Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;
    :cond_9
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->strIsFrom:Ljava/lang/String;

    const v2, 0x7f090150

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 342
    new-instance v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;

    invoke-direct {v0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;-><init>()V

    .line 343
    .local v0, "mFragment":Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->mFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->setArguments(Landroid/os/Bundle;)V

    .line 344
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-virtual {v1, v0, v4, v5}, Lae/gov/mol/helper/CustomFragmentActivity;->replaceFragment(Landroid/support/v4/app/Fragment;ZI)V

    goto/16 :goto_1

    .line 346
    .end local v0    # "mFragment":Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;
    :cond_a
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->strIsFrom:Ljava/lang/String;

    const v2, 0x7f090151

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 348
    new-instance v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;

    invoke-direct {v0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;-><init>()V

    .line 349
    .local v0, "mFragment":Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->mFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->setArguments(Landroid/os/Bundle;)V

    .line 350
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-virtual {v1, v0, v4, v5}, Lae/gov/mol/helper/CustomFragmentActivity;->replaceFragment(Landroid/support/v4/app/Fragment;ZI)V

    goto/16 :goto_1

    .line 352
    .end local v0    # "mFragment":Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;
    :cond_b
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->strIsFrom:Ljava/lang/String;

    const v2, 0x7f090152

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 354
    new-instance v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;

    invoke-direct {v0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;-><init>()V

    .line 355
    .local v0, "mFragment":Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->mFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;->setArguments(Landroid/os/Bundle;)V

    .line 356
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-virtual {v1, v0, v4, v5}, Lae/gov/mol/helper/CustomFragmentActivity;->replaceFragment(Landroid/support/v4/app/Fragment;ZI)V

    goto/16 :goto_1

    .line 358
    .end local v0    # "mFragment":Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;
    :cond_c
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->strIsFrom:Ljava/lang/String;

    const v2, 0x7f090153

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 360
    new-instance v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;

    invoke-direct {v0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;-><init>()V

    .line 361
    .local v0, "mFragment":Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->mFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->setArguments(Landroid/os/Bundle;)V

    .line 362
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-virtual {v1, v0, v4, v5}, Lae/gov/mol/helper/CustomFragmentActivity;->replaceFragment(Landroid/support/v4/app/Fragment;ZI)V

    goto/16 :goto_1

    .line 364
    .end local v0    # "mFragment":Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;
    :cond_d
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->strIsFrom:Ljava/lang/String;

    const v2, 0x7f090155

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 366
    new-instance v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceipt;

    invoke-direct {v0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceipt;-><init>()V

    .line 367
    .local v0, "mFragment":Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceipt;
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->mFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceipt;->setArguments(Landroid/os/Bundle;)V

    .line 368
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-virtual {v1, v0, v4, v5}, Lae/gov/mol/helper/CustomFragmentActivity;->replaceFragment(Landroid/support/v4/app/Fragment;ZI)V

    goto/16 :goto_1

    .line 370
    .end local v0    # "mFragment":Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceipt;
    :cond_e
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->strIsFrom:Ljava/lang/String;

    const v2, 0x7f09013d

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 372
    new-instance v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_List;

    invoke-direct {v0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_List;-><init>()V

    .line 373
    .local v0, "mFragment":Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_List;
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->mFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_List;->setArguments(Landroid/os/Bundle;)V

    .line 374
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-virtual {v1, v0, v4, v5}, Lae/gov/mol/helper/CustomFragmentActivity;->replaceFragment(Landroid/support/v4/app/Fragment;ZI)V

    goto/16 :goto_1

    .line 376
    .end local v0    # "mFragment":Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_List;
    :cond_f
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->strIsFrom:Ljava/lang/String;

    const v2, 0x7f090111

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 378
    new-instance v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;

    invoke-direct {v0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;-><init>()V

    .line 379
    .local v0, "mFragment":Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->mFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;->setArguments(Landroid/os/Bundle;)V

    .line 380
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-virtual {v1, v0, v4, v5}, Lae/gov/mol/helper/CustomFragmentActivity;->replaceFragment(Landroid/support/v4/app/Fragment;ZI)V

    goto/16 :goto_1

    .line 382
    .end local v0    # "mFragment":Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;
    :cond_10
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->strIsFrom:Ljava/lang/String;

    const v2, 0x7f09015a

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 384
    new-instance v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiry;

    invoke-direct {v0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiry;-><init>()V

    .line 385
    .local v0, "mFragment":Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiry;
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->mFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiry;->setArguments(Landroid/os/Bundle;)V

    .line 386
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-virtual {v1, v0, v4, v5}, Lae/gov/mol/helper/CustomFragmentActivity;->replaceFragment(Landroid/support/v4/app/Fragment;ZI)V

    goto/16 :goto_1

    .line 388
    .end local v0    # "mFragment":Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiry;
    :cond_11
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->strIsFrom:Ljava/lang/String;

    const v2, 0x7f09015b

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 390
    new-instance v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;

    invoke-direct {v0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;-><init>()V

    .line 391
    .local v0, "mFragment":Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->mFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;->setArguments(Landroid/os/Bundle;)V

    .line 392
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-virtual {v1, v0, v4, v5}, Lae/gov/mol/helper/CustomFragmentActivity;->replaceFragment(Landroid/support/v4/app/Fragment;ZI)V

    goto/16 :goto_1

    .line 394
    .end local v0    # "mFragment":Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;
    :cond_12
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->strIsFrom:Ljava/lang/String;

    const v2, 0x7f09015c

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 396
    new-instance v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentBankGuaranteeInfo;

    invoke-direct {v0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentBankGuaranteeInfo;-><init>()V

    .line 397
    .local v0, "mFragment":Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentBankGuaranteeInfo;
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->mFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentBankGuaranteeInfo;->setArguments(Landroid/os/Bundle;)V

    .line 398
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-virtual {v1, v0, v4, v5}, Lae/gov/mol/helper/CustomFragmentActivity;->replaceFragment(Landroid/support/v4/app/Fragment;ZI)V

    goto/16 :goto_1

    .line 400
    .end local v0    # "mFragment":Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentBankGuaranteeInfo;
    :cond_13
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->strIsFrom:Ljava/lang/String;

    const v2, 0x7f090157

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 402
    new-instance v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_OwnerCompanyDetails_List;

    invoke-direct {v0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_OwnerCompanyDetails_List;-><init>()V

    .line 403
    .local v0, "mFragment":Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_OwnerCompanyDetails_List;
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->mFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_OwnerCompanyDetails_List;->setArguments(Landroid/os/Bundle;)V

    .line 404
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-virtual {v1, v0, v4, v5}, Lae/gov/mol/helper/CustomFragmentActivity;->replaceFragment(Landroid/support/v4/app/Fragment;ZI)V

    goto/16 :goto_1

    .line 406
    .end local v0    # "mFragment":Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_OwnerCompanyDetails_List;
    :cond_14
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->strIsFrom:Ljava/lang/String;

    const v2, 0x7f09015e

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 408
    new-instance v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;

    invoke-direct {v0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;-><init>()V

    .line 409
    .local v0, "mFragment":Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->mFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;->setArguments(Landroid/os/Bundle;)V

    .line 410
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-virtual {v1, v0, v4, v5}, Lae/gov/mol/helper/CustomFragmentActivity;->replaceFragment(Landroid/support/v4/app/Fragment;ZI)V

    goto/16 :goto_1

    .line 412
    .end local v0    # "mFragment":Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;
    :cond_15
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->strIsFrom:Ljava/lang/String;

    const v2, 0x7f090159

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 414
    new-instance v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentPaymentReceiptList;

    invoke-direct {v0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentPaymentReceiptList;-><init>()V

    .line 415
    .local v0, "mFragment":Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentPaymentReceiptList;
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->mFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentPaymentReceiptList;->setArguments(Landroid/os/Bundle;)V

    .line 416
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-virtual {v1, v0, v4, v5}, Lae/gov/mol/helper/CustomFragmentActivity;->replaceFragment(Landroid/support/v4/app/Fragment;ZI)V

    goto/16 :goto_1

    .line 418
    .end local v0    # "mFragment":Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentPaymentReceiptList;
    :cond_16
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->strIsFrom:Ljava/lang/String;

    const v2, 0x7f090158

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 420
    new-instance v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;

    invoke-direct {v0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;-><init>()V

    .line 421
    .local v0, "mFragment":Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->mFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;->setArguments(Landroid/os/Bundle;)V

    .line 422
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-virtual {v1, v0, v4, v5}, Lae/gov/mol/helper/CustomFragmentActivity;->replaceFragment(Landroid/support/v4/app/Fragment;ZI)V

    goto/16 :goto_1

    .line 424
    .end local v0    # "mFragment":Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;
    :cond_17
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->strIsFrom:Ljava/lang/String;

    const v2, 0x7f09022f

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 425
    new-instance v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;

    invoke-direct {v0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;-><init>()V

    .line 426
    .restart local v0    # "mFragment":Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->mFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;->setArguments(Landroid/os/Bundle;)V

    .line 427
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-virtual {v1, v0, v4, v5}, Lae/gov/mol/helper/CustomFragmentActivity;->replaceFragment(Landroid/support/v4/app/Fragment;ZI)V

    goto/16 :goto_1
.end method

.method protected ShowDetailScreen(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6
    .param p1, "strNumber"    # Ljava/lang/String;
    .param p2, "mStringCompanyName"    # Ljava/lang/String;
    .param p3, "isCompanyNo"    # Z

    .prologue
    const/4 v5, 0x0

    .line 257
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Str Number"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    .line 258
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Str is Form"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->strIsFrom:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    .line 259
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 261
    if-eqz p2, :cond_0

    .line 262
    invoke-virtual {p0, p1, p2, p3}, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->GetInquiry(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 263
    :cond_0
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->mEditTextField:Landroid/widget/EditText;

    if-eqz v1, :cond_1

    .line 264
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 265
    const-string v2, "input_method"

    .line 264
    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 266
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->mEditTextField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 273
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    :goto_0
    return-void

    .line 271
    :cond_2
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    const v2, 0x7f090138

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->strEnterTag:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->strIsFrom:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v5, v4}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    goto :goto_0
.end method

.method public isListScreen(I)V
    .locals 3
    .param p1, "mScreentype"    # I

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 442
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 443
    :cond_0
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->mListViewCompanyList:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 444
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 453
    :goto_0
    return-void

    .line 445
    :cond_1
    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 446
    :cond_2
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->mListViewCompanyList:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 447
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    goto :goto_0

    .line 450
    :cond_3
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->mListViewCompanyList:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 451
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 114
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lae/gov/mol/helper/CustomFragmentActivity;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    .line 115
    new-instance v0, Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-direct {v0, v1}, Lae/gov/mol/helper/CommonMethods;-><init>(Lae/gov/mol/helper/CustomFragmentActivity;)V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    .line 116
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->mFragmentBundle:Landroid/os/Bundle;

    .line 117
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->mFragmentBundle:Landroid/os/Bundle;

    const v1, 0x7f09003d

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->strIsFrom:Ljava/lang/String;

    .line 118
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->mFragmentBundle:Landroid/os/Bundle;

    const v1, 0x7f090042

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->strEnterTag:Ljava/lang/String;

    .line 119
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->mFragmentBundle:Landroid/os/Bundle;

    const-string v1, "screen_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->mCurrentScreenType:I

    .line 120
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->mFragmentBundle:Landroid/os/Bundle;

    const-string v1, "screen_type_form"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->mCurrentScrrenFormType:I

    .line 121
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->mFragmentBundle:Landroid/os/Bundle;

    const v1, 0x7f090044

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->mCompanyNumber:Ljava/lang/String;

    .line 122
    invoke-super {p0, p1}, Lae/gov/mol/helper/CustomFragment;->onCreate(Landroid/os/Bundle;)V

    .line 123
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedinstance"    # Landroid/os/Bundle;

    .prologue
    const/16 v6, 0xe

    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 128
    const v0, 0x7f030057

    invoke-virtual {p1, v0, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->view:Landroid/view/View;

    .line 130
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->view:Landroid/view/View;

    const v1, 0x7f060285

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->mListViewCompanyList:Landroid/widget/ListView;

    .line 131
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->view:Landroid/view/View;

    const v1, 0x7f060281

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->mScrollView:Landroid/widget/ScrollView;

    .line 132
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->view:Landroid/view/View;

    const v1, 0x7f060758

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->mTextViewHeader:Landroid/widget/TextView;

    .line 133
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->mTextViewHeader:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->strIsFrom:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->view:Landroid/view/View;

    const v1, 0x7f060757

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->mImageViewHome:Landroid/widget/ImageView;

    .line 136
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->mImageViewHome:Landroid/widget/ImageView;

    new-instance v1, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm$1;

    invoke-direct {v1, p0}, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm$1;-><init>(Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    iget v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->mCurrentScreenType:I

    invoke-virtual {p0, v0}, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->isListScreen(I)V

    .line 146
    iget v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->mCurrentScreenType:I

    if-ne v0, v4, :cond_0

    .line 147
    invoke-direct {p0}, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->initList()V

    .line 148
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->mListViewCompanyList:Landroid/widget/ListView;

    new-instance v1, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm$2;

    invoke-direct {v1, p0}, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm$2;-><init>(Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 238
    :goto_0
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->view:Landroid/view/View;

    return-object v0

    .line 189
    :cond_0
    iget v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->mCurrentScreenType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 190
    invoke-direct {p0}, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->initList()V

    goto :goto_0

    .line 194
    :cond_1
    const-string v0, "Input Screen"

    invoke-static {v0}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->view:Landroid/view/View;

    const v1, 0x7f060282

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->mTextViewTitle:Landroid/widget/TextView;

    .line 196
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->mTextViewTitle:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->strEnterTag:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0900a7

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->view:Landroid/view/View;

    const v1, 0x7f060283

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->mEditTextField:Landroid/widget/EditText;

    .line 200
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->mEditTextField:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 202
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->strEnterTag:Ljava/lang/String;

    const v1, 0x7f0900d7

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 203
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->mEditTextField:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 204
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->mEditTextField:Landroid/widget/EditText;

    new-array v1, v4, [Landroid/text/InputFilter;

    new-instance v2, Lae/gov/mol/helper/InputFilterMinMax;

    const/16 v3, 0xc

    invoke-direct {v2, v4, v3}, Lae/gov/mol/helper/InputFilterMinMax;-><init>(II)V

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 226
    :cond_2
    :goto_1
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->view:Landroid/view/View;

    const v1, 0x7f060284

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->mButtonSubmit:Landroid/widget/Button;

    .line 227
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->mButtonSubmit:Landroid/widget/Button;

    new-instance v1, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm$3;

    invoke-direct {v1, p0}, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm$3;-><init>(Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 206
    :cond_3
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->strEnterTag:Ljava/lang/String;

    const v1, 0x7f0900fe

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 207
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->mEditTextField:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 208
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->mEditTextField:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 209
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->mEditTextField:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 210
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->mEditTextField:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setClickable(Z)V

    .line 211
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->mEditTextField:Landroid/widget/EditText;

    new-array v1, v4, [Landroid/text/InputFilter;

    new-instance v2, Lae/gov/mol/helper/InputFilterMinMax;

    const/16 v3, 0xa

    invoke-direct {v2, v4, v3}, Lae/gov/mol/helper/InputFilterMinMax;-><init>(II)V

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_1

    .line 213
    :cond_4
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->strEnterTag:Ljava/lang/String;

    const v1, 0x7f0900df

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 214
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->mEditTextField:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 215
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->mEditTextField:Landroid/widget/EditText;

    new-array v1, v4, [Landroid/text/InputFilter;

    new-instance v2, Lae/gov/mol/helper/InputFilterMinMax;

    invoke-direct {v2, v4, v6}, Lae/gov/mol/helper/InputFilterMinMax;-><init>(II)V

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_1

    .line 217
    :cond_5
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->strEnterTag:Ljava/lang/String;

    const v1, 0x7f090162

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 218
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->mEditTextField:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 219
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->mEditTextField:Landroid/widget/EditText;

    new-array v1, v4, [Landroid/text/InputFilter;

    new-instance v2, Lae/gov/mol/helper/InputFilterMinMax;

    const/16 v3, 0x10

    invoke-direct {v2, v4, v3}, Lae/gov/mol/helper/InputFilterMinMax;-><init>(II)V

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto/16 :goto_1

    .line 221
    :cond_6
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->strEnterTag:Ljava/lang/String;

    const v1, 0x7f0900b2

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 222
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->mEditTextField:Landroid/widget/EditText;

    const/16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 223
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->mEditTextField:Landroid/widget/EditText;

    new-array v1, v4, [Landroid/text/InputFilter;

    new-instance v2, Lae/gov/mol/helper/InputFilterMinMax;

    invoke-direct {v2, v4, v6}, Lae/gov/mol/helper/InputFilterMinMax;-><init>(II)V

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto/16 :goto_1
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 434
    invoke-super {p0}, Lae/gov/mol/helper/CustomFragment;->onResume()V

    .line 435
    invoke-static {}, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->isActivityFinish()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 439
    :cond_0
    return-void
.end method
