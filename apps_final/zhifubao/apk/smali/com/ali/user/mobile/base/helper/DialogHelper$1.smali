.class Lcom/ali/user/mobile/base/helper/DialogHelper$1;
.super Ljava/lang/Object;
.source "DialogHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Ljava/lang/String;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Landroid/content/DialogInterface$OnClickListener;

.field private final synthetic e:Ljava/lang/String;

.field private final synthetic f:Landroid/content/DialogInterface$OnClickListener;

.field private final synthetic g:Ljava/lang/Boolean;

.field final synthetic this$0:Lcom/ali/user/mobile/base/helper/DialogHelper;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/base/helper/DialogHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/base/helper/DialogHelper$1;->this$0:Lcom/ali/user/mobile/base/helper/DialogHelper;

    iput-object p2, p0, Lcom/ali/user/mobile/base/helper/DialogHelper$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/ali/user/mobile/base/helper/DialogHelper$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/ali/user/mobile/base/helper/DialogHelper$1;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/ali/user/mobile/base/helper/DialogHelper$1;->d:Landroid/content/DialogInterface$OnClickListener;

    iput-object p6, p0, Lcom/ali/user/mobile/base/helper/DialogHelper$1;->e:Ljava/lang/String;

    iput-object p7, p0, Lcom/ali/user/mobile/base/helper/DialogHelper$1;->f:Landroid/content/DialogInterface$OnClickListener;

    iput-object p8, p0, Lcom/ali/user/mobile/base/helper/DialogHelper$1;->g:Ljava/lang/Boolean;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 72
    iget-object v0, p0, Lcom/ali/user/mobile/base/helper/DialogHelper$1;->this$0:Lcom/ali/user/mobile/base/helper/DialogHelper;

    # getter for: Lcom/ali/user/mobile/base/helper/DialogHelper;->a:Landroid/app/Activity;
    invoke-static {v0}, Lcom/ali/user/mobile/base/helper/DialogHelper;->access$0(Lcom/ali/user/mobile/base/helper/DialogHelper;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/base/helper/DialogHelper$1;->this$0:Lcom/ali/user/mobile/base/helper/DialogHelper;

    # getter for: Lcom/ali/user/mobile/base/helper/DialogHelper;->a:Landroid/app/Activity;
    invoke-static {v0}, Lcom/ali/user/mobile/base/helper/DialogHelper;->access$0(Lcom/ali/user/mobile/base/helper/DialogHelper;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/ali/user/mobile/base/helper/DialogHelper$1;->this$0:Lcom/ali/user/mobile/base/helper/DialogHelper;

    # getter for: Lcom/ali/user/mobile/base/helper/DialogHelper;->a:Landroid/app/Activity;
    invoke-static {v1}, Lcom/ali/user/mobile/base/helper/DialogHelper;->access$0(Lcom/ali/user/mobile/base/helper/DialogHelper;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 76
    iget-object v1, p0, Lcom/ali/user/mobile/base/helper/DialogHelper$1;->a:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 77
    iget-object v1, p0, Lcom/ali/user/mobile/base/helper/DialogHelper$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 79
    :cond_2
    iget-object v1, p0, Lcom/ali/user/mobile/base/helper/DialogHelper$1;->b:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 80
    iget-object v1, p0, Lcom/ali/user/mobile/base/helper/DialogHelper$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 82
    :cond_3
    iget-object v1, p0, Lcom/ali/user/mobile/base/helper/DialogHelper$1;->c:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 83
    iget-object v1, p0, Lcom/ali/user/mobile/base/helper/DialogHelper$1;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/ali/user/mobile/base/helper/DialogHelper$1;->d:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 85
    :cond_4
    iget-object v1, p0, Lcom/ali/user/mobile/base/helper/DialogHelper$1;->e:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 86
    iget-object v1, p0, Lcom/ali/user/mobile/base/helper/DialogHelper$1;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/ali/user/mobile/base/helper/DialogHelper$1;->f:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 88
    :cond_5
    iget-object v1, p0, Lcom/ali/user/mobile/base/helper/DialogHelper$1;->this$0:Lcom/ali/user/mobile/base/helper/DialogHelper;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ali/user/mobile/base/helper/DialogHelper;->access$1(Lcom/ali/user/mobile/base/helper/DialogHelper;Landroid/app/AlertDialog;)V

    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/ali/user/mobile/base/helper/DialogHelper$1;->this$0:Lcom/ali/user/mobile/base/helper/DialogHelper;

    # getter for: Lcom/ali/user/mobile/base/helper/DialogHelper;->b:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/ali/user/mobile/base/helper/DialogHelper;->access$2(Lcom/ali/user/mobile/base/helper/DialogHelper;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 91
    iget-object v0, p0, Lcom/ali/user/mobile/base/helper/DialogHelper$1;->this$0:Lcom/ali/user/mobile/base/helper/DialogHelper;

    # getter for: Lcom/ali/user/mobile/base/helper/DialogHelper;->b:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/ali/user/mobile/base/helper/DialogHelper;->access$2(Lcom/ali/user/mobile/base/helper/DialogHelper;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/ali/user/mobile/base/helper/DialogHelper$1;->g:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 92
    iget-object v0, p0, Lcom/ali/user/mobile/base/helper/DialogHelper$1;->this$0:Lcom/ali/user/mobile/base/helper/DialogHelper;

    # getter for: Lcom/ali/user/mobile/base/helper/DialogHelper;->b:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/ali/user/mobile/base/helper/DialogHelper;->access$2(Lcom/ali/user/mobile/base/helper/DialogHelper;)Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 93
    :catch_0
    move-exception v0

    .line 94
    const-string/jumbo v1, "DialogHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "DialogHelper.alert(): exception="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ali/user/mobile/log/AliUserLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/ali/user/mobile/base/helper/DialogHelper$1;->this$0:Lcom/ali/user/mobile/base/helper/DialogHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ali/user/mobile/base/helper/DialogHelper;->access$1(Lcom/ali/user/mobile/base/helper/DialogHelper;Landroid/app/AlertDialog;)V

    goto :goto_0
.end method
