.class Lcom/alipay/mobile/commonui/widget/APPopMenu$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/commonui/widget/APPopMenu;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/commonui/widget/APPopMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/APPopMenu$1;->this$0:Lcom/alipay/mobile/commonui/widget/APPopMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APPopMenu$1;->this$0:Lcom/alipay/mobile/commonui/widget/APPopMenu;

    # getter for: Lcom/alipay/mobile/commonui/widget/APPopMenu;->h:I
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/APPopMenu;->access$400(Lcom/alipay/mobile/commonui/widget/APPopMenu;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APPopMenu$1;->this$0:Lcom/alipay/mobile/commonui/widget/APPopMenu;

    # getter for: Lcom/alipay/mobile/commonui/widget/APPopMenu;->i:I
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/APPopMenu;->access$500(Lcom/alipay/mobile/commonui/widget/APPopMenu;)I

    move-result v0

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APPopMenu$1;->this$0:Lcom/alipay/mobile/commonui/widget/APPopMenu;

    # getter for: Lcom/alipay/mobile/commonui/widget/APPopMenu;->c:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/alipay/mobile/commonui/widget/APPopMenu;->access$100(Lcom/alipay/mobile/commonui/widget/APPopMenu;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    mul-int/2addr v0, v1

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APPopMenu$1;->this$0:Lcom/alipay/mobile/commonui/widget/APPopMenu;

    # getter for: Lcom/alipay/mobile/commonui/widget/APPopMenu;->h:I
    invoke-static {v1}, Lcom/alipay/mobile/commonui/widget/APPopMenu;->access$400(Lcom/alipay/mobile/commonui/widget/APPopMenu;)I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APPopMenu$1;->this$0:Lcom/alipay/mobile/commonui/widget/APPopMenu;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APPopMenu;->getScrollY()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APPopMenu$1;->this$0:Lcom/alipay/mobile/commonui/widget/APPopMenu;

    # getter for: Lcom/alipay/mobile/commonui/widget/APPopMenu;->d:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/APPopMenu;->access$200(Lcom/alipay/mobile/commonui/widget/APPopMenu;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APPopMenu$1;->this$0:Lcom/alipay/mobile/commonui/widget/APPopMenu;

    # getter for: Lcom/alipay/mobile/commonui/widget/APPopMenu;->g:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/APPopMenu;->access$300(Lcom/alipay/mobile/commonui/widget/APPopMenu;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x6

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APPopMenu$1;->this$0:Lcom/alipay/mobile/commonui/widget/APPopMenu;

    # getter for: Lcom/alipay/mobile/commonui/widget/APPopMenu;->d:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/APPopMenu;->access$200(Lcom/alipay/mobile/commonui/widget/APPopMenu;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APPopMenu$1;->this$0:Lcom/alipay/mobile/commonui/widget/APPopMenu;

    # getter for: Lcom/alipay/mobile/commonui/widget/APPopMenu;->c:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/APPopMenu;->access$100(Lcom/alipay/mobile/commonui/widget/APPopMenu;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v0

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APPopMenu$1;->this$0:Lcom/alipay/mobile/commonui/widget/APPopMenu;

    # getter for: Lcom/alipay/mobile/commonui/widget/APPopMenu;->c:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/alipay/mobile/commonui/widget/APPopMenu;->access$100(Lcom/alipay/mobile/commonui/widget/APPopMenu;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APPopMenu$1;->this$0:Lcom/alipay/mobile/commonui/widget/APPopMenu;

    # getter for: Lcom/alipay/mobile/commonui/widget/APPopMenu;->d:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/APPopMenu;->access$200(Lcom/alipay/mobile/commonui/widget/APPopMenu;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APPopMenu$1;->this$0:Lcom/alipay/mobile/commonui/widget/APPopMenu;

    # getter for: Lcom/alipay/mobile/commonui/widget/APPopMenu;->g:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/APPopMenu;->access$300(Lcom/alipay/mobile/commonui/widget/APPopMenu;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x6

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APPopMenu$1;->this$0:Lcom/alipay/mobile/commonui/widget/APPopMenu;

    # getter for: Lcom/alipay/mobile/commonui/widget/APPopMenu;->d:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/APPopMenu;->access$200(Lcom/alipay/mobile/commonui/widget/APPopMenu;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
