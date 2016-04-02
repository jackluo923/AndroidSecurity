.class public Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;
.super Lae/gov/mol/helper/CustomFragment;
.source "Fragment_eServiceDetail.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SetJavaScriptEnabled"
    }
.end annotation

.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$FetchAjaxData;,
        Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$MasterDataList;,
        Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$PostAttachment;,
        Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$getJSON;,
        Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$hasData;,
        Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$setValue;
    }
.end annotation


# static fields
.field public static final DATE:Ljava/lang/String; = "date"

.field private static final DROPDOWN:I = 0xa

.field private static final MANDATORY:Ljava/lang/String; = "1"

.field private static final NeedPhoto:Ljava/lang/String; = "NeedPhoto"

.field public static final OTHER_VALUE:Ljava/lang/String; = "otherValue"

.field private static final REQUEST_CODE:I = 0x1

.field public static final SELECTED_VALUE:Ljava/lang/String; = "SELECTED_VALUE"

.field public static final TYPE:Ljava/lang/String; = "listtype"

.field private static isPhotoRequired:Z


# instance fields
.field private final FILE_SIZE_IN_KB:I

.field private Index:I

.field private PageIndex:I

.field app:Lae/gov/mol/MolApplication;

.field i:I

.field private isActivityFinish:Z

.field protected isCalledOnce:Z

.field j:I

.field loadonce:Z

.field private mAjaxList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/KeyValueVo;",
            ">;"
        }
    .end annotation
.end field

.field private mAttachmentButtonId:I

.field private mAttachmentData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/AttachmentVo;",
            ">;"
        }
    .end annotation
.end field

.field private mBrowseUrl:Ljava/lang/String;

.field private mBundle:Landroid/os/Bundle;

.field mCommonMethods:Lae/gov/mol/helper/CommonMethods;

.field private mCompanyNo:Ljava/lang/String;

.field mDatePicker:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/KeyValueVo;",
            ">;"
        }
    .end annotation
.end field

.field private mFragmentActivity_eServiceDetail:Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;

.field private mImageButtonCount:I

.field private mImageViewCount:I

.field mImageViewHome:Landroid/widget/ImageView;

.field mKeyValueVos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/KeyValueVo;",
            ">;"
        }
    .end annotation
.end field

.field private mLinearLayout:Landroid/widget/LinearLayout;

.field private mPostParseGet:Lae/gov/mol/helper/PostParseGet;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mSelectedImage:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceCode:Ljava/lang/String;

.field private mServiceID:Ljava/lang/String;

.field private mSubmitButtonCount:I

.field private mTextView:Landroid/widget/TextView;

.field private mWebView:Landroid/webkit/WebView;

.field private mWizardsDataVo:Lae/gov/mol/vo/WizardsDataVo;

.field private mWizardsDataVo1:Lae/gov/mol/vo/WizardsDataVo;

.field private nUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    sput-boolean v0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->isPhotoRequired:Z

    .line 124
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 87
    invoke-direct {p0}, Lae/gov/mol/helper/CustomFragment;-><init>()V

    .line 96
    iput v2, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->Index:I

    .line 97
    iput v1, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->PageIndex:I

    .line 110
    const/16 v0, 0x1389

    iput v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mImageButtonCount:I

    .line 111
    const/16 v0, 0x1771

    iput v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mImageViewCount:I

    .line 112
    const/16 v0, 0x1b59

    iput v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mSubmitButtonCount:I

    .line 113
    iput-boolean v1, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->isActivityFinish:Z

    .line 114
    iput v2, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mAttachmentButtonId:I

    .line 115
    iput-boolean v1, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->isCalledOnce:Z

    .line 116
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mBrowseUrl:Ljava/lang/String;

    .line 117
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mCompanyNo:Ljava/lang/String;

    .line 118
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mServiceCode:Ljava/lang/String;

    .line 126
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mServiceID:Ljava/lang/String;

    .line 127
    iput v1, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->i:I

    .line 128
    iput v1, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->j:I

    .line 130
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->nUrl:Ljava/lang/String;

    .line 136
    const v0, 0x3d0fc81c

    iput v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->FILE_SIZE_IN_KB:I

    .line 737
    const/4 v0, 0x1

    iput-boolean v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->loadonce:Z

    .line 87
    return-void
.end method

