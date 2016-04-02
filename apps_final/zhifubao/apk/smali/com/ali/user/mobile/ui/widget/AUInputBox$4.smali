.class Lcom/ali/user/mobile/ui/widget/AUInputBox$4;
.super Ljava/lang/Object;
.source "AUInputBox.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/ali/user/mobile/ui/widget/AUInputBox;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/ui/widget/AUInputBox;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox$4;->this$0:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    .line 388
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 391
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox$4;->this$0:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    # getter for: Lcom/ali/user/mobile/ui/widget/AUInputBox;->b:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->access$0(Lcom/ali/user/mobile/ui/widget/AUInputBox;)Landroid/widget/EditText;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 392
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox$4;->this$0:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    # getter for: Lcom/ali/user/mobile/ui/widget/AUInputBox;->c:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->access$2(Lcom/ali/user/mobile/ui/widget/AUInputBox;)Landroid/widget/ImageButton;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 393
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox$4;->this$0:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    # getter for: Lcom/ali/user/mobile/ui/widget/AUInputBox;->i:Landroid/view/View$OnClickListener;
    invoke-static {v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->access$3(Lcom/ali/user/mobile/ui/widget/AUInputBox;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox$4;->this$0:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    # getter for: Lcom/ali/user/mobile/ui/widget/AUInputBox;->i:Landroid/view/View$OnClickListener;
    invoke-static {v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->access$3(Lcom/ali/user/mobile/ui/widget/AUInputBox;)Landroid/view/View$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox$4;->this$0:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    # getter for: Lcom/ali/user/mobile/ui/widget/AUInputBox;->c:Landroid/widget/ImageButton;
    invoke-static {v1}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->access$2(Lcom/ali/user/mobile/ui/widget/AUInputBox;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 396
    :cond_0
    return-void
.end method
