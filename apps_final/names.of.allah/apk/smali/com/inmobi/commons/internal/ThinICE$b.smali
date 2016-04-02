.class final Lcom/inmobi/commons/internal/ThinICE$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/inmobi/commons/internal/ApplicationFocusManager$FocusChangedListener;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChanged(Z)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->start(Landroid/content/Context;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/inmobi/commons/internal/ThinICE;->a()V

    goto :goto_0
.end method