.method private SetUpSubmitButton()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 825
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mWizardsDataVo:Lae/gov/mol/vo/WizardsDataVo;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mWizardsDataVo:Lae/gov/mol/vo/WizardsDataVo;

    invoke-virtual {v2}, Lae/gov/mol/vo/WizardsDataVo;->getHasSubmit()Ljava/lang/String;

    move-result-object v2

    const-string v3, "yes"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 826
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mFragmentActivity_eServiceDetail:Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;

    const v3, 0x7f09016b

    invoke-virtual {p0, v3}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;->CreateButton(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v0

    .line 827
    .local v0, "mButton":Landroid/widget/Button;
    iget v2, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mSubmitButtonCount:I

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setId(I)V

    .line 828
    new-instance v2, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$5;

    invoke-direct {v2, p0}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$5;-><init>(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 843
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    .line 844
    const/4 v3, -0x2

    const/high16 v4, 0x3f800000    # 1.0f

    .line 843
    invoke-direct {v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 845
    .local v1, "mParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1, v6, v5, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 847
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 849
    .end local v0    # "mButton":Landroid/widget/Button;
    .end local v1    # "mParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method static synthetic access$0(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 963
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mAttachmentData:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$1(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;)Ljava/util/LinkedHashMap;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mSelectedImage:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic access$10(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;)Lae/gov/mol/vo/WizardsDataVo;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mWizardsDataVo1:Lae/gov/mol/vo/WizardsDataVo;

    return-object v0
.end method

.method static synthetic access$11(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;)V
    .locals 0

    .prologue
    .line 678
    invoke-direct {p0}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->setTitle1()V

    return-void
.end method

.method static synthetic access$12(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mBrowseUrl:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$13(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mBrowseUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$14(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mCompanyNo:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$15(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mAjaxList:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$16(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mAjaxList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$17(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;)V
    .locals 0

    .prologue
    .line 824
    invoke-direct {p0}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->SetUpSubmitButton()V

    return-void
.end method

.method static synthetic access$18()Z
    .locals 1

    .prologue
    .line 105
    sget-boolean v0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->isPhotoRequired:Z

    return v0
.end method

.method static synthetic access$2(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;)Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mFragmentActivity_eServiceDetail:Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;

    return-object v0
.end method

.method static synthetic access$3(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;)Lae/gov/mol/helper/PostParseGet;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mPostParseGet:Lae/gov/mol/helper/PostParseGet;

    return-object v0
.end method

.method static synthetic access$4(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 963
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mAttachmentData:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$5(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$6(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;Landroid/app/ProgressDialog;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mProgressDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic access$7(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;)V
    .locals 0

    .prologue
    .line 1096
    invoke-direct {p0}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->dismissDialog()V

    return-void
.end method

.method static synthetic access$8(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;)Z
    .locals 1

    .prologue
    .line 113
    iget-boolean v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->isActivityFinish:Z

    return v0
.end method

.method static synthetic access$9(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;Z)V
    .locals 0

    .prologue
    .line 113
    iput-boolean p1, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->isActivityFinish:Z

    return-void
.end method

.method private dismissDialog()V
    .locals 1

    .prologue
    .line 1097
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1098
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 1099
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1102
    :cond_0
    return-void
.end method

.method public static getHexString(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 950
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 952
    .local v1, "buf":[B
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 954
    .local v2, "sb":Ljava/lang/StringBuffer;
    array-length v5, v1

    move v3, v4

    :goto_0
    if-lt v3, v5, :cond_0

    .line 960
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 954
    :cond_0
    aget-byte v0, v1, v3

    .line 956
    .local v0, "b":B
    const-string v6, "%x"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 954
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private setTitle()V
    .locals 2

    .prologue
    .line 710
    const-string v0, ""

    .line 711
    .local v0, "mTitle":Ljava/lang/String;
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 712
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mWizardsDataVo:Lae/gov/mol/vo/WizardsDataVo;

    if-eqz v1, :cond_1

    .line 713
    invoke-static {}, Lae/gov/mol/MolApplication;->getLanguage()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 725
    :goto_0
    if-nez v0, :cond_0

    .line 726
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mWizardsDataVo:Lae/gov/mol/vo/WizardsDataVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/WizardsDataVo;->getWizardTitleEN()Ljava/lang/String;

    move-result-object v0

    .line 728
    :cond_0
    if-eqz v0, :cond_1

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 729
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mWizardsDataVo:Lae/gov/mol/vo/WizardsDataVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/WizardsDataVo;->getWizardTitleEN()Ljava/lang/String;

    move-result-object v0

    .line 732
    :cond_1
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 735
    :cond_2
    return-void

    .line 716
    :pswitch_0
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mWizardsDataVo:Lae/gov/mol/vo/WizardsDataVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/WizardsDataVo;->getWizardTitleEN()Ljava/lang/String;

    move-result-object v0

    .line 717
    goto :goto_0

    .line 719
    :pswitch_1
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mWizardsDataVo:Lae/gov/mol/vo/WizardsDataVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/WizardsDataVo;->getWizardTitleAR()Ljava/lang/String;

    move-result-object v0

    .line 720
    goto :goto_0

    .line 713
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setTitle1()V
    .locals 2

    .prologue
    .line 679
    const-string v0, ""

    .line 680
    .local v0, "mTitle":Ljava/lang/String;
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 681
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mWizardsDataVo1:Lae/gov/mol/vo/WizardsDataVo;

    if-eqz v1, :cond_1

    .line 682
    invoke-static {}, Lae/gov/mol/MolApplication;->getLanguage()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 694
    :goto_0
    if-nez v0, :cond_0

    .line 695
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mWizardsDataVo1:Lae/gov/mol/vo/WizardsDataVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/WizardsDataVo;->getWizardTitleEN()Ljava/lang/String;

    move-result-object v0

    .line 697
    :cond_0
    if-eqz v0, :cond_1

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 698
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mWizardsDataVo1:Lae/gov/mol/vo/WizardsDataVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/WizardsDataVo;->getWizardTitleEN()Ljava/lang/String;

    move-result-object v0

    .line 701
    :cond_1
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 704
    :cond_2
    return-void

    .line 685
    :pswitch_0
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mWizardsDataVo1:Lae/gov/mol/vo/WizardsDataVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/WizardsDataVo;->getWizardTitleEN()Ljava/lang/String;

    move-result-object v0

    .line 686
    goto :goto_0

    .line 688
    :pswitch_1
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mWizardsDataVo1:Lae/gov/mol/vo/WizardsDataVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/WizardsDataVo;->getWizardTitleAR()Ljava/lang/String;

    move-result-object v0

    .line 689
    goto :goto_0

    .line 682
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setValueInControl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "selectedValue"    # Ljava/lang/String;
    .param p2, "selectedCode"    # Ljava/lang/String;

    .prologue
    .line 929
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 939
    .local v0, "valueToSend":Ljava/lang/String;
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mWebView:Landroid/webkit/WebView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "javascript:alert(AjaxSearchComplete(\'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\',\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'))"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 941
    return-void
.end method


# virtual methods
.method protected NavigateNextPage(Ljava/lang/String;)V
    .locals 4
    .param p1, "mCompanyNo"    # Ljava/lang/String;

    .prologue
    .line 646
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mFragmentActivity_eServiceDetail:Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;

    invoke-virtual {v1, p1}, Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;->Create_eServiceDetail(Ljava/lang/String;)Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;

    move-result-object v0

    .line 647
    .local v0, "mFragment_eServiceDetail":Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;
    if-eqz v0, :cond_0

    .line 648
    invoke-direct {p0}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->dismissDialog()V

    .line 649
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mFragmentActivity_eServiceDetail:Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;

    .line 650
    const/4 v2, 0x1

    const/16 v3, 0x1001

    .line 649
    invoke-virtual {v1, v0, v2, v3}, Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;->replaceFragment(Landroid/support/v4/app/Fragment;ZI)V

    .line 652
    :cond_0
    return-void
.end method

.method protected SetUpAttachmentButtons()V
    .locals 14

    .prologue
    .line 753
    iget-object v9, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mKeyValueVos:Ljava/util/ArrayList;

    if-eqz v9, :cond_0

    .line 755
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v9, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mKeyValueVos:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lt v1, v9, :cond_2

    .line 765
    .end local v1    # "i":I
    :cond_0
    iget-object v9, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mWizardsDataVo:Lae/gov/mol/vo/WizardsDataVo;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mWizardsDataVo:Lae/gov/mol/vo/WizardsDataVo;

    invoke-virtual {v9}, Lae/gov/mol/vo/WizardsDataVo;->getAttachments()Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_1

    sget-boolean v9, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->isPhotoRequired:Z

    if-eqz v9, :cond_1

    .line 766
    iget-object v9, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mWizardsDataVo:Lae/gov/mol/vo/WizardsDataVo;

    invoke-virtual {v9}, Lae/gov/mol/vo/WizardsDataVo;->getAttachments()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 768
    .local v2, "mAttachmentDataVos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lae/gov/mol/vo/AttachmentDataVo;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_4

    .line 818
    .end local v2    # "mAttachmentDataVos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lae/gov/mol/vo/AttachmentDataVo;>;"
    :cond_1
    return-void

    .line 756
    .restart local v1    # "i":I
    :cond_2
    iget-object v9, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mKeyValueVos:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lae/gov/mol/vo/KeyValueVo;

    .line 757
    .local v5, "mKeyValueVo":Lae/gov/mol/vo/KeyValueVo;
    invoke-virtual {v5}, Lae/gov/mol/vo/KeyValueVo;->getmKey()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_3

    invoke-virtual {v5}, Lae/gov/mol/vo/KeyValueVo;->getmKey()Ljava/lang/String;

    move-result-object v9

    const-string v10, "NeedPhoto"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 758
    invoke-virtual {v5}, Lae/gov/mol/vo/KeyValueVo;->getmValue()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_3

    invoke-virtual {v5}, Lae/gov/mol/vo/KeyValueVo;->getmValue()Ljava/lang/String;

    move-result-object v9

    const-string v10, "1"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 759
    const/4 v9, 0x1

    sput-boolean v9, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->isPhotoRequired:Z

    .line 755
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 768
    .end local v1    # "i":I
    .end local v5    # "mKeyValueVo":Lae/gov/mol/vo/KeyValueVo;
    .restart local v2    # "mAttachmentDataVos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lae/gov/mol/vo/AttachmentDataVo;>;"
    :cond_4
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/gov/mol/vo/AttachmentDataVo;

    .line 769
    .local v0, "attachmentDataVo":Lae/gov/mol/vo/AttachmentDataVo;
    invoke-virtual {v0}, Lae/gov/mol/vo/AttachmentDataVo;->getLabelTitleEN()Ljava/lang/String;

    move-result-object v8

    .line 770
    .local v8, "mTitle":Ljava/lang/String;
    invoke-static {}, Lae/gov/mol/MolApplication;->getLanguage()I

    move-result v10

    packed-switch v10, :pswitch_data_0

    .line 780
    :goto_2
    if-nez v8, :cond_5

    .line 781
    invoke-virtual {v0}, Lae/gov/mol/vo/AttachmentDataVo;->getLabelTitleEN()Ljava/lang/String;

    move-result-object v8

    .line 783
    :cond_5
    if-eqz v8, :cond_6

    const-string v10, ""

    invoke-virtual {v8, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 784
    invoke-virtual {v0}, Lae/gov/mol/vo/AttachmentDataVo;->getLabelTitleEN()Ljava/lang/String;

    move-result-object v8

    .line 787
    :cond_6
    new-instance v6, Landroid/widget/LinearLayout;

    iget-object v10, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mFragmentActivity_eServiceDetail:Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;

    invoke-direct {v6, v10}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 788
    .local v6, "mLinearLayoutChild":Landroid/widget/LinearLayout;
    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 790
    new-instance v4, Landroid/widget/ImageView;

    iget-object v10, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mFragmentActivity_eServiceDetail:Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;

    invoke-direct {v4, v10}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 791
    .local v4, "mImageView":Landroid/widget/ImageView;
    iget v10, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mImageViewCount:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mImageViewCount:I

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setId(I)V

    .line 792
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v11, 0x96

    const/16 v12, 0x96

    invoke-direct {v10, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 793
    const v10, 0x7f0200e4

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 794
    sget-object v10, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 795
    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 797
    iget-object v10, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mFragmentActivity_eServiceDetail:Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;

    invoke-virtual {v10, v8}, Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;->CreateButton(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v3

    .line 798
    .local v3, "mButton":Landroid/widget/Button;
    iget v10, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mImageButtonCount:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mImageButtonCount:I

    invoke-virtual {v3, v10}, Landroid/widget/Button;->setId(I)V

    .line 799
    new-instance v10, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$4;

    invoke-direct {v10, p0}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$4;-><init>(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;)V

    invoke-virtual {v3, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 806
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x1

    .line 807
    const/4 v11, -0x2

    const/high16 v12, 0x3f800000    # 1.0f

    .line 806
    invoke-direct {v7, v10, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 808
    .local v7, "mParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v10, 0x8

    const/4 v11, 0x0

    const/16 v12, 0x8

    const/4 v13, 0x0

    invoke-virtual {v7, v10, v11, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 809
    const/16 v10, 0x10

    iput v10, v7, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 810
    invoke-virtual {v6, v3, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 812
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    .end local v7    # "mParams":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v10, -0x1

    .line 813
    const/4 v11, -0x2

    .line 812
    invoke-direct {v7, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 814
    .restart local v7    # "mParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v10, 0x8

    const/16 v11, 0x8

    const/16 v12, 0x8

    const/16 v13, 0x8

    invoke-virtual {v7, v10, v11, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 815
    iget-object v10, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 772
    .end local v3    # "mButton":Landroid/widget/Button;
    .end local v4    # "mImageView":Landroid/widget/ImageView;
    .end local v6    # "mLinearLayoutChild":Landroid/widget/LinearLayout;
    .end local v7    # "mParams":Landroid/widget/LinearLayout$LayoutParams;
    :pswitch_0
    invoke-virtual {v0}, Lae/gov/mol/vo/AttachmentDataVo;->getLabelTitleEN()Ljava/lang/String;

    move-result-object v8

    .line 773
    goto/16 :goto_2

    .line 775
    :pswitch_1
    invoke-virtual {v0}, Lae/gov/mol/vo/AttachmentDataVo;->getLabelTitleAR()Ljava/lang/String;

    move-result-object v8

    .line 776
    goto/16 :goto_2

    .line 770
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected getAttachmentString(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/AttachmentVo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 660
    .local p1, "mAttachmentData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lae/gov/mol/vo/AttachmentVo;>;"
    const-string v2, ""

    .line 661
    .local v2, "mJson":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 662
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 668
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 676
    :cond_1
    :goto_1
    return-object v2

    .line 662
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lae/gov/mol/vo/AttachmentVo;

    .line 663
    .local v1, "mItem":Lae/gov/mol/vo/AttachmentVo;
    if-eqz v1, :cond_0

    .line 664
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lae/gov/mol/vo/AttachmentVo;->getErrResult()Lae/gov/mol/vo/AttachmentVo$Attachment;

    move-result-object v5

    invoke-virtual {v5}, Lae/gov/mol/vo/AttachmentVo$Attachment;->getAttachmentID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 669
    .end local v1    # "mItem":Lae/gov/mol/vo/AttachmentVo;
    :catch_0
    move-exception v0

    .line 670
    .local v0, "e":Ljava/lang/StringIndexOutOfBoundsException;
    const-string v2, ""

    goto :goto_1

    .line 671
    .end local v0    # "e":Ljava/lang/StringIndexOutOfBoundsException;
    :catch_1
    move-exception v0

    .line 672
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v2, ""

    goto :goto_1
.end method

.method public getReplacedXmlData(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "mData"    # Ljava/lang/String;

    .prologue
    .line 1065
    const-string v0, "&lt;"

    const-string v1, "<"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1066
    const-string v0, "&gt;"

    const-string v1, ">"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1067
    const-string v0, "&amp;"

    const-string v1, "and"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1068
    const-string v0, "&"

    const-string v1, "and"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1069
    const-string v0, "\r\n"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1070
    const-string v0, "> <"

    const-string v1, "><"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1071
    const-string v0, ">  <"

    const-string v1, "><"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1072
    const-string v0, ">    <"

    const-string v1, "><"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1073
    return-object p1
.end method

.method public getTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "mAlternateText"    # Ljava/lang/String;

    .prologue
    .line 1080
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1081
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1083
    .end local p1    # "mAlternateText":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 19
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 880
    const/4 v3, 0x1

    move/from16 v0, p1

    if-ne v0, v3, :cond_4

    const/4 v3, -0x1

    move/from16 v0, p2

    if-ne v0, v3, :cond_4

    .line 881
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    .line 883
    .local v4, "uri":Landroid/net/Uri;
    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "content"

    invoke-virtual {v3, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 885
    move-object/from16 v0, p0

    iget-object v3, v0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mFragmentActivity_eServiceDetail:Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;

    invoke-virtual {v3}, Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 886
    .local v10, "cursor":Landroid/database/Cursor;
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 888
    const-string v3, "_data"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 889
    .local v9, "column_index":I
    invoke-interface {v10, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 890
    .local v11, "filePathUri":Landroid/net/Uri;
    invoke-virtual {v11}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v12

    .line 891
    .local v12, "file_path":Ljava/lang/String;
    if-eqz v12, :cond_0

    .line 892
    invoke-static {v12}, Lae/gov/mol/helper/CommonMethods;->getImageSizeInKB(Ljava/lang/String;)J

    move-result-wide v13

    .line 893
    .local v13, "kb":J
    const-wide/32 v5, 0x3d0fc81c

    cmp-long v3, v13, v5

    if-gtz v3, :cond_2

    .line 894
    move-object/from16 v0, p0

    iget-object v3, v0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mSelectedImage:Ljava/util/LinkedHashMap;

    new-instance v5, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget v6, v0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mAttachmentButtonId:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, v12}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 895
    move-object/from16 v0, p0

    iget-object v3, v0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mLinearLayout:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_0

    .line 896
    move-object/from16 v0, p0

    iget-object v3, v0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mLinearLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget v5, v0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mAttachmentButtonId:I

    add-int/lit16 v5, v5, 0x3e8

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    .line 898
    .local v15, "mImageView":Landroid/widget/ImageView;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x10

    if-lt v3, v5, :cond_1

    .line 899
    move-object/from16 v0, p0

    iget-object v3, v0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mFragmentActivity_eServiceDetail:Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;

    invoke-static {v12, v3}, Lae/gov/mol/helper/CommonMethods;->getImageBitmapFromUri(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v3

    invoke-virtual {v15, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 924
    .end local v4    # "uri":Landroid/net/Uri;
    .end local v9    # "column_index":I
    .end local v10    # "cursor":Landroid/database/Cursor;
    .end local v11    # "filePathUri":Landroid/net/Uri;
    .end local v12    # "file_path":Ljava/lang/String;
    .end local v13    # "kb":J
    .end local v15    # "mImageView":Landroid/widget/ImageView;
    :cond_0
    :goto_0
    invoke-super/range {p0 .. p3}, Lae/gov/mol/helper/CustomFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 926
    return-void

    .line 901
    .restart local v4    # "uri":Landroid/net/Uri;
    .restart local v9    # "column_index":I
    .restart local v10    # "cursor":Landroid/database/Cursor;
    .restart local v11    # "filePathUri":Landroid/net/Uri;
    .restart local v12    # "file_path":Ljava/lang/String;
    .restart local v13    # "kb":J
    .restart local v15    # "mImageView":Landroid/widget/ImageView;
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mFragmentActivity_eServiceDetail:Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;

    invoke-static {v12, v3}, Lae/gov/mol/helper/CommonMethods;->getImageBitmapFromUri(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v3

    invoke-virtual {v15, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 906
    .end local v15    # "mImageView":Landroid/widget/ImageView;
    :cond_2
    const-string v16, ""

    .line 907
    .local v16, "mTitle":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mTextView:Landroid/widget/TextView;

    if-eqz v3, :cond_3

    .line 908
    move-object/from16 v0, p0

    iget-object v3, v0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v16

    .line 910
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mFragmentActivity_eServiceDetail:Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->getTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f09023b

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v3, v5, v6, v7}, Lae/gov/mol/helper/CommonMethods;->ShowAlert(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 917
    .end local v4    # "uri":Landroid/net/Uri;
    .end local v9    # "column_index":I
    .end local v10    # "cursor":Landroid/database/Cursor;
    .end local v11    # "filePathUri":Landroid/net/Uri;
    .end local v12    # "file_path":Ljava/lang/String;
    .end local v13    # "kb":J
    .end local v16    # "mTitle":Ljava/lang/String;
    :cond_4
    const/16 v3, 0xa

    move/from16 v0, p1

    if-ne v0, v3, :cond_0

    const/4 v3, -0x1

    move/from16 v0, p2

    if-ne v0, v3, :cond_0

    .line 919
    const-string v3, "SELECTED_VALUE"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 920
    .local v18, "selectedValue":Ljava/lang/String;
    const-string v3, "SELECTED_CODE"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 921
    .local v17, "selectedCode":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->setValueInControl(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 140
    invoke-super {p0, p1}, Lae/gov/mol/helper/CustomFragment;->onCreate(Landroid/os/Bundle;)V

    .line 141
    new-instance v0, Lae/gov/mol/MolApplication;

    invoke-direct {v0}, Lae/gov/mol/MolApplication;-><init>()V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->app:Lae/gov/mol/MolApplication;

    .line 143
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mBundle:Landroid/os/Bundle;

    .line 144
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mBundle:Landroid/os/Bundle;

    invoke-static {}, Lae/gov/mol/MolApplication;->getmTags()Lae/gov/mol/helper/Tags;

    move-result-object v1

    iget-object v1, v1, Lae/gov/mol/helper/Tags;->meServicesDetailIndex:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->Index:I

    .line 145
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mBundle:Landroid/os/Bundle;

    const-string v1, "PageIndex"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->PageIndex:I

    .line 146
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mBundle:Landroid/os/Bundle;

    const v1, 0x7f090055

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mCompanyNo:Ljava/lang/String;

    .line 150
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mBundle:Landroid/os/Bundle;

    const v1, 0x7f090059

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mServiceID:Ljava/lang/String;

    .line 151
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mBundle:Landroid/os/Bundle;

    const v1, 0x7f09005a

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mServiceCode:Ljava/lang/String;

    .line 153
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mFragmentActivity_eServiceDetail:Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mKeyValueVos:Ljava/util/ArrayList;

    .line 155
    new-instance v0, Lae/gov/mol/helper/PostParseGet;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mFragmentActivity_eServiceDetail:Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;

    invoke-direct {v0, v1}, Lae/gov/mol/helper/PostParseGet;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mPostParseGet:Lae/gov/mol/helper/PostParseGet;

    .line 156
    new-instance v0, Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mFragmentActivity_eServiceDetail:Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;

    invoke-direct {v0, v1}, Lae/gov/mol/helper/CommonMethods;-><init>(Lae/gov/mol/helper/CustomFragmentActivity;)V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    .line 157
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    invoke-virtual {v0}, Lae/gov/mol/helper/CommonMethods;->isConnectingToInternet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 158
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mFragmentActivity_eServiceDetail:Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;

    const v1, 0x7f090099

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 159
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mFragmentActivity_eServiceDetail:Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;

    invoke-virtual {v0}, Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;->finishFragment()V

    .line 161
    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mSelectedImage:Ljava/util/LinkedHashMap;

    .line 162
    iget v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->Index:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_1

    .line 163
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mFragmentActivity_eServiceDetail:Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;

    iget v1, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->Index:I

    invoke-virtual {v0, v1}, Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;->getWizardsDataVo(I)Lae/gov/mol/vo/WizardsDataVo;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mWizardsDataVo:Lae/gov/mol/vo/WizardsDataVo;

    .line 164
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mFragmentActivity_eServiceDetail:Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;

    iget v1, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->Index:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;->getWizardsDataVo(I)Lae/gov/mol/vo/WizardsDataVo;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mWizardsDataVo1:Lae/gov/mol/vo/WizardsDataVo;

    .line 167
    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 172
    const v4, 0x7f03005c

    invoke-virtual {p1, v4, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 173
    .local v3, "vi":Landroid/view/View;
    const v4, 0x7f0602bb

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/webkit/WebView;

    iput-object v4, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mWebView:Landroid/webkit/WebView;

    .line 175
    const v4, 0x7f060758

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mTextView:Landroid/widget/TextView;

    .line 177
    const v4, 0x7f060757

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mImageViewHome:Landroid/widget/ImageView;

    .line 179
    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mImageViewHome:Landroid/widget/ImageView;

    new-instance v5, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$1;

    invoke-direct {v5, p0}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$1;-><init>(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    iget-boolean v4, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->loadonce:Z

    if-eqz v4, :cond_1

    .line 189
    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mWizardsDataVo:Lae/gov/mol/vo/WizardsDataVo;

    if-eqz v4, :cond_1

    .line 191
    invoke-direct {p0}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->setTitle()V

    .line 192
    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    .line 193
    .local v2, "mSettings":Landroid/webkit/WebSettings;
    invoke-virtual {v2, v6}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 196
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09003c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, "isLargeFontRequired":Ljava/lang/String;
    const-string v4, "y"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 198
    .local v1, "isreq":Z
    if-eqz v1, :cond_0

    .line 200
    const/16 v4, 0x96

    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    .line 203
    :cond_0
    sget-object v4, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 205
    invoke-virtual {v2, v6}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 206
    invoke-virtual {v2, v6}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 207
    invoke-virtual {v2, v6}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 209
    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mWebView:Landroid/webkit/WebView;

    new-instance v5, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$2;

    invoke-direct {v5, p0}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$2;-><init>(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;)V

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 217
    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f08002d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 219
    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mWebView:Landroid/webkit/WebView;

    new-instance v5, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$3;

    invoke-direct {v5, p0}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$3;-><init>(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;)V

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 601
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mWizardsDataVo:Lae/gov/mol/vo/WizardsDataVo;

    invoke-virtual {v5}, Lae/gov/mol/vo/WizardsDataVo;->getHtmlUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 602
    const-string v5, "?lang="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lae/gov/mol/MolApplication;->getLANG_EN_AR()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 603
    const-string v5, "&time="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 604
    const-string v5, "&os=android"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 605
    const-string v5, "&tasheelUserId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mFragmentActivity_eServiceDetail:Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;

    invoke-static {v5}, Lae/gov/mol/MolApplication;->getTasheelUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 606
    const-string v5, "&userId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mFragmentActivity_eServiceDetail:Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;

    invoke-static {v5}, Lae/gov/mol/MolApplication;->getUserLoggedin(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 607
    const-string v5, "&CompanyNo="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mCompanyNo:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 609
    const-string v5, "&ServiceId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mServiceID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&Service_Code="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mServiceCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 601
    iput-object v4, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->nUrl:Ljava/lang/String;

    .line 612
    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    invoke-virtual {v4}, Lae/gov/mol/helper/CommonMethods;->isConnectingToInternet()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 615
    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mWebView:Landroid/webkit/WebView;

    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->nUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 621
    :goto_0
    iput-boolean v7, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->loadonce:Z

    .line 626
    .end local v0    # "isLargeFontRequired":Ljava/lang/String;
    .end local v1    # "isreq":Z
    .end local v2    # "mSettings":Landroid/webkit/WebSettings;
    :cond_1
    return-object v3

    .line 619
    .restart local v0    # "isLargeFontRequired":Ljava/lang/String;
    .restart local v1    # "isreq":Z
    .restart local v2    # "mSettings":Landroid/webkit/WebSettings;
    :cond_2
    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mFragmentActivity_eServiceDetail:Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;

    invoke-virtual {v4}, Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;->finishFragment()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 1089
    invoke-super {p0}, Lae/gov/mol/helper/CustomFragment;->onPause()V

    .line 1090
    invoke-direct {p0}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->dismissDialog()V

    .line 1091
    return-void
.end method

.method public pickImage(I)V
    .locals 2
    .param p1, "mId"    # I

    .prologue
    .line 868
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 869
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 870
    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 871
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 872
    iput p1, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mAttachmentButtonId:I

    .line 873
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->startActivityForResult(Landroid/content/Intent;I)V

    .line 874
    return-void
.end method

.method public showDataListPicker(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/MasterDataListVo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1225
    .local p1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lae/gov/mol/vo/MasterDataListVo;>;"
    const-string v1, ""

    .line 1228
    .local v1, "pageTitle":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-class v4, Lae/gov/mol/DropdownListActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1229
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "DATA_MAP"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1232
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mAjaxList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1236
    const-string v3, "PAGE_TITLE"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1237
    const/16 v3, 0xa

    invoke-virtual {p0, v0, v3}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1239
    return-void

    .line 1232
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lae/gov/mol/vo/KeyValueVo;

    .line 1233
    .local v2, "row":Lae/gov/mol/vo/KeyValueVo;
    invoke-virtual {v2}, Lae/gov/mol/vo/KeyValueVo;->getmKey()Ljava/lang/String;

    move-result-object v4

    const-string v5, "pageTitle"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1234
    invoke-virtual {v2}, Lae/gov/mol/vo/KeyValueVo;->getmValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected showDropdownList(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "listType"    # Ljava/lang/String;
    .param p2, "otherValue"    # Ljava/lang/String;

    .prologue
    .line 632
    new-instance v0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$MasterDataList;

    invoke-direct {v0, p0}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$MasterDataList;-><init>(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;)V

    .line 633
    .local v0, "dataList":Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$MasterDataList;
    invoke-virtual {v0, p1}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$MasterDataList;->setSearchType(Ljava/lang/String;)V

    .line 634
    if-eqz p2, :cond_0

    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 635
    invoke-virtual {v0, p2}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$MasterDataList;->setOtherValue(Ljava/lang/String;)V

    .line 636
    :cond_0
    new-instance v1, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$FetchAjaxData;

    invoke-direct {v1, p0}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$FetchAjaxData;-><init>(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;)V

    const/4 v2, 0x1

    new-array v2, v2, [Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$MasterDataList;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$FetchAjaxData;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 638
    return-void
.end method

.method protected showMessage(Ljava/lang/String;)V
    .locals 3
    .param p1, "mMessage"    # Ljava/lang/String;

    .prologue
    .line 744
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mFragmentActivity_eServiceDetail:Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Message "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 745
    return-void
.end method
