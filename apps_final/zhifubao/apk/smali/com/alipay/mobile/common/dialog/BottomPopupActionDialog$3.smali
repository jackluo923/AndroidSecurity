.class Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog$3;->this$0:Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog$3;->this$0:Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog;->realDismiss()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
