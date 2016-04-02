.class Lae/gov/mol/fragment/LabourServices/FragmentMyContract$7;
.super Ljava/lang/Object;
.source "FragmentMyContract.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->DialogCountry()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lae/gov/mol/fragment/LabourServices/FragmentMyContract;

.field private final synthetic val$items:[Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lae/gov/mol/fragment/LabourServices/FragmentMyContract;[Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract$7;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMyContract;

    iput-object p2, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract$7;->val$items:[Ljava/lang/CharSequence;

    .line 394
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "item"    # I

    .prologue
    .line 399
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract$7;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMyContract;

    iget-object v0, v0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->mEditTextNationalty:Landroid/widget/EditText;

    iget-object v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract$7;->val$items:[Ljava/lang/CharSequence;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 400
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract$7;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMyContract;

    iput p2, v0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->SelectedValue:I

    .line 401
    iget-object v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract$7;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMyContract;

    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract$7;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMyContract;

    iget-object v0, v0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/gov/mol/vo/GetnationalitiesVo;

    iput-object v0, v1, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->mGetnationalitiesVo:Lae/gov/mol/vo/GetnationalitiesVo;

    .line 402
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 404
    return-void
.end method
