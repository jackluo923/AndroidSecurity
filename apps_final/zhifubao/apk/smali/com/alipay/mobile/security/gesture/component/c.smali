.class final Lcom/alipay/mobile/security/gesture/component/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/gesture/component/AlipayPattern;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/gesture/component/AlipayPattern;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/gesture/component/c;->a:Lcom/alipay/mobile/security/gesture/component/AlipayPattern;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/c;->a:Lcom/alipay/mobile/security/gesture/component/AlipayPattern;

    # getter for: Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->r:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->access$19(Lcom/alipay/mobile/security/gesture/component/AlipayPattern;)Landroid/widget/PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/c;->a:Lcom/alipay/mobile/security/gesture/component/AlipayPattern;

    # getter for: Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->r:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->access$19(Lcom/alipay/mobile/security/gesture/component/AlipayPattern;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/c;->a:Lcom/alipay/mobile/security/gesture/component/AlipayPattern;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->access$20(Lcom/alipay/mobile/security/gesture/component/AlipayPattern;Landroid/widget/PopupWindow;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/c;->a:Lcom/alipay/mobile/security/gesture/component/AlipayPattern;

    const-string/jumbo v1, "popup click"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->l(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
