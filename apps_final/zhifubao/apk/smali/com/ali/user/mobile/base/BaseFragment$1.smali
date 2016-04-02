.class Lcom/ali/user/mobile/base/BaseFragment$1;
.super Ljava/lang/Object;
.source "BaseFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Landroid/view/View;

.field final synthetic this$0:Lcom/ali/user/mobile/base/BaseFragment;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/base/BaseFragment;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/base/BaseFragment$1;->this$0:Lcom/ali/user/mobile/base/BaseFragment;

    iput-object p2, p0, Lcom/ali/user/mobile/base/BaseFragment$1;->a:Landroid/view/View;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 76
    iget-object v0, p0, Lcom/ali/user/mobile/base/BaseFragment$1;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 77
    iget-object v0, p0, Lcom/ali/user/mobile/base/BaseFragment$1;->this$0:Lcom/ali/user/mobile/base/BaseFragment;

    iget-object v0, v0, Lcom/ali/user/mobile/base/BaseFragment;->mAttatachedAtcitity:Landroid/app/Activity;

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 78
    iget-object v1, p0, Lcom/ali/user/mobile/base/BaseFragment$1;->a:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 79
    return-void
.end method
