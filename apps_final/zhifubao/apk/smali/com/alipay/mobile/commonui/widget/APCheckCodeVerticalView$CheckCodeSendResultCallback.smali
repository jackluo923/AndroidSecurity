.class Lcom/alipay/mobile/commonui/widget/APCheckCodeVerticalView$CheckCodeSendResultCallback;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/commonui/widget/SendResultCallback;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/commonui/widget/APCheckCodeVerticalView;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/commonui/widget/APCheckCodeVerticalView;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeVerticalView$CheckCodeSendResultCallback;->this$0:Lcom/alipay/mobile/commonui/widget/APCheckCodeVerticalView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/commonui/widget/APCheckCodeVerticalView;Lcom/alipay/mobile/commonui/widget/APCheckCodeVerticalView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/mobile/commonui/widget/APCheckCodeVerticalView$CheckCodeSendResultCallback;-><init>(Lcom/alipay/mobile/commonui/widget/APCheckCodeVerticalView;)V

    return-void
.end method


# virtual methods
.method public onFail()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeVerticalView$CheckCodeSendResultCallback;->this$0:Lcom/alipay/mobile/commonui/widget/APCheckCodeVerticalView;

    const/4 v1, 0x1

    # setter for: Lcom/alipay/mobile/commonui/widget/APCheckCodeVerticalView;->k:Z
    invoke-static {v0, v1}, Lcom/alipay/mobile/commonui/widget/APCheckCodeVerticalView;->access$302(Lcom/alipay/mobile/commonui/widget/APCheckCodeVerticalView;Z)Z

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeVerticalView$CheckCodeSendResultCallback;->this$0:Lcom/alipay/mobile/commonui/widget/APCheckCodeVerticalView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APCheckCodeVerticalView;->updateSendButtonEnableStatus()V

    return-void
.end method

.method public onSuccess()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeVerticalView$CheckCodeSendResultCallback;->this$0:Lcom/alipay/mobile/commonui/widget/APCheckCodeVerticalView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APCheckCodeVerticalView;->scheduleTimer()V

    return-void
.end method
