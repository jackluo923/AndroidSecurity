.class Lcom/alipay/android/app/template/TemplateWindow$4;
.super Ljava/lang/Object;
.source "TemplateWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/template/TemplateWindow;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/template/TemplateWindow;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/app/template/TemplateWindow$4;->a:Lcom/alipay/android/app/template/TemplateWindow;

    .line 477
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 481
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateWindow$4;->a:Lcom/alipay/android/app/template/TemplateWindow;

    iget-object v1, p0, Lcom/alipay/android/app/template/TemplateWindow$4;->a:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-static {v0, v1}, Lcom/alipay/android/app/template/TemplateWindow;->a(Lcom/alipay/android/app/template/TemplateWindow;Lcom/alipay/android/app/template/TemplateWindow;)I

    .line 482
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateWindow$4;->a:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-static {v0}, Lcom/alipay/android/app/template/TemplateWindow;->f(Lcom/alipay/android/app/template/TemplateWindow;)V

    .line 483
    return-void
.end method
