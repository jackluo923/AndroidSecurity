.class Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView$CheckCodeSendResultCallback;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/commonui/widget/SendResultCallback;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView$CheckCodeSendResultCallback;->this$0:Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView;Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView$CheckCodeSendResultCallback;-><init>(Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView;)V

    return-void
.end method


# virtual methods
.method public onFail()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView$CheckCodeSendResultCallback;->this$0:Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView;

    const/4 v1, 0x1

    # setter for: Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView;->i:Z
    invoke-static {v0, v1}, Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView;->access$302(Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView;Z)Z

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView$CheckCodeSendResultCallback;->this$0:Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView;->updateSendButtonEnableStatus()V

    return-void
.end method

.method public onSuccess()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView$CheckCodeSendResultCallback;->this$0:Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView;->scheduleTimer()V

    return-void
.end method
