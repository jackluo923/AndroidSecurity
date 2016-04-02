.class Lcom/ali/user/mobile/ui/widget/AUInputBox$1;
.super Ljava/lang/Object;
.source "AUInputBox.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Landroid/view/View;

.field final synthetic this$0:Lcom/ali/user/mobile/ui/widget/AUInputBox;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/ui/widget/AUInputBox;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox$1;->this$0:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    iput-object p2, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox$1;->a:Landroid/view/View;

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 249
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 250
    iget-object v1, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox$1;->this$0:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    # getter for: Lcom/ali/user/mobile/ui/widget/AUInputBox;->b:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->access$0(Lcom/ali/user/mobile/ui/widget/AUInputBox;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 251
    iget-object v1, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox$1;->this$0:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    # getter for: Lcom/ali/user/mobile/ui/widget/AUInputBox;->b:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->access$0(Lcom/ali/user/mobile/ui/widget/AUInputBox;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->getHitRect(Landroid/graphics/Rect;)V

    .line 253
    iget v1, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v1, v1, -0x64

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 254
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v1, v1, 0x64

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 255
    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/lit16 v1, v1, -0xc8

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 256
    iget v1, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v1, v1, 0x64

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 258
    new-instance v1, Landroid/view/TouchDelegate;

    iget-object v2, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox$1;->this$0:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    # getter for: Lcom/ali/user/mobile/ui/widget/AUInputBox;->b:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->access$0(Lcom/ali/user/mobile/ui/widget/AUInputBox;)Landroid/widget/EditText;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 259
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox$1;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 260
    return-void
.end method
