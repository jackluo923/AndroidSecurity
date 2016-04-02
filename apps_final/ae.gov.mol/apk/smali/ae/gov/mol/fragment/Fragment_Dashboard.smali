.class public Lae/gov/mol/fragment/Fragment_Dashboard;
.super Lae/gov/mol/helper/CustomFragment;
.source "Fragment_Dashboard.java"


# static fields
.field public static final ARG_PAGE:Ljava/lang/String; = "page"


# instance fields
.field private fragment_dashboard_imageview_status:Landroid/widget/ImageView;

.field private fragment_dashboard_progresswheel:Lae/gov/mol/helper/ProgressWheel;

.field private fragment_dashboard_textview_absconding_cases:Landroid/widget/TextView;

.field private fragment_dashboard_textview_company_code:Landroid/widget/TextView;

.field private fragment_dashboard_textview_company_name:Landroid/widget/TextView;

.field private fragment_dashboard_textview_complaints:Landroid/widget/TextView;

.field private fragment_dashboard_textview_employees:Landroid/widget/TextView;

.field private fragment_dashboard_textview_less_than_sixty_year:Landroid/widget/TextView;

.field private fragment_dashboard_textview_more_than_sixty_year:Landroid/widget/TextView;

.field private fragment_dashboard_textview_remaining_quota:Landroid/widget/TextView;

.field private fragment_dashboard_textview_sixty_year:Landroid/widget/TextView;

.field private fragment_dashboard_textview_status:Landroid/widget/TextView;

.field private fragment_dashboard_textview_used:Landroid/widget/TextView;

.field private mCompanyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/OwnerstatisticsVo;",
            ">;"
        }
    .end annotation
.end field

.field private mLinearLayoutQuota:Landroid/widget/LinearLayout;

.field mMolFragmentActivity:Lae/gov/mol/MolFragmentActivity;

.field private mPageNumber:I

.field mRelativeLayout:Landroid/widget/RelativeLayout;

.field mTextViewHeader:Landroid/widget/TextView;

.field private mTextViewNoQuota:Landroid/widget/TextView;

.field private mTextViewTotalQuota:Landroid/widget/TextView;

.field private mTextViewfragment_dashboard_textview_emirates:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Lae/gov/mol/helper/CustomFragment;-><init>()V

    .line 86
    return-void
.end method

.method public static create(I)Lae/gov/mol/fragment/Fragment_Dashboard;
    .locals 3
    .param p0, "pageNumber"    # I

    .prologue
    .line 89
    new-instance v1, Lae/gov/mol/fragment/Fragment_Dashboard;

    invoke-direct {v1}, Lae/gov/mol/fragment/Fragment_Dashboard;-><init>()V

    .line 90
    .local v1, "fragment":Lae/gov/mol/fragment/Fragment_Dashboard;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 91
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "page"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 92
    invoke-virtual {v1, v0}, Lae/gov/mol/fragment/Fragment_Dashboard;->setArguments(Landroid/os/Bundle;)V

    .line 93
    return-object v1
.end method

