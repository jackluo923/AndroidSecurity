.class Lcom/google/ads/mediation/inmobi/InMobiAdapter$BannerListener;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/inmobi/monetization/IMBannerListener;


# static fields
.field private static synthetic $SWITCH_TABLE$com$inmobi$monetization$IMErrorCode:[I


# instance fields
.field final synthetic this$0:Lcom/google/ads/mediation/inmobi/InMobiAdapter;


# direct methods
.method static synthetic $SWITCH_TABLE$com$inmobi$monetization$IMErrorCode()[I
    .locals 3

    sget-object v0, Lcom/google/ads/mediation/inmobi/InMobiAdapter$BannerListener;->$SWITCH_TABLE$com$inmobi$monetization$IMErrorCode:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/inmobi/monetization/IMErrorCode;->values()[Lcom/inmobi/monetization/IMErrorCode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/inmobi/monetization/IMErrorCode;->DO_MONETIZE:Lcom/inmobi/monetization/IMErrorCode;

    invoke-virtual {v1}, Lcom/inmobi/monetization/IMErrorCode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_1
    :try_start_1
    sget-object v1, Lcom/inmobi/monetization/IMErrorCode;->DO_NOTHING:Lcom/inmobi/monetization/IMErrorCode;

    invoke-virtual {v1}, Lcom/inmobi/monetization/IMErrorCode;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_2
    :try_start_2
    sget-object v1, Lcom/inmobi/monetization/IMErrorCode;->INTERNAL_ERROR:Lcom/inmobi/monetization/IMErrorCode;

    invoke-virtual {v1}, Lcom/inmobi/monetization/IMErrorCode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_3
    :try_start_3
    sget-object v1, Lcom/inmobi/monetization/IMErrorCode;->INVALID_REQUEST:Lcom/inmobi/monetization/IMErrorCode;

    invoke-virtual {v1}, Lcom/inmobi/monetization/IMErrorCode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_4
    :try_start_4
    sget-object v1, Lcom/inmobi/monetization/IMErrorCode;->NETWORK_ERROR:Lcom/inmobi/monetization/IMErrorCode;

    invoke-virtual {v1}, Lcom/inmobi/monetization/IMErrorCode;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_5
    :try_start_5
    sget-object v1, Lcom/inmobi/monetization/IMErrorCode;->NO_FILL:Lcom/inmobi/monetization/IMErrorCode;

    invoke-virtual {v1}, Lcom/inmobi/monetization/IMErrorCode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_6
    sput-object v0, Lcom/google/ads/mediation/inmobi/InMobiAdapter$BannerListener;->$SWITCH_TABLE$com$inmobi$monetization$IMErrorCode:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_1
.end method

.method private constructor <init>(Lcom/google/ads/mediation/inmobi/InMobiAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter$BannerListener;->this$0:Lcom/google/ads/mediation/inmobi/InMobiAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/ads/mediation/inmobi/InMobiAdapter;Lcom/google/ads/mediation/inmobi/InMobiAdapter$BannerListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/ads/mediation/inmobi/InMobiAdapter$BannerListener;-><init>(Lcom/google/ads/mediation/inmobi/InMobiAdapter;)V

    return-void
.end method


# virtual methods
.method public onBannerInteraction(Lcom/inmobi/monetization/IMBanner;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inmobi/monetization/IMBanner;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "onBannerInteraction"

    const-string v1, "onBannerInteraction called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter$BannerListener;->this$0:Lcom/google/ads/mediation/inmobi/InMobiAdapter;

    # getter for: Lcom/google/ads/mediation/inmobi/InMobiAdapter;->bannerListener:Lcom/google/ads/mediation/d;
    invoke-static {v0}, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->access$2(Lcom/google/ads/mediation/inmobi/InMobiAdapter;)Lcom/google/ads/mediation/d;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter$BannerListener;->this$0:Lcom/google/ads/mediation/inmobi/InMobiAdapter;

    invoke-interface {v0, v1}, Lcom/google/ads/mediation/d;->onClick(Lcom/google/ads/mediation/c;)V

    return-void
.end method

.method public onBannerRequestFailed(Lcom/inmobi/monetization/IMBanner;Lcom/inmobi/monetization/IMErrorCode;)V
    .locals 3

    invoke-static {}, Lcom/google/ads/mediation/inmobi/InMobiAdapter$BannerListener;->$SWITCH_TABLE$com$inmobi$monetization$IMErrorCode()[I

    move-result-object v0

    invoke-virtual {p2}, Lcom/inmobi/monetization/IMErrorCode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter$BannerListener;->this$0:Lcom/google/ads/mediation/inmobi/InMobiAdapter;

    # getter for: Lcom/google/ads/mediation/inmobi/InMobiAdapter;->bannerListener:Lcom/google/ads/mediation/d;
    invoke-static {v0}, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->access$2(Lcom/google/ads/mediation/inmobi/InMobiAdapter;)Lcom/google/ads/mediation/d;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter$BannerListener;->this$0:Lcom/google/ads/mediation/inmobi/InMobiAdapter;

    sget-object v2, Lcom/google/ads/b;->a:Lcom/google/ads/b;

    invoke-interface {v0, v1, v2}, Lcom/google/ads/mediation/d;->onFailedToReceiveAd(Lcom/google/ads/mediation/c;Lcom/google/ads/b;)V

    :goto_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter$BannerListener;->this$0:Lcom/google/ads/mediation/inmobi/InMobiAdapter;

    # getter for: Lcom/google/ads/mediation/inmobi/InMobiAdapter;->bannerListener:Lcom/google/ads/mediation/d;
    invoke-static {v0}, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->access$2(Lcom/google/ads/mediation/inmobi/InMobiAdapter;)Lcom/google/ads/mediation/d;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter$BannerListener;->this$0:Lcom/google/ads/mediation/inmobi/InMobiAdapter;

    sget-object v2, Lcom/google/ads/b;->d:Lcom/google/ads/b;

    invoke-interface {v0, v1, v2}, Lcom/google/ads/mediation/d;->onFailedToReceiveAd(Lcom/google/ads/mediation/c;Lcom/google/ads/b;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter$BannerListener;->this$0:Lcom/google/ads/mediation/inmobi/InMobiAdapter;

    # getter for: Lcom/google/ads/mediation/inmobi/InMobiAdapter;->bannerListener:Lcom/google/ads/mediation/d;
    invoke-static {v0}, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->access$2(Lcom/google/ads/mediation/inmobi/InMobiAdapter;)Lcom/google/ads/mediation/d;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter$BannerListener;->this$0:Lcom/google/ads/mediation/inmobi/InMobiAdapter;

    sget-object v2, Lcom/google/ads/b;->a:Lcom/google/ads/b;

    invoke-interface {v0, v1, v2}, Lcom/google/ads/mediation/d;->onFailedToReceiveAd(Lcom/google/ads/mediation/c;Lcom/google/ads/b;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter$BannerListener;->this$0:Lcom/google/ads/mediation/inmobi/InMobiAdapter;

    # getter for: Lcom/google/ads/mediation/inmobi/InMobiAdapter;->bannerListener:Lcom/google/ads/mediation/d;
    invoke-static {v0}, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->access$2(Lcom/google/ads/mediation/inmobi/InMobiAdapter;)Lcom/google/ads/mediation/d;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter$BannerListener;->this$0:Lcom/google/ads/mediation/inmobi/InMobiAdapter;

    sget-object v2, Lcom/google/ads/b;->c:Lcom/google/ads/b;

    invoke-interface {v0, v1, v2}, Lcom/google/ads/mediation/d;->onFailedToReceiveAd(Lcom/google/ads/mediation/c;Lcom/google/ads/b;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter$BannerListener;->this$0:Lcom/google/ads/mediation/inmobi/InMobiAdapter;

    # getter for: Lcom/google/ads/mediation/inmobi/InMobiAdapter;->bannerListener:Lcom/google/ads/mediation/d;
    invoke-static {v0}, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->access$2(Lcom/google/ads/mediation/inmobi/InMobiAdapter;)Lcom/google/ads/mediation/d;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter$BannerListener;->this$0:Lcom/google/ads/mediation/inmobi/InMobiAdapter;

    sget-object v2, Lcom/google/ads/b;->b:Lcom/google/ads/b;

    invoke-interface {v0, v1, v2}, Lcom/google/ads/mediation/d;->onFailedToReceiveAd(Lcom/google/ads/mediation/c;Lcom/google/ads/b;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onBannerRequestSucceeded(Lcom/inmobi/monetization/IMBanner;)V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter$BannerListener;->this$0:Lcom/google/ads/mediation/inmobi/InMobiAdapter;

    # getter for: Lcom/google/ads/mediation/inmobi/InMobiAdapter;->bannerListener:Lcom/google/ads/mediation/d;
    invoke-static {v0}, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->access$2(Lcom/google/ads/mediation/inmobi/InMobiAdapter;)Lcom/google/ads/mediation/d;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter$BannerListener;->this$0:Lcom/google/ads/mediation/inmobi/InMobiAdapter;

    invoke-interface {v0, v1}, Lcom/google/ads/mediation/d;->onReceivedAd(Lcom/google/ads/mediation/c;)V

    return-void
.end method

.method public onDismissBannerScreen(Lcom/inmobi/monetization/IMBanner;)V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter$BannerListener;->this$0:Lcom/google/ads/mediation/inmobi/InMobiAdapter;

    # getter for: Lcom/google/ads/mediation/inmobi/InMobiAdapter;->bannerListener:Lcom/google/ads/mediation/d;
    invoke-static {v0}, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->access$2(Lcom/google/ads/mediation/inmobi/InMobiAdapter;)Lcom/google/ads/mediation/d;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter$BannerListener;->this$0:Lcom/google/ads/mediation/inmobi/InMobiAdapter;

    invoke-interface {v0, v1}, Lcom/google/ads/mediation/d;->onDismissScreen(Lcom/google/ads/mediation/c;)V

    return-void
.end method

.method public onLeaveApplication(Lcom/inmobi/monetization/IMBanner;)V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter$BannerListener;->this$0:Lcom/google/ads/mediation/inmobi/InMobiAdapter;

    # getter for: Lcom/google/ads/mediation/inmobi/InMobiAdapter;->bannerListener:Lcom/google/ads/mediation/d;
    invoke-static {v0}, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->access$2(Lcom/google/ads/mediation/inmobi/InMobiAdapter;)Lcom/google/ads/mediation/d;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter$BannerListener;->this$0:Lcom/google/ads/mediation/inmobi/InMobiAdapter;

    invoke-interface {v0, v1}, Lcom/google/ads/mediation/d;->onLeaveApplication(Lcom/google/ads/mediation/c;)V

    return-void
.end method

.method public onShowBannerScreen(Lcom/inmobi/monetization/IMBanner;)V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter$BannerListener;->this$0:Lcom/google/ads/mediation/inmobi/InMobiAdapter;

    # getter for: Lcom/google/ads/mediation/inmobi/InMobiAdapter;->bannerListener:Lcom/google/ads/mediation/d;
    invoke-static {v0}, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->access$2(Lcom/google/ads/mediation/inmobi/InMobiAdapter;)Lcom/google/ads/mediation/d;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter$BannerListener;->this$0:Lcom/google/ads/mediation/inmobi/InMobiAdapter;

    invoke-interface {v0, v1}, Lcom/google/ads/mediation/d;->onPresentScreen(Lcom/google/ads/mediation/c;)V

    return-void
.end method
