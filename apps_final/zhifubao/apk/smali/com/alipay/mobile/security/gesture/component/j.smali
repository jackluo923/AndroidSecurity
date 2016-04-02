.class final Lcom/alipay/mobile/security/gesture/component/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/gesture/component/AlipayPattern;

.field private final synthetic b:Lcom/alipay/mobile/security/gesture/component/LockIndicator;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/gesture/component/AlipayPattern;Lcom/alipay/mobile/security/gesture/component/LockIndicator;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/gesture/component/j;->a:Lcom/alipay/mobile/security/gesture/component/AlipayPattern;

    iput-object p2, p0, Lcom/alipay/mobile/security/gesture/component/j;->b:Lcom/alipay/mobile/security/gesture/component/LockIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/j;->a:Lcom/alipay/mobile/security/gesture/component/AlipayPattern;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->access$12(Lcom/alipay/mobile/security/gesture/component/AlipayPattern;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/j;->a:Lcom/alipay/mobile/security/gesture/component/AlipayPattern;

    # getter for: Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->h:Lcom/alipay/mobile/commonui/widget/APTextView;
    invoke-static {v0}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->access$13(Lcom/alipay/mobile/security/gesture/component/AlipayPattern;)Lcom/alipay/mobile/commonui/widget/APTextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/j;->a:Lcom/alipay/mobile/security/gesture/component/AlipayPattern;

    # getter for: Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->e:Lcom/alipay/mobile/commonui/widget/APTextView;
    invoke-static {v0}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->access$14(Lcom/alipay/mobile/security/gesture/component/AlipayPattern;)Lcom/alipay/mobile/commonui/widget/APTextView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/j;->a:Lcom/alipay/mobile/security/gesture/component/AlipayPattern;

    # getter for: Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->e:Lcom/alipay/mobile/commonui/widget/APTextView;
    invoke-static {v0}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->access$14(Lcom/alipay/mobile/security/gesture/component/AlipayPattern;)Lcom/alipay/mobile/commonui/widget/APTextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/j;->a:Lcom/alipay/mobile/security/gesture/component/AlipayPattern;

    # getter for: Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->e:Lcom/alipay/mobile/commonui/widget/APTextView;
    invoke-static {v0}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->access$14(Lcom/alipay/mobile/security/gesture/component/AlipayPattern;)Lcom/alipay/mobile/commonui/widget/APTextView;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/component/j;->a:Lcom/alipay/mobile/security/gesture/component/AlipayPattern;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/a/b;->c:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/j;->a:Lcom/alipay/mobile/security/gesture/component/AlipayPattern;

    # getter for: Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->e:Lcom/alipay/mobile/commonui/widget/APTextView;
    invoke-static {v0}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->access$14(Lcom/alipay/mobile/security/gesture/component/AlipayPattern;)Lcom/alipay/mobile/commonui/widget/APTextView;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/a/f;->k:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/j;->b:Lcom/alipay/mobile/security/gesture/component/LockIndicator;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/gesture/component/LockIndicator;->clear()V

    :cond_0
    return-void
.end method