.method private setData(Lae/gov/mol/vo/OwnerstatisticsVo;)V
    .locals 13
    .param p1, "mCompanyListVo"    # Lae/gov/mol/vo/OwnerstatisticsVo;

    .prologue
    const/16 v10, 0x8

    const/high16 v9, 0x42c80000    # 100.0f

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 152
    invoke-static {}, Lae/gov/mol/MolApplication;->getLanguage()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 172
    :goto_0
    invoke-virtual {p1}, Lae/gov/mol/vo/OwnerstatisticsVo;->getCom_status()Ljava/lang/String;

    move-result-object v6

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 173
    iget-object v6, p0, Lae/gov/mol/fragment/Fragment_Dashboard;->fragment_dashboard_imageview_status:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lae/gov/mol/fragment/Fragment_Dashboard;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f020121

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 179
    :cond_0
    :goto_1
    iget-object v6, p0, Lae/gov/mol/fragment/Fragment_Dashboard;->fragment_dashboard_textview_company_code:Landroid/widget/TextView;

    invoke-virtual {p1}, Lae/gov/mol/vo/OwnerstatisticsVo;->getCOMPANYCODE()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v6, p0, Lae/gov/mol/fragment/Fragment_Dashboard;->fragment_dashboard_textview_status:Landroid/widget/TextView;

    invoke-virtual {p1}, Lae/gov/mol/vo/OwnerstatisticsVo;->getSTATUS_NAME()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    iget-object v6, p0, Lae/gov/mol/fragment/Fragment_Dashboard;->fragment_dashboard_textview_employees:Landroid/widget/TextView;

    invoke-virtual {p1}, Lae/gov/mol/vo/OwnerstatisticsVo;->getEMPLOYEES()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    iget-object v6, p0, Lae/gov/mol/fragment/Fragment_Dashboard;->fragment_dashboard_textview_complaints:Landroid/widget/TextView;

    invoke-virtual {p1}, Lae/gov/mol/vo/OwnerstatisticsVo;->getTOTALCOMPLAINT()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    iget-object v6, p0, Lae/gov/mol/fragment/Fragment_Dashboard;->fragment_dashboard_textview_absconding_cases:Landroid/widget/TextView;

    invoke-virtual {p1}, Lae/gov/mol/vo/OwnerstatisticsVo;->getTOTALABSCONDING()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    invoke-virtual {p1}, Lae/gov/mol/vo/OwnerstatisticsVo;->getmCompanyQuotaVo()Lae/gov/mol/vo/CompanyQuotaVo;

    move-result-object v1

    .line 186
    .local v1, "mCompanyQuotaVo":Lae/gov/mol/vo/CompanyQuotaVo;
    if-eqz v1, :cond_2

    .line 187
    iget-object v6, p0, Lae/gov/mol/fragment/Fragment_Dashboard;->mLinearLayoutQuota:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 188
    iget-object v6, p0, Lae/gov/mol/fragment/Fragment_Dashboard;->mTextViewNoQuota:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 190
    invoke-virtual {v1}, Lae/gov/mol/vo/CompanyQuotaVo;->getAPPROVE()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    .line 191
    .local v5, "total":F
    invoke-virtual {v1}, Lae/gov/mol/vo/CompanyQuotaVo;->getBalance()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    .line 192
    .local v4, "remain":F
    sub-float v0, v5, v4

    .line 194
    .local v0, "got":F
    mul-float v6, v0, v9

    div-float v3, v6, v5

    .line 196
    .local v3, "percentage":F
    const/high16 v6, 0x43b40000    # 360.0f

    mul-float/2addr v6, v3

    div-float v2, v6, v9

    .line 198
    .local v2, "new_percentage":F
    iget-object v6, p0, Lae/gov/mol/fragment/Fragment_Dashboard;->fragment_dashboard_progresswheel:Lae/gov/mol/helper/ProgressWheel;

    float-to-int v7, v2

    iput v7, v6, Lae/gov/mol/helper/ProgressWheel;->progress:I

    .line 200
    iget-object v6, p0, Lae/gov/mol/fragment/Fragment_Dashboard;->fragment_dashboard_progresswheel:Lae/gov/mol/helper/ProgressWheel;

    const-string v7, ""

    invoke-virtual {v6, v7}, Lae/gov/mol/helper/ProgressWheel;->setTextGot(Ljava/lang/String;)V

    .line 201
    iget-object v6, p0, Lae/gov/mol/fragment/Fragment_Dashboard;->fragment_dashboard_progresswheel:Lae/gov/mol/helper/ProgressWheel;

    const-string v7, ""

    invoke-virtual {v6, v7}, Lae/gov/mol/helper/ProgressWheel;->setTextLeft(Ljava/lang/String;)V

    .line 202
    iget-object v6, p0, Lae/gov/mol/fragment/Fragment_Dashboard;->fragment_dashboard_progresswheel:Lae/gov/mol/helper/ProgressWheel;

    const-string v7, ""

    invoke-virtual {v6, v7}, Lae/gov/mol/helper/ProgressWheel;->setTextTotal(Ljava/lang/String;)V

    .line 204
    iget-object v6, p0, Lae/gov/mol/fragment/Fragment_Dashboard;->mTextViewTotalQuota:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "%.0f"

    new-array v9, v12, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7f090077

    invoke-virtual {p0, v8}, Lae/gov/mol/fragment/Fragment_Dashboard;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    iget-object v6, p0, Lae/gov/mol/fragment/Fragment_Dashboard;->fragment_dashboard_textview_used:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "%.0f"

    new-array v9, v12, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7f0900cc

    invoke-virtual {p0, v8}, Lae/gov/mol/fragment/Fragment_Dashboard;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    iget-object v6, p0, Lae/gov/mol/fragment/Fragment_Dashboard;->fragment_dashboard_textview_remaining_quota:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "%.0f"

    new-array v9, v12, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7f090075

    invoke-virtual {p0, v8}, Lae/gov/mol/fragment/Fragment_Dashboard;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    .end local v0    # "got":F
    .end local v2    # "new_percentage":F
    .end local v3    # "percentage":F
    .end local v4    # "remain":F
    .end local v5    # "total":F
    :goto_2
    invoke-static {}, Lae/gov/mol/MolApplication;->getLanguage()I

    move-result v6

    packed-switch v6, :pswitch_data_1

    .line 224
    :goto_3
    iget-object v6, p0, Lae/gov/mol/fragment/Fragment_Dashboard;->fragment_dashboard_textview_more_than_sixty_year:Landroid/widget/TextView;

    invoke-virtual {p1}, Lae/gov/mol/vo/OwnerstatisticsVo;->getExpiredCardMorethan60Days()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    iget-object v6, p0, Lae/gov/mol/fragment/Fragment_Dashboard;->fragment_dashboard_textview_less_than_sixty_year:Landroid/widget/TextView;

    invoke-virtual {p1}, Lae/gov/mol/vo/OwnerstatisticsVo;->getExpiredCardLesshan60Days()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    iget-object v6, p0, Lae/gov/mol/fragment/Fragment_Dashboard;->fragment_dashboard_textview_sixty_year:Landroid/widget/TextView;

    invoke-virtual {p1}, Lae/gov/mol/vo/OwnerstatisticsVo;->getExpiredin60Days()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    return-void

    .line 154
    .end local v1    # "mCompanyQuotaVo":Lae/gov/mol/vo/CompanyQuotaVo;
    :pswitch_0
    iget-object v6, p0, Lae/gov/mol/fragment/Fragment_Dashboard;->fragment_dashboard_textview_company_name:Landroid/widget/TextView;

    invoke-virtual {p1}, Lae/gov/mol/vo/OwnerstatisticsVo;->getCompanyName_eng()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 159
    :pswitch_1
    iget-object v6, p0, Lae/gov/mol/fragment/Fragment_Dashboard;->fragment_dashboard_textview_company_name:Landroid/widget/TextView;

    invoke-virtual {p1}, Lae/gov/mol/vo/OwnerstatisticsVo;->getCOMPANYNAME()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 175
    :cond_1
    invoke-virtual {p1}, Lae/gov/mol/vo/OwnerstatisticsVo;->getCom_status()Ljava/lang/String;

    move-result-object v6

    const-string v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 176
    iget-object v6, p0, Lae/gov/mol/fragment/Fragment_Dashboard;->fragment_dashboard_imageview_status:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lae/gov/mol/fragment/Fragment_Dashboard;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f02015e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 208
    .restart local v1    # "mCompanyQuotaVo":Lae/gov/mol/vo/CompanyQuotaVo;
    :cond_2
    iget-object v6, p0, Lae/gov/mol/fragment/Fragment_Dashboard;->mLinearLayoutQuota:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 209
    iget-object v6, p0, Lae/gov/mol/fragment/Fragment_Dashboard;->mTextViewNoQuota:Landroid/widget/TextView;

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 214
    :pswitch_2
    iget-object v6, p0, Lae/gov/mol/fragment/Fragment_Dashboard;->mTextViewfragment_dashboard_textview_emirates:Landroid/widget/TextView;

    invoke-virtual {p1}, Lae/gov/mol/vo/OwnerstatisticsVo;->getOFFICENAME_ENG()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 217
    :pswitch_3
    iget-object v6, p0, Lae/gov/mol/fragment/Fragment_Dashboard;->mTextViewfragment_dashboard_textview_emirates:Landroid/widget/TextView;

    invoke-virtual {p1}, Lae/gov/mol/vo/OwnerstatisticsVo;->getOFFICENAME()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 152
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 212
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public getPageNumber()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lae/gov/mol/fragment/Fragment_Dashboard;->mPageNumber:I

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 79
    invoke-super {p0, p1}, Lae/gov/mol/helper/CustomFragment;->onCreate(Landroid/os/Bundle;)V

    .line 80
    invoke-virtual {p0}, Lae/gov/mol/fragment/Fragment_Dashboard;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lae/gov/mol/MolFragmentActivity;

    iput-object v0, p0, Lae/gov/mol/fragment/Fragment_Dashboard;->mMolFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    .line 81
    invoke-virtual {p0}, Lae/gov/mol/fragment/Fragment_Dashboard;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "page"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lae/gov/mol/fragment/Fragment_Dashboard;->mPageNumber:I

    .line 82
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedinstance"    # Landroid/os/Bundle;

    .prologue
    .line 107
    const v4, 0x7f03004d

    const/4 v5, 0x0

    invoke-virtual {p1, v4, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 109
    .local v3, "mView":Landroid/view/View;
    sget-object v4, Lae/gov/mol/MolApplication;->mCompanyList:Ljava/util/ArrayList;

    iput-object v4, p0, Lae/gov/mol/fragment/Fragment_Dashboard;->mCompanyList:Ljava/util/ArrayList;

    .line 111
    const v4, 0x7f0601cb

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lae/gov/mol/fragment/Fragment_Dashboard;->fragment_dashboard_textview_company_name:Landroid/widget/TextView;

    .line 112
    const v4, 0x7f0601ce

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lae/gov/mol/fragment/Fragment_Dashboard;->fragment_dashboard_textview_company_code:Landroid/widget/TextView;

    .line 113
    const v4, 0x7f0601d0

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lae/gov/mol/fragment/Fragment_Dashboard;->fragment_dashboard_textview_status:Landroid/widget/TextView;

    .line 114
    const v4, 0x7f0601d1

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lae/gov/mol/fragment/Fragment_Dashboard;->fragment_dashboard_imageview_status:Landroid/widget/ImageView;

    .line 115
    const v4, 0x7f0601d7

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lae/gov/mol/fragment/Fragment_Dashboard;->fragment_dashboard_textview_employees:Landroid/widget/TextView;

    .line 116
    const v4, 0x7f0601e1

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lae/gov/mol/fragment/Fragment_Dashboard;->fragment_dashboard_textview_complaints:Landroid/widget/TextView;

    .line 117
    const v4, 0x7f0601dc

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lae/gov/mol/fragment/Fragment_Dashboard;->fragment_dashboard_textview_absconding_cases:Landroid/widget/TextView;

    .line 118
    const v4, 0x7f0601e6

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lae/gov/mol/fragment/Fragment_Dashboard;->mTextViewfragment_dashboard_textview_emirates:Landroid/widget/TextView;

    .line 119
    const v4, 0x7f0601eb

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lae/gov/mol/helper/ProgressWheel;

    iput-object v4, p0, Lae/gov/mol/fragment/Fragment_Dashboard;->fragment_dashboard_progresswheel:Lae/gov/mol/helper/ProgressWheel;

    .line 120
    const v4, 0x7f0601ed

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lae/gov/mol/fragment/Fragment_Dashboard;->fragment_dashboard_textview_used:Landroid/widget/TextView;

    .line 121
    const v4, 0x7f0601ef

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lae/gov/mol/fragment/Fragment_Dashboard;->fragment_dashboard_textview_remaining_quota:Landroid/widget/TextView;

    .line 122
    const v4, 0x7f0601f8

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lae/gov/mol/fragment/Fragment_Dashboard;->fragment_dashboard_textview_more_than_sixty_year:Landroid/widget/TextView;

    .line 123
    const v4, 0x7f0601fd

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lae/gov/mol/fragment/Fragment_Dashboard;->fragment_dashboard_textview_less_than_sixty_year:Landroid/widget/TextView;

    .line 124
    const v4, 0x7f060202

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lae/gov/mol/fragment/Fragment_Dashboard;->fragment_dashboard_textview_sixty_year:Landroid/widget/TextView;

    .line 126
    const v4, 0x7f0601e9

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lae/gov/mol/fragment/Fragment_Dashboard;->mLinearLayoutQuota:Landroid/widget/LinearLayout;

    .line 128
    const v4, 0x7f0601f1

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lae/gov/mol/fragment/Fragment_Dashboard;->mTextViewTotalQuota:Landroid/widget/TextView;

    .line 129
    const v4, 0x7f0601e8

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lae/gov/mol/fragment/Fragment_Dashboard;->mTextViewNoQuota:Landroid/widget/TextView;

    .line 132
    :try_start_0
    iget-object v4, p0, Lae/gov/mol/fragment/Fragment_Dashboard;->mCompanyList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lae/gov/mol/fragment/Fragment_Dashboard;->getPageNumber()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lae/gov/mol/vo/OwnerstatisticsVo;

    invoke-direct {p0, v4}, Lae/gov/mol/fragment/Fragment_Dashboard;->setData(Lae/gov/mol/vo/OwnerstatisticsVo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :goto_0
    iget-object v4, p0, Lae/gov/mol/fragment/Fragment_Dashboard;->mMolFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    invoke-virtual {v4}, Lae/gov/mol/MolFragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 140
    .local v1, "display":Landroid/view/Display;
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/view/View;->measure(II)V

    .line 142
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    .line 144
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 145
    .local v0, "Height":I
    invoke-static {v0}, Lae/gov/mol/fragment/Fragment_DashboardSlider;->SetHeight(I)V

    .line 147
    return-object v3

    .line 133
    .end local v0    # "Height":I
    .end local v1    # "display":Landroid/view/Display;
    :catch_0
    move-exception v2

    .line 135
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 136
    iget-object v4, p0, Lae/gov/mol/fragment/Fragment_Dashboard;->mMolFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    invoke-virtual {v4, v3}, Lae/gov/mol/MolFragmentActivity;->finishFragmentOrActivity(Landroid/view/View;)V

    goto :goto_0
.end method
