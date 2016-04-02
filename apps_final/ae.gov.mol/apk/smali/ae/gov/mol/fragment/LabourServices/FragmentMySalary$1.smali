.class Lae/gov/mol/fragment/LabourServices/FragmentMySalary$1;
.super Ljava/lang/Object;
.source "FragmentMySalary.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/fragment/LabourServices/FragmentMySalary;
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
    iput-object p1, p0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary$1;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMySalary;

    .line 367
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 2
    .param p1, "view"    # Landroid/widget/DatePicker;
    .param p2, "year"    # I
    .param p3, "monthOfYear"    # I
    .param p4, "dayOfMonth"    # I

    .prologue
    .line 371
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary$1;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMySalary;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->strToDate:Ljava/lang/String;

    .line 372
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary$1;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMySalary;

    iget-object v0, v0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->mEditTextYearOfBirth:Landroid/widget/EditText;

    iget-object v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary$1;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMySalary;

    iget-object v1, v1, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->strToDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 373
    return-void
.end method
