.class Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_inquiry_Enq_BankGarunteeDetails_List$1;
.super Ljava/lang/Object;
.source "Fragment_inquiry_Enq_BankGarunteeDetails_List.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_inquiry_Enq_BankGarunteeDetails_List;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_inquiry_Enq_BankGarunteeDetails_List;


# direct methods
.method constructor <init>(Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_inquiry_Enq_BankGarunteeDetails_List;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_inquiry_Enq_BankGarunteeDetails_List$1;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_inquiry_Enq_BankGarunteeDetails_List;

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 100
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_inquiry_Enq_BankGarunteeDetails_List$1;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_inquiry_Enq_BankGarunteeDetails_List;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_inquiry_Enq_BankGarunteeDetails_List;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-virtual {v0}, Lae/gov/mol/helper/CustomFragmentActivity;->removeBack()V

    .line 102
    return-void
.end method
