.class Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment$2;
.super Ljava/lang/Object;
.source "Fragment_Inquiry_Get_PendingPayment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment;


# direct methods
.method constructor <init>(Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment$2;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 92
    .local p1, "adapter":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    new-instance v1, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment_Details;

    invoke-direct {v1}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment_Details;-><init>()V

    .line 93
    .local v1, "mFragment_Inquiry_Get_PendingPayment_Details":Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment_Details;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 94
    .local v0, "mBundle":Landroid/os/Bundle;
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment$2;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment;

    const v3, 0x7f09004b

    invoke-virtual {v2, v3}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment$2;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment;

    # getter for: Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment;->mGetPendingPayment_Handler:Lae/gov/xmlhandler/GetPendingPayment_Handler;
    invoke-static {v2}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment;->access$0(Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment;)Lae/gov/xmlhandler/GetPendingPayment_Handler;

    move-result-object v2

    invoke-virtual {v2}, Lae/gov/xmlhandler/GetPendingPayment_Handler;->getmEnq_GetPendingPayments()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 95
    invoke-virtual {v1, v0}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment_Details;->setArguments(Landroid/os/Bundle;)V

    .line 96
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment$2;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment;

    # getter for: Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;
    invoke-static {v2}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment;->access$1(Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment;)Lae/gov/mol/helper/CustomFragmentActivity;

    move-result-object v2

    const/4 v3, 0x1

    const/16 v4, 0x1001

    invoke-virtual {v2, v1, v3, v4}, Lae/gov/mol/helper/CustomFragmentActivity;->replaceFragment(Landroid/support/v4/app/Fragment;ZI)V

    .line 97
    return-void
.end method
