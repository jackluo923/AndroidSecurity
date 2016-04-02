.class Lcom/alipay/mobile/commonui/widget/APInputBox$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/commonui/widget/APInputBox;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/commonui/widget/APInputBox;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/APInputBox$4;->this$0:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APInputBox$4;->this$0:Lcom/alipay/mobile/commonui/widget/APInputBox;

    # getter for: Lcom/alipay/mobile/commonui/widget/APInputBox;->c:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->access$000(Lcom/alipay/mobile/commonui/widget/APInputBox;)Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APInputBox$4;->this$0:Lcom/alipay/mobile/commonui/widget/APInputBox;

    # getter for: Lcom/alipay/mobile/commonui/widget/APInputBox;->d:Lcom/alipay/mobile/commonui/widget/APImageButton;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->access$200(Lcom/alipay/mobile/commonui/widget/APInputBox;)Lcom/alipay/mobile/commonui/widget/APImageButton;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APInputBox$4;->this$0:Lcom/alipay/mobile/commonui/widget/APInputBox;

    # getter for: Lcom/alipay/mobile/commonui/widget/APInputBox;->g:Landroid/view/View$OnClickListener;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->access$300(Lcom/alipay/mobile/commonui/widget/APInputBox;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APInputBox$4;->this$0:Lcom/alipay/mobile/commonui/widget/APInputBox;

    # getter for: Lcom/alipay/mobile/commonui/widget/APInputBox;->g:Landroid/view/View$OnClickListener;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->access$300(Lcom/alipay/mobile/commonui/widget/APInputBox;)Landroid/view/View$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APInputBox$4;->this$0:Lcom/alipay/mobile/commonui/widget/APInputBox;

    # getter for: Lcom/alipay/mobile/commonui/widget/APInputBox;->d:Lcom/alipay/mobile/commonui/widget/APImageButton;
    invoke-static {v1}, Lcom/alipay/mobile/commonui/widget/APInputBox;->access$200(Lcom/alipay/mobile/commonui/widget/APInputBox;)Lcom/alipay/mobile/commonui/widget/APImageButton;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method
