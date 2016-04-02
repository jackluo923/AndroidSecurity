.class Lcom/alipay/mobile/commonui/widget/APSwitchInputBox$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox$2;->this$0:Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox$2;->this$0:Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;

    # getter for: Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->b:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->access$000(Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox$2;->this$0:Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;

    # getter for: Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->b:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->access$000(Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
