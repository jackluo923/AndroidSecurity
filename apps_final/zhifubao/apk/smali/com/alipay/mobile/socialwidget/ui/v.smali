.class final Lcom/alipay/mobile/socialwidget/ui/v;
.super Ljava/lang/Object;
.source "SocialHomePage.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$RecentDataObserver;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$RecentDataObserver;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialwidget/ui/v;->a:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$RecentDataObserver;

    .line 859
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 862
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/v;->a:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$RecentDataObserver;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$RecentDataObserver;->a(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$RecentDataObserver;)Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/v;->a:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$RecentDataObserver;

    iget-boolean v1, v1, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$RecentDataObserver;->a:Z

    invoke-static {v0, v1}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->a(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;Z)V

    .line 863
    return-void
.end method
