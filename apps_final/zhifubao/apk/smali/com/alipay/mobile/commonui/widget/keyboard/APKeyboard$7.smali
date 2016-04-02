.class Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$7;->this$0:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$7;->this$0:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;

    # invokes: Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->f()V
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->access$1600(Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$7;->this$0:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->hideSafeKeyboardAndDestroy()V

    return-void
.end method
