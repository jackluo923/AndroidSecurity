.class final Lcom/alipay/android/phone/businesscommon/globalsearch/ui/d;
.super Ljava/lang/Object;
.source "CommonSearchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/d;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/d;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;

    invoke-virtual {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->c()V

    .line 119
    invoke-static {}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->d()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 120
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/d;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->a(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;)V

    .line 124
    :goto_0
    return-void

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/d;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;

    invoke-virtual {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->finish()V

    goto :goto_0
.end method
