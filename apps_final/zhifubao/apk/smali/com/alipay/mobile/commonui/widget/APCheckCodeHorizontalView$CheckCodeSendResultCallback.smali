.class Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView$CheckCodeSendResultCallback;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/commonui/widget/SendResultCallback;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView$CheckCodeSendResultCallback;->this$0:Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView$CheckCodeSendResultCallback;-><init>(Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;)V

    return-void
.end method


# virtual methods
.method public onFail()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView$CheckCodeSendResultCallback;->this$0:Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;

    const/4 v1, 0x1

    # setter for: Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->k:Z
    invoke-static {v0, v1}, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->access$302(Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;Z)Z

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView$CheckCodeSendResultCallback;->this$0:Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->updateSendButtonEnableStatus()V

    return-void
.end method

.method public onSuccess()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView$CheckCodeSendResultCallback;->this$0:Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->scheduleTimer()V

    return-void
.end method
