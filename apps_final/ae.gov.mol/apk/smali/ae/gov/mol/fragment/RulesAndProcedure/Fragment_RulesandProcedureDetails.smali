.class public Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetails;
.super Lae/gov/mol/helper/CustomFragment;
.source "Fragment_RulesandProcedureDetails.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetails$BackProcess;,
        Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetails$ListBaseAdapter;,
        Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetails$ViewHolder;
    }
.end annotation


# instance fields
.field mBundle:Landroid/os/Bundle;

.field mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

.field mImageViewHome:Landroid/widget/ImageView;

.field mListBaseAdapter:Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetails$ListBaseAdapter;

.field mListView:Landroid/widget/ListView;

.field mProgressDialog:Landroid/app/ProgressDialog;

.field mServiceGroupDetailsVo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/ServiceGroupDetailsVo;",
            ">;"
        }
    .end annotation
.end field

.field mStringRulesandProcidureDetailTitle:Ljava/lang/String;

.field mStringRulesandProcidureId:Ljava/lang/String;

.field mTags:Lae/gov/mol/helper/Tags;

.field mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

.field private myXMLHandler:Lae/gov/xmlhandler/ItemXMLHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lae/gov/mol/helper/CustomFragment;-><init>()V

    .line 61
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetails;->mStringRulesandProcidureId:Ljava/lang/String;

    .line 62
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetails;->mStringRulesandProcidureDetailTitle:Ljava/lang/String;

    .line 46
    return-void
.end method

.method static synthetic access$0(Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetails;Lae/gov/xmlhandler/ItemXMLHandler;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetails;->myXMLHandler:Lae/gov/xmlhandler/ItemXMLHandler;

    return-void
.end method

.method static synthetic access$1(Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetails;)Lae/gov/xmlhandler/ItemXMLHandler;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetails;->myXMLHandler:Lae/gov/xmlhandler/ItemXMLHandler;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 67
    invoke-super {p0, p1}, Lae/gov/mol/helper/CustomFragment;->onCreate(Landroid/os/Bundle;)V

    .line 68
    invoke-virtual {p0}, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetails;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lae/gov/mol/helper/CustomFragmentActivity;

    iput-object v0, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetails;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    .line 69
    invoke-static {}, Lae/gov/mol/MolApplication;->getmTags()Lae/gov/mol/helper/Tags;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetails;->mTags:Lae/gov/mol/helper/Tags;

    .line 70
    new-instance v0, Lae/gov/mol/webservices/WebServiceResponse;

    iget-object v1, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetails;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-direct {v0, v1}, Lae/gov/mol/webservices/WebServiceResponse;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetails;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    .line 71
    invoke-virtual {p0}, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetails;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetails;->mBundle:Landroid/os/Bundle;

    .line 73
    iget-object v0, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetails;->mBundle:Landroid/os/Bundle;

    iget-object v1, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetails;->mTags:Lae/gov/mol/helper/Tags;

    iget-object v1, v1, Lae/gov/mol/helper/Tags;->mRulesAndProcedureDetailTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetails;->mStringRulesandProcidureDetailTitle:Ljava/lang/String;

    .line 74
    iget-object v0, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetails;->mBundle:Landroid/os/Bundle;

    iget-object v1, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetails;->mTags:Lae/gov/mol/helper/Tags;

    iget-object v1, v1, Lae/gov/mol/helper/Tags;->mRulesAndProcedureId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetails;->mStringRulesandProcidureId:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "minInflater"    # Landroid/view/LayoutInflater;
    .param p2, "mViewGroup"    # Landroid/view/ViewGroup;
    .param p3, "mBundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 79
    const v1, 0x7f0300c3

    invoke-virtual {p1, v1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 81
    .local v0, "mView":Landroid/view/View;
    const v1, 0x7f06068a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetails;->mListView:Landroid/widget/ListView;

    .line 83
    const v1, 0x7f060758

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetails;->mStringRulesandProcidureDetailTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    const v1, 0x7f060757

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetails;->mImageViewHome:Landroid/widget/ImageView;

    .line 86
    iget-object v1, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetails;->mImageViewHome:Landroid/widget/ImageView;

    new-instance v2, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetails$1;

    invoke-direct {v2, p0}, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetails$1;-><init>(Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetails;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object v1, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetails;->mListView:Landroid/widget/ListView;

    new-instance v2, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetails$2;

    invoke-direct {v2, p0}, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetails$2;-><init>(Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetails;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 117
    iget-object v1, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetails;->mServiceGroupDetailsVo:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 118
    new-instance v1, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetails$BackProcess;

    invoke-direct {v1, p0}, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetails$BackProcess;-><init>(Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetails;)V

    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetails$BackProcess;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 120
    :cond_0
    return-object v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 240
    invoke-super {p0}, Lae/gov/mol/helper/CustomFragment;->onResume()V

    .line 242
    iget-object v0, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetails;->mServiceGroupDetailsVo:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetails;->mServiceGroupDetailsVo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 245
    new-instance v0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetails$ListBaseAdapter;

    invoke-direct {v0, p0}, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetails$ListBaseAdapter;-><init>(Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetails;)V

    iput-object v0, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetails;->mListBaseAdapter:Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetails$ListBaseAdapter;

    .line 246
    iget-object v0, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetails;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetails;->mListBaseAdapter:Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetails$ListBaseAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 248
    :cond_0
    return-void
.end method
