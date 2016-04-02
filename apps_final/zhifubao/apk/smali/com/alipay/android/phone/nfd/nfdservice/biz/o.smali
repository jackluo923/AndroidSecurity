.class final Lcom/alipay/android/phone/nfd/nfdservice/biz/o;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/android/phone/nfd/nfdservice/biz/ab;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/nfd/nfdservice/biz/n;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/nfd/nfdservice/biz/n;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/o;->a:Lcom/alipay/android/phone/nfd/nfdservice/biz/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/o;->a:Lcom/alipay/android/phone/nfd/nfdservice/biz/n;

    invoke-static {v0, p1}, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->a(Lcom/alipay/android/phone/nfd/nfdservice/biz/n;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/o;->a:Lcom/alipay/android/phone/nfd/nfdservice/biz/n;

    invoke-static {v1}, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->a(Lcom/alipay/android/phone/nfd/nfdservice/biz/n;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/o;->a:Lcom/alipay/android/phone/nfd/nfdservice/biz/n;

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/o;->a:Lcom/alipay/android/phone/nfd/nfdservice/biz/n;

    invoke-static {v1}, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->b(Lcom/alipay/android/phone/nfd/nfdservice/biz/n;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/o;->a:Lcom/alipay/android/phone/nfd/nfdservice/biz/n;

    invoke-static {v2}, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->c(Lcom/alipay/android/phone/nfd/nfdservice/biz/n;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/o;->a:Lcom/alipay/android/phone/nfd/nfdservice/biz/n;

    invoke-static {v3}, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->d(Lcom/alipay/android/phone/nfd/nfdservice/biz/n;)I

    move-result v3

    iget-object v4, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/o;->a:Lcom/alipay/android/phone/nfd/nfdservice/biz/n;

    invoke-static {v4}, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->e(Lcom/alipay/android/phone/nfd/nfdservice/biz/n;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/o;->a:Lcom/alipay/android/phone/nfd/nfdservice/biz/n;

    invoke-static {v5}, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->a(Lcom/alipay/android/phone/nfd/nfdservice/biz/n;)Landroid/content/Intent;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->a(Lcom/alipay/android/phone/nfd/nfdservice/biz/n;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/content/Intent;)V

    goto :goto_0
.end method
