.class Lcom/alipay/asset/common/ui/NumberKeyboardView$1;
.super Ljava/lang/Object;
.source "NumberKeyboardView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/asset/common/ui/NumberKeyboardView;


# direct methods
.method constructor <init>(Lcom/alipay/asset/common/ui/NumberKeyboardView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/asset/common/ui/NumberKeyboardView$1;->this$0:Lcom/alipay/asset/common/ui/NumberKeyboardView;

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/alipay/asset/common/ui/NumberKeyboardView$1;->this$0:Lcom/alipay/asset/common/ui/NumberKeyboardView;

    iget-object v0, v0, Lcom/alipay/asset/common/ui/NumberKeyboardView;->mInputBox:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APEditText;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v0, p0, Lcom/alipay/asset/common/ui/NumberKeyboardView$1;->this$0:Lcom/alipay/asset/common/ui/NumberKeyboardView;

    # invokes: Lcom/alipay/asset/common/ui/NumberKeyboardView;->a()V
    invoke-static {v0}, Lcom/alipay/asset/common/ui/NumberKeyboardView;->access$0(Lcom/alipay/asset/common/ui/NumberKeyboardView;)V

    .line 125
    return-void
.end method
