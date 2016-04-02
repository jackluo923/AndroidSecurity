.class Lcom/alipay/mobile/common/inputmethod/CardIdKeyboardView$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/inputmethod/CardIdKeyboardView;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/inputmethod/CardIdKeyboardView;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/inputmethod/CardIdKeyboardView$3;->this$0:Lcom/alipay/mobile/common/inputmethod/CardIdKeyboardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/common/inputmethod/CardIdKeyboardView$3;->this$0:Lcom/alipay/mobile/common/inputmethod/CardIdKeyboardView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/inputmethod/CardIdKeyboardView;->setVisibility(I)V

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
