.class final Lcom/alipay/android/phone/businesscommon/globalsearch/ui/x;
.super Ljava/lang/Object;
.source "MoreDataFragment.java"

# interfaces
.implements Lcom/alipay/android/phone/globalsearch/a/i;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/x;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 107
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/x;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;->a(Z)V

    .line 108
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/x;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;->f(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    :goto_0
    return-void

    .line 111
    :cond_0
    const-string/jumbo v0, "jiushi"

    const-string/jumbo v1, "MoreDataFragment notifyRefrash"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/x;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;->g(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 113
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/x;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;->g(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/x;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;

    invoke-static {v1}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;->a(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;)Lcom/alipay/android/phone/globalsearch/a/b;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/x;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;

    invoke-static {v2}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;->b(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/android/phone/globalsearch/a/b;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 114
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/x;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/x;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;

    invoke-static {v1}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;->g(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;->b(Ljava/util/List;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/x;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;->a(Z)V

    .line 120
    return-void
.end method
