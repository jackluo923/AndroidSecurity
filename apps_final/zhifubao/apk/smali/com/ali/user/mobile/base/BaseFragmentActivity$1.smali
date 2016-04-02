.class Lcom/ali/user/mobile/base/BaseFragmentActivity$1;
.super Ljava/lang/Object;
.source "BaseFragmentActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Landroid/view/View;

.field final synthetic this$0:Lcom/ali/user/mobile/base/BaseFragmentActivity;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/base/BaseFragmentActivity;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/base/BaseFragmentActivity$1;->this$0:Lcom/ali/user/mobile/base/BaseFragmentActivity;

    iput-object p2, p0, Lcom/ali/user/mobile/base/BaseFragmentActivity$1;->a:Landroid/view/View;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 56
    iget-object v0, p0, Lcom/ali/user/mobile/base/BaseFragmentActivity$1;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 57
    iget-object v0, p0, Lcom/ali/user/mobile/base/BaseFragmentActivity$1;->this$0:Lcom/ali/user/mobile/base/BaseFragmentActivity;

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/base/BaseFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 58
    iget-object v1, p0, Lcom/ali/user/mobile/base/BaseFragmentActivity$1;->a:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 59
    iget-object v0, p0, Lcom/ali/user/mobile/base/BaseFragmentActivity$1;->this$0:Lcom/ali/user/mobile/base/BaseFragmentActivity;

    invoke-static {v0, v2}, Lcom/ali/user/mobile/base/BaseFragmentActivity;->access$4(Lcom/ali/user/mobile/base/BaseFragmentActivity;Z)V

    .line 60
    return-void
.end method
