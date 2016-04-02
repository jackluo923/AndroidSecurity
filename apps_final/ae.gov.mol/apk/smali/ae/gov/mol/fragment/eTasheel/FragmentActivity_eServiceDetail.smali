.class public Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;
.super Lae/gov/mol/helper/CustomFragmentActivity;
.source "FragmentActivity_eServiceDetail.java"


# instance fields
.field Id:I

.field private mCompanyNo:Ljava/lang/String;

.field private mCurrentFragmentIndex:I

.field private mDetailsURL:Ljava/lang/String;

.field private mExpiredLabourCard:Ljava/lang/String;

.field private mServiceCode:Ljava/lang/String;

.field private mServiceDataVo:Lae/gov/mol/vo/ServiceDataVo;

.field private mServiceID:Ljava/lang/String;

.field private mTemplate:Ljava/lang/String;

.field private mType:Ljava/lang/String;

.field private mWizardsDataVo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/WizardsDataVo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lae/gov/mol/helper/CustomFragmentActivity;-><init>()V

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;->mCurrentFragmentIndex:I

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;->mCompanyNo:Ljava/lang/String;

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;->mExpiredLabourCard:Ljava/lang/String;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;->mTemplate:Ljava/lang/String;

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;->mType:Ljava/lang/String;

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;->mDetailsURL:Ljava/lang/String;

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;->mServiceID:Ljava/lang/String;

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;->mServiceCode:Ljava/lang/String;

    .line 150
    const/16 v0, 0x3ea

    iput v0, p0, Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;->Id:I

    .line 27
    return-void
.end method


# virtual methods
.method public CreateButton(Ljava/lang/String;)Landroid/widget/Button;
    .locals 3
    .param p1, "mName"    # Ljava/lang/String;

    .prologue
    .line 152
    iget v1, p0, Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;->Id:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;->Id:I

    .line 153
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 154
    .local v0, "mButton":Landroid/widget/Button;
    iget v1, p0, Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;->Id:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setId(I)V

    .line 155
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 156
    const v1, 0x7f020064

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 157
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08003e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 158
    return-object v0
.end method

.method public Create_eServiceDetail(Ljava/lang/String;)Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;
    .locals 4
    .param p1, "mCompanyNo"    # Ljava/lang/String;

    .prologue
    .line 100
    const/4 v1, 0x0

    .line 101
    .local v1, "mFragment_eServiceDetail":Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;->mWizardsDataVo:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;->mWizardsDataVo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;->mCurrentFragmentIndex:I

    if-le v2, v3, :cond_0

    .line 102
    iget v2, p0, Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;->mCurrentFragmentIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;->mCurrentFragmentIndex:I

    .line 103
    new-instance v1, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;

    .end local v1    # "mFragment_eServiceDetail":Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;
    invoke-direct {v1}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;-><init>()V

    .line 104
    .restart local v1    # "mFragment_eServiceDetail":Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 105
    .local v0, "mBundle":Landroid/os/Bundle;
    invoke-static {}, Lae/gov/mol/MolApplication;->getmTags()Lae/gov/mol/helper/Tags;

    move-result-object v2

    iget-object v2, v2, Lae/gov/mol/helper/Tags;->meServicesDetailIndex:Ljava/lang/String;

    iget v3, p0, Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;->mCurrentFragmentIndex:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 106
    const-string v2, "PageIndex"

    iget v3, p0, Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;->mCurrentFragmentIndex:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 107
    const v2, 0x7f090055

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string v2, "mTemplate"

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;->mTemplate:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string v2, "mType"

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;->mType:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-string v2, "mDetailsURL"

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;->mDetailsURL:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v2, "mServiceID"

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;->mServiceID:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string v2, "mServiceCode"

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;->mServiceCode:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const v2, 0x7f09005b

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;->mExpiredLabourCard:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-virtual {v1, v0}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->setArguments(Landroid/os/Bundle;)V

    .line 116
    .end local v0    # "mBundle":Landroid/os/Bundle;
    :cond_0
    return-object v1
.end method

.method public Create_publicEServiceDetail(Ljava/lang/String;)Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;
    .locals 4
    .param p1, "mCompanyNo"    # Ljava/lang/String;

    .prologue
    .line 120
    const/4 v1, 0x0

    .line 121
    .local v1, "mFragment_publicEServiceDetail":Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;->mWizardsDataVo:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;->mWizardsDataVo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;->mCurrentFragmentIndex:I

    if-le v2, v3, :cond_0

    .line 122
    iget v2, p0, Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;->mCurrentFragmentIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;->mCurrentFragmentIndex:I

    .line 123
    new-instance v1, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;

    .end local v1    # "mFragment_publicEServiceDetail":Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;
    invoke-direct {v1}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;-><init>()V

    .line 124
    .restart local v1    # "mFragment_publicEServiceDetail":Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 125
    .local v0, "mBundle":Landroid/os/Bundle;
    invoke-static {}, Lae/gov/mol/MolApplication;->getmTags()Lae/gov/mol/helper/Tags;

    move-result-object v2

    iget-object v2, v2, Lae/gov/mol/helper/Tags;->meServicesDetailIndex:Ljava/lang/String;

    iget v3, p0, Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;->mCurrentFragmentIndex:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 126
    const-string v2, "PageIndex"

    iget v3, p0, Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;->mCurrentFragmentIndex:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 127
    const v2, 0x7f090055

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string v2, "mTemplate"

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;->mTemplate:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string v2, "mType"

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;->mType:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-string v2, "mDetailsURL"

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;->mDetailsURL:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string v2, "mServiceID"

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;->mServiceID:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string v2, "mServiceCode"

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;->mServiceCode:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const v2, 0x7f09005b

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;->mExpiredLabourCard:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-virtual {v1, v0}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->setArguments(Landroid/os/Bundle;)V

    .line 136
    .end local v0    # "mBundle":Landroid/os/Bundle;
    :cond_0
    return-object v1
