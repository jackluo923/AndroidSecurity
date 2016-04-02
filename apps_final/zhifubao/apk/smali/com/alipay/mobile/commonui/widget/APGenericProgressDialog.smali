.class public Lcom/alipay/mobile/commonui/widget/APGenericProgressDialog;
.super Lcom/alipay/mobile/commonui/widget/APAlertDialog;


# instance fields
.field private a:Landroid/widget/ProgressBar;

.field private b:Landroid/widget/TextView;

.field private c:Ljava/lang/CharSequence;

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/mobile/commonui/widget/APAlertDialog;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/commonui/widget/APAlertDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/16 v1, 0x8

    invoke-super {p0, p1}, Lcom/alipay/mobile/commonui/widget/APAlertDialog;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/alipay/mobile/ui/R$layout;->generic_progress_dialog:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APGenericProgressDialog;->setContentView(I)V

    const v0, 0x102000d

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APGenericProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APGenericProgressDialog;->a:Landroid/widget/ProgressBar;

    sget v0, Lcom/alipay/mobile/ui/R$id;->message:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APGenericProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APGenericProgressDialog;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APGenericProgressDialog;->b:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/APGenericProgressDialog;->c:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APGenericProgressDialog;->c:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    const-string/jumbo v0, ""

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/APGenericProgressDialog;->c:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APGenericProgressDialog;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/APGenericProgressDialog;->a:Landroid/widget/ProgressBar;

    iget-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/APGenericProgressDialog;->e:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/APGenericProgressDialog;->d:Z

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APGenericProgressDialog;->setIndeterminate(Z)V

    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public setIndeterminate(Z)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APGenericProgressDialog;->a:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APGenericProgressDialog;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/alipay/mobile/commonui/widget/APGenericProgressDialog;->d:Z

    goto :goto_0
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/APGenericProgressDialog;->c:Ljava/lang/CharSequence;

    return-void
.end method

.method public setProgressVisiable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobile/commonui/widget/APGenericProgressDialog;->e:Z

    return-void
.end method
