.class Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details$1;
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
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details$1;->this$0:Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 102
    :try_start_0
    iget-object v6, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details$1;->this$0:Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;

    # getter for: Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;->mPendingTransactionsdata:Lae/gov/mol/vo/PendingTransactionsdata;
    invoke-static {v6}, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;->access$1(Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;)Lae/gov/mol/vo/PendingTransactionsdata;

    move-result-object v6

    invoke-virtual {v6}, Lae/gov/mol/vo/PendingTransactionsdata;->getPaymentPage()Ljava/lang/String;

    move-result-object v5

    .line 103
    .local v5, "url":Ljava/lang/String;
    iget-object v6, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details$1;->this$0:Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;

    invoke-virtual {v6}, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lae/gov/mol/helper/CustomFragmentActivity;

    .line 104
    .local v1, "mCustomFragmentActivity":Lae/gov/mol/helper/CustomFragmentActivity;
    const-string v6, "attachment://"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 106
    const-string v4, ""

    .line 108
    .local v4, "strMessage":Ljava/lang/String;
    const-string v6, "attachment:///"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 110
    const-string v6, "attachment:///"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 116
    :goto_0
    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 117
    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 119
    .local v3, "mstr":[Ljava/lang/String;
    new-instance v2, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;

    invoke-direct {v2}, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;-><init>()V

    .line 121
    .local v2, "mFragment_attachment":Lae/gov/mol/fragment/Attachments/Fragment_Attachments;
    if-eqz v2, :cond_0

    .line 123
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 124
    .local v0, "attachmentData":Landroid/os/Bundle;
    const-string v6, "message"

    invoke-virtual {v0, v6, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const-string v6, "attachmentid"

    const-string v7, ""

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const-string v6, "Tranmbno"

    const/4 v7, 0x0

    aget-object v7, v3, v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const-string v6, "servicecode"

    const/4 v7, 0x1

    aget-object v7, v3, v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-virtual {v2, v0}, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->setArguments(Landroid/os/Bundle;)V

    .line 131
    const/4 v6, 0x1

    const/16 v7, 0x1001

    .line 130
    invoke-virtual {v1, v2, v6, v7}, Lae/gov/mol/helper/CustomFragmentActivity;->replaceFragment(Landroid/support/v4/app/Fragment;ZI)V

    .line 147
    .end local v0    # "attachmentData":Landroid/os/Bundle;
    .end local v1    # "mCustomFragmentActivity":Lae/gov/mol/helper/CustomFragmentActivity;
    .end local v2    # "mFragment_attachment":Lae/gov/mol/fragment/Attachments/Fragment_Attachments;
    .end local v3    # "mstr":[Ljava/lang/String;
    .end local v4    # "strMessage":Ljava/lang/String;
    .end local v5    # "url":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 114
    .restart local v1    # "mCustomFragmentActivity":Lae/gov/mol/helper/CustomFragmentActivity;
    .restart local v4    # "strMessage":Ljava/lang/String;
    .restart local v5    # "url":Ljava/lang/String;
    :cond_1
    const-string v6, "attachment://"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 140
    .end local v4    # "strMessage":Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details$1;->this$0:Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;

    iget-object v7, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details$1;->this$0:Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;

    # getter for: Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;->mFragment_eTasheel_Pager:Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;
    invoke-static {v7}, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;->access$0(Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;)Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;

    move-result-object v7

    iget-object v8, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details$1;->this$0:Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;

    # getter for: Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;->mPendingTransactionsdata:Lae/gov/mol/vo/PendingTransactionsdata;
    invoke-static {v8}, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;->access$1(Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;)Lae/gov/mol/vo/PendingTransactionsdata;

    move-result-object v8

    invoke-virtual {v8}, Lae/gov/mol/vo/PendingTransactionsdata;->getPaymentPage()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details$1;->this$0:Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;

    iget-object v10, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details$1;->this$0:Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;

    # getter for: Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;->mTextViewTitle:Landroid/widget/TextView;
    invoke-static {v10}, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;->access$4(Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;)Landroid/widget/TextView;

    move-result-object v10

    # invokes: Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v9, v10}, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;->access$5(Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v6, v7, v8, v9, v10}, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;->BrowseLinkOpenSystemBrowser(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 144
    .end local v1    # "mCustomFragmentActivity":Lae/gov/mol/helper/CustomFragmentActivity;
    .end local v5    # "url":Ljava/lang/String;
    :catch_0
    move-exception v6

    goto :goto_1
.end method
