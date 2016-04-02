.class Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;

.field final synthetic val$listener:Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$OnTouchBackgroundListener;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$OnTouchBackgroundListener;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView$1;->this$0:Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;

    iput-object p2, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView$1;->val$listener:Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$OnTouchBackgroundListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView$1;->val$listener:Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$OnTouchBackgroundListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView$1;->val$listener:Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$OnTouchBackgroundListener;

    invoke-interface {v0}, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$OnTouchBackgroundListener;->OnTouch()V

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
