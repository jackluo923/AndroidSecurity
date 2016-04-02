.class Lcom/alipay/android/app/template/TemplateWindow$5;
.super Ljava/lang/Object;
.source "TemplateWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/template/TemplateWindow;

.field private final synthetic b:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/template/TemplateWindow;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/app/template/TemplateWindow$5;->a:Lcom/alipay/android/app/template/TemplateWindow;

    iput-object p2, p0, Lcom/alipay/android/app/template/TemplateWindow$5;->b:Landroid/app/Activity;

    .line 569
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 572
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateWindow$5;->a:Lcom/alipay/android/app/template/TemplateWindow;

    iget-object v1, p0, Lcom/alipay/android/app/template/TemplateWindow$5;->b:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/alipay/android/app/template/TemplateWindow;->a(Lcom/alipay/android/app/template/TemplateWindow;Landroid/app/Activity;)V

    .line 573
    iget-object v1, p0, Lcom/alipay/android/app/template/TemplateWindow$5;->a:Lcom/alipay/android/app/template/TemplateWindow;

    monitor-enter v1

    .line 574
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateWindow$5;->a:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-static {v0}, Lcom/alipay/android/app/template/TemplateWindow;->g(Lcom/alipay/android/app/template/TemplateWindow;)V

    .line 575
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateWindow$5;->a:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 573
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
