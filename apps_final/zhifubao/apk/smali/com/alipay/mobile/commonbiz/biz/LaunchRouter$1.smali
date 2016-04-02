.class Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$1;
.super Ljava/lang/Object;
.source "LaunchRouter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;

.field private final synthetic val$dialog:Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;

.field private final synthetic val$sp:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;Landroid/content/SharedPreferences;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$1;->this$0:Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;

    iput-object p2, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$1;->val$dialog:Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;

    iput-object p3, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$1;->val$sp:Landroid/content/SharedPreferences;

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 114
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/alipay/android/tablauncher/R$id;->btn_user_tip_ok:I

    if-ne v0, v1, :cond_3

    .line 115
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$1;->val$dialog:Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$1;->val$dialog:Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$1;->val$dialog:Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;->dismiss()V

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$1;->val$dialog:Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;->getCheckBoxState()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$1;->val$sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "showTip"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$1;->this$0:Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;

    iget-object v1, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$1;->this$0:Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;

    # getter for: Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->mAlipayApplication:Lcom/alipay/mobile/framework/AlipayApplication;
    invoke-static {v1}, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->access$0(Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;)Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    # invokes: Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->initInOnCreate(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->access$1(Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;Landroid/content/Context;)V

    .line 124
    :cond_2
    :goto_0
    return-void

    .line 118
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/alipay/android/tablauncher/R$id;->btn_user_tip_no:I

    if-ne v0, v1, :cond_2

    .line 119
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$1;->val$dialog:Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$1;->val$dialog:Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 120
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$1;->val$dialog:Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;->dismiss()V

    .line 121
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$1;->this$0:Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;

    # getter for: Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->access$2(Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method
