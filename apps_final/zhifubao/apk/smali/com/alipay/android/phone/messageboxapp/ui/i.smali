.class final Lcom/alipay/android/phone/messageboxapp/ui/i;
.super Ljava/lang/Object;
.source "MsgboxListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/messageboxapp/ui/h;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/messageboxapp/ui/h;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/messageboxapp/ui/i;->a:Lcom/alipay/android/phone/messageboxapp/ui/h;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 96
    iget-object v1, p0, Lcom/alipay/android/phone/messageboxapp/ui/i;->a:Lcom/alipay/android/phone/messageboxapp/ui/h;

    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/i;->a:Lcom/alipay/android/phone/messageboxapp/ui/h;

    iget-boolean v0, v0, Lcom/alipay/android/phone/messageboxapp/ui/h;->f:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, v1, Lcom/alipay/android/phone/messageboxapp/ui/h;->f:Z

    .line 97
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/i;->a:Lcom/alipay/android/phone/messageboxapp/ui/h;

    invoke-virtual {v0}, Lcom/alipay/android/phone/messageboxapp/ui/h;->a()V

    .line 98
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/i;->a:Lcom/alipay/android/phone/messageboxapp/ui/h;

    invoke-virtual {v0}, Lcom/alipay/android/phone/messageboxapp/ui/h;->b()V

    .line 99
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/i;->a:Lcom/alipay/android/phone/messageboxapp/ui/h;

    invoke-static {v0}, Lcom/alipay/android/phone/messageboxapp/ui/h;->a(Lcom/alipay/android/phone/messageboxapp/ui/h;)V

    .line 100
    return-void

    .line 96
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
