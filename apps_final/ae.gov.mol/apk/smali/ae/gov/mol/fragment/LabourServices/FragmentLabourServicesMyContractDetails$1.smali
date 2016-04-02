.class Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMyContractDetails$1;
.super Ljava/lang/Object;
.source "FragmentLabourServicesMyContractDetails.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMyContractDetails;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMyContractDetails;


# direct methods
.method constructor <init>(Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMyContractDetails;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMyContractDetails$1;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMyContractDetails;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 93
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMyContractDetails$1;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMyContractDetails;

    invoke-virtual {v0}, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMyContractDetails;->removeBack()V

    .line 94
    return-void
.end method
