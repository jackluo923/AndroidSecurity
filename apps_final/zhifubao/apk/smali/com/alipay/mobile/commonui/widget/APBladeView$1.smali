.class Lcom/alipay/mobile/commonui/widget/APBladeView$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/commonui/widget/APBladeView;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/commonui/widget/APBladeView;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/APBladeView$1;->this$0:Lcom/alipay/mobile/commonui/widget/APBladeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBladeView$1;->this$0:Lcom/alipay/mobile/commonui/widget/APBladeView;

    # getter for: Lcom/alipay/mobile/commonui/widget/APBladeView;->c:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/APBladeView;->access$000(Lcom/alipay/mobile/commonui/widget/APBladeView;)Landroid/widget/PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBladeView$1;->this$0:Lcom/alipay/mobile/commonui/widget/APBladeView;

    # getter for: Lcom/alipay/mobile/commonui/widget/APBladeView;->c:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/APBladeView;->access$000(Lcom/alipay/mobile/commonui/widget/APBladeView;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method
