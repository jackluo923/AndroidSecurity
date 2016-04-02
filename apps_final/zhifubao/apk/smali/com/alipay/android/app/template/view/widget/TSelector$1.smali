.class Lcom/alipay/android/app/template/view/widget/TSelector$1;
.super Ljava/lang/Object;
.source "TSelector.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/template/view/widget/TSelector;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/template/view/widget/TSelector;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/app/template/view/widget/TSelector$1;->a:Lcom/alipay/android/app/template/view/widget/TSelector;

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TSelector$1;->a:Lcom/alipay/android/app/template/view/widget/TSelector;

    iget-object v0, v0, Lcom/alipay/android/app/template/view/widget/TSelector;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/template/view/widget/TElement;

    .line 115
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TSelector$1;->a:Lcom/alipay/android/app/template/view/widget/TSelector;

    iget-object v0, v0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->value:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/template/view/widget/TSelector;->setValue(Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TSelector$1;->a:Lcom/alipay/android/app/template/view/widget/TSelector;

    invoke-virtual {v0, p2}, Lcom/alipay/android/app/template/view/widget/TSelector;->setSelectIndex(I)V

    .line 117
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TSelector$1;->a:Lcom/alipay/android/app/template/view/widget/TSelector;

    invoke-static {v0}, Lcom/alipay/android/app/template/view/widget/TSelector;->a(Lcom/alipay/android/app/template/view/widget/TSelector;)V

    .line 118
    return-void
.end method
