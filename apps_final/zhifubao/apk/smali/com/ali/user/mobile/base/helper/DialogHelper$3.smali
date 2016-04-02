.class Lcom/ali/user/mobile/base/helper/DialogHelper$3;
.super Ljava/lang/Object;
.source "DialogHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Ljava/lang/String;

.field final synthetic this$0:Lcom/ali/user/mobile/base/helper/DialogHelper;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/base/helper/DialogHelper;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/base/helper/DialogHelper$3;->this$0:Lcom/ali/user/mobile/base/helper/DialogHelper;

    iput-object p2, p0, Lcom/ali/user/mobile/base/helper/DialogHelper$3;->a:Ljava/lang/String;

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 155
    iget-object v0, p0, Lcom/ali/user/mobile/base/helper/DialogHelper$3;->this$0:Lcom/ali/user/mobile/base/helper/DialogHelper;

    # getter for: Lcom/ali/user/mobile/base/helper/DialogHelper;->a:Landroid/app/Activity;
    invoke-static {v0}, Lcom/ali/user/mobile/base/helper/DialogHelper;->access$0(Lcom/ali/user/mobile/base/helper/DialogHelper;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/base/helper/DialogHelper$3;->this$0:Lcom/ali/user/mobile/base/helper/DialogHelper;

    # getter for: Lcom/ali/user/mobile/base/helper/DialogHelper;->a:Landroid/app/Activity;
    invoke-static {v0}, Lcom/ali/user/mobile/base/helper/DialogHelper;->access$0(Lcom/ali/user/mobile/base/helper/DialogHelper;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/base/helper/DialogHelper$3;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    :try_start_0
    iget-object v0, p0, Lcom/ali/user/mobile/base/helper/DialogHelper$3;->this$0:Lcom/ali/user/mobile/base/helper/DialogHelper;

    new-instance v1, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;

    iget-object v2, p0, Lcom/ali/user/mobile/base/helper/DialogHelper$3;->this$0:Lcom/ali/user/mobile/base/helper/DialogHelper;

    # getter for: Lcom/ali/user/mobile/base/helper/DialogHelper;->a:Landroid/app/Activity;
    invoke-static {v2}, Lcom/ali/user/mobile/base/helper/DialogHelper;->access$0(Lcom/ali/user/mobile/base/helper/DialogHelper;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/ali/user/mobile/base/helper/DialogHelper;->access$5(Lcom/ali/user/mobile/base/helper/DialogHelper;Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;)V

    .line 158
    iget-object v0, p0, Lcom/ali/user/mobile/base/helper/DialogHelper$3;->this$0:Lcom/ali/user/mobile/base/helper/DialogHelper;

    # getter for: Lcom/ali/user/mobile/base/helper/DialogHelper;->d:Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;
    invoke-static {v0}, Lcom/ali/user/mobile/base/helper/DialogHelper;->access$6(Lcom/ali/user/mobile/base/helper/DialogHelper;)Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;

    move-result-object v0

    iget-object v1, p0, Lcom/ali/user/mobile/base/helper/DialogHelper$3;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;->setText(Ljava/lang/CharSequence;)V

    .line 159
    iget-object v0, p0, Lcom/ali/user/mobile/base/helper/DialogHelper$3;->this$0:Lcom/ali/user/mobile/base/helper/DialogHelper;

    # getter for: Lcom/ali/user/mobile/base/helper/DialogHelper;->d:Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;
    invoke-static {v0}, Lcom/ali/user/mobile/base/helper/DialogHelper;->access$6(Lcom/ali/user/mobile/base/helper/DialogHelper;)Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;

    move-result-object v0

    const/16 v1, 0x5dc

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;->setDuration(I)V

    .line 160
    iget-object v0, p0, Lcom/ali/user/mobile/base/helper/DialogHelper$3;->this$0:Lcom/ali/user/mobile/base/helper/DialogHelper;

    # getter for: Lcom/ali/user/mobile/base/helper/DialogHelper;->d:Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;
    invoke-static {v0}, Lcom/ali/user/mobile/base/helper/DialogHelper;->access$6(Lcom/ali/user/mobile/base/helper/DialogHelper;)Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$Background;->GRAY:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;->setBackground(I)V

    .line 161
    iget-object v0, p0, Lcom/ali/user/mobile/base/helper/DialogHelper$3;->this$0:Lcom/ali/user/mobile/base/helper/DialogHelper;

    # getter for: Lcom/ali/user/mobile/base/helper/DialogHelper;->d:Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;
    invoke-static {v0}, Lcom/ali/user/mobile/base/helper/DialogHelper;->access$6(Lcom/ali/user/mobile/base/helper/DialogHelper;)Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;->setTextColor(I)V

    .line 162
    iget-object v0, p0, Lcom/ali/user/mobile/base/helper/DialogHelper$3;->this$0:Lcom/ali/user/mobile/base/helper/DialogHelper;

    # getter for: Lcom/ali/user/mobile/base/helper/DialogHelper;->d:Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;
    invoke-static {v0}, Lcom/ali/user/mobile/base/helper/DialogHelper;->access$6(Lcom/ali/user/mobile/base/helper/DialogHelper;)Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;

    move-result-object v0

    const/16 v1, 0x11

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;->setGravity(III)V

    .line 163
    iget-object v0, p0, Lcom/ali/user/mobile/base/helper/DialogHelper$3;->this$0:Lcom/ali/user/mobile/base/helper/DialogHelper;

    # getter for: Lcom/ali/user/mobile/base/helper/DialogHelper;->d:Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;
    invoke-static {v0}, Lcom/ali/user/mobile/base/helper/DialogHelper;->access$6(Lcom/ali/user/mobile/base/helper/DialogHelper;)Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 164
    :catch_0
    move-exception v0

    .line 165
    const-string/jumbo v1, "DialogHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "DialogHelper.toast(): exception="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ali/user/mobile/log/AliUserLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/ali/user/mobile/base/helper/DialogHelper$3;->this$0:Lcom/ali/user/mobile/base/helper/DialogHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ali/user/mobile/base/helper/DialogHelper;->access$5(Lcom/ali/user/mobile/base/helper/DialogHelper;Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;)V

    goto :goto_0
.end method
