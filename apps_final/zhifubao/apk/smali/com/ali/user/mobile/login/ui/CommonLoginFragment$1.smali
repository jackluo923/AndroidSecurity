.class Lcom/ali/user/mobile/login/ui/CommonLoginFragment$1;
.super Ljava/lang/Object;
.source "CommonLoginFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field private final synthetic a:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

.field final synthetic this$0:Lcom/ali/user/mobile/login/ui/CommonLoginFragment;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/ui/CommonLoginFragment;Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/CommonLoginFragment$1;->this$0:Lcom/ali/user/mobile/login/ui/CommonLoginFragment;

    iput-object p2, p0, Lcom/ali/user/mobile/login/ui/CommonLoginFragment$1;->a:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    .prologue
    .line 194
    if-eqz p2, :cond_0

    .line 195
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/CommonLoginFragment$1;->a:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->showSafeKeyboard()V

    .line 197
    :cond_0
    return-void
.end method
