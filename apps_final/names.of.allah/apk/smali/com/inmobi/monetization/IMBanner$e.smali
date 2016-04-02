.class Lcom/inmobi/monetization/IMBanner$e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/inmobi/monetization/IMBanner;


# direct methods
.method constructor <init>(Lcom/inmobi/monetization/IMBanner;)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/monetization/IMBanner$e;->a:Lcom/inmobi/monetization/IMBanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "[InMobi]-[Network]-4.4.1"

    const-string v1, "AppId Not Set - Please call setAppId on the IMBanner object with a valid appId. For XML, please add \"appId\" attribute to the XML. Please refer integration guideline for more details."

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner$e;->a:Lcom/inmobi/monetization/IMBanner;

    invoke-static {v0}, Lcom/inmobi/monetization/IMBanner;->a(Lcom/inmobi/monetization/IMBanner;)Lcom/inmobi/monetization/IMBannerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner$e;->a:Lcom/inmobi/monetization/IMBanner;

    invoke-static {v0}, Lcom/inmobi/monetization/IMBanner;->a(Lcom/inmobi/monetization/IMBanner;)Lcom/inmobi/monetization/IMBannerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/monetization/IMBanner$e;->a:Lcom/inmobi/monetization/IMBanner;

    sget-object v2, Lcom/inmobi/monetization/IMErrorCode;->INVALID_REQUEST:Lcom/inmobi/monetization/IMErrorCode;

    invoke-interface {v0, v1, v2}, Lcom/inmobi/monetization/IMBannerListener;->onBannerRequestFailed(Lcom/inmobi/monetization/IMBanner;Lcom/inmobi/monetization/IMErrorCode;)V

    :cond_0
    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner$e;->a:Lcom/inmobi/monetization/IMBanner;

    invoke-static {v0}, Lcom/inmobi/monetization/IMBanner;->b(Lcom/inmobi/monetization/IMBanner;)V

    return-void
.end method
