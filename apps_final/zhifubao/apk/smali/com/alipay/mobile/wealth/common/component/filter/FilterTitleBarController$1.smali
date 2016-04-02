.class Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController$1;
.super Ljava/lang/Object;
.source "FilterTitleBarController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController$1;->this$0:Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController$1;)Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController$1;->this$0:Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 71
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController$1;->this$0:Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController;

    # getter for: Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController;->h:Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController$ActionListener;
    invoke-static {v0}, Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController;->access$0(Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController;)Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController$ActionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController$1;->this$0:Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController;

    # getter for: Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController;->h:Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController$ActionListener;
    invoke-static {v0}, Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController;->access$0(Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController;)Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController$ActionListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController$ActionListener;->onTitleTextClick()V

    .line 73
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController$1;->this$0:Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController;

    # getter for: Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController;->e:Lcom/alipay/mobile/commonui/widget/APPopMenu;
    invoke-static {v0}, Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController;->access$1(Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController;)Lcom/alipay/mobile/commonui/widget/APPopMenu;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController$1;->this$0:Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController;

    # getter for: Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController;->e:Lcom/alipay/mobile/commonui/widget/APPopMenu;
    invoke-static {v0}, Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController;->access$1(Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController;)Lcom/alipay/mobile/commonui/widget/APPopMenu;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController$1$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController$1$1;-><init>(Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController$1;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APPopMenu;->setOnItemClickListener(Lcom/alipay/mobile/commonui/widget/APPopMenu$OnItemClickListener;)V

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController$1;->this$0:Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController;

    # getter for: Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController;->b:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController;->access$4(Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 95
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController$1;->this$0:Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController;

    # getter for: Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController;->e:Lcom/alipay/mobile/commonui/widget/APPopMenu;
    invoke-static {v0}, Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController;->access$1(Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController;)Lcom/alipay/mobile/commonui/widget/APPopMenu;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 96
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController$1;->this$0:Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController;

    # getter for: Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController;->e:Lcom/alipay/mobile/commonui/widget/APPopMenu;
    invoke-static {v0}, Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController;->access$1(Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController;)Lcom/alipay/mobile/commonui/widget/APPopMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APPopMenu;->getPopWindow()Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 97
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController$1;->this$0:Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController;

    # getter for: Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController;->e:Lcom/alipay/mobile/commonui/widget/APPopMenu;
    invoke-static {v0}, Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController;->access$1(Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController;)Lcom/alipay/mobile/commonui/widget/APPopMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APPopMenu;->dismiss()V

    .line 98
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController$1;->this$0:Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController;

    # getter for: Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController;->b:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController;->access$4(Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 108
    :cond_1
    :goto_0
    return-void

    .line 100
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController$1;->this$0:Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController;

    # getter for: Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController;->c:Landroid/content/Context;
    invoke-static {v0}, Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController;->access$5(Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/ui/R$dimen;->popmenu_margin_left_menu_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 101
    iget-object v1, p0, Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController$1;->this$0:Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController;

    # getter for: Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController;->c:Landroid/content/Context;
    invoke-static {v1}, Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController;->access$5(Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/ui/R$dimen;->popmenu_margin_left:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 102
    iget-object v2, p0, Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController$1;->this$0:Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController;

    # getter for: Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController;->c:Landroid/content/Context;
    invoke-static {v2}, Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController;->access$5(Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x3faaaaab

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v2

    sub-int/2addr v0, v2

    .line 104
    iget-object v2, p0, Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController$1;->this$0:Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController;

    # getter for: Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController;->e:Lcom/alipay/mobile/commonui/widget/APPopMenu;
    invoke-static {v2}, Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController;->access$1(Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController;)Lcom/alipay/mobile/commonui/widget/APPopMenu;

    move-result-object v2

    neg-int v1, v1

    neg-int v0, v0

    invoke-virtual {v2, p1, v1, v0}, Lcom/alipay/mobile/commonui/widget/APPopMenu;->showAsDropDown(Landroid/view/View;II)V

    goto :goto_0
.end method
