.class final Lcom/alipay/android/phone/businesscommon/globalsearch/ui/w;
.super Ljava/lang/Object;
.source "MoreDataFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/v;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/v;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/w;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/v;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/w;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/v;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/v;->a(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/v;)Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;->a(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;)Lcom/alipay/android/phone/globalsearch/a/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 81
    const-string/jumbo v0, "jiushi"

    const-string/jumbo v1, "start request more !"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-static {}, Lcom/alipay/android/phone/globalsearch/a/l;->a()Lcom/alipay/android/phone/globalsearch/a/l;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/w;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/v;

    invoke-static {v1}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/v;->a(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/v;)Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;->e(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/w;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/v;

    invoke-static {v2}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/v;->a(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/v;)Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;->a(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;)Lcom/alipay/android/phone/globalsearch/a/b;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/w;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/v;

    invoke-static {v3}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/v;->a(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/v;)Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;->b(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/android/phone/globalsearch/a/b;->d(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/w;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/v;

    invoke-static {v3}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/v;->a(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/v;)Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;->b(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/android/phone/globalsearch/a/l;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 84
    :cond_0
    return-void
.end method
