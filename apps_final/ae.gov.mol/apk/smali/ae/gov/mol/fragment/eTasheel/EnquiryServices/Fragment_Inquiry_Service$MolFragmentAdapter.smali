.class Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Service$MolFragmentAdapter;
.super Landroid/widget/BaseAdapter;
.source "Fragment_Inquiry_Service.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Service;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MolFragmentAdapter"
.end annotation


# instance fields
.field private listValues:[Ljava/lang/String;

.field mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Service;


# direct methods
.method public constructor <init>(Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Service;[Ljava/lang/String;Landroid/content/res/TypedArray;)V
    .locals 2
    .param p2, "listItem"    # [Ljava/lang/String;
    .param p3, "miconTypedArray"    # Landroid/content/res/TypedArray;

    .prologue
    .line 185
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Service$MolFragmentAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Service;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 187
    iput-object p2, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Service$MolFragmentAdapter;->listValues:[Ljava/lang/String;

    .line 188
    invoke-virtual {p1}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Service;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Service$MolFragmentAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 190
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Service$MolFragmentAdapter;->listValues:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 198
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 204
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 211
    if-nez p2, :cond_0

    .line 212
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Service$MolFragmentAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Service;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Service$MolFragmentAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0300c8

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Service;->view:Landroid/view/View;

    .line 217
    :goto_0
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Service$MolFragmentAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Service;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Service;->view:Landroid/view/View;

    const v2, 0x7f060692

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 218
    .local v0, "mTextViewTitle":Landroid/widget/TextView;
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Service$MolFragmentAdapter;->listValues:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Service$MolFragmentAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Service;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Service;->view:Landroid/view/View;

    return-object v1

    .line 215
    .end local v0    # "mTextViewTitle":Landroid/widget/TextView;
    :cond_0
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Service$MolFragmentAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Service;

    iput-object p2, v1, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Service;->view:Landroid/view/View;

    goto :goto_0
.end method
