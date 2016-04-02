.class Lcom/alipay/mobile/commonui/widget/APAbsTableView$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/commonui/widget/APAbsTableView;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/commonui/widget/APAbsTableView;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView$1;->this$0:Lcom/alipay/mobile/commonui/widget/APAbsTableView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView$1;->this$0:Lcom/alipay/mobile/commonui/widget/APAbsTableView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView$1;->this$0:Lcom/alipay/mobile/commonui/widget/APAbsTableView;

    # getter for: Lcom/alipay/mobile/commonui/widget/APAbsTableView;->e:Ljava/lang/String;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->access$000(Lcom/alipay/mobile/commonui/widget/APAbsTableView;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView$1;->this$0:Lcom/alipay/mobile/commonui/widget/APAbsTableView;

    # getter for: Lcom/alipay/mobile/commonui/widget/APAbsTableView;->c:Ljava/lang/String;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->access$100(Lcom/alipay/mobile/commonui/widget/APAbsTableView;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView$1;->this$0:Lcom/alipay/mobile/commonui/widget/APAbsTableView;

    iget-object v0, v0, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->mLeftTextView:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const-string/jumbo v1, "\u963f"

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView$1;->this$0:Lcom/alipay/mobile/commonui/widget/APAbsTableView;

    iget-object v1, v1, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->linearLayout:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView$1;->this$0:Lcom/alipay/mobile/commonui/widget/APAbsTableView;

    iget-object v2, v2, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->mRightTextView:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    div-float v0, v1, v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView$1;->this$0:Lcom/alipay/mobile/commonui/widget/APAbsTableView;

    # getter for: Lcom/alipay/mobile/commonui/widget/APAbsTableView;->e:Ljava/lang/String;
    invoke-static {v1}, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->access$000(Lcom/alipay/mobile/commonui/widget/APAbsTableView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView$1;->this$0:Lcom/alipay/mobile/commonui/widget/APAbsTableView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->setLeftTextVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView$1;->this$0:Lcom/alipay/mobile/commonui/widget/APAbsTableView;

    # getter for: Lcom/alipay/mobile/commonui/widget/APAbsTableView;->e:Ljava/lang/String;
    invoke-static {v1}, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->access$000(Lcom/alipay/mobile/commonui/widget/APAbsTableView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView$1;->this$0:Lcom/alipay/mobile/commonui/widget/APAbsTableView;

    # getter for: Lcom/alipay/mobile/commonui/widget/APAbsTableView;->c:Ljava/lang/String;
    invoke-static {v2}, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->access$100(Lcom/alipay/mobile/commonui/widget/APAbsTableView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    if-le v1, v0, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView$1;->this$0:Lcom/alipay/mobile/commonui/widget/APAbsTableView;

    # getter for: Lcom/alipay/mobile/commonui/widget/APAbsTableView;->e:Ljava/lang/String;
    invoke-static {v1}, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->access$000(Lcom/alipay/mobile/commonui/widget/APAbsTableView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView$1;->this$0:Lcom/alipay/mobile/commonui/widget/APAbsTableView;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->setInnerLeftText(I)V

    goto :goto_0
.end method
