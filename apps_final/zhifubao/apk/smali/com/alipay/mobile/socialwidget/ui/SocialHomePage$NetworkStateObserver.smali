.class public Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$NetworkStateObserver;
.super Ljava/lang/Object;
.source "SocialHomePage.java"

# interfaces
.implements Lcom/alipay/mobile/personalbase/notification/DataContentObserver;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;

.field private b:I


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;I)V
    .locals 0

    .prologue
    .line 871
    iput-object p1, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$NetworkStateObserver;->a:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 872
    iput p2, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$NetworkStateObserver;->b:I

    .line 873
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$NetworkStateObserver;)I
    .locals 1

    .prologue
    .line 869
    iget v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$NetworkStateObserver;->b:I

    return v0
.end method

.method static synthetic b(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$NetworkStateObserver;)Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;
    .locals 1

    .prologue
    .line 868
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$NetworkStateObserver;->a:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;

    return-object v0
.end method


# virtual methods
.method public onChanged(Landroid/net/Uri;ZLjava/lang/Object;)V
    .locals 2

    .prologue
    .line 877
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$NetworkStateObserver;->a:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->f(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;)V

    .line 878
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$NetworkStateObserver;->a:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->g(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;)Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/socialwidget/ui/u;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/socialwidget/ui/u;-><init>(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$NetworkStateObserver;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 891
    return-void
.end method
