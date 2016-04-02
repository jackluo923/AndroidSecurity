.class public Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;
.super Lae/gov/mol/helper/CustomFragment;
.source "Fragment_publicEServiceDetail.java"


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
        Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail$PostAttachment;,
        Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail$getJSON;,
        Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail$hasData;,
        Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail$setValue;
    }
.end annotation


# static fields
.field public static final DATE:Ljava/lang/String; = "date"

.field private static final MANDATORY:Ljava/lang/String; = "1"

.field private static final NeedPhoto:Ljava/lang/String; = "NeedPhoto"

.field private static final REQUEST_CODE:I = 0x1

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
    .line 90
    const/4 v0, 0x0

    sput-boolean v0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->isPhotoRequired:Z

    .line 92
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 72
    invoke-direct {p0}, Lae/gov/mol/helper/CustomFragment;-><init>()V

    .line 81
    iput v2, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->Index:I

    .line 82
    iput v1, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->PageIndex:I

    .line 94
    const/16 v0, 0x1389

    iput v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mImageButtonCount:I

    .line 95
    const/16 v0, 0x1771

    iput v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mImageViewCount:I

    .line 96
    const/16 v0, 0x1b59

    iput v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mSubmitButtonCount:I

    .line 97
    iput-boolean v1, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->isActivityFinish:Z

    .line 98
    iput v2, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mAttachmentButtonId:I

    .line 99
    iput-boolean v1, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->isCalledOnce:Z

    .line 100
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mBrowseUrl:Ljava/lang/String;

    .line 101
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mCompanyNo:Ljava/lang/String;

    .line 102
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mServiceCode:Ljava/lang/String;

    .line 104
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mServiceID:Ljava/lang/String;

    .line 105
    iput v1, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->i:I

    .line 106
    iput v1, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->j:I

    .line 108
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->nUrl:Ljava/lang/String;

    .line 114
    const v0, 0x3d0fc81c

    iput v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->FILE_SIZE_IN_KB:I

    .line 585
    const/4 v0, 0x1

    iput-boolean v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->loadonce:Z

    .line 72
    return-void
.end method

