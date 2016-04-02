.class final Lcom/alipay/android/phone/businesscommon/globalsearch/ui/j;
.super Ljava/lang/Object;
.source "MainSearchFragment.java"

# interfaces
.implements Lcom/alipay/android/phone/globalsearch/b/a;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/j;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/j;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;

    iget-object v0, v0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;->g:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 114
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/j;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;

    iget-object v0, v0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;->c:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ac;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/j;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;

    iget-object v0, v0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;->c:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ac;

    invoke-virtual {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ac;->a()V

    .line 117
    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 2

    .prologue
    .line 121
    if-eqz p1, :cond_0

    .line 123
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/j;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;->a(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;I)V

    .line 128
    :goto_0
    return-void

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/j;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;->a(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;I)V

    goto :goto_0
.end method
