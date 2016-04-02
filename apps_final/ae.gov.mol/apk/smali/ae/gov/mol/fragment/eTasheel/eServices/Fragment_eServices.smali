.class public Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices;
.super Lae/gov/mol/helper/CustomFragment;
.source "Fragment_eServices.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices$ExpandableListAdapter;,
        Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices$MolFragmentAdapter;
    }
.end annotation


# static fields
.field public static final INDEX:Ljava/lang/String; = "selectedIndex"

.field public static final INDEX_ABSCODING:I = 0x3

.field public static final INDEX_OUTSIDE_COUNTRY_CANCELLATION:I = 0x5

.field public static final INDEX_REFUND_BANK_GUARANTEE:I = 0x4

.field public static final INDEX_RENEWLABOURCARD:I = 0x0

.field public static final INDEX_WORKPERMIT_CANCELATION:I = 0x2

.field public static final INDEX_WORKPERMIT_PAYMENT:I = 0x1


# instance fields
.field isEnabled:Z

.field private lastExpandedGroupPosition:I

.field mBundle:Landroid/os/Bundle;

.field mCustomFragmentActivity:Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;

.field mListViewEservices:Landroid/widget/ExpandableListView;

.field mOwnerstatisticsVo:Lae/gov/mol/vo/OwnerstatisticsVo;

.field private mServiceDataVos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/ServiceDataVo;",
            ">;"
        }
    .end annotation
.end field

.field molFragmentAdapter:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices$ExpandableListAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lae/gov/mol/helper/CustomFragment;-><init>()V

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices;->lastExpandedGroupPosition:I

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices;->isEnabled:Z

    .line 56
    return-void
.end method

