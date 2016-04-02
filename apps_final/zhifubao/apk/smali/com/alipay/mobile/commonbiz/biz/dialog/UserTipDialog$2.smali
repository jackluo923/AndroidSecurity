.class Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog$2;
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
    iput-object p1, p0, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog$2;->this$0:Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog$2;->this$0:Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;

    # getter for: Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;->popupWindow:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;->access$2(Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;)Landroid/widget/PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog$2;->this$0:Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;

    # getter for: Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;->popupWindow:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;->access$2(Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 93
    :cond_0
    return-void
.end method
