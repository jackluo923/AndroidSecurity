.class Lcom/alipay/mobile/commonui/widget/APNormalPopDialog$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/commonui/widget/APNormalPopDialog;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/commonui/widget/APNormalPopDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/APNormalPopDialog$1;->this$0:Lcom/alipay/mobile/commonui/widget/APNormalPopDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APNormalPopDialog$1;->this$0:Lcom/alipay/mobile/commonui/widget/APNormalPopDialog;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APNormalPopDialog;->cancel()V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APNormalPopDialog$1;->this$0:Lcom/alipay/mobile/commonui/widget/APNormalPopDialog;

    # getter for: Lcom/alipay/mobile/commonui/widget/APNormalPopDialog;->m:Lcom/alipay/mobile/commonui/widget/APNormalPopDialog$OnClickNegativeListener;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/APNormalPopDialog;->access$000(Lcom/alipay/mobile/commonui/widget/APNormalPopDialog;)Lcom/alipay/mobile/commonui/widget/APNormalPopDialog$OnClickNegativeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APNormalPopDialog$1;->this$0:Lcom/alipay/mobile/commonui/widget/APNormalPopDialog;

    # getter for: Lcom/alipay/mobile/commonui/widget/APNormalPopDialog;->m:Lcom/alipay/mobile/commonui/widget/APNormalPopDialog$OnClickNegativeListener;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/APNormalPopDialog;->access$000(Lcom/alipay/mobile/commonui/widget/APNormalPopDialog;)Lcom/alipay/mobile/commonui/widget/APNormalPopDialog$OnClickNegativeListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/commonui/widget/APNormalPopDialog$OnClickNegativeListener;->onClick()V

    :cond_0
    return-void
.end method
