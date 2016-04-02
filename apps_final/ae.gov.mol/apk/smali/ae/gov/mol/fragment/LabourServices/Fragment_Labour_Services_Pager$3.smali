.class Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager$3;
.super Ljava/lang/Object;
.source "Fragment_Labour_Services_Pager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;->ShowDisclaimer(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;


# direct methods
.method constructor <init>(Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager$3;->this$0:Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 193
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager$3;->this$0:Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;

    iget-object v0, v0, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;->currentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-virtual {v0}, Lae/gov/mol/helper/CustomFragmentActivity;->finish()V

    .line 194
    return-void
.end method
