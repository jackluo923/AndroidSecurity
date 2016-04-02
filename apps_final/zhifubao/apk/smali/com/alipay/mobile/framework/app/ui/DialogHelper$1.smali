.class Lcom/alipay/mobile/framework/app/ui/DialogHelper$1;
.super Ljava/lang/Object;
.source "DialogHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/framework/app/ui/DialogHelper;

.field final synthetic val$cancelable:Ljava/lang/Boolean;

.field final synthetic val$isCanceledOnTouchOutside:Ljava/lang/Boolean;

.field final synthetic val$msg:Ljava/lang/String;

.field final synthetic val$negative:Ljava/lang/String;

.field final synthetic val$negativeListener:Landroid/content/DialogInterface$OnClickListener;

.field final synthetic val$positive:Ljava/lang/String;

.field final synthetic val$positiveListener:Landroid/content/DialogInterface$OnClickListener;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/framework/app/ui/DialogHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$1;->this$0:Lcom/alipay/mobile/framework/app/ui/DialogHelper;

    iput-object p2, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$1;->val$title:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$1;->val$msg:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$1;->val$positive:Ljava/lang/String;

    iput-object p5, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$1;->val$positiveListener:Landroid/content/DialogInterface$OnClickListener;

    iput-object p6, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$1;->val$negative:Ljava/lang/String;

    iput-object p7, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$1;->val$negativeListener:Landroid/content/DialogInterface$OnClickListener;

    iput-object p8, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$1;->val$isCanceledOnTouchOutside:Ljava/lang/Boolean;

    iput-object p9, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$1;->val$cancelable:Ljava/lang/Boolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 94
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$1;->this$0:Lcom/alipay/mobile/framework/app/ui/DialogHelper;

    # getter for: Lcom/alipay/mobile/framework/app/ui/DialogHelper;->a:Landroid/app/Activity;
    invoke-static {v0}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->access$000(Lcom/alipay/mobile/framework/app/ui/DialogHelper;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$1;->this$0:Lcom/alipay/mobile/framework/app/ui/DialogHelper;

    # getter for: Lcom/alipay/mobile/framework/app/ui/DialogHelper;->a:Landroid/app/Activity;
    invoke-static {v0}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->access$000(Lcom/alipay/mobile/framework/app/ui/DialogHelper;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_4

    .line 95
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$1;->this$0:Lcom/alipay/mobile/framework/app/ui/DialogHelper;

    # getter for: Lcom/alipay/mobile/framework/app/ui/DialogHelper;->a:Landroid/app/Activity;
    invoke-static {v1}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->access$000(Lcom/alipay/mobile/framework/app/ui/DialogHelper;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 96
    iget-object v1, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$1;->val$title:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 97
    iget-object v1, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$1;->val$title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 99
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$1;->val$msg:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 100
    iget-object v1, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$1;->val$msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 102
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$1;->val$positive:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 103
    iget-object v1, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$1;->val$positive:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$1;->val$positiveListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 105
    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$1;->val$negative:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 106
    iget-object v1, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$1;->val$negative:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$1;->val$negativeListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 108
    :cond_3
    iget-object v1, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$1;->this$0:Lcom/alipay/mobile/framework/app/ui/DialogHelper;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    # setter for: Lcom/alipay/mobile/framework/app/ui/DialogHelper;->b:Landroid/app/AlertDialog;
    invoke-static {v1, v0}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->access$102(Lcom/alipay/mobile/framework/app/ui/DialogHelper;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$1;->this$0:Lcom/alipay/mobile/framework/app/ui/DialogHelper;

    # getter for: Lcom/alipay/mobile/framework/app/ui/DialogHelper;->b:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->access$100(Lcom/alipay/mobile/framework/app/ui/DialogHelper;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 111
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$1;->this$0:Lcom/alipay/mobile/framework/app/ui/DialogHelper;

    # getter for: Lcom/alipay/mobile/framework/app/ui/DialogHelper;->b:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->access$100(Lcom/alipay/mobile/framework/app/ui/DialogHelper;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$1;->val$isCanceledOnTouchOutside:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 112
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$1;->this$0:Lcom/alipay/mobile/framework/app/ui/DialogHelper;

    # getter for: Lcom/alipay/mobile/framework/app/ui/DialogHelper;->b:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->access$100(Lcom/alipay/mobile/framework/app/ui/DialogHelper;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$1;->val$cancelable:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :cond_4
    :goto_0
    return-void

    .line 113
    :catch_0
    move-exception v0

    .line 114
    const-string/jumbo v1, "DialogHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "DialogHelper.alert(): exception="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$1;->this$0:Lcom/alipay/mobile/framework/app/ui/DialogHelper;

    const/4 v1, 0x0

    # setter for: Lcom/alipay/mobile/framework/app/ui/DialogHelper;->b:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->access$102(Lcom/alipay/mobile/framework/app/ui/DialogHelper;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    goto :goto_0
.end method
