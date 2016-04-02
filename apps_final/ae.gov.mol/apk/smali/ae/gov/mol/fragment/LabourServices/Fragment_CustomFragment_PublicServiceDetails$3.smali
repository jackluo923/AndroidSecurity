.class Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails$3;
.super Ljava/lang/Object;
.source "Fragment_CustomFragment_PublicServiceDetails.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;


# direct methods
.method constructor <init>(Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails$3;->this$0:Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 294
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails$3;->this$0:Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;

    iget-object v0, v0, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-virtual {v0}, Lae/gov/mol/helper/CustomFragmentActivity;->removeBack()V

    .line 295
    return-void
.end method
