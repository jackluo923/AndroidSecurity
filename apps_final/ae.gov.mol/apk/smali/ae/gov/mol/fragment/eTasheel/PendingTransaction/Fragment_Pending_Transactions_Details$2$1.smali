.class Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details$2$1;
.super Ljava/lang/Object;
.source "Fragment_Pending_Transactions_Details.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details$2;


# direct methods
.method constructor <init>(Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details$2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details$2$1;->this$1:Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details$2;

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 161
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details$2$1;->this$1:Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details$2;

    # getter for: Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details$2;->this$0:Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;
    invoke-static {v0}, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details$2;->access$0(Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details$2;)Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;

    move-result-object v0

    invoke-virtual {v0}, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;->removePendingPaymentTransaction()V

    .line 163
    return-void
.end method
