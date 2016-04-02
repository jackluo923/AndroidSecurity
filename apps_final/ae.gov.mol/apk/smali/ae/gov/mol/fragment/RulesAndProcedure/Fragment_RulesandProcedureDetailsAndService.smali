.class public Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService;
.super Lae/gov/mol/helper/CustomFragment;
.source "Fragment_RulesandProcedureDetailsAndService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService$BackProcess;,
        Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService$Fragment_ListAdapter;,
        Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService$ViewHolder;
    }
.end annotation


# instance fields
.field mAndService_Childitem:Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService_Childitem;

.field mBundle:Landroid/os/Bundle;

.field mCommonMethods:Lae/gov/mol/helper/CommonMethods;

.field mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

.field mFragment_ListAdapter:Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService$Fragment_ListAdapter;

.field mImageViewHome:Landroid/widget/ImageView;

.field mListView:Landroid/widget/ListView;

.field mParserChildData:Lae/gov/mol/vo/ParserChildData;

.field mParserGroupData:Lae/gov/mol/vo/ParserGroupData;

.field mProgressDialog:Landroid/app/ProgressDialog;

.field mRelativeLayout:Landroid/widget/RelativeLayout;

.field mServicesVo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/ServicesVo;",
            ">;"
        }
    .end annotation
.end field

.field mStringRulesandProcidureDetailTitle:Ljava/lang/String;

.field mStringRulesandProcidureId:Ljava/lang/String;

.field mStringRulesandProcidureServiceId:Ljava/lang/String;

.field mStringWebContent:Ljava/lang/String;

.field mTags:Lae/gov/mol/helper/Tags;

.field mTextViewHeader:Landroid/widget/TextView;

.field mView:Landroid/view/View;

.field mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

.field public mserviceXMLHandler:Lae/gov/xmlhandler/ServiceXMLHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lae/gov/mol/helper/CustomFragment;-><init>()V

    .line 64
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService;->mStringRulesandProcidureId:Ljava/lang/String;

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService;->mStringRulesandProcidureDetailTitle:Ljava/lang/String;

    .line 66
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService;->mStringRulesandProcidureServiceId:Ljava/lang/String;

    .line 74
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService;->mStringWebContent:Ljava/lang/String;

    .line 49
    return-void
.end method


