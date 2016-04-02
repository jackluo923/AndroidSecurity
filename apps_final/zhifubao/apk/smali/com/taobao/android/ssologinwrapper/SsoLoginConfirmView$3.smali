.class Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView;


# direct methods
.method constructor <init>(Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView;)V
    .locals 0

    iput-object p1, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView$3;->this$0:Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView$3;->this$0:Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView;

    # getter for: Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView;->j:Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmListener;
    invoke-static {v0}, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView;->access$000(Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView;)Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView$3;->this$0:Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView;

    # getter for: Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView;->j:Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmListener;
    invoke-static {v0}, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView;->access$000(Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView;)Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmListener;->onChangeAccountLogin()V

    :cond_0
    return-void
.end method
