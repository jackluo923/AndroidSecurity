.class Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$5;->this$0:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$5;->this$0:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;

    # getter for: Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->E:Landroid/app/Activity;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->access$1400(Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$5;->this$0:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;

    # getter for: Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->E:Landroid/app/Activity;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->access$1400(Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$5;->this$0:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;

    # getter for: Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->H:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->access$600(Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$5;->this$0:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;

    # getter for: Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->F:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->access$300(Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;)Landroid/widget/PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$5;->this$0:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;

    # getter for: Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->T:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->access$1500(Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$5;->this$0:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;

    # getter for: Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->T:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->access$1500(Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$5;->this$0:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;

    # getter for: Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->F:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->access$300(Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;)Landroid/widget/PopupWindow;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$5;->this$0:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;

    # getter for: Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->H:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->access$600(Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;)Landroid/view/ViewGroup;

    move-result-object v1

    const/16 v2, 0x53

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$5;->this$0:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;

    # getter for: Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->F:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->access$300(Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->update()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "popupwindow showAtLocation err:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
