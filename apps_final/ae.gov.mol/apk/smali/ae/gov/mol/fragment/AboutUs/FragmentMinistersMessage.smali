.class public Lae/gov/mol/fragment/AboutUs/FragmentMinistersMessage;
.super Landroid/support/v4/app/Fragment;
.source "FragmentMinistersMessage.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ServiceCast"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/gov/mol/fragment/AboutUs/FragmentMinistersMessage$BackProcess;
    }
.end annotation


# static fields
.field static ministerMessageVo:Lae/gov/mol/vo/MinisterMessageVo$MinistersMessageData;


# instance fields
.field mCommonMethods:Lae/gov/mol/helper/CommonMethods;

.field mFragmentAboutUsPager:Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;

.field mProgressDialog:Landroid/app/ProgressDialog;

.field mStringWebContent:Ljava/lang/String;

.field mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

.field mWebViewMessage:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/AboutUs/FragmentMinistersMessage;->mStringWebContent:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public static newInstance()Lae/gov/mol/fragment/AboutUs/FragmentMinistersMessage;
    .locals 1

    .prologue
    .line 60
    new-instance v0, Lae/gov/mol/fragment/AboutUs/FragmentMinistersMessage;

    invoke-direct {v0}, Lae/gov/mol/fragment/AboutUs/FragmentMinistersMessage;-><init>()V

    .line 61
    .local v0, "f":Lae/gov/mol/fragment/AboutUs/FragmentMinistersMessage;
    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 45
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p0}, Lae/gov/mol/fragment/AboutUs/FragmentMinistersMessage;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;

    iput-object v0, p0, Lae/gov/mol/fragment/AboutUs/FragmentMinistersMessage;->mFragmentAboutUsPager:Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;

    .line 47
    new-instance v0, Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/AboutUs/FragmentMinistersMessage;->mFragmentAboutUsPager:Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;

    invoke-direct {v0, v1}, Lae/gov/mol/helper/CommonMethods;-><init>(Lae/gov/mol/helper/CustomFragmentActivity;)V

    iput-object v0, p0, Lae/gov/mol/fragment/AboutUs/FragmentMinistersMessage;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    .line 48
    new-instance v0, Lae/gov/mol/webservices/WebServiceResponse;

    iget-object v1, p0, Lae/gov/mol/fragment/AboutUs/FragmentMinistersMessage;->mFragmentAboutUsPager:Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;

    invoke-direct {v0, v1}, Lae/gov/mol/webservices/WebServiceResponse;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lae/gov/mol/fragment/AboutUs/FragmentMinistersMessage;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    .line 49
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 53
    const v1, 0x7f0300a2

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 54
    .local v0, "mView":Landroid/view/View;
    const v1, 0x7f06059c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    iput-object v1, p0, Lae/gov/mol/fragment/AboutUs/FragmentMinistersMessage;->mWebViewMessage:Landroid/webkit/WebView;

    .line 56
    return-object v0
.end method

.method public onResume()V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const v6, 0x7f08002d

    .line 128
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 129
    sget-object v0, Lae/gov/mol/fragment/AboutUs/FragmentMinistersMessage;->ministerMessageVo:Lae/gov/mol/vo/MinisterMessageVo$MinistersMessageData;

    if-eqz v0, :cond_0

    .line 130
    sget-object v0, Lae/gov/mol/fragment/AboutUs/FragmentMinistersMessage;->ministerMessageVo:Lae/gov/mol/vo/MinisterMessageVo$MinistersMessageData;

    invoke-virtual {v0}, Lae/gov/mol/vo/MinisterMessageVo$MinistersMessageData;->getDescription()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<html><body style=\"font-family:Helvetica;font-size:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lae/gov/mol/fragment/AboutUs/FragmentMinistersMessage;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07007a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";\"\'background-color:transparent\' >"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lae/gov/mol/fragment/AboutUs/FragmentMinistersMessage;->ministerMessageVo:Lae/gov/mol/vo/MinisterMessageVo$MinistersMessageData;

    invoke-virtual {v1}, Lae/gov/mol/vo/MinisterMessageVo$MinistersMessageData;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/AboutUs/FragmentMinistersMessage;->mStringWebContent:Ljava/lang/String;

    .line 132
    :cond_0
    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/FragmentMinistersMessage;->mWebViewMessage:Landroid/webkit/WebView;

    invoke-virtual {p0}, Lae/gov/mol/fragment/AboutUs/FragmentMinistersMessage;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 133
    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/FragmentMinistersMessage;->mWebViewMessage:Landroid/webkit/WebView;

    const-string v1, "file:///android_asset/"

    iget-object v2, p0, Lae/gov/mol/fragment/AboutUs/FragmentMinistersMessage;->mStringWebContent:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/FragmentMinistersMessage;->mWebViewMessage:Landroid/webkit/WebView;

    invoke-virtual {p0}, Lae/gov/mol/fragment/AboutUs/FragmentMinistersMessage;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 135
    return-void
.end method

.method public updateView()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 115
    invoke-static {}, Lae/gov/mol/MolApplication;->isMinisterMessageVoEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/FragmentMinistersMessage;->mWebViewMessage:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 116
    invoke-static {}, Lae/gov/mol/MolApplication;->getMinisterMessageVo()Lae/gov/mol/vo/MinisterMessageVo$MinistersMessageData;

    move-result-object v0

    invoke-virtual {v0}, Lae/gov/mol/vo/MinisterMessageVo$MinistersMessageData;->getDescription()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<html><body style=\"font-family:Helvetica;font-size:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lae/gov/mol/fragment/AboutUs/FragmentMinistersMessage;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07007a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";\"\'background-color:transparent\' >"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lae/gov/mol/MolApplication;->getMinisterMessageVo()Lae/gov/mol/vo/MinisterMessageVo$MinistersMessageData;

    move-result-object v1

    invoke-virtual {v1}, Lae/gov/mol/vo/MinisterMessageVo$MinistersMessageData;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/AboutUs/FragmentMinistersMessage;->mStringWebContent:Ljava/lang/String;

    .line 118
    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/FragmentMinistersMessage;->mWebViewMessage:Landroid/webkit/WebView;

    const-string v1, "file:///android_asset/"

    iget-object v2, p0, Lae/gov/mol/fragment/AboutUs/FragmentMinistersMessage;->mStringWebContent:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    :cond_0
    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/FragmentMinistersMessage;->mWebViewMessage:Landroid/webkit/WebView;

    invoke-virtual {p0}, Lae/gov/mol/fragment/AboutUs/FragmentMinistersMessage;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08002d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 122
    return-void
.end method
