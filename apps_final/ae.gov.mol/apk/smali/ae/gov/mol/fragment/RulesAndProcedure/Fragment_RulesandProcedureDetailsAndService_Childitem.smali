.class public Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService_Childitem;
.super Lae/gov/mol/helper/CustomFragment;
.source "Fragment_RulesandProcedureDetailsAndService_Childitem.java"


# instance fields
.field mBundle:Landroid/os/Bundle;

.field mCommonMethods:Lae/gov/mol/helper/CommonMethods;

.field mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

.field mImageViewHome:Landroid/widget/ImageView;

.field mProgressDialog:Landroid/app/ProgressDialog;

.field mRelativeLayout:Landroid/widget/RelativeLayout;

.field mServicesVo:Lae/gov/mol/vo/ServicesVo;

.field mStringWebContent:Ljava/lang/String;

.field mTags:Lae/gov/mol/helper/Tags;

.field mTextViewHeader:Landroid/widget/TextView;

.field mView:Landroid/view/View;

.field mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

.field mWebView:Landroid/webkit/WebView;

.field public mserviceXMLHandler:Lae/gov/xmlhandler/ServiceXMLHandler;

.field value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lae/gov/mol/helper/CustomFragment;-><init>()V

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService_Childitem;->value:Ljava/lang/String;

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService_Childitem;->mStringWebContent:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 52
    invoke-super {p0, p1}, Lae/gov/mol/helper/CustomFragment;->onCreate(Landroid/os/Bundle;)V

    .line 54
    invoke-virtual {p0}, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService_Childitem;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lae/gov/mol/helper/CustomFragmentActivity;

    iput-object v0, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService_Childitem;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    .line 55
    new-instance v0, Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService_Childitem;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-direct {v0, v1}, Lae/gov/mol/helper/CommonMethods;-><init>(Lae/gov/mol/helper/CustomFragmentActivity;)V

    iput-object v0, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService_Childitem;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    .line 56
    invoke-static {}, Lae/gov/mol/MolApplication;->getmTags()Lae/gov/mol/helper/Tags;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService_Childitem;->mTags:Lae/gov/mol/helper/Tags;

    .line 57
    new-instance v0, Lae/gov/mol/webservices/WebServiceResponse;

    iget-object v1, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService_Childitem;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-direct {v0, v1}, Lae/gov/mol/webservices/WebServiceResponse;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService_Childitem;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    .line 59
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v3, 0x7f07007e

    .line 64
    const v0, 0x7f0300c1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService_Childitem;->mView:Landroid/view/View;

    .line 65
    iget-object v0, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService_Childitem;->mView:Landroid/view/View;

    const v1, 0x7f060682

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService_Childitem;->mWebView:Landroid/webkit/WebView;

    .line 66
    invoke-virtual {p0}, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService_Childitem;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService_Childitem;->mBundle:Landroid/os/Bundle;

    .line 67
    iget-object v0, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService_Childitem;->mView:Landroid/view/View;

    const v1, 0x7f060681

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService_Childitem;->mRelativeLayout:Landroid/widget/RelativeLayout;

    .line 68
    iget-object v0, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService_Childitem;->mRelativeLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f060758

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService_Childitem;->mTextViewHeader:Landroid/widget/TextView;

    .line 69
    iget-object v0, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService_Childitem;->mTextViewHeader:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService_Childitem;->mBundle:Landroid/os/Bundle;

    const v2, 0x7f090051

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService_Childitem;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v0, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService_Childitem;->mView:Landroid/view/View;

    const v1, 0x7f060757

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService_Childitem;->mImageViewHome:Landroid/widget/ImageView;

    .line 71
    iget-object v0, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService_Childitem;->mImageViewHome:Landroid/widget/ImageView;

    new-instance v1, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService_Childitem$1;

    invoke-direct {v1, p0}, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService_Childitem$1;-><init>(Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService_Childitem;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object v0, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService_Childitem;->mBundle:Landroid/os/Bundle;

    const v1, 0x7f090050

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService_Childitem;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService_Childitem;->value:Ljava/lang/String;

    .line 81
    iget-object v0, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService_Childitem;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    invoke-virtual {v0}, Lae/gov/mol/helper/CommonMethods;->isDeviceVersionHoneycombAbove()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<html><head><style type=\"text/css\">body {font-size:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService_Childitem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";background-color:transparent;\"}</style></head><body>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService_Childitem;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</body></html>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService_Childitem;->mStringWebContent:Ljava/lang/String;

    .line 83
    iget-object v0, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService_Childitem;->mWebView:Landroid/webkit/WebView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 84
    iget-object v0, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService_Childitem;->mWebView:Landroid/webkit/WebView;

    const-string v1, "file:///android_asset/"

    iget-object v2, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService_Childitem;->mStringWebContent:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    const-string v5, ""

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :goto_0
    iget-object v0, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService_Childitem;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p0}, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService_Childitem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08002d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 92
    iget-object v0, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService_Childitem;->mView:Landroid/view/View;

    return-object v0

    .line 86
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<html><body style=\"font-family:Helvetica;font-size:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService_Childitem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";\"\'background-color:transparent\' >"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService_Childitem;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService_Childitem;->mStringWebContent:Ljava/lang/String;

    .line 87
    iget-object v0, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService_Childitem;->mWebView:Landroid/webkit/WebView;

    const-string v1, "file:///android_asset/"

    iget-object v2, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService_Childitem;->mStringWebContent:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    const-string v5, ""

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
