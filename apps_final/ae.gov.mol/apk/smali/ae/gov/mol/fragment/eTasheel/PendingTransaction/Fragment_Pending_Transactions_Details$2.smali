.class Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details$2;
.super Ljava/lang/Object;
.source "Fragment_Pending_Transactions_Details.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;


# direct methods
.method constructor <init>(Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details$2;->this$0:Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details$2;)Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details$2;->this$0:Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 154
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details$2;->this$0:Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;

    invoke-virtual {v2}, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 155
    .local v1, "alertDialogBuilder":Landroid/app/AlertDialog$Builder;
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details$2;->this$0:Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;

    const v3, 0x7f0901aa

    invoke-virtual {v2, v3}, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 156
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details$2;->this$0:Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;

    const v3, 0x7f090235

    invoke-virtual {v2, v3}, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 157
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 158
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details$2;->this$0:Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;

    const v4, 0x7f0901a6

    invoke-virtual {v3, v4}, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details$2$1;

    invoke-direct {v4, p0}, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details$2$1;-><init>(Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details$2;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 165
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details$2;->this$0:Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;

    const v4, 0x7f0901a7

    invoke-virtual {v3, v4}, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details$2$2;

    invoke-direct {v4, p0}, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details$2$2;-><init>(Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details$2;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 170
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 171
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 174
    return-void
.end method
