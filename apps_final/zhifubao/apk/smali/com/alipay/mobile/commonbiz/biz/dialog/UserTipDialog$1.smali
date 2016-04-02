.class Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog$1;
.super Ljava/lang/Object;
.source "UserTipDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog$1;->this$0:Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog$1;->this$0:Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;

    # invokes: Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;->initPopupWindow()V
    invoke-static {v0}, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;->access$0(Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;)V

    .line 69
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog$1;->this$0:Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;

    # getter for: Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;->userLink:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;->access$1(Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 70
    return-void
.end method
