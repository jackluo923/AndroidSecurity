.class Lcom/ali/user/mobile/ui/widget/AUAutoCompleteTextView$1;
.super Ljava/lang/Object;
.source "AUAutoCompleteTextView.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic this$0:Lcom/ali/user/mobile/ui/widget/AUAutoCompleteTextView;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/ui/widget/AUAutoCompleteTextView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/ui/widget/AUAutoCompleteTextView$1;->this$0:Lcom/ali/user/mobile/ui/widget/AUAutoCompleteTextView;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 104
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUAutoCompleteTextView$1;->this$0:Lcom/ali/user/mobile/ui/widget/AUAutoCompleteTextView;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/AUAutoCompleteTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 105
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 106
    if-eqz p2, :cond_2

    .line 107
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 108
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUAutoCompleteTextView$1;->this$0:Lcom/ali/user/mobile/ui/widget/AUAutoCompleteTextView;

    # getter for: Lcom/ali/user/mobile/ui/widget/AUAutoCompleteTextView;->c:Lcom/ali/user/mobile/ui/widget/AUAccountAutoCompleteTextView;
    invoke-static {v0}, Lcom/ali/user/mobile/ui/widget/AUAutoCompleteTextView;->access$0(Lcom/ali/user/mobile/ui/widget/AUAutoCompleteTextView;)Lcom/ali/user/mobile/ui/widget/AUAccountAutoCompleteTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/AUAccountAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUAutoCompleteTextView$1;->this$0:Lcom/ali/user/mobile/ui/widget/AUAutoCompleteTextView;

    # getter for: Lcom/ali/user/mobile/ui/widget/AUAutoCompleteTextView;->d:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/ali/user/mobile/ui/widget/AUAutoCompleteTextView;->access$1(Lcom/ali/user/mobile/ui/widget/AUAutoCompleteTextView;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUAutoCompleteTextView$1;->this$0:Lcom/ali/user/mobile/ui/widget/AUAutoCompleteTextView;

    # getter for: Lcom/ali/user/mobile/ui/widget/AUAutoCompleteTextView;->d:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/ali/user/mobile/ui/widget/AUAutoCompleteTextView;->access$1(Lcom/ali/user/mobile/ui/widget/AUAutoCompleteTextView;)Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 114
    :cond_2
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 115
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUAutoCompleteTextView$1;->this$0:Lcom/ali/user/mobile/ui/widget/AUAutoCompleteTextView;

    # getter for: Lcom/ali/user/mobile/ui/widget/AUAutoCompleteTextView;->d:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/ali/user/mobile/ui/widget/AUAutoCompleteTextView;->access$1(Lcom/ali/user/mobile/ui/widget/AUAutoCompleteTextView;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method
