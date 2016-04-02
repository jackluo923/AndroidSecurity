.class Lae/gov/mol/DropdownListActivity$1;
.super Ljava/lang/Object;
.source "DropdownListActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/gov/mol/DropdownListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lae/gov/mol/DropdownListActivity;

.field private final synthetic val$adapter:Landroid/widget/ArrayAdapter;


# direct methods
.method constructor <init>(Lae/gov/mol/DropdownListActivity;Landroid/widget/ArrayAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lae/gov/mol/DropdownListActivity$1;->this$0:Lae/gov/mol/DropdownListActivity;

    iput-object p2, p0, Lae/gov/mol/DropdownListActivity$1;->val$adapter:Landroid/widget/ArrayAdapter;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 53
    iget-object v0, p0, Lae/gov/mol/DropdownListActivity$1;->val$adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    iget-object v1, p0, Lae/gov/mol/DropdownListActivity$1;->this$0:Lae/gov/mol/DropdownListActivity;

    # getter for: Lae/gov/mol/DropdownListActivity;->search:Landroid/widget/EditText;
    invoke-static {v1}, Lae/gov/mol/DropdownListActivity;->access$0(Lae/gov/mol/DropdownListActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 54
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 55
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 56
    return-void
.end method
