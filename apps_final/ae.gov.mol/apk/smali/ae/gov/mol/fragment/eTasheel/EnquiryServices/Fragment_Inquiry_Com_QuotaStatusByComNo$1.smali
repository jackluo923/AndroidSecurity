.class Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Com_QuotaStatusByComNo$1;
.super Ljava/lang/Object;
.source "Fragment_Inquiry_Com_QuotaStatusByComNo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Com_QuotaStatusByComNo;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Com_QuotaStatusByComNo;


# direct methods
.method constructor <init>(Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Com_QuotaStatusByComNo;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Com_QuotaStatusByComNo$1;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Com_QuotaStatusByComNo;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 98
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Com_QuotaStatusByComNo$1;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Com_QuotaStatusByComNo;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Com_QuotaStatusByComNo;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-virtual {v0}, Lae/gov/mol/helper/CustomFragmentActivity;->removeBack()V

    .line 99
    return-void
.end method