# virtual methods
.method public getChildItem(Ljava/util/List;IZ)Ljava/lang/String;
    .locals 8
    .param p2, "position"    # I
    .param p3, "isEnglish"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lae/gov/mol/vo/ServicesVo;",
            ">;IZ)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, "mservicelist":Ljava/util/List;, "Ljava/util/List<Lae/gov/mol/vo/ServicesVo;>;"
    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 277
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 327
    const-string v1, ""

    :goto_0
    return-object v1

    .line 277
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/gov/mol/vo/ServicesVo;

    .line 278
    .local v0, "s":Lae/gov/mol/vo/ServicesVo;
    if-eqz p3, :cond_b

    .line 279
    if-nez p2, :cond_2

    .line 280
    invoke-virtual {v0}, Lae/gov/mol/vo/ServicesVo;->getService_definition_eng()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 281
    :cond_2
    if-ne p2, v3, :cond_3

    .line 282
    invoke-virtual {v0}, Lae/gov/mol/vo/ServicesVo;->getApplication_form_eng()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 283
    :cond_3
    if-ne p2, v4, :cond_4

    .line 284
    invoke-virtual {v0}, Lae/gov/mol/vo/ServicesVo;->getConditions_eng()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 285
    :cond_4
    if-ne p2, v5, :cond_5

    .line 286
    invoke-virtual {v0}, Lae/gov/mol/vo/ServicesVo;->getRequired_documents_eng()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 287
    :cond_5
    if-ne p2, v6, :cond_6

    .line 288
    invoke-virtual {v0}, Lae/gov/mol/vo/ServicesVo;->getStepsToFollow_eng()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 289
    :cond_6
    if-ne p2, v7, :cond_7

    .line 290
    invoke-virtual {v0}, Lae/gov/mol/vo/ServicesVo;->getWhereToApply_eng()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 291
    :cond_7
    const/4 v2, 0x6

    if-ne p2, v2, :cond_8

    .line 292
    invoke-virtual {v0}, Lae/gov/mol/vo/ServicesVo;->getFees_eng()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 293
    :cond_8
    const/4 v2, 0x7

    if-ne p2, v2, :cond_9

    .line 294
    invoke-virtual {v0}, Lae/gov/mol/vo/ServicesVo;->getNooftransactions()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 295
    :cond_9
    const/16 v2, 0x8

    if-ne p2, v2, :cond_a

    .line 296
    invoke-virtual {v0}, Lae/gov/mol/vo/ServicesVo;->getTime_eng()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 298
    :cond_a
    const/16 v2, 0x9

    if-ne p2, v2, :cond_0

    .line 299
    const-string v1, ""

    goto :goto_0

    .line 302
    :cond_b
    if-nez p3, :cond_0

    .line 303
    if-nez p2, :cond_c

    .line 304
    invoke-virtual {v0}, Lae/gov/mol/vo/ServicesVo;->getService_definition_arb()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 305
    :cond_c
    if-ne p2, v3, :cond_d

    .line 306
    invoke-virtual {v0}, Lae/gov/mol/vo/ServicesVo;->getApplication_form_arb()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 307
    :cond_d
    if-ne p2, v4, :cond_e

    .line 308
    invoke-virtual {v0}, Lae/gov/mol/vo/ServicesVo;->getConditions_arb()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 309
    :cond_e
    if-ne p2, v5, :cond_f

    .line 310
    invoke-virtual {v0}, Lae/gov/mol/vo/ServicesVo;->getRequired_documents_arb()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 311
    :cond_f
    if-ne p2, v6, :cond_10

    .line 312
    invoke-virtual {v0}, Lae/gov/mol/vo/ServicesVo;->getStepsToFollow_arb()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 313
    :cond_10
    if-ne p2, v7, :cond_11

    .line 314
    invoke-virtual {v0}, Lae/gov/mol/vo/ServicesVo;->getWhereToApply_arb()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 315
    :cond_11
    const/4 v2, 0x6

    if-ne p2, v2, :cond_12

    .line 316
    invoke-virtual {v0}, Lae/gov/mol/vo/ServicesVo;->getFees_arb()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 317
    :cond_12
    const/4 v2, 0x7

    if-ne p2, v2, :cond_13

    .line 318
    invoke-virtual {v0}, Lae/gov/mol/vo/ServicesVo;->getNooftransactions()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 319
    :cond_13
    const/16 v2, 0x8

    if-ne p2, v2, :cond_14

    .line 320
    invoke-virtual {v0}, Lae/gov/mol/vo/ServicesVo;->getTime_arb()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 322
    :cond_14
    const/16 v2, 0x9

    if-ne p2, v2, :cond_0

    .line 323
    const-string v1, ""

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 82
    invoke-super {p0, p1}, Lae/gov/mol/helper/CustomFragment;->onCreate(Landroid/os/Bundle;)V

    .line 83
    invoke-virtual {p0}, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lae/gov/mol/helper/CustomFragmentActivity;

    iput-object v0, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    .line 84
    new-instance v0, Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-direct {v0, v1}, Lae/gov/mol/helper/CommonMethods;-><init>(Lae/gov/mol/helper/CustomFragmentActivity;)V

    iput-object v0, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    .line 85
    invoke-static {}, Lae/gov/mol/MolApplication;->getmTags()Lae/gov/mol/helper/Tags;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService;->mTags:Lae/gov/mol/helper/Tags;

    .line 86
    new-instance v0, Lae/gov/mol/webservices/WebServiceResponse;

    iget-object v1, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-direct {v0, v1}, Lae/gov/mol/webservices/WebServiceResponse;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    .line 87
    invoke-virtual {p0}, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService;->mBundle:Landroid/os/Bundle;

    .line 88
    iget-object v0, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService;->mBundle:Landroid/os/Bundle;

    iget-object v1, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService;->mTags:Lae/gov/mol/helper/Tags;

    iget-object v1, v1, Lae/gov/mol/helper/Tags;->mRulesAndProcedureDetailTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService;->mStringRulesandProcidureDetailTitle:Ljava/lang/String;

    .line 89
    iget-object v0, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService;->mBundle:Landroid/os/Bundle;

    iget-object v1, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService;->mTags:Lae/gov/mol/helper/Tags;

    iget-object v1, v1, Lae/gov/mol/helper/Tags;->mRulesAndProcedureId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService;->mStringRulesandProcidureId:Ljava/lang/String;

    .line 90
    iget-object v0, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService;->mBundle:Landroid/os/Bundle;

    iget-object v1, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService;->mTags:Lae/gov/mol/helper/Tags;

    iget-object v1, v1, Lae/gov/mol/helper/Tags;->mRulesAndProcedureServiceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService;->mStringRulesandProcidureServiceId:Ljava/lang/String;

    .line 92
    new-instance v0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService$BackProcess;

    invoke-direct {v0, p0}, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService$BackProcess;-><init>(Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService$BackProcess;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "um"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService;->mStringRulesandProcidureDetailTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "um"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService;->mStringRulesandProcidureId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mStringRulesandProcidureId"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService;->mStringRulesandProcidureServiceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "minInflater"    # Landroid/view/LayoutInflater;
    .param p2, "mViewGroup"    # Landroid/view/ViewGroup;
    .param p3, "mBundle"    # Landroid/os/Bundle;

    .prologue
    .line 103
    new-instance v0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService_Childitem;

    invoke-direct {v0}, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService_Childitem;-><init>()V

    iput-object v0, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService;->mAndService_Childitem:Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService_Childitem;

    .line 104
    const v0, 0x7f0300c4

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService;->mView:Landroid/view/View;

    .line 105
    iget-object v0, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService;->mView:Landroid/view/View;

    const v1, 0x7f060681

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService;->mRelativeLayout:Landroid/widget/RelativeLayout;

    .line 106
    iget-object v0, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService;->mRelativeLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f060758

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService;->mTextViewHeader:Landroid/widget/TextView;

    .line 107
    iget-object v0, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService;->mTextViewHeader:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService;->mStringRulesandProcidureDetailTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v0, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService;->mView:Landroid/view/View;

    const v1, 0x7f060757

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService;->mImageViewHome:Landroid/widget/ImageView;

    .line 109
    iget-object v0, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService;->mImageViewHome:Landroid/widget/ImageView;

    new-instance v1, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService$1;

    invoke-direct {v1, p0}, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService$1;-><init>(Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v0, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService;->mView:Landroid/view/View;

    const v1, 0x7f06068b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService;->mListView:Landroid/widget/ListView;

    .line 120
    iget-object v0, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService;->mListView:Landroid/widget/ListView;

    new-instance v1, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService$2;

    invoke-direct {v1, p0}, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService$2;-><init>(Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 148
    iget-object v0, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 332
    invoke-super {p0}, Lae/gov/mol/helper/CustomFragment;->onResume()V

    .line 333
    iget-object v0, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 334
    new-instance v0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService$Fragment_ListAdapter;

    invoke-virtual {p0}, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f0d0000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService$Fragment_ListAdapter;-><init>(Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService;[Ljava/lang/String;)V

    iput-object v0, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService;->mFragment_ListAdapter:Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService$Fragment_ListAdapter;

    .line 335
    iget-object v0, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService;->mFragment_ListAdapter:Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService$Fragment_ListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 337
    :cond_0
    return-void
.end method
