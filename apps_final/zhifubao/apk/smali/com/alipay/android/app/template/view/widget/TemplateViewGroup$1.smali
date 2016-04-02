.class Lcom/alipay/android/app/template/view/widget/TemplateViewGroup$1;
.super Ljava/lang/Object;
.source "TemplateViewGroup.java"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup$1;->a:Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 1
    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->zIndex:I

    iget v1, v1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->zIndex:I

    sub-int/2addr v0, v1

    return v0
.end method
