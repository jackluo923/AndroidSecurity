.class Lcom/ali/user/mobile/base/helper/DialogHelper$2;
.super Ljava/lang/Object;
.source "DialogHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Ljava/lang/String;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Ljava/lang/String;

.field private final synthetic e:Lcom/alipay/mobile/commonui/widget/APNormalPopDialog$OnClickPositiveListener;

.field private final synthetic f:Ljava/lang/String;

.field private final synthetic g:Lcom/alipay/mobile/commonui/widget/APNormalPopDialog$OnClickNegativeListener;

.field private final synthetic h:Ljava/lang/Boolean;

.field final synthetic this$0:Lcom/ali/user/mobile/base/helper/DialogHelper;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/base/helper/DialogHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/commonui/widget/APNormalPopDialog$OnClickPositiveListener;Ljava/lang/String;Lcom/alipay/mobile/commonui/widget/APNormalPopDialog$OnClickNegativeListener;Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/base/helper/DialogHelper$2;->this$0:Lcom/ali/user/mobile/base/helper/DialogHelper;

    iput-object p2, p0, Lcom/ali/user/mobile/base/helper/DialogHelper$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/ali/user/mobile/base/helper/DialogHelper$2;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/ali/user/mobile/base/helper/DialogHelper$2;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/ali/user/mobile/base/helper/DialogHelper$2;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/ali/user/mobile/base/helper/DialogHelper$2;->e:Lcom/alipay/mobile/commonui/widget/APNormalPopDialog$OnClickPositiveListener;

    iput-object p7, p0, Lcom/ali/user/mobile/base/helper/DialogHelper$2;->f:Ljava/lang/String;

    iput-object p8, p0, Lcom/ali/user/mobile/base/helper/DialogHelper$2;->g:Lcom/alipay/mobile/commonui/widget/APNormalPopDialog$OnClickNegativeListener;

    iput-object p9, p0, Lcom/ali/user/mobile/base/helper/DialogHelper$2;->h:Ljava/lang/Boolean;

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 116
    iget-object v0, p0, Lcom/ali/user/mobile/base/helper/DialogHelper$2;->this$0:Lcom/ali/user/mobile/base/helper/DialogHelper;

    # getter for: Lcom/ali/user/mobile/base/helper/DialogHelper;->a:Landroid/app/Activity;
    invoke-static {v0}, Lcom/ali/user/mobile/base/helper/DialogHelper;->access$0(Lcom/ali/user/mobile/base/helper/DialogHelper;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/base/helper/DialogHelper$2;->this$0:Lcom/ali/user/mobile/base/helper/DialogHelper;

    # getter for: Lcom/ali/user/mobile/base/helper/DialogHelper;->a:Landroid/app/Activity;
    invoke-static {v0}, Lcom/ali/user/mobile/base/helper/DialogHelper;->access$0(Lcom/ali/user/mobile/base/helper/DialogHelper;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    new-instance v0, Lcom/alipay/mobile/commonui/widget/APNormalPopDialog;

    iget-object v1, p0, Lcom/ali/user/mobile/base/helper/DialogHelper$2;->this$0:Lcom/ali/user/mobile/base/helper/DialogHelper;

    # getter for: Lcom/ali/user/mobile/base/helper/DialogHelper;->a:Landroid/app/Activity;
    invoke-static {v1}, Lcom/ali/user/mobile/base/helper/DialogHelper;->access$0(Lcom/ali/user/mobile/base/helper/DialogHelper;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/ali/user/mobile/base/helper/DialogHelper$2;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/ali/user/mobile/base/helper/DialogHelper$2;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/ali/user/mobile/base/helper/DialogHelper$2;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/commonui/widget/APNormalPopDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v1, p0, Lcom/ali/user/mobile/base/helper/DialogHelper$2;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 121
    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APNormalPopDialog;->getEnsureBtn()Landroid/widget/Button;

    move-result-object v1

    iget-object v2, p0, Lcom/ali/user/mobile/base/helper/DialogHelper$2;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 123
    :cond_2
    iget-object v1, p0, Lcom/ali/user/mobile/base/helper/DialogHelper$2;->e:Lcom/alipay/mobile/commonui/widget/APNormalPopDialog$OnClickPositiveListener;

    if-eqz v1, :cond_3

    .line 124
    iget-object v1, p0, Lcom/ali/user/mobile/base/helper/DialogHelper$2;->e:Lcom/alipay/mobile/commonui/widget/APNormalPopDialog$OnClickPositiveListener;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APNormalPopDialog;->setPositiveListener(Lcom/alipay/mobile/commonui/widget/APNormalPopDialog$OnClickPositiveListener;)V

    .line 126
    :cond_3
    iget-object v1, p0, Lcom/ali/user/mobile/base/helper/DialogHelper$2;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 127
    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APNormalPopDialog;->getEnsureBtn()Landroid/widget/Button;

    move-result-object v1

    iget-object v2, p0, Lcom/ali/user/mobile/base/helper/DialogHelper$2;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 129
    :cond_4
    iget-object v1, p0, Lcom/ali/user/mobile/base/helper/DialogHelper$2;->g:Lcom/alipay/mobile/commonui/widget/APNormalPopDialog$OnClickNegativeListener;

    if-eqz v1, :cond_5

    .line 130
    iget-object v1, p0, Lcom/ali/user/mobile/base/helper/DialogHelper$2;->g:Lcom/alipay/mobile/commonui/widget/APNormalPopDialog$OnClickNegativeListener;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APNormalPopDialog;->setNegativeListener(Lcom/alipay/mobile/commonui/widget/APNormalPopDialog$OnClickNegativeListener;)V

    .line 132
    :cond_5
    iget-object v1, p0, Lcom/ali/user/mobile/base/helper/DialogHelper$2;->this$0:Lcom/ali/user/mobile/base/helper/DialogHelper;

    invoke-static {v1, v0}, Lcom/ali/user/mobile/base/helper/DialogHelper;->access$3(Lcom/ali/user/mobile/base/helper/DialogHelper;Lcom/alipay/mobile/commonui/widget/APNormalPopDialog;)V

    .line 134
    :try_start_0
    iget-object v0, p0, Lcom/ali/user/mobile/base/helper/DialogHelper$2;->this$0:Lcom/ali/user/mobile/base/helper/DialogHelper;

    # getter for: Lcom/ali/user/mobile/base/helper/DialogHelper;->c:Lcom/alipay/mobile/commonui/widget/APNormalPopDialog;
    invoke-static {v0}, Lcom/ali/user/mobile/base/helper/DialogHelper;->access$4(Lcom/ali/user/mobile/base/helper/DialogHelper;)Lcom/alipay/mobile/commonui/widget/APNormalPopDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/ali/user/mobile/base/helper/DialogHelper$2;->h:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APNormalPopDialog;->setCanceledOnTouchOutside(Z)V

    .line 135
    iget-object v0, p0, Lcom/ali/user/mobile/base/helper/DialogHelper$2;->this$0:Lcom/ali/user/mobile/base/helper/DialogHelper;

    # getter for: Lcom/ali/user/mobile/base/helper/DialogHelper;->c:Lcom/alipay/mobile/commonui/widget/APNormalPopDialog;
    invoke-static {v0}, Lcom/ali/user/mobile/base/helper/DialogHelper;->access$4(Lcom/ali/user/mobile/base/helper/DialogHelper;)Lcom/alipay/mobile/commonui/widget/APNormalPopDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APNormalPopDialog;->setCancelable(Z)V

    .line 136
    iget-object v0, p0, Lcom/ali/user/mobile/base/helper/DialogHelper$2;->this$0:Lcom/ali/user/mobile/base/helper/DialogHelper;

    # getter for: Lcom/ali/user/mobile/base/helper/DialogHelper;->c:Lcom/alipay/mobile/commonui/widget/APNormalPopDialog;
    invoke-static {v0}, Lcom/ali/user/mobile/base/helper/DialogHelper;->access$4(Lcom/ali/user/mobile/base/helper/DialogHelper;)Lcom/alipay/mobile/commonui/widget/APNormalPopDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APNormalPopDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 137
    :catch_0
    move-exception v0

    .line 138
    const-string/jumbo v1, "DialogHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "APNormalPopDialog.alert(): exception="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ali/user/mobile/log/AliUserLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/ali/user/mobile/base/helper/DialogHelper$2;->this$0:Lcom/ali/user/mobile/base/helper/DialogHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ali/user/mobile/base/helper/DialogHelper;->access$3(Lcom/ali/user/mobile/base/helper/DialogHelper;Lcom/alipay/mobile/commonui/widget/APNormalPopDialog;)V

    goto/16 :goto_0
.end method
