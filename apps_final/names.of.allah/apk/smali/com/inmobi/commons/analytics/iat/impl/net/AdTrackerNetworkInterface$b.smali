.class final Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/inmobi/commons/cache/RetryMechanism$RetryRunnable;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final completed()V
    .locals 0

    invoke-static {}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->notifyThread()V

    return-void
.end method

.method public final run()V
    .locals 0

    invoke-static {}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->f()V

    return-void
.end method