.end method

.method public finishFragment()V
    .locals 2

    .prologue
    .line 89
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 90
    .local v0, "manager":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 91
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 94
    :goto_0
    return-void

    .line 93
    :cond_0
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;->finish()V

    goto :goto_0
.end method

.method public finishFragmentOrActivity(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 80
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 81
    .local v0, "manager":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 82
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 85
    :goto_0
    return-void

    .line 84
    :cond_0
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;->finish()V

    goto :goto_0
.end method

.method public getWizardsDataVo(I)Lae/gov/mol/vo/WizardsDataVo;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 140
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;->mWizardsDataVo:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;->mWizardsDataVo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 141
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;->mWizardsDataVo:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/gov/mol/vo/WizardsDataVo;

    .line 143
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 163
    iget v0, p0, Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;->mCurrentFragmentIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;->mCurrentFragmentIndex:I

    .line 164
    iget v0, p0, Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;->mCurrentFragmentIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 165
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;->finish()V

    .line 167
    :cond_0
    invoke-super {p0}, Lae/gov/mol/helper/CustomFragmentActivity;->onBackPressed()V

    .line 168
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 45
    invoke-super {p0, p1}, Lae/gov/mol/helper/CustomFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const v0, 0x7f0300dd

    invoke-virtual {p0, v0}, Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;->setContentView(I)V

    .line 47
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {}, Lae/gov/mol/MolApplication;->getmTags()Lae/gov/mol/helper/Tags;

    move-result-object v1

    iget-object v1, v1, Lae/gov/mol/helper/Tags;->meServicesDetail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lae/gov/mol/vo/ServiceDataVo;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;->mServiceDataVo:Lae/gov/mol/vo/ServiceDataVo;

    .line 48
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;->mServiceDataVo:Lae/gov/mol/vo/ServiceDataVo;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;->mServiceDataVo:Lae/gov/mol/vo/ServiceDataVo;

    invoke-virtual {v0}, Lae/gov/mol/vo/ServiceDataVo;->getWizards()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;->mWizardsDataVo:Ljava/util/ArrayList;

    .line 50
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const v1, 0x7f090055

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;->mCompanyNo:Ljava/lang/String;

    .line 51
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;->mServiceDataVo:Lae/gov/mol/vo/ServiceDataVo;

    invoke-virtual {v0}, Lae/gov/mol/vo/ServiceDataVo;->getTemplate()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;->mTemplate:Ljava/lang/String;

    .line 52
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;->mServiceDataVo:Lae/gov/mol/vo/ServiceDataVo;

    invoke-virtual {v0}, Lae/gov/mol/vo/ServiceDataVo;->getMethodCall()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;->mType:Ljava/lang/String;

    .line 53
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;->mServiceDataVo:Lae/gov/mol/vo/ServiceDataVo;

    invoke-virtual {v0}, Lae/gov/mol/vo/ServiceDataVo;->getPageURL()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;->mDetailsURL:Ljava/lang/String;

    .line 54
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;->mServiceDataVo:Lae/gov/mol/vo/ServiceDataVo;

    invoke-virtual {v0}, Lae/gov/mol/vo/ServiceDataVo;->getServiceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;->mServiceID:Ljava/lang/String;

    .line 55
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;->mServiceDataVo:Lae/gov/mol/vo/ServiceDataVo;

    invoke-static {v0}, Lae/gov/mol/vo/ServiceDataGroupVo;->GetServiceCode(Lae/gov/mol/vo/ServiceDataVo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;->mServiceCode:Ljava/lang/String;

    .line 56
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const v1, 0x7f09005b

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;->mExpiredLabourCard:Ljava/lang/String;

    .line 57
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;->mCompanyNo:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;->Create_eServiceDetail(Ljava/lang/String;)Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;

    move-result-object v0

    const/4 v1, 0x1

    const/16 v2, 0x1001

    invoke-virtual {p0, v0, v1, v2}, Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;->replaceFragment(Landroid/support/v4/app/Fragment;ZI)V

    .line 62
    :goto_0
    return-void

    .line 60
    :cond_0
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;->finish()V

    goto :goto_0
.end method

.method public replaceFragment(Landroid/support/v4/app/Fragment;ZI)V
    .locals 2
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "addToBackStack"    # Z
    .param p3, "transition"    # I

    .prologue
    .line 68
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 69
    .local v0, "ft":Landroid/support/v4/app/FragmentTransaction;
    const v1, 0x7f0601be

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 70
    invoke-virtual {v0, p3}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    .line 71
    if-eqz p2, :cond_0

    .line 72
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 73
    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 74
    return-void
.end method