.method private SetUpSubmitButton()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 673
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mWizardsDataVo:Lae/gov/mol/vo/WizardsDataVo;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mWizardsDataVo:Lae/gov/mol/vo/WizardsDataVo;

    invoke-virtual {v2}, Lae/gov/mol/vo/WizardsDataVo;->getHasSubmit()Ljava/lang/String;

    move-result-object v2

    const-string v3, "yes"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 674
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mFragmentActivity_eServiceDetail:Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;

    const v3, 0x7f09016b

    invoke-virtual {p0, v3}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;->CreateButton(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v0

    .line 675
    .local v0, "mButton":Landroid/widget/Button;
    iget v2, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mSubmitButtonCount:I

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setId(I)V

    .line 676
    new-instance v2, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail$4;

    invoke-direct {v2, p0}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail$4;-><init>(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 691
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    .line 692
    const/4 v3, -0x2

    const/high16 v4, 0x3f800000    # 1.0f

    .line 691
    invoke-direct {v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 693
    .local v1, "mParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1, v6, v5, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 695
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 697
    .end local v0    # "mButton":Landroid/widget/Button;
    .end local v1    # "mParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method static synthetic access$0(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 788
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mAttachmentData:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$1(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;)Ljava/util/LinkedHashMap;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mSelectedImage:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic access$10(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;)Lae/gov/mol/vo/WizardsDataVo;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mWizardsDataVo1:Lae/gov/mol/vo/WizardsDataVo;

    return-object v0
.end method

.method static synthetic access$11(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;)V
    .locals 0

    .prologue
    .line 526
    invoke-direct {p0}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->setTitle1()V

    return-void
.end method

.method static synthetic access$12(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mBrowseUrl:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$13(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mBrowseUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$14(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mCompanyNo:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$15(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;)V
    .locals 0

    .prologue
    .line 672
    invoke-direct {p0}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->SetUpSubmitButton()V

    return-void
.end method

.method static synthetic access$16()Z
    .locals 1

    .prologue
    .line 90
    sget-boolean v0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->isPhotoRequired:Z

    return v0
.end method

.method static synthetic access$2(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;)Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mFragmentActivity_eServiceDetail:Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;

    return-object v0
.end method

.method static synthetic access$3(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;)Lae/gov/mol/helper/PostParseGet;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mPostParseGet:Lae/gov/mol/helper/PostParseGet;

    return-object v0
.end method

.method static synthetic access$4(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 788
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mAttachmentData:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$5(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$6(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;)Z
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->isActivityFinish:Z

    return v0
.end method

.method static synthetic access$7(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;)V
    .locals 0

    .prologue
    .line 921
    invoke-direct {p0}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->dismissDialog()V

    return-void
.end method

.method static synthetic access$8(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;Landroid/app/ProgressDialog;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mProgressDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic access$9(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;Z)V
    .locals 0

    .prologue
    .line 97
    iput-boolean p1, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->isActivityFinish:Z

    return-void
.end method

.method private dismissDialog()V
    .locals 1

    .prologue
    .line 922
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 923
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 924
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 927
    :cond_0
    return-void
.end method

.method public static getHexString(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 775
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 777
    .local v1, "buf":[B
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 779
    .local v2, "sb":Ljava/lang/StringBuffer;
    array-length v5, v1

    move v3, v4

    :goto_0
    if-lt v3, v5, :cond_0

    .line 785
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 779
    :cond_0
    aget-byte v0, v1, v3

    .line 781
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

    .line 779
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private setTitle()V
    .locals 2

    .prologue
    .line 558
    const-string v0, ""

    .line 559
    .local v0, "mTitle":Ljava/lang/String;
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 560
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mWizardsDataVo:Lae/gov/mol/vo/WizardsDataVo;

    if-eqz v1, :cond_1

    .line 561
    invoke-static {}, Lae/gov/mol/MolApplication;->getLanguage()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 573
    :goto_0
    if-nez v0, :cond_0

    .line 574
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mWizardsDataVo:Lae/gov/mol/vo/WizardsDataVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/WizardsDataVo;->getWizardTitleEN()Ljava/lang/String;

    move-result-object v0

    .line 576
    :cond_0
    if-eqz v0, :cond_1

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 577
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mWizardsDataVo:Lae/gov/mol/vo/WizardsDataVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/WizardsDataVo;->getWizardTitleEN()Ljava/lang/String;

    move-result-object v0

    .line 580
    :cond_1
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 583
    :cond_2
    return-void

    .line 564
    :pswitch_0
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mWizardsDataVo:Lae/gov/mol/vo/WizardsDataVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/WizardsDataVo;->getWizardTitleEN()Ljava/lang/String;

    move-result-object v0

    .line 565
    goto :goto_0

    .line 567
    :pswitch_1
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mWizardsDataVo:Lae/gov/mol/vo/WizardsDataVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/WizardsDataVo;->getWizardTitleAR()Ljava/lang/String;

    move-result-object v0

    .line 568
    goto :goto_0

    .line 561
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
    .line 527
    const-string v0, ""

    .line 528
    .local v0, "mTitle":Ljava/lang/String;
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 529
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mWizardsDataVo1:Lae/gov/mol/vo/WizardsDataVo;

    if-eqz v1, :cond_1

    .line 530
    invoke-static {}, Lae/gov/mol/MolApplication;->getLanguage()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 542
    :goto_0
    if-nez v0, :cond_0

    .line 543
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mWizardsDataVo1:Lae/gov/mol/vo/WizardsDataVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/WizardsDataVo;->getWizardTitleEN()Ljava/lang/String;

    move-result-object v0

    .line 545
    :cond_0
    if-eqz v0, :cond_1

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 546
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mWizardsDataVo1:Lae/gov/mol/vo/WizardsDataVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/WizardsDataVo;->getWizardTitleEN()Ljava/lang/String;

    move-result-object v0

    .line 549
    :cond_1
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 552
    :cond_2
    return-void

    .line 533
    :pswitch_0
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mWizardsDataVo1:Lae/gov/mol/vo/WizardsDataVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/WizardsDataVo;->getWizardTitleEN()Ljava/lang/String;

    move-result-object v0

    .line 534
    goto :goto_0

    .line 536
    :pswitch_1
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mWizardsDataVo1:Lae/gov/mol/vo/WizardsDataVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/WizardsDataVo;->getWizardTitleAR()Ljava/lang/String;

    move-result-object v0

    .line 537
    goto :goto_0

    .line 530
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected NavigateNextPage(Ljava/lang/String;)V
    .locals 4
    .param p1, "mCompanyNo"    # Ljava/lang/String;

    .prologue
    .line 494
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mFragmentActivity_eServiceDetail:Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;

    invoke-virtual {v1, p1}, Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;->Create_publicEServiceDetail(Ljava/lang/String;)Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;

    move-result-object v0

    .line 495
    .local v0, "mFragment_eServiceDetail":Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;
    if-eqz v0, :cond_0

    .line 496
    invoke-direct {p0}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->dismissDialog()V

    .line 497
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mFragmentActivity_eServiceDetail:Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;

    .line 498
    const/4 v2, 0x1

    const/16 v3, 0x1001

    .line 497
    invoke-virtual {v1, v0, v2, v3}, Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;->replaceFragment(Landroid/support/v4/app/Fragment;ZI)V

    .line 500
    :cond_0
    return-void
.end method

.method protected SetUpAttachmentButtons()V
    .locals 14

    .prologue
    .line 601
    iget-object v9, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mKeyValueVos:Ljava/util/ArrayList;

    if-eqz v9, :cond_0

    .line 603
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v9, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mKeyValueVos:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lt v1, v9, :cond_2

    .line 613
    .end local v1    # "i":I
    :cond_0
    iget-object v9, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mWizardsDataVo:Lae/gov/mol/vo/WizardsDataVo;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mWizardsDataVo:Lae/gov/mol/vo/WizardsDataVo;

    invoke-virtual {v9}, Lae/gov/mol/vo/WizardsDataVo;->getAttachments()Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_1

    sget-boolean v9, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->isPhotoRequired:Z

    if-eqz v9, :cond_1

    .line 614
    iget-object v9, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mWizardsDataVo:Lae/gov/mol/vo/WizardsDataVo;

    invoke-virtual {v9}, Lae/gov/mol/vo/WizardsDataVo;->getAttachments()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 616
    .local v2, "mAttachmentDataVos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lae/gov/mol/vo/AttachmentDataVo;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_4

    .line 666
    .end local v2    # "mAttachmentDataVos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lae/gov/mol/vo/AttachmentDataVo;>;"
    :cond_1
    return-void

    .line 604
    .restart local v1    # "i":I
    :cond_2
    iget-object v9, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mKeyValueVos:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lae/gov/mol/vo/KeyValueVo;

    .line 605
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

    .line 606
    invoke-virtual {v5}, Lae/gov/mol/vo/KeyValueVo;->getmValue()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_3

    invoke-virtual {v5}, Lae/gov/mol/vo/KeyValueVo;->getmValue()Ljava/lang/String;

    move-result-object v9

    const-string v10, "1"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 607
    const/4 v9, 0x1

    sput-boolean v9, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->isPhotoRequired:Z

    .line 603
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 616
    .end local v1    # "i":I
    .end local v5    # "mKeyValueVo":Lae/gov/mol/vo/KeyValueVo;
    .restart local v2    # "mAttachmentDataVos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lae/gov/mol/vo/AttachmentDataVo;>;"
    :cond_4
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/gov/mol/vo/AttachmentDataVo;

    .line 617
    .local v0, "attachmentDataVo":Lae/gov/mol/vo/AttachmentDataVo;
    invoke-virtual {v0}, Lae/gov/mol/vo/AttachmentDataVo;->getLabelTitleEN()Ljava/lang/String;

    move-result-object v8

    .line 618
    .local v8, "mTitle":Ljava/lang/String;
    invoke-static {}, Lae/gov/mol/MolApplication;->getLanguage()I

    move-result v10

    packed-switch v10, :pswitch_data_0

    .line 628
    :goto_2
    if-nez v8, :cond_5

    .line 629
    invoke-virtual {v0}, Lae/gov/mol/vo/AttachmentDataVo;->getLabelTitleEN()Ljava/lang/String;

    move-result-object v8

    .line 631
    :cond_5
    if-eqz v8, :cond_6

    const-string v10, ""

    invoke-virtual {v8, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 632
    invoke-virtual {v0}, Lae/gov/mol/vo/AttachmentDataVo;->getLabelTitleEN()Ljava/lang/String;

    move-result-object v8

    .line 635
    :cond_6
    new-instance v6, Landroid/widget/LinearLayout;

    iget-object v10, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mFragmentActivity_eServiceDetail:Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;

    invoke-direct {v6, v10}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 636
    .local v6, "mLinearLayoutChild":Landroid/widget/LinearLayout;
    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 638
    new-instance v4, Landroid/widget/ImageView;

    iget-object v10, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mFragmentActivity_eServiceDetail:Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;

    invoke-direct {v4, v10}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 639
    .local v4, "mImageView":Landroid/widget/ImageView;
    iget v10, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mImageViewCount:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mImageViewCount:I

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setId(I)V

    .line 640
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v11, 0x96

    const/16 v12, 0x96

    invoke-direct {v10, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 641
    const v10, 0x7f0200e4

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 642
    sget-object v10, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 643
    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 645
    iget-object v10, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mFragmentActivity_eServiceDetail:Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;

    invoke-virtual {v10, v8}, Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;->CreateButton(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v3

    .line 646
    .local v3, "mButton":Landroid/widget/Button;
    iget v10, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mImageButtonCount:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mImageButtonCount:I

    invoke-virtual {v3, v10}, Landroid/widget/Button;->setId(I)V

    .line 647
    new-instance v10, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail$3;

    invoke-direct {v10, p0}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail$3;-><init>(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;)V

    invoke-virtual {v3, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 654
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x1

    .line 655
    const/4 v11, -0x2

    const/high16 v12, 0x3f800000    # 1.0f

    .line 654
    invoke-direct {v7, v10, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 656
    .local v7, "mParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v10, 0x8

    const/4 v11, 0x0

    const/16 v12, 0x8

    const/4 v13, 0x0

    invoke-virtual {v7, v10, v11, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 657
    const/16 v10, 0x10

    iput v10, v7, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 658
    invoke-virtual {v6, v3, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 660
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    .end local v7    # "mParams":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v10, -0x1

    .line 661
    const/4 v11, -0x2

    .line 660
    invoke-direct {v7, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 662
    .restart local v7    # "mParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v10, 0x8

    const/16 v11, 0x8

    const/16 v12, 0x8

    const/16 v13, 0x8

    invoke-virtual {v7, v10, v11, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 663
    iget-object v10, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 620
    .end local v3    # "mButton":Landroid/widget/Button;
    .end local v4    # "mImageView":Landroid/widget/ImageView;
    .end local v6    # "mLinearLayoutChild":Landroid/widget/LinearLayout;
    .end local v7    # "mParams":Landroid/widget/LinearLayout$LayoutParams;
    :pswitch_0
    invoke-virtual {v0}, Lae/gov/mol/vo/AttachmentDataVo;->getLabelTitleEN()Ljava/lang/String;

    move-result-object v8

    .line 621
    goto/16 :goto_2

    .line 623
    :pswitch_1
    invoke-virtual {v0}, Lae/gov/mol/vo/AttachmentDataVo;->getLabelTitleAR()Ljava/lang/String;

    move-result-object v8

    .line 624
    goto/16 :goto_2

    .line 618
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
    .line 508
    .local p1, "mAttachmentData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lae/gov/mol/vo/AttachmentVo;>;"
    const-string v2, ""

    .line 509
    .local v2, "mJson":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 510
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 516
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

    .line 524
    :cond_1
    :goto_1
    return-object v2

    .line 510
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lae/gov/mol/vo/AttachmentVo;

    .line 511
    .local v1, "mItem":Lae/gov/mol/vo/AttachmentVo;
    if-eqz v1, :cond_0

    .line 512
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

    .line 517
    .end local v1    # "mItem":Lae/gov/mol/vo/AttachmentVo;
    :catch_0
    move-exception v0

    .line 518
    .local v0, "e":Ljava/lang/StringIndexOutOfBoundsException;
    const-string v2, ""

    goto :goto_1

    .line 519
    .end local v0    # "e":Ljava/lang/StringIndexOutOfBoundsException;
    :catch_1
    move-exception v0

    .line 520
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v2, ""

    goto :goto_1
.end method

.method public getReplacedXmlData(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "mData"    # Ljava/lang/String;

    .prologue
    .line 890
    const-string v0, "&lt;"

    const-string v1, "<"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 891
    const-string v0, "&gt;"

    const-string v1, ">"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 892
    const-string v0, "&amp;"

    const-string v1, "and"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 893
    const-string v0, "&"

    const-string v1, "and"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 894
    const-string v0, "\r\n"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 895
    const-string v0, "> <"

    const-string v1, "><"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 896
    const-string v0, ">  <"

    const-string v1, "><"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 897
    const-string v0, ">    <"

    const-string v1, "><"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 898
    return-object p1
.end method

.method public getTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "mAlternateText"    # Ljava/lang/String;

    .prologue
    .line 905
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 906
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 908
    .end local p1    # "mAlternateText":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 15
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 727
    const/4 v1, 0x1

    move/from16 v0, p1

    if-ne v0, v1, :cond_0

    const/4 v1, -0x1

    move/from16 v0, p2

    if-ne v0, v1, :cond_0

    .line 728
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 730
    .local v2, "uri":Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "content"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 732
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mFragmentActivity_eServiceDetail:Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;

    invoke-virtual {v1}, Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 733
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 735
    const-string v1, "_data"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 736
    .local v7, "column_index":I
    invoke-interface {v8, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 737
    .local v9, "filePathUri":Landroid/net/Uri;
    invoke-virtual {v9}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v10

    .line 738
    .local v10, "file_path":Ljava/lang/String;
    if-eqz v10, :cond_0

    .line 739
    invoke-static {v10}, Lae/gov/mol/helper/CommonMethods;->getImageSizeInKB(Ljava/lang/String;)J

    move-result-wide v11

    .line 740
    .local v11, "kb":J
    const-wide/32 v3, 0x3d0fc81c

    cmp-long v1, v11, v3

    if-gtz v1, :cond_2

    .line 741
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mSelectedImage:Ljava/util/LinkedHashMap;

    new-instance v3, Ljava/lang/StringBuilder;

    iget v4, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mAttachmentButtonId:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v10}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 742
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mLinearLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 743
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mLinearLayout:Landroid/widget/LinearLayout;

    iget v3, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mAttachmentButtonId:I

    add-int/lit16 v3, v3, 0x3e8

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    .line 745
    .local v13, "mImageView":Landroid/widget/ImageView;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v1, v3, :cond_1

    .line 746
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mFragmentActivity_eServiceDetail:Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;

    invoke-static {v10, v1}, Lae/gov/mol/helper/CommonMethods;->getImageBitmapFromUri(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    invoke-virtual {v13, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 764
    .end local v2    # "uri":Landroid/net/Uri;
    .end local v7    # "column_index":I
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v9    # "filePathUri":Landroid/net/Uri;
    .end local v10    # "file_path":Ljava/lang/String;
    .end local v11    # "kb":J
    .end local v13    # "mImageView":Landroid/widget/ImageView;
    :cond_0
    :goto_0
    invoke-super/range {p0 .. p3}, Lae/gov/mol/helper/CustomFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 766
    return-void

    .line 748
    .restart local v2    # "uri":Landroid/net/Uri;
    .restart local v7    # "column_index":I
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v9    # "filePathUri":Landroid/net/Uri;
    .restart local v10    # "file_path":Ljava/lang/String;
    .restart local v11    # "kb":J
    .restart local v13    # "mImageView":Landroid/widget/ImageView;
    :cond_1
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mFragmentActivity_eServiceDetail:Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;

    invoke-static {v10, v1}, Lae/gov/mol/helper/CommonMethods;->getImageBitmapFromUri(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    invoke-virtual {v13, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 753
    .end local v13    # "mImageView":Landroid/widget/ImageView;
    :cond_2
    const-string v14, ""

    .line 754
    .local v14, "mTitle":Ljava/lang/String;
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    .line 755
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    .line 757
    :cond_3
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mFragmentActivity_eServiceDetail:Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;

    invoke-virtual {p0, v14}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->getTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f09023b

    invoke-virtual {p0, v4}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v1, v3, v4, v5}, Lae/gov/mol/helper/CommonMethods;->ShowAlert(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 118
    invoke-super {p0, p1}, Lae/gov/mol/helper/CustomFragment;->onCreate(Landroid/os/Bundle;)V

    .line 119
    new-instance v0, Lae/gov/mol/MolApplication;

    invoke-direct {v0}, Lae/gov/mol/MolApplication;-><init>()V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->app:Lae/gov/mol/MolApplication;

    .line 121
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mBundle:Landroid/os/Bundle;

    .line 122
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mBundle:Landroid/os/Bundle;

    invoke-static {}, Lae/gov/mol/MolApplication;->getmTags()Lae/gov/mol/helper/Tags;

    move-result-object v1

    iget-object v1, v1, Lae/gov/mol/helper/Tags;->meServicesDetailIndex:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->Index:I

    .line 123
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mBundle:Landroid/os/Bundle;

    const-string v1, "PageIndex"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->PageIndex:I

    .line 124
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mBundle:Landroid/os/Bundle;

    const v1, 0x7f090055

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mCompanyNo:Ljava/lang/String;

    .line 128
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mBundle:Landroid/os/Bundle;

    const v1, 0x7f090059

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mServiceID:Ljava/lang/String;

    .line 129
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mBundle:Landroid/os/Bundle;

    const v1, 0x7f09005a

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mServiceCode:Ljava/lang/String;

    .line 131
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mFragmentActivity_eServiceDetail:Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mKeyValueVos:Ljava/util/ArrayList;

    .line 133
    new-instance v0, Lae/gov/mol/helper/PostParseGet;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mFragmentActivity_eServiceDetail:Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;

    invoke-direct {v0, v1}, Lae/gov/mol/helper/PostParseGet;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mPostParseGet:Lae/gov/mol/helper/PostParseGet;

    .line 134
    new-instance v0, Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mFragmentActivity_eServiceDetail:Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;

    invoke-direct {v0, v1}, Lae/gov/mol/helper/CommonMethods;-><init>(Lae/gov/mol/helper/CustomFragmentActivity;)V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    .line 135
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    invoke-virtual {v0}, Lae/gov/mol/helper/CommonMethods;->isConnectingToInternet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mFragmentActivity_eServiceDetail:Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;

    const v1, 0x7f090099

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 137
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mFragmentActivity_eServiceDetail:Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;

    invoke-virtual {v0}, Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;->finishFragment()V

    .line 139
    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mSelectedImage:Ljava/util/LinkedHashMap;

    .line 140
    iget v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->Index:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_1

    .line 141
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mFragmentActivity_eServiceDetail:Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;

    iget v1, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->Index:I

    invoke-virtual {v0, v1}, Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;->getWizardsDataVo(I)Lae/gov/mol/vo/WizardsDataVo;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mWizardsDataVo:Lae/gov/mol/vo/WizardsDataVo;

    .line 142
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mFragmentActivity_eServiceDetail:Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;

    iget v1, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->Index:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;->getWizardsDataVo(I)Lae/gov/mol/vo/WizardsDataVo;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mWizardsDataVo1:Lae/gov/mol/vo/WizardsDataVo;

    .line 145
    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 150
    const v2, 0x7f03005c

    invoke-virtual {p1, v2, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 151
    .local v1, "vi":Landroid/view/View;
    const v2, 0x7f0602bb

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    iput-object v2, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mWebView:Landroid/webkit/WebView;

    .line 153
    const v2, 0x7f060758

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mTextView:Landroid/widget/TextView;

    .line 155
    const v2, 0x7f060757

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mImageViewHome:Landroid/widget/ImageView;

    .line 157
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mImageViewHome:Landroid/widget/ImageView;

    new-instance v3, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail$1;

    invoke-direct {v3, p0}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail$1;-><init>(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    iget-boolean v2, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->loadonce:Z

    if-eqz v2, :cond_0

    .line 167
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mWizardsDataVo:Lae/gov/mol/vo/WizardsDataVo;

    if-eqz v2, :cond_0

    .line 169
    invoke-direct {p0}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->setTitle()V

    .line 170
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 171
    .local v0, "mSettings":Landroid/webkit/WebSettings;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 178
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08002d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 180
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mWebView:Landroid/webkit/WebView;

    new-instance v3, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail$2;

    invoke-direct {v3, p0}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail$2;-><init>(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 460
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mWizardsDataVo:Lae/gov/mol/vo/WizardsDataVo;

    invoke-virtual {v3}, Lae/gov/mol/vo/WizardsDataVo;->getHtmlUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 461
    const-string v3, "?lang="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lae/gov/mol/MolApplication;->getLANG_EN_AR()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 462
    const-string v3, "&time="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 463
    const-string v3, "&os=android"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 464
    const-string v3, "&tasheelUserId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mFragmentActivity_eServiceDetail:Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;

    invoke-static {v3}, Lae/gov/mol/MolApplication;->getTasheelUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 465
    const-string v3, "&userId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mFragmentActivity_eServiceDetail:Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;

    invoke-static {v3}, Lae/gov/mol/MolApplication;->getUserLoggedin(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 466
    const-string v3, "&CompanyNo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mCompanyNo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 468
    const-string v3, "&ServiceId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mServiceID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&Service_Code="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mServiceCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 460
    iput-object v2, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->nUrl:Ljava/lang/String;

    .line 471
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    invoke-virtual {v2}, Lae/gov/mol/helper/CommonMethods;->isConnectingToInternet()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 473
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mWebView:Landroid/webkit/WebView;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->nUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 479
    :goto_0
    iput-boolean v5, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->loadonce:Z

    .line 484
    .end local v0    # "mSettings":Landroid/webkit/WebSettings;
    :cond_0
    return-object v1

    .line 477
    .restart local v0    # "mSettings":Landroid/webkit/WebSettings;
    :cond_1
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mFragmentActivity_eServiceDetail:Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;

    invoke-virtual {v2}, Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;->finishFragment()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 914
    invoke-super {p0}, Lae/gov/mol/helper/CustomFragment;->onPause()V

    .line 915
    invoke-direct {p0}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->dismissDialog()V

    .line 916
    return-void
.end method

.method public pickImage(I)V
    .locals 2
    .param p1, "mId"    # I

    .prologue
    .line 715
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 716
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 717
    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 718
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 719
    iput p1, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mAttachmentButtonId:I

    .line 720
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->startActivityForResult(Landroid/content/Intent;I)V

    .line 721
    return-void
.end method

.method protected showMessage(Ljava/lang/String;)V
    .locals 3
    .param p1, "mMessage"    # Ljava/lang/String;

    .prologue
    .line 592
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mFragmentActivity_eServiceDetail:Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;

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

    .line 593
    return-void
.end method
