.class Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;

.field final synthetic val$curPage:I


# direct methods
.method constructor <init>(Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;I)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView$2;->this$0:Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;

    iput p2, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView$2;->val$curPage:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView$2;->this$0:Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;

    # getter for: Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->b:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->access$400(Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView$2;->val$curPage:I

    mul-int/lit8 v0, v0, 0x8

    add-int/2addr v0, p3

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView$2;->this$0:Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;

    # getter for: Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->b:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->access$400(Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView$2;->this$0:Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;

    # getter for: Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->b:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->access$400(Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/share/ShareItem;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView$2;->this$0:Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;

    # getter for: Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->d:Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$OnAlertShareSelectListener;
    invoke-static {v1}, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->access$500(Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;)Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$OnAlertShareSelectListener;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView$2;->this$0:Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;

    # getter for: Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->d:Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$OnAlertShareSelectListener;
    invoke-static {v1}, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->access$500(Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;)Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$OnAlertShareSelectListener;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alipay/mobile/common/share/ShareItem;->getShareType()I

    move-result v2

    invoke-virtual {v0}, Lcom/alipay/mobile/common/share/ShareItem;->isAlert()Z

    move-result v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$OnAlertShareSelectListener;->onSelect(IZ)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView$2;->this$0:Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;

    # getter for: Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->c:Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$OnShareSelectListener;
    invoke-static {v1}, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->access$600(Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;)Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$OnShareSelectListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView$2;->this$0:Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;

    # getter for: Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->c:Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$OnShareSelectListener;
    invoke-static {v1}, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->access$600(Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;)Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$OnShareSelectListener;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alipay/mobile/common/share/ShareItem;->getShareType()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$OnShareSelectListener;->onSelect(I)V

    goto :goto_0
.end method
