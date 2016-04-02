.class Lae/gov/mol/fragment/LabourServices/FragmentMyContract$5;
.super Ljava/lang/Object;
.source "FragmentMyContract.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->ShowDisclaimer(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lae/gov/mol/fragment/LabourServices/FragmentMyContract;


# direct methods
.method constructor <init>(Lae/gov/mol/fragment/LabourServices/FragmentMyContract;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract$5;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMyContract;

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 210
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract$5;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMyContract;

    # invokes: Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->submit()V
    invoke-static {v0}, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->access$4(Lae/gov/mol/fragment/LabourServices/FragmentMyContract;)V

    .line 213
    return-void
.end method
