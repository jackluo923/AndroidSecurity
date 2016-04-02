.class Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog$2;->this$0:Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog$2;->this$0:Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog$2;->this$0:Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog$2;->this$0:Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog;

    # getter for: Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog;->e:Z
    invoke-static {v0}, Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog;->access$000(Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog$2;->this$0:Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog;->realDismiss()V

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
