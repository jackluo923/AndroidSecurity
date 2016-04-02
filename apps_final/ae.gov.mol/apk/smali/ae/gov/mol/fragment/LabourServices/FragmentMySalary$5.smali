.class Lae/gov/mol/fragment/LabourServices/FragmentMySalary$5;
.super Ljava/lang/Object;
.source "FragmentMySalary.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->ShowDisclaimer(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lae/gov/mol/fragment/LabourServices/FragmentMySalary;


# direct methods
.method constructor <init>(Lae/gov/mol/fragment/LabourServices/FragmentMySalary;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary$5;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMySalary;

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 216
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary$5;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMySalary;

    # invokes: Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->submit()V
    invoke-static {v0}, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->access$8(Lae/gov/mol/fragment/LabourServices/FragmentMySalary;)V

    .line 219
    return-void
.end method