.method private AssignServiceToGroup(Lae/gov/mol/vo/ServiceDataVo;Ljava/util/ArrayList;)V
    .locals 4
    .param p1, "service"    # Lae/gov/mol/vo/ServiceDataVo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/gov/mol/vo/ServiceDataVo;",
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/ServiceDataGroupVo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 325
    .local p2, "groupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lae/gov/mol/vo/ServiceDataGroupVo;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 332
    return-void

    .line 325
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/gov/mol/vo/ServiceDataGroupVo;

    .line 327
    .local v0, "group":Lae/gov/mol/vo/ServiceDataGroupVo;
    invoke-static {p1}, Lae/gov/mol/vo/ServiceDataGroupVo;->GetGroupName(Lae/gov/mol/vo/ServiceDataVo;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lae/gov/mol/vo/ServiceDataGroupVo;->GroupName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 329
    iget-object v2, v0, Lae/gov/mol/vo/ServiceDataGroupVo;->ServiceGroup:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private GetServicesActingAsGroups(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/ServiceDataVo;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/ServiceDataVo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 336
    .local p1, "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lae/gov/mol/vo/ServiceDataVo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 339
    .local v0, "groups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lae/gov/mol/vo/ServiceDataVo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 347
    return-object v0

    .line 339
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lae/gov/mol/vo/ServiceDataVo;

    .line 341
    .local v1, "service":Lae/gov/mol/vo/ServiceDataVo;
    invoke-virtual {v1}, Lae/gov/mol/vo/ServiceDataVo;->getServiceKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 343
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private UpdateList(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/ServiceDataVo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 286
    .local p1, "mServiceDataVos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lae/gov/mol/vo/ServiceDataVo;>;"
    if-eqz p1, :cond_2

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices;->mListViewEservices:Landroid/widget/ExpandableListView;

    if-eqz v4, :cond_2

    .line 287
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 288
    .local v1, "groups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lae/gov/mol/vo/ServiceDataGroupVo;>;"
    const/4 v0, 0x0

    .line 290
    .local v0, "currentGroup":Lae/gov/mol/vo/ServiceDataGroupVo;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_3

    .line 306
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_4

    .line 316
    new-instance v4, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices$ExpandableListAdapter;

    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices;->mCustomFragmentActivity:Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;

    invoke-direct {v4, p0, v5, v1}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices$ExpandableListAdapter;-><init>(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices;Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v4, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices;->molFragmentAdapter:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices$ExpandableListAdapter;

    .line 318
    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices;->mListViewEservices:Landroid/widget/ExpandableListView;

    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices;->molFragmentAdapter:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices$ExpandableListAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 320
    .end local v0    # "currentGroup":Lae/gov/mol/vo/ServiceDataGroupVo;
    .end local v1    # "groups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lae/gov/mol/vo/ServiceDataGroupVo;>;"
    :cond_2
    return-void

    .line 290
    .restart local v0    # "currentGroup":Lae/gov/mol/vo/ServiceDataGroupVo;
    .restart local v1    # "groups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lae/gov/mol/vo/ServiceDataGroupVo;>;"
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lae/gov/mol/vo/ServiceDataVo;

    .line 292
    .local v2, "service":Lae/gov/mol/vo/ServiceDataVo;
    invoke-static {v2}, Lae/gov/mol/vo/ServiceDataGroupVo;->IsGroupService(Lae/gov/mol/vo/ServiceDataVo;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 294
    invoke-virtual {v2}, Lae/gov/mol/vo/ServiceDataVo;->getServiceKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 295
    .local v3, "serviceKey":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "group-"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v6, 0x7f090250

    invoke-virtual {p0, v6}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 300
    new-instance v0, Lae/gov/mol/vo/ServiceDataGroupVo;

    .end local v0    # "currentGroup":Lae/gov/mol/vo/ServiceDataGroupVo;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v2, v5}, Lae/gov/mol/vo/ServiceDataGroupVo;-><init>(Lae/gov/mol/vo/ServiceDataVo;Ljava/util/ArrayList;)V

    .line 301
    .restart local v0    # "currentGroup":Lae/gov/mol/vo/ServiceDataGroupVo;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 306
    .end local v2    # "service":Lae/gov/mol/vo/ServiceDataVo;
    .end local v3    # "serviceKey":Ljava/lang/String;
    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lae/gov/mol/vo/ServiceDataVo;

    .line 308
    .restart local v2    # "service":Lae/gov/mol/vo/ServiceDataVo;
    invoke-static {v2}, Lae/gov/mol/vo/ServiceDataGroupVo;->IsGroupService(Lae/gov/mol/vo/ServiceDataVo;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_1

    .line 310
    invoke-direct {p0, v2, v1}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices;->AssignServiceToGroup(Lae/gov/mol/vo/ServiceDataVo;Ljava/util/ArrayList;)V

    goto :goto_1
.end method

.method static synthetic access$0(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices;)I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices;->lastExpandedGroupPosition:I

    return v0
.end method

.method static synthetic access$1(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices;I)V
    .locals 0

    .prologue
    .line 74
    iput p1, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices;->lastExpandedGroupPosition:I

    return-void
.end method

.method public static newInstance(Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;Landroid/os/Bundle;)Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices;
    .locals 1
    .param p0, "fragment_eTasheel_Pager"    # Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;
    .param p1, "mBundle2"    # Landroid/os/Bundle;

    .prologue
    .line 359
    new-instance v0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices;

    invoke-direct {v0}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices;-><init>()V

    .line 360
    .local v0, "f":Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices;
    invoke-virtual {v0, p1}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices;->setArguments(Landroid/os/Bundle;)V

    .line 361
    iput-object p0, v0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices;->mCustomFragmentActivity:Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;

    .line 362
    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "mBundle"    # Landroid/os/Bundle;

    .prologue
    .line 82
    invoke-super {p0, p1}, Lae/gov/mol/helper/CustomFragment;->onCreate(Landroid/os/Bundle;)V

    .line 83
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices;->mBundle:Landroid/os/Bundle;

    .line 84
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;

    iput-object v1, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices;->mCustomFragmentActivity:Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;

    .line 85
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices;->mBundle:Landroid/os/Bundle;

    if-eqz v1, :cond_1

    .line 86
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices;->mBundle:Landroid/os/Bundle;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 87
    .local v0, "mObject":Ljava/util/ArrayList;
    if-eqz v0, :cond_0

    .line 88
    check-cast v0, Ljava/util/ArrayList;

    .end local v0    # "mObject":Ljava/util/ArrayList;
    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices;->mServiceDataVos:Ljava/util/ArrayList;

    .line 90
    :cond_0
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices;->mBundle:Landroid/os/Bundle;

    const v2, 0x7f090045

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lae/gov/mol/vo/OwnerstatisticsVo;

    iput-object v1, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices;->mOwnerstatisticsVo:Lae/gov/mol/vo/OwnerstatisticsVo;

    .line 92
    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 96
    const v1, 0x7f030060

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 97
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0602c9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ExpandableListView;

    iput-object v1, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices;->mListViewEservices:Landroid/widget/ExpandableListView;

    .line 98
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices;->mServiceDataVos:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices;->UpdateList(Ljava/util/ArrayList;)V

    .line 100
    iget-boolean v1, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices;->isEnabled:Z

    if-eqz v1, :cond_0

    .line 102
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices;->mListViewEservices:Landroid/widget/ExpandableListView;

    new-instance v2, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices$1;

    invoke-direct {v2, p0}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices$1;-><init>(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices;)V

    invoke-virtual {v1, v2}, Landroid/widget/ExpandableListView;->setOnGroupExpandListener(Landroid/widget/ExpandableListView$OnGroupExpandListener;)V

    .line 116
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices;->mListViewEservices:Landroid/widget/ExpandableListView;

    new-instance v2, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices$2;

    invoke-direct {v2, p0}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices$2;-><init>(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices;)V

    invoke-virtual {v1, v2}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 267
    :cond_0
    return-object v0
.end method

.method public updateView(Lae/gov/mol/vo/AlleServicesData;)V
    .locals 1
    .param p1, "mAlleServicesData"    # Lae/gov/mol/vo/AlleServicesData;

    .prologue
    .line 581
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lae/gov/mol/vo/AlleServicesData;->getD()Lae/gov/mol/vo/AlleServicesVo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lae/gov/mol/vo/AlleServicesData;->getD()Lae/gov/mol/vo/AlleServicesVo;

    move-result-object v0

    invoke-virtual {v0}, Lae/gov/mol/vo/AlleServicesVo;->getServices()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 582
    invoke-virtual {p1}, Lae/gov/mol/vo/AlleServicesData;->getD()Lae/gov/mol/vo/AlleServicesVo;

    move-result-object v0

    invoke-virtual {v0}, Lae/gov/mol/vo/AlleServicesVo;->getServices()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices;->mServiceDataVos:Ljava/util/ArrayList;

    .line 583
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices;->mServiceDataVos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices;->UpdateList(Ljava/util/ArrayList;)V

    .line 586
    :cond_0
    return-void
.end method
