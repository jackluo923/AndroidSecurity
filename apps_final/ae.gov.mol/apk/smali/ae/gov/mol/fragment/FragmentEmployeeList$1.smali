.class Lae/gov/mol/fragment/FragmentEmployeeList$1;
.super Ljava/lang/Object;
.source "FragmentEmployeeList.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/gov/mol/fragment/FragmentEmployeeList;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lae/gov/mol/fragment/FragmentEmployeeList;


# direct methods
.method constructor <init>(Lae/gov/mol/fragment/FragmentEmployeeList;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lae/gov/mol/fragment/FragmentEmployeeList$1;->this$0:Lae/gov/mol/fragment/FragmentEmployeeList;

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 128
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 122
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 114
    iget-object v0, p0, Lae/gov/mol/fragment/FragmentEmployeeList$1;->this$0:Lae/gov/mol/fragment/FragmentEmployeeList;

    iget-object v0, v0, Lae/gov/mol/fragment/FragmentEmployeeList;->mCompanyAdapter:Lae/gov/mol/fragment/FragmentEmployeeList$EmployeeListAdapter;

    invoke-virtual {v0}, Lae/gov/mol/fragment/FragmentEmployeeList$EmployeeListAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 115
    return-void
.end method
