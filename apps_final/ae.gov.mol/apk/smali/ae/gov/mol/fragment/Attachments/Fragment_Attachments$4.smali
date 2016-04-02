.class Lae/gov/mol/fragment/Attachments/Fragment_Attachments$4;
.super Ljava/lang/Object;
.source "Fragment_Attachments.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->SetUpSubmitButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lae/gov/mol/fragment/Attachments/Fragment_Attachments;


# direct methods
.method constructor <init>(Lae/gov/mol/fragment/Attachments/Fragment_Attachments;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$4;->this$0:Lae/gov/mol/fragment/Attachments/Fragment_Attachments;

    .line 1085
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 1089
    iget-object v0, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$4;->this$0:Lae/gov/mol/fragment/Attachments/Fragment_Attachments;

    iget-object v0, v0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    invoke-virtual {v0}, Lae/gov/mol/helper/CommonMethods;->isConnectingToInternet()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1090
    iget-object v0, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$4;->this$0:Lae/gov/mol/fragment/Attachments/Fragment_Attachments;

    # invokes: Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->ValidateAttachments()Z
    invoke-static {v0}, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->access$14(Lae/gov/mol/fragment/Attachments/Fragment_Attachments;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1092
    new-instance v0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$PostAttachment;

    iget-object v1, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$4;->this$0:Lae/gov/mol/fragment/Attachments/Fragment_Attachments;

    iget-object v2, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$4;->this$0:Lae/gov/mol/fragment/Attachments/Fragment_Attachments;

    iget-object v2, v2, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-direct {v0, v1, v2}, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$PostAttachment;-><init>(Lae/gov/mol/fragment/Attachments/Fragment_Attachments;Landroid/content/Context;)V

    new-array v1, v3, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$PostAttachment;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1098
    :cond_0
    :goto_0
    return-void

    .line 1096
    :cond_1
    iget-object v0, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$4;->this$0:Lae/gov/mol/fragment/Attachments/Fragment_Attachments;

    iget-object v0, v0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    iget-object v1, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$4;->this$0:Lae/gov/mol/fragment/Attachments/Fragment_Attachments;

    const v2, 0x7f090099

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
