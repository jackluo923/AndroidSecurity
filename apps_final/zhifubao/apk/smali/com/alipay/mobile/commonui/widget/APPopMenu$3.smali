.class Lcom/alipay/mobile/commonui/widget/APPopMenu$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/commonui/widget/APPopMenu;

.field final synthetic val$convertView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/commonui/widget/APPopMenu;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/APPopMenu$3;->this$0:Lcom/alipay/mobile/commonui/widget/APPopMenu;

    iput-object p2, p0, Lcom/alipay/mobile/commonui/widget/APPopMenu$3;->val$convertView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APPopMenu$3;->val$convertView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APPopMenu$3;->this$0:Lcom/alipay/mobile/commonui/widget/APPopMenu;

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APPopMenu$3;->val$convertView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    # setter for: Lcom/alipay/mobile/commonui/widget/APPopMenu;->i:I
    invoke-static {v0, v1}, Lcom/alipay/mobile/commonui/widget/APPopMenu;->access$502(Lcom/alipay/mobile/commonui/widget/APPopMenu;I)I

    return-void
.end method
