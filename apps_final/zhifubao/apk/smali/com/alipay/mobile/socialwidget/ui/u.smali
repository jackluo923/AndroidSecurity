.class final Lcom/alipay/mobile/socialwidget/ui/u;
.super Ljava/lang/Object;
.source "SocialHomePage.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$NetworkStateObserver;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$NetworkStateObserver;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialwidget/ui/u;->a:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$NetworkStateObserver;

    .line 878
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 881
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/u;->a:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$NetworkStateObserver;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$NetworkStateObserver;->a(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$NetworkStateObserver;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 889
    :goto_0
    return-void

    .line 883
    :pswitch_0
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/u;->a:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$NetworkStateObserver;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$NetworkStateObserver;->b(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$NetworkStateObserver;)Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->h(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;)V

    goto :goto_0

    .line 886
    :pswitch_1
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/u;->a:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$NetworkStateObserver;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$NetworkStateObserver;->b(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$NetworkStateObserver;)Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->a(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;Z)V

    goto :goto_0

    .line 881
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
