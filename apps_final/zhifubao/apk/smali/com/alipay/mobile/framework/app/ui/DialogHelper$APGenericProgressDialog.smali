.class public Lcom/alipay/mobile/framework/app/ui/DialogHelper$APGenericProgressDialog;
.super Landroid/app/AlertDialog;
.source "DialogHelper.java"


# instance fields
.field private a:Landroid/widget/ProgressBar;

.field private b:Landroid/widget/TextView;

.field private c:Ljava/lang/CharSequence;

.field private d:Z

.field private e:Z

.field final synthetic this$0:Lcom/alipay/mobile/framework/app/ui/DialogHelper;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/framework/app/ui/DialogHelper;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 238
    iput-object p1, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$APGenericProgressDialog;->this$0:Lcom/alipay/mobile/framework/app/ui/DialogHelper;

    .line 239
    invoke-direct {p0, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 240
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/framework/app/ui/DialogHelper;Landroid/content/Context;I)V
    .locals 0

    .prologue
    .line 242
    iput-object p1, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$APGenericProgressDialog;->this$0:Lcom/alipay/mobile/framework/app/ui/DialogHelper;

    .line 243
    invoke-direct {p0, p2, p3}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 244
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/16 v1, 0x8

    .line 248
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 249
    sget v0, Lcom/alipay/mobile/framework/R$layout;->generic_progress_dialog:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/app/ui/DialogHelper$APGenericProgressDialog;->setContentView(I)V

    .line 250
    const v0, 0x102000d

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/app/ui/DialogHelper$APGenericProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$APGenericProgressDialog;->a:Landroid/widget/ProgressBar;

    .line 251
    sget v0, Lcom/alipay/mobile/framework/R$id;->message:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/app/ui/DialogHelper$APGenericProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$APGenericProgressDialog;->b:Landroid/widget/TextView;

    .line 257
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$APGenericProgressDialog;->b:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$APGenericProgressDialog;->c:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$APGenericProgressDialog;->c:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    const-string/jumbo v0, ""

    iget-object v2, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$APGenericProgressDialog;->c:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$APGenericProgressDialog;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$APGenericProgressDialog;->a:Landroid/widget/ProgressBar;

    iget-boolean v0, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$APGenericProgressDialog;->e:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 258
    iget-boolean v0, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$APGenericProgressDialog;->d:Z

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/app/ui/DialogHelper$APGenericProgressDialog;->setIndeterminate(Z)V

    .line 259
    return-void

    :cond_2
    move v0, v1

    .line 257
    goto :goto_0
.end method

.method public setIndeterminate(Z)V
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$APGenericProgressDialog;->a:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$APGenericProgressDialog;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 291
    :goto_0
    return-void

    .line 289
    :cond_0
    iput-boolean p1, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$APGenericProgressDialog;->d:Z

    goto :goto_0
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 273
    iput-object p1, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$APGenericProgressDialog;->c:Ljava/lang/CharSequence;

    .line 274
    return-void
.end method

.method public setProgressVisiable(Z)V
    .locals 0

    .prologue
    .line 281
    iput-boolean p1, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$APGenericProgressDialog;->e:Z

    .line 282
    return-void
.end method
