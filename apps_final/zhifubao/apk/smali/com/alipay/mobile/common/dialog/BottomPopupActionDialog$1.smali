.class Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog$1;->this$0:Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog$1;->this$0:Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog;->cancel()V

    return-void
.end method
