.class Lcom/alipay/android/app/template/ui/DynamicTemplateActivity_$1;
.super Ljava/lang/Object;
.source "DynamicTemplateActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/alipay/android/app/template/ui/DynamicTemplateActivity_;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/template/ui/DynamicTemplateActivity_;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/alipay/android/app/template/ui/DynamicTemplateActivity_$1;->b:Lcom/alipay/android/app/template/ui/DynamicTemplateActivity_;

    iput-object p2, p0, Lcom/alipay/android/app/template/ui/DynamicTemplateActivity_$1;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/alipay/android/app/template/ui/DynamicTemplateActivity_$1;->b:Lcom/alipay/android/app/template/ui/DynamicTemplateActivity_;

    iget-object v1, p0, Lcom/alipay/android/app/template/ui/DynamicTemplateActivity_$1;->a:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/alipay/android/app/template/ui/DynamicTemplateActivity_;->a(Lcom/alipay/android/app/template/ui/DynamicTemplateActivity_;Landroid/view/View;)V

    .line 74
    return-void
.end method
