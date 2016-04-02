.class Lcom/alipay/android/app/template/TemplateWindow$2;
.super Landroid/os/Handler;
.source "TemplateWindow.java"


# instance fields
.field final synthetic a:Lcom/alipay/android/app/template/TemplateWindow;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/template/TemplateWindow;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/app/template/TemplateWindow$2;->a:Lcom/alipay/android/app/template/TemplateWindow;

    .line 94
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x3e9

    const/16 v2, 0x3e8

    .line 98
    iget v0, p1, Landroid/os/Message;->what:I

    if-eq v0, v2, :cond_0

    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v3, :cond_1

    .line 99
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 101
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/alipay/android/app/template/TemplateWindow$2;->a:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-static {v1}, Lcom/alipay/android/app/template/TemplateWindow;->b(Lcom/alipay/android/app/template/TemplateWindow;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 103
    iget-object v1, p0, Lcom/alipay/android/app/template/TemplateWindow$2;->a:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-virtual {v1, v0, v4}, Lcom/alipay/android/app/template/TemplateWindow;->callJsMethod(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 118
    :cond_1
    :goto_0
    return-void

    .line 107
    :cond_2
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v2, :cond_1

    .line 108
    iget-object v1, p0, Lcom/alipay/android/app/template/TemplateWindow$2;->a:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-static {v1}, Lcom/alipay/android/app/template/TemplateWindow;->c(Lcom/alipay/android/app/template/TemplateWindow;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 110
    iget-object v1, p0, Lcom/alipay/android/app/template/TemplateWindow$2;->a:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-virtual {v1, v0, v4}, Lcom/alipay/android/app/template/TemplateWindow;->callJsMethod(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 111
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateWindow$2;->a:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-static {v0}, Lcom/alipay/android/app/template/TemplateWindow;->d(Lcom/alipay/android/app/template/TemplateWindow;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 113
    :cond_3
    iget-object v1, p0, Lcom/alipay/android/app/template/TemplateWindow$2;->a:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-static {v1}, Lcom/alipay/android/app/template/TemplateWindow;->d(Lcom/alipay/android/app/template/TemplateWindow;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    goto :goto_0
.end method
