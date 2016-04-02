.class public final Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsInitRunnable;
.super Ljava/lang/Object;
.source "AlipayHttpDnsInitRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsInitRunnable;->a:Landroid/content/Context;

    .line 17
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsInitRunnable;->a:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "mobilegw.alipay.com,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "amgw.alipay.com,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "alipay.up.django.t.taobao.com,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "alipay.dl.django.t.taobao.com,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "api.django.t.taobao.com,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mobilepmgw.alipay.com,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mcgw.alipay.com"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->dnsClientInit(Landroid/content/Context;Ljava/lang/String;)V

    .line 27
    return-void
.end method
