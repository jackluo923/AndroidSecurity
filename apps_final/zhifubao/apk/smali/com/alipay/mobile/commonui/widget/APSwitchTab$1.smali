.class Lcom/alipay/mobile/commonui/widget/APSwitchTab$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field position:I

.field final synthetic this$0:Lcom/alipay/mobile/commonui/widget/APSwitchTab;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/commonui/widget/APSwitchTab;)V
    .locals 1

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTab$1;->this$0:Lcom/alipay/mobile/commonui/widget/APSwitchTab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTab$1;->position:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTab$1;->this$0:Lcom/alipay/mobile/commonui/widget/APSwitchTab;

    # getter for: Lcom/alipay/mobile/commonui/widget/APSwitchTab;->k:Lcom/alipay/mobile/commonui/widget/APSwitchTab$TabSwitchListener;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->access$000(Lcom/alipay/mobile/commonui/widget/APSwitchTab;)Lcom/alipay/mobile/commonui/widget/APSwitchTab$TabSwitchListener;

    move-result-object v0

    iget v1, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTab$1;->position:I

    invoke-interface {v0, v1, p1}, Lcom/alipay/mobile/commonui/widget/APSwitchTab$TabSwitchListener;->onTabClick(ILandroid/view/View;)V

    return-void
.end method

.method public setPosition(I)Landroid/view/View$OnClickListener;
    .locals 0

    iput p1, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTab$1;->position:I

    return-object p0
.end method
