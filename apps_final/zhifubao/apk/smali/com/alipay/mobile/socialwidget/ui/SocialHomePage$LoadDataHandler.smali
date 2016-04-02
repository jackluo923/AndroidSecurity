.class public final Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$LoadDataHandler;
.super Landroid/os/Handler;
.source "SocialHomePage.java"


# instance fields
.field private a:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;)V
    .locals 0

    .prologue
    .line 763
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 764
    iput-object p2, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$LoadDataHandler;->a:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;

    .line 765
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 770
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$LoadDataHandler;->a:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->a(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 774
    :goto_0
    return-void

    .line 771
    :catch_0
    move-exception v0

    .line 772
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "SocialSdk_SocialHomeWidget"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
