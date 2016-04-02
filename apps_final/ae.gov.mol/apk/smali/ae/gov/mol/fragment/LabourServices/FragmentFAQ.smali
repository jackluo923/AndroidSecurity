.class public Lae/gov/mol/fragment/LabourServices/FragmentFAQ;
.super Landroid/support/v4/app/Fragment;
.source "FragmentFAQ.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/gov/mol/fragment/LabourServices/FragmentFAQ$FaqExpandableListAdapter;,
        Lae/gov/mol/fragment/LabourServices/FragmentFAQ$ListBaseAdapter;,
        Lae/gov/mol/fragment/LabourServices/FragmentFAQ$ViewHolder;
    }
.end annotation


# instance fields
.field height:I

.field isFirst:Ljava/lang/Boolean;

.field mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

.field private mExpandableListBaseAdapter:Lae/gov/mol/fragment/LabourServices/FragmentFAQ$FaqExpandableListAdapter;

.field mListBaseAdapter:Lae/gov/mol/fragment/LabourServices/FragmentFAQ$ListBaseAdapter;

.field mListViewFAQ:Landroid/widget/ListView;

.field private mListViewFaqExpandable:Landroid/widget/ExpandableListView;

.field mProgressDialog:Landroid/app/ProgressDialog;

.field mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

.field width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 50
    iput v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentFAQ;->height:I

    .line 51
    iput v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentFAQ;->width:I

    .line 52
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentFAQ;->isFirst:Ljava/lang/Boolean;

    .line 40
    return-void
.end method

.method private getHeaders(Lae/gov/mol/vo/FaqVo;Ljava/lang/Boolean;)Ljava/util/List;
    .locals 4
    .param p1, "mFaqVo"    # Lae/gov/mol/vo/FaqVo;
    .param p2, "isChild"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/gov/mol/vo/FaqVo;",
            "Ljava/lang/Boolean;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 305
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 306
    .local v1, "returnList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p1, Lae/gov/mol/vo/FaqVo;->resources:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 312
    return-object v1

    .line 306
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/gov/mol/vo/FaqVo$FaqData;

    .line 307
    .local v0, "faqData":Lae/gov/mol/vo/FaqVo$FaqData;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 308
    invoke-virtual {v0}, Lae/gov/mol/vo/FaqVo$FaqData;->getAnswer()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 310
    :cond_1
    invoke-virtual {v0}, Lae/gov/mol/vo/FaqVo$FaqData;->getQuestion()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private getParentChildMap(Ljava/util/List;Ljava/util/List;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 297
    .local p1, "rowHeaders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "rowChild":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 299
    .local v1, "returnMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 302
    return-object v1

    .line 300
    :cond_0
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static newInstance()Lae/gov/mol/fragment/LabourServices/FragmentFAQ;
    .locals 1

    .prologue
    .line 64
    new-instance v0, Lae/gov/mol/fragment/LabourServices/FragmentFAQ;

    invoke-direct {v0}, Lae/gov/mol/fragment/LabourServices/FragmentFAQ;-><init>()V

    .line 65
    .local v0, "f":Lae/gov/mol/fragment/LabourServices/FragmentFAQ;
    return-object v0
.end method


# virtual methods
.method public GetDeviceHeight()V
    .locals 2

    .prologue
    .line 319
    iget-object v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentFAQ;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-virtual {v1}, Lae/gov/mol/helper/CustomFragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    .line 320
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 322
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    iput v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentFAQ;->width:I

    .line 323
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    iput v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentFAQ;->height:I

    .line 324
    iget v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentFAQ;->height:I

    mul-int/lit8 v1, v1, 0x1e

    div-int/lit8 v1, v1, 0x64

    iput v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentFAQ;->height:I

    .line 325
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-virtual {p0}, Lae/gov/mol/fragment/LabourServices/FragmentFAQ;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lae/gov/mol/helper/CustomFragmentActivity;

    iput-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentFAQ;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    .line 62
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "minInflater"    # Landroid/view/LayoutInflater;
    .param p2, "mViewGroup"    # Landroid/view/ViewGroup;
    .param p3, "mBundle"    # Landroid/os/Bundle;

    .prologue
    .line 70
    const v2, 0x7f030098

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 72
    .local v0, "mView":Landroid/view/View;
    const v2, 0x7f060546

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ExpandableListView;

    iput-object v2, p0, Lae/gov/mol/fragment/LabourServices/FragmentFAQ;->mListViewFaqExpandable:Landroid/widget/ExpandableListView;

    .line 75
    const v2, 0x7f060065

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 81
    .local v1, "submitButton":Landroid/widget/Button;
    new-instance v2, Lae/gov/mol/fragment/LabourServices/FragmentFAQ$1;

    invoke-direct {v2, p0}, Lae/gov/mol/fragment/LabourServices/FragmentFAQ$1;-><init>(Lae/gov/mol/fragment/LabourServices/FragmentFAQ;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    return-object v0
.end method

.method public updateView(Lae/gov/mol/vo/FaqVo;)V
    .locals 5
    .param p1, "mFaqVo"    # Lae/gov/mol/vo/FaqVo;

    .prologue
    .line 275
    iget-object v3, p0, Lae/gov/mol/fragment/LabourServices/FragmentFAQ;->mListViewFaqExpandable:Landroid/widget/ExpandableListView;

    if-eqz v3, :cond_0

    if-eqz p1, :cond_0

    .line 278
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lae/gov/mol/fragment/LabourServices/FragmentFAQ;->getHeaders(Lae/gov/mol/vo/FaqVo;Ljava/lang/Boolean;)Ljava/util/List;

    move-result-object v2

    .line 279
    .local v2, "rowHeaders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lae/gov/mol/fragment/LabourServices/FragmentFAQ;->getHeaders(Lae/gov/mol/vo/FaqVo;Ljava/lang/Boolean;)Ljava/util/List;

    move-result-object v1

    .line 282
    .local v1, "rowChild":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, v2, v1}, Lae/gov/mol/fragment/LabourServices/FragmentFAQ;->getParentChildMap(Ljava/util/List;Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    .line 285
    .local v0, "parentChildMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Lae/gov/mol/fragment/LabourServices/FragmentFAQ$FaqExpandableListAdapter;

    invoke-virtual {p0}, Lae/gov/mol/fragment/LabourServices/FragmentFAQ;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, p0, v4, v2, v0}, Lae/gov/mol/fragment/LabourServices/FragmentFAQ$FaqExpandableListAdapter;-><init>(Lae/gov/mol/fragment/LabourServices/FragmentFAQ;Landroid/content/Context;Ljava/util/List;Ljava/util/Map;)V

    iput-object v3, p0, Lae/gov/mol/fragment/LabourServices/FragmentFAQ;->mExpandableListBaseAdapter:Lae/gov/mol/fragment/LabourServices/FragmentFAQ$FaqExpandableListAdapter;

    .line 286
    iget-object v3, p0, Lae/gov/mol/fragment/LabourServices/FragmentFAQ;->mListViewFaqExpandable:Landroid/widget/ExpandableListView;

    iget-object v4, p0, Lae/gov/mol/fragment/LabourServices/FragmentFAQ;->mExpandableListBaseAdapter:Lae/gov/mol/fragment/LabourServices/FragmentFAQ$FaqExpandableListAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 292
    .end local v0    # "parentChildMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "rowChild":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "rowHeaders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    return-void
.end method
