.class public Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Service;
.super Landroid/support/v4/app/ListFragment;
.source "Fragment_Inquiry_Service.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Service$MolFragmentAdapter;
    }
.end annotation


# instance fields
.field height:I

.field mBundle:Landroid/os/Bundle;

.field mCustomFragment:Lae/gov/mol/helper/CustomFragment;

.field mImageViewHome:Landroid/widget/ImageView;

.field mIntent:Landroid/content/Intent;

.field molFragmentActivity:Lae/gov/mol/MolFragmentActivity;

.field molFragmentAdapter:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Service$MolFragmentAdapter;

.field view:Landroid/view/View;

.field width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;-><init>()V

    .line 44
    iput v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Service;->width:I

    .line 45
    iput v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Service;->height:I

    .line 33
    return-void
.end method


# virtual methods
.method public GetDeviceHeight()V
    .locals 2

    .prologue
    .line 230
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Service;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 231
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    iput v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Service;->width:I

    .line 232
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    iput v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Service;->height:I

    .line 233
    iget v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Service;->height:I

    mul-int/lit8 v1, v1, 0x1e

    div-int/lit8 v1, v1, 0x64

    iput v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Service;->height:I

    .line 235
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 70
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 71
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Service;->molFragmentAdapter:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Service$MolFragmentAdapter;

    invoke-virtual {p0, v0}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Service;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 72
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Service;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 73
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Service;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Service$2;

    invoke-direct {v1, p0}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Service$2;-><init>(Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Service;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 176
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedinstance"    # Landroid/os/Bundle;

    .prologue
    .line 51
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Service;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lae/gov/mol/MolFragmentActivity;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Service;->molFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    .line 52
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Service;->GetDeviceHeight()V

    .line 53
    const v0, 0x7f0300a3

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Service;->view:Landroid/view/View;

    .line 54
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Service;->view:Landroid/view/View;

    const v1, 0x7f060758

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f090096

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Service;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    new-instance v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Service$MolFragmentAdapter;

    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Service;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Service;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Service$MolFragmentAdapter;-><init>(Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Service;[Ljava/lang/String;Landroid/content/res/TypedArray;)V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Service;->molFragmentAdapter:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Service$MolFragmentAdapter;

    .line 56
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Service;->view:Landroid/view/View;

    const v1, 0x7f060757

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Service;->mImageViewHome:Landroid/widget/ImageView;

    .line 57
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Service;->mImageViewHome:Landroid/widget/ImageView;

    new-instance v1, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Service$1;

    invoke-direct {v1, p0}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Service$1;-><init>(Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Service;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Service;->view:Landroid/view/View;

    return-object v0
.end method
