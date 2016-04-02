.class Lcom/alipay/mobile/commonui/widget/APSwitchInputBox$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox$3;->this$0:Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox$3;->this$0:Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;

    # getter for: Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->b:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->access$000(Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;)Landroid/widget/EditText;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox$3;->this$0:Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;

    # getter for: Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->c:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->access$200(Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;)Landroid/widget/ImageButton;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox$3;->this$0:Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;

    # getter for: Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->i:Landroid/view/View$OnClickListener;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->access$300(Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox$3;->this$0:Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;

    # getter for: Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->i:Landroid/view/View$OnClickListener;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->access$300(Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;)Landroid/view/View$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox$3;->this$0:Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;

    # getter for: Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->c:Landroid/widget/ImageButton;
    invoke-static {v1}, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->access$200(Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method
