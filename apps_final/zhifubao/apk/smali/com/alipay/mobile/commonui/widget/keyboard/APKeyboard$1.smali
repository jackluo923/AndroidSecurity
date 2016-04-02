.class Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$1;->this$0:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$1;->this$0:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;

    invoke-static {v0, p2, p3}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->access$000(Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$1;->this$0:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;

    # getter for: Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->C:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$OnOkClickedListener;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->access$100(Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;)Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$OnOkClickedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$OnOkClickedListener;->onOkClicked()V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$1;->this$0:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->hideKeyboard()V

    const/4 v0, 0x1

    goto :goto_0
.end method
