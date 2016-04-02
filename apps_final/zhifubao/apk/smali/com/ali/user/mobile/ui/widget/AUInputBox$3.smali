.class Lcom/ali/user/mobile/ui/widget/AUInputBox$3;
.super Ljava/lang/Object;
.source "AUInputBox.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic this$0:Lcom/ali/user/mobile/ui/widget/AUInputBox;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/ui/widget/AUInputBox;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox$3;->this$0:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    .line 367
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox$3;->this$0:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    # getter for: Lcom/ali/user/mobile/ui/widget/AUInputBox;->b:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->access$0(Lcom/ali/user/mobile/ui/widget/AUInputBox;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox$3;->this$0:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    # getter for: Lcom/ali/user/mobile/ui/widget/AUInputBox;->b:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->access$0(Lcom/ali/user/mobile/ui/widget/AUInputBox;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 373
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
