.class public Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatusDetails;
.super Landroid/support/v4/app/Fragment;
.source "FragmentInspectionStatusDetails.java"


# instance fields
.field mBundle:Landroid/os/Bundle;

.field mInspectionRequestAndStatusVo:Lae/gov/mol/vo/InspectionRequestAndStatusVo;

.field mTextViewCompanyName:Landroid/widget/TextView;

.field mTextViewCompanyNumber:Landroid/widget/TextView;

.field mTextViewScheduleDate:Landroid/widget/TextView;

.field mTextViewStatus:Landroid/widget/TextView;

.field mView:Landroid/view/View;

.field strNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatusDetails;->strNumber:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatusDetails;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatusDetails;->mBundle:Landroid/os/Bundle;

    .line 38
    new-instance v0, Lae/gov/mol/vo/InspectionRequestAndStatusVo;

    invoke-direct {v0}, Lae/gov/mol/vo/InspectionRequestAndStatusVo;-><init>()V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatusDetails;->mInspectionRequestAndStatusVo:Lae/gov/mol/vo/InspectionRequestAndStatusVo;

    .line 39
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatusDetails;->mBundle:Landroid/os/Bundle;

    const v1, 0x7f09004a

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatusDetails;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lae/gov/mol/vo/InspectionRequestAndStatusVo;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatusDetails;->mInspectionRequestAndStatusVo:Lae/gov/mol/vo/InspectionRequestAndStatusVo;

    .line 40
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 44
    const v0, 0x7f030092

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatusDetails;->mView:Landroid/view/View;

    .line 46
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatusDetails;->mView:Landroid/view/View;

    const v1, 0x7f060758

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f09015e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 48
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatusDetails;->mView:Landroid/view/View;

    const v1, 0x7f06052c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatusDetails;->mTextViewCompanyNumber:Landroid/widget/TextView;

    .line 49
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatusDetails;->mView:Landroid/view/View;

    const v1, 0x7f06052e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatusDetails;->mTextViewCompanyName:Landroid/widget/TextView;

    .line 50
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatusDetails;->mView:Landroid/view/View;

    const v1, 0x7f060530

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatusDetails;->mTextViewStatus:Landroid/widget/TextView;

    .line 51
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatusDetails;->mView:Landroid/view/View;

    const v1, 0x7f060532

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatusDetails;->mTextViewScheduleDate:Landroid/widget/TextView;

    .line 54
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatusDetails;->mInspectionRequestAndStatusVo:Lae/gov/mol/vo/InspectionRequestAndStatusVo;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatusDetails;->mTextViewCompanyNumber:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatusDetails;->mInspectionRequestAndStatusVo:Lae/gov/mol/vo/InspectionRequestAndStatusVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/InspectionRequestAndStatusVo;->getCom_code()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatusDetails;->mTextViewStatus:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatusDetails;->mInspectionRequestAndStatusVo:Lae/gov/mol/vo/InspectionRequestAndStatusVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/InspectionRequestAndStatusVo;->getInspectionStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    invoke-static {}, Lae/gov/mol/MolApplication;->getLanguage()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 74
    :cond_0
    :goto_0
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatusDetails;->mView:Landroid/view/View;

    return-object v0

    .line 62
    :pswitch_0
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatusDetails;->mTextViewCompanyName:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatusDetails;->mInspectionRequestAndStatusVo:Lae/gov/mol/vo/InspectionRequestAndStatusVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/InspectionRequestAndStatusVo;->getComNameE()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 66
    :pswitch_1
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatusDetails;->mTextViewCompanyName:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatusDetails;->mInspectionRequestAndStatusVo:Lae/gov/mol/vo/InspectionRequestAndStatusVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/InspectionRequestAndStatusVo;->getComNameA()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 60
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
