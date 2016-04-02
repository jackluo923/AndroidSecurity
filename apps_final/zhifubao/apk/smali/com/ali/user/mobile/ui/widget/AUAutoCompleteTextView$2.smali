.class Lcom/ali/user/mobile/ui/widget/AUAutoCompleteTextView$2;
.super Ljava/lang/Object;
.source "AUAutoCompleteTextView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic this$0:Lcom/ali/user/mobile/ui/widget/AUAutoCompleteTextView;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/ui/widget/AUAutoCompleteTextView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/ui/widget/AUAutoCompleteTextView$2;->this$0:Lcom/ali/user/mobile/ui/widget/AUAutoCompleteTextView;

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUAutoCompleteTextView$2;->this$0:Lcom/ali/user/mobile/ui/widget/AUAutoCompleteTextView;

    # getter for: Lcom/ali/user/mobile/ui/widget/AUAutoCompleteTextView;->d:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/ali/user/mobile/ui/widget/AUAutoCompleteTextView;->access$1(Lcom/ali/user/mobile/ui/widget/AUAutoCompleteTextView;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 130
    return-void

    .line 129
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 125
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 122
    return-void
.end method
