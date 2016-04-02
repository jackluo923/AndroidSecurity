.class public Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures;
.super Lae/gov/mol/helper/CustomFragment;
.source "Fragment_RulesAndProcedures.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures$BackProcess;,
        Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures$ListBaseAdapter;,
        Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures$ViewHolder;
    }
.end annotation


# instance fields
.field ServiceGroupdata:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/ServiceGroupdata;",
            ">;"
        }
    .end annotation
.end field

.field height:I

.field mImageViewBanner:Landroid/widget/ImageView;

.field mImageViewHome:Landroid/widget/ImageView;

.field mListBaseAdapter:Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures$ListBaseAdapter;

.field mListViewRulesAndProcidure:Landroid/widget/ListView;

.field mProgressDialog:Landroid/app/ProgressDialog;

.field mServiceGroupdata:Lae/gov/mol/vo/ServiceGroupdata;

.field mTags:Lae/gov/mol/helper/Tags;

.field mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

.field molFragmentActivity:Lae/gov/mol/MolFragmentActivity;

.field private myXMLHandler:Lae/gov/xmlhandler/ItemXMLHandler;

.field width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Lae/gov/mol/helper/CustomFragment;-><init>()V

    .line 59
    iput v0, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures;->height:I

    .line 60
    iput v0, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures;->width:I

    .line 43
    return-void
.end method

.method static synthetic access$0(Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures;Lae/gov/xmlhandler/ItemXMLHandler;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures;->myXMLHandler:Lae/gov/xmlhandler/ItemXMLHandler;

    return-void
.end method

.method static synthetic access$1(Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures;)Lae/gov/xmlhandler/ItemXMLHandler;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures;->myXMLHandler:Lae/gov/xmlhandler/ItemXMLHandler;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 64
    invoke-super {p0, p1}, Lae/gov/mol/helper/CustomFragment;->onCreate(Landroid/os/Bundle;)V

    .line 65
    invoke-virtual {p0}, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lae/gov/mol/MolFragmentActivity;

    iput-object v0, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures;->molFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    .line 66
    invoke-static {}, Lae/gov/mol/MolApplication;->getmTags()Lae/gov/mol/helper/Tags;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures;->mTags:Lae/gov/mol/helper/Tags;

    .line 67
    new-instance v0, Lae/gov/mol/webservices/WebServiceResponse;

    iget-object v1, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures;->molFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    invoke-direct {v0, v1}, Lae/gov/mol/webservices/WebServiceResponse;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    .line 68
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "minInflater"    # Landroid/view/LayoutInflater;
    .param p2, "mViewGroup"    # Landroid/view/ViewGroup;
    .param p3, "mBundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 72
    const v1, 0x7f0300c2

    invoke-virtual {p1, v1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 73
    .local v0, "mView":Landroid/view/View;
    const v1, 0x7f060685

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures;->mImageViewBanner:Landroid/widget/ImageView;

    .line 74
    iget-object v1, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures;->mImageViewBanner:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 75
    iget-object v1, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures;->mImageViewBanner:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures;->GetDeviceHeight(Landroid/widget/ImageView;)V

    .line 76
    const v1, 0x7f060757

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures;->mImageViewHome:Landroid/widget/ImageView;

    .line 77
    iget-object v1, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures;->mImageViewHome:Landroid/widget/ImageView;

    new-instance v2, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures$1;

    invoke-direct {v2, p0}, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures$1;-><init>(Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    const v1, 0x7f060758

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f09008f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 86
    const v1, 0x7f060686

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures;->mListViewRulesAndProcidure:Landroid/widget/ListView;

    .line 88
    iget-object v1, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures;->mListViewRulesAndProcidure:Landroid/widget/ListView;

    new-instance v2, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures$2;

    invoke-direct {v2, p0}, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures$2;-><init>(Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 108
    iget-object v1, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures;->ServiceGroupdata:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 109
    new-instance v1, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures$BackProcess;

    invoke-direct {v1, p0}, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures$BackProcess;-><init>(Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures;)V

    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures$BackProcess;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 111
    :cond_0
    return-object v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 235
    invoke-super {p0}, Lae/gov/mol/helper/CustomFragment;->onResume()V

    .line 237
    iget-object v0, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures;->ServiceGroupdata:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures;->ServiceGroupdata:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 239
    new-instance v0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures$ListBaseAdapter;

    invoke-direct {v0, p0}, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures$ListBaseAdapter;-><init>(Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures;)V

    iput-object v0, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures;->mListBaseAdapter:Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures$ListBaseAdapter;

    .line 240
    iget-object v0, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures;->mListViewRulesAndProcidure:Landroid/widget/ListView;

    iget-object v1, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures;->mListBaseAdapter:Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures$ListBaseAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 242
    :cond_0
    return-void
.end method
