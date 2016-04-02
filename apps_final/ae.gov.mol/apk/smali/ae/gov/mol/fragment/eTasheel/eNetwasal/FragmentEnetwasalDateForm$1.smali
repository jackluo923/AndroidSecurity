.class Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm$1;
.super Ljava/lang/Object;
.source "FragmentEnetwasalDateForm.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;


# direct methods
.method constructor <init>(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm$1;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 6
    .param p1, "view"    # Landroid/widget/DatePicker;
    .param p2, "year"    # I
    .param p3, "monthOfYear"    # I
    .param p4, "dayOfMonth"    # I

    .prologue
    const/16 v5, 0xa

    .line 231
    add-int/lit8 v1, p3, 0x1

    .line 232
    .local v1, "localMonth":I
    if-ge v1, v5, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "0"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 233
    .local v2, "monthString":Ljava/lang/String;
    :goto_0
    if-ge p4, v5, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "0"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 235
    .local v0, "DayString":Ljava/lang/String;
    :goto_1
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm$1;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->strTitle:Ljava/lang/String;

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm$1;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;

    const v5, 0x7f09015f

    invoke-virtual {v4, v5}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 237
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm$1;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->strFromDate:Ljava/lang/String;

    .line 242
    :goto_2
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm$1;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->strfullfromDate:Ljava/lang/String;

    .line 246
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm$1;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->mEditTextFromDate:Landroid/widget/EditText;

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm$1;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;

    iget-object v4, v4, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->strFromDate:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 247
    return-void

    .line 232
    .end local v0    # "DayString":Ljava/lang/String;
    .end local v2    # "monthString":Ljava/lang/String;
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 233
    .restart local v2    # "monthString":Ljava/lang/String;
    :cond_1
    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 240
    .restart local v0    # "DayString":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm$1;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->strFromDate:Ljava/lang/String;

    goto :goto_2
.end method
