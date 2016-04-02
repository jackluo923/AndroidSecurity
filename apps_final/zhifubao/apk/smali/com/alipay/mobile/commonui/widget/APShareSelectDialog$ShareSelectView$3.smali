.class Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;

.field final synthetic val$curPage:I


# direct methods
.method constructor <init>(Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;I)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView$3;->this$0:Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;

    iput p2, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView$3;->val$curPage:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView$3;->this$0:Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;

    # getter for: Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->a:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->access$700(Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView$3;->val$curPage:I

    mul-int/lit8 v0, v0, 0x8

    add-int v2, v0, p3

    if-ltz v2, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView$3;->this$0:Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;

    # getter for: Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->a:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->access$700(Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView$3;->this$0:Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;

    # getter for: Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->a:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->access$700(Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView$3;->this$0:Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;

    # getter for: Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->d:Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$OnAlertShareSelectListener;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->access$500(Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;)Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$OnAlertShareSelectListener;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView$3;->this$0:Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;

    # getter for: Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->g:I
    invoke-static {v3}, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->access$800(Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;)I

    move-result v3

    and-int/2addr v1, v3

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView$3;->this$0:Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;

    # getter for: Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->d:Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$OnAlertShareSelectListener;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->access$500(Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;)Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$OnAlertShareSelectListener;

    move-result-object v3

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView$3;->this$0:Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;

    # getter for: Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->a:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->access$700(Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v3, v0, v1}, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$OnAlertShareSelectListener;->onSelect(IZ)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView$3;->this$0:Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;

    # getter for: Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->c:Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$OnShareSelectListener;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->access$600(Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;)Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$OnShareSelectListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView$3;->this$0:Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;

    # getter for: Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->c:Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$OnShareSelectListener;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->access$600(Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;)Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$OnShareSelectListener;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$OnShareSelectListener;->onSelect(I)V

    goto :goto_1

    :cond_2
    move v1, v0

    goto :goto_0
.end method
