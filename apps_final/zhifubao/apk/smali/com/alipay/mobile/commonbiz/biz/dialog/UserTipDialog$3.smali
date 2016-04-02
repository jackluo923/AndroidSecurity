.class Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog$3;
.super Ljava/lang/Object;
.source "UserTipDialog.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog$3;->this$0:Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog$3;->this$0:Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;

    # getter for: Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;->userLink:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;->access$1(Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 101
    return-void
.end method
