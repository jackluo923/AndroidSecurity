.class Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$6;->this$0:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$6;->this$0:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;

    # getter for: Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->U:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->access$200(Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$6;->this$0:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;

    # invokes: Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->f()V
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->access$1600(Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$6;->this$0:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->hideKeyboard(Z)V

    goto :goto_0
.end method
