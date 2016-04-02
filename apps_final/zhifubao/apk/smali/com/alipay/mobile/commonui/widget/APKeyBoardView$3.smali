.class Lcom/alipay/mobile/commonui/widget/APKeyBoardView$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/commonui/widget/APKeyBoardView;

.field final synthetic val$funPos:I


# direct methods
.method constructor <init>(Lcom/alipay/mobile/commonui/widget/APKeyBoardView;I)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/APKeyBoardView$3;->this$0:Lcom/alipay/mobile/commonui/widget/APKeyBoardView;

    iput p2, p0, Lcom/alipay/mobile/commonui/widget/APKeyBoardView$3;->val$funPos:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/APKeyBoardView$3;->val$funPos:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APKeyBoardView$3;->this$0:Lcom/alipay/mobile/commonui/widget/APKeyBoardView;

    # getter for: Lcom/alipay/mobile/commonui/widget/APKeyBoardView;->c:Lcom/alipay/mobile/commonui/widget/controller/IKeyBoardController;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/APKeyBoardView;->access$100(Lcom/alipay/mobile/commonui/widget/APKeyBoardView;)Lcom/alipay/mobile/commonui/widget/controller/IKeyBoardController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APKeyBoardView$3;->this$0:Lcom/alipay/mobile/commonui/widget/APKeyBoardView;

    # getter for: Lcom/alipay/mobile/commonui/widget/APKeyBoardView;->c:Lcom/alipay/mobile/commonui/widget/controller/IKeyBoardController;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/APKeyBoardView;->access$100(Lcom/alipay/mobile/commonui/widget/APKeyBoardView;)Lcom/alipay/mobile/commonui/widget/controller/IKeyBoardController;

    move-result-object v1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APKeyBoardView$3;->this$0:Lcom/alipay/mobile/commonui/widget/APKeyBoardView;

    # getter for: Lcom/alipay/mobile/commonui/widget/APKeyBoardView;->e:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/APKeyBoardView;->access$500(Lcom/alipay/mobile/commonui/widget/APKeyBoardView;)Ljava/util/ArrayList;

    move-result-object v0

    iget v2, p0, Lcom/alipay/mobile/commonui/widget/APKeyBoardView$3;->val$funPos:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/controller/KeyBoardModel;

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/APKeyBoardView$3;->this$0:Lcom/alipay/mobile/commonui/widget/APKeyBoardView;

    # getter for: Lcom/alipay/mobile/commonui/widget/APKeyBoardView;->g:Ljava/lang/StringBuilder;
    invoke-static {v2}, Lcom/alipay/mobile/commonui/widget/APKeyBoardView;->access$300(Lcom/alipay/mobile/commonui/widget/APKeyBoardView;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/alipay/mobile/commonui/widget/controller/IKeyBoardController;->onKeyClicked(Lcom/alipay/mobile/commonui/widget/controller/KeyBoardModel;Ljava/lang/StringBuilder;)V

    :cond_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APKeyBoardView$3;->this$0:Lcom/alipay/mobile/commonui/widget/APKeyBoardView;

    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/APKeyBoardView;->access$600(Lcom/alipay/mobile/commonui/widget/APKeyBoardView;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APKeyBoardView$3;->this$0:Lcom/alipay/mobile/commonui/widget/APKeyBoardView;

    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/APKeyBoardView;->access$400(Lcom/alipay/mobile/commonui/widget/APKeyBoardView;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
