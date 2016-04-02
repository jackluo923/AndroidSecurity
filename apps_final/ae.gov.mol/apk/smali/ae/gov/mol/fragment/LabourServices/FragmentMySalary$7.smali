.class Lae/gov/mol/fragment/LabourServices/FragmentMySalary$7;
.super Ljava/lang/Object;
.source "FragmentMySalary.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->DialogCountry()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lae/gov/mol/fragment/LabourServices/FragmentMySalary;

.field private final synthetic val$items:[Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lae/gov/mol/fragment/LabourServices/FragmentMySalary;[Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary$7;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMySalary;

    iput-object p2, p0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary$7;->val$items:[Ljava/lang/CharSequence;

    .line 440
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "item"    # I

    .prologue
    .line 445
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary$7;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMySalary;

    iget-object v0, v0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->mEditTextNationalty:Landroid/widget/EditText;

    iget-object v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary$7;->val$items:[Ljava/lang/CharSequence;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 446
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary$7;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMySalary;

    iput p2, v0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->SelectedValue:I

    .line 447
    iget-object v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary$7;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMySalary;

    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary$7;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMySalary;

    iget-object v0, v0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/gov/mol/vo/GetnationalitiesVo;

    iput-object v0, v1, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->mGetnationalitiesVo:Lae/gov/mol/vo/GetnationalitiesVo;

    .line 448
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 449
    return-void
.end method
