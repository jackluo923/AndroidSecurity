.class Lcom/alipay/mobile/commonui/widget/APCheckCodeVerticalView$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/commonui/widget/APCheckCodeVerticalView;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/commonui/widget/APCheckCodeVerticalView;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeVerticalView$1;->this$0:Lcom/alipay/mobile/commonui/widget/APCheckCodeVerticalView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeVerticalView$1;->this$0:Lcom/alipay/mobile/commonui/widget/APCheckCodeVerticalView;

    # getter for: Lcom/alipay/mobile/commonui/widget/APCheckCodeVerticalView;->d:Lcom/alipay/mobile/commonui/widget/OnSendCallback;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/APCheckCodeVerticalView;->access$200(Lcom/alipay/mobile/commonui/widget/APCheckCodeVerticalView;)Lcom/alipay/mobile/commonui/widget/OnSendCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeVerticalView$1;->this$0:Lcom/alipay/mobile/commonui/widget/APCheckCodeVerticalView;

    const/4 v1, 0x0

    # setter for: Lcom/alipay/mobile/commonui/widget/APCheckCodeVerticalView;->k:Z
    invoke-static {v0, v1}, Lcom/alipay/mobile/commonui/widget/APCheckCodeVerticalView;->access$302(Lcom/alipay/mobile/commonui/widget/APCheckCodeVerticalView;Z)Z

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeVerticalView$1;->this$0:Lcom/alipay/mobile/commonui/widget/APCheckCodeVerticalView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APCheckCodeVerticalView;->updateSendButtonEnableStatus()V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeVerticalView$1;->this$0:Lcom/alipay/mobile/commonui/widget/APCheckCodeVerticalView;

    # getter for: Lcom/alipay/mobile/commonui/widget/APCheckCodeVerticalView;->d:Lcom/alipay/mobile/commonui/widget/OnSendCallback;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/APCheckCodeVerticalView;->access$200(Lcom/alipay/mobile/commonui/widget/APCheckCodeVerticalView;)Lcom/alipay/mobile/commonui/widget/OnSendCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeVerticalView$1;->this$0:Lcom/alipay/mobile/commonui/widget/APCheckCodeVerticalView;

    # getter for: Lcom/alipay/mobile/commonui/widget/APCheckCodeVerticalView;->e:Lcom/alipay/mobile/commonui/widget/SendResultCallback;
    invoke-static {v1}, Lcom/alipay/mobile/commonui/widget/APCheckCodeVerticalView;->access$400(Lcom/alipay/mobile/commonui/widget/APCheckCodeVerticalView;)Lcom/alipay/mobile/commonui/widget/SendResultCallback;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/commonui/widget/OnSendCallback;->onSend(Lcom/alipay/mobile/commonui/widget/SendResultCallback;)V

    :cond_0
    return-void
.end method
