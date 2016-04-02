.class Lcom/alipay/android/app/template/view/widget/TemplateNormalList$1;
.super Ljava/lang/Object;
.source "TemplateNormalList.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/template/view/widget/TemplateNormalList;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/template/view/widget/TemplateNormalList;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$1;->a:Lcom/alipay/android/app/template/view/widget/TemplateNormalList;

    .line 421
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$1;->a:Lcom/alipay/android/app/template/view/widget/TemplateNormalList;

    invoke-static {v0}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList;->j(Lcom/alipay/android/app/template/view/widget/TemplateNormalList;)V

    .line 426
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$1;->a:Lcom/alipay/android/app/template/view/widget/TemplateNormalList;

    invoke-static {v0}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList;->k(Lcom/alipay/android/app/template/view/widget/TemplateNormalList;)V

    .line 427
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$1;->a:Lcom/alipay/android/app/template/view/widget/TemplateNormalList;

    invoke-static {v0}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList;->a(Lcom/alipay/android/app/template/view/widget/TemplateNormalList;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$1;->a:Lcom/alipay/android/app/template/view/widget/TemplateNormalList;

    invoke-static {v0}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList;->a(Lcom/alipay/android/app/template/view/widget/TemplateNormalList;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 429
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$1;->a:Lcom/alipay/android/app/template/view/widget/TemplateNormalList;

    invoke-static {v0}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList;->l(Lcom/alipay/android/app/template/view/widget/TemplateNormalList;)V

    .line 432
    :cond_0
    return-void
.end method
