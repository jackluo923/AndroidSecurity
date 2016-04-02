.class Lae/gov/mol/fragment/FeedBack/Fragment_FeedBack$2;
.super Ljava/lang/Object;
.source "Fragment_FeedBack.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/gov/mol/fragment/FeedBack/Fragment_FeedBack;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lae/gov/mol/fragment/FeedBack/Fragment_FeedBack;


# direct methods
.method constructor <init>(Lae/gov/mol/fragment/FeedBack/Fragment_FeedBack;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lae/gov/mol/fragment/FeedBack/Fragment_FeedBack$2;->this$0:Lae/gov/mol/fragment/FeedBack/Fragment_FeedBack;

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 99
    iget-object v6, p0, Lae/gov/mol/fragment/FeedBack/Fragment_FeedBack$2;->this$0:Lae/gov/mol/fragment/FeedBack/Fragment_FeedBack;

    iget-object v6, v6, Lae/gov/mol/fragment/FeedBack/Fragment_FeedBack;->mEditTextName:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    .line 100
    .local v4, "name":Ljava/lang/String;
    iget-object v6, p0, Lae/gov/mol/fragment/FeedBack/Fragment_FeedBack$2;->this$0:Lae/gov/mol/fragment/FeedBack/Fragment_FeedBack;

    iget-object v6, v6, Lae/gov/mol/fragment/FeedBack/Fragment_FeedBack;->mEditTextMobile:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    .line 101
    .local v3, "mobile":Ljava/lang/String;
    iget-object v6, p0, Lae/gov/mol/fragment/FeedBack/Fragment_FeedBack$2;->this$0:Lae/gov/mol/fragment/FeedBack/Fragment_FeedBack;

    iget-object v6, v6, Lae/gov/mol/fragment/FeedBack/Fragment_FeedBack;->mEditTextEmail:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 102
    .local v1, "email":Ljava/lang/String;
    iget-object v6, p0, Lae/gov/mol/fragment/FeedBack/Fragment_FeedBack$2;->this$0:Lae/gov/mol/fragment/FeedBack/Fragment_FeedBack;

    iget-object v6, v6, Lae/gov/mol/fragment/FeedBack/Fragment_FeedBack;->mEditTextDesc:Lae/gov/mol/helper/ActionEditText;

    invoke-virtual {v6}, Lae/gov/mol/helper/ActionEditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "desc":Ljava/lang/String;
    iget-object v6, p0, Lae/gov/mol/fragment/FeedBack/Fragment_FeedBack$2;->this$0:Lae/gov/mol/fragment/FeedBack/Fragment_FeedBack;

    iget-object v6, v6, Lae/gov/mol/fragment/FeedBack/Fragment_FeedBack;->mEditTextSubject:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    .line 105
    .local v5, "subject":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 108
    .local v2, "finalDescription":Ljava/lang/String;
    const-string v6, ""

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 109
    iget-object v6, p0, Lae/gov/mol/fragment/FeedBack/Fragment_FeedBack$2;->this$0:Lae/gov/mol/fragment/FeedBack/Fragment_FeedBack;

    iget-object v6, v6, Lae/gov/mol/fragment/FeedBack/Fragment_FeedBack;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v7, p0, Lae/gov/mol/fragment/FeedBack/Fragment_FeedBack$2;->this$0:Lae/gov/mol/fragment/FeedBack/Fragment_FeedBack;

    const v8, 0x7f090190

    invoke-virtual {v7, v8}, Lae/gov/mol/fragment/FeedBack/Fragment_FeedBack;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lae/gov/mol/helper/CommonMethods;->ShowAlertOk(Ljava/lang/String;)V

    .line 138
    :goto_0
    return-void

    .line 111
    :cond_0
    const-string v6, ""

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 112
    iget-object v6, p0, Lae/gov/mol/fragment/FeedBack/Fragment_FeedBack$2;->this$0:Lae/gov/mol/fragment/FeedBack/Fragment_FeedBack;

    iget-object v6, v6, Lae/gov/mol/fragment/FeedBack/Fragment_FeedBack;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v7, p0, Lae/gov/mol/fragment/FeedBack/Fragment_FeedBack$2;->this$0:Lae/gov/mol/fragment/FeedBack/Fragment_FeedBack;

    const v8, 0x7f090191

    invoke-virtual {v7, v8}, Lae/gov/mol/fragment/FeedBack/Fragment_FeedBack;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lae/gov/mol/helper/CommonMethods;->ShowAlertOk(Ljava/lang/String;)V

    goto :goto_0

    .line 114
    :cond_1
    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 115
    iget-object v6, p0, Lae/gov/mol/fragment/FeedBack/Fragment_FeedBack$2;->this$0:Lae/gov/mol/fragment/FeedBack/Fragment_FeedBack;

    iget-object v6, v6, Lae/gov/mol/fragment/FeedBack/Fragment_FeedBack;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v7, p0, Lae/gov/mol/fragment/FeedBack/Fragment_FeedBack$2;->this$0:Lae/gov/mol/fragment/FeedBack/Fragment_FeedBack;

    const v8, 0x7f090192

    invoke-virtual {v7, v8}, Lae/gov/mol/fragment/FeedBack/Fragment_FeedBack;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lae/gov/mol/helper/CommonMethods;->ShowAlertOk(Ljava/lang/String;)V

    goto :goto_0

    .line 119
    :cond_2
    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 120
    iget-object v6, p0, Lae/gov/mol/fragment/FeedBack/Fragment_FeedBack$2;->this$0:Lae/gov/mol/fragment/FeedBack/Fragment_FeedBack;

    invoke-virtual {v6, v4}, Lae/gov/mol/fragment/FeedBack/Fragment_FeedBack;->isValidCharacterOnly(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 122
    iget-object v6, p0, Lae/gov/mol/fragment/FeedBack/Fragment_FeedBack$2;->this$0:Lae/gov/mol/fragment/FeedBack/Fragment_FeedBack;

    iget-object v6, v6, Lae/gov/mol/fragment/FeedBack/Fragment_FeedBack;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v7, p0, Lae/gov/mol/fragment/FeedBack/Fragment_FeedBack$2;->this$0:Lae/gov/mol/fragment/FeedBack/Fragment_FeedBack;

    const v8, 0x7f090234

    invoke-virtual {v7, v8}, Lae/gov/mol/fragment/FeedBack/Fragment_FeedBack;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lae/gov/mol/helper/CommonMethods;->ShowAlertOk(Ljava/lang/String;)V

    goto :goto_0

    .line 127
    :cond_3
    const-string v6, ""

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 128
    iget-object v6, p0, Lae/gov/mol/fragment/FeedBack/Fragment_FeedBack$2;->this$0:Lae/gov/mol/fragment/FeedBack/Fragment_FeedBack;

    iget-object v6, v6, Lae/gov/mol/fragment/FeedBack/Fragment_FeedBack;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    invoke-virtual {v6, v1}, Lae/gov/mol/helper/CommonMethods;->checkEmail(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 130
    iget-object v6, p0, Lae/gov/mol/fragment/FeedBack/Fragment_FeedBack$2;->this$0:Lae/gov/mol/fragment/FeedBack/Fragment_FeedBack;

    iget-object v6, v6, Lae/gov/mol/fragment/FeedBack/Fragment_FeedBack;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v7, p0, Lae/gov/mol/fragment/FeedBack/Fragment_FeedBack$2;->this$0:Lae/gov/mol/fragment/FeedBack/Fragment_FeedBack;

    const v8, 0x7f090222

    invoke-virtual {v7, v8}, Lae/gov/mol/fragment/FeedBack/Fragment_FeedBack;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lae/gov/mol/helper/CommonMethods;->ShowAlertOk(Ljava/lang/String;)V

    goto :goto_0

    .line 135
    :cond_4
    iget-object v6, p0, Lae/gov/mol/fragment/FeedBack/Fragment_FeedBack$2;->this$0:Lae/gov/mol/fragment/FeedBack/Fragment_FeedBack;

    invoke-virtual {v6, v2}, Lae/gov/mol/fragment/FeedBack/Fragment_FeedBack;->openEmailComponents(Ljava/lang/String;)V

    goto :goto_0
.end method
