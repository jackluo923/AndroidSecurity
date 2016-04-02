.class Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger$FlowControlTask;
.super Ljava/lang/Object;
.source "LongTimerManger.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;)V
    .locals 0

    .prologue
    .line 294
    iput-object p1, p0, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger$FlowControlTask;->this$0:Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger$FlowControlTask;)V
    .locals 0

    .prologue
    .line 294
    invoke-direct {p0, p1}, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger$FlowControlTask;-><init>(Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 297
    const-string/jumbo v0, "sync_link_LongTimerManger"

    const-string/jumbo v1, "FlowControlTask: [ flow control is over ]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->setFlowCotrol(Z)V

    .line 303
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/service/LongLinkService;->getConnManager()Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    move-result-object v0

    .line 305
    if-nez v0, :cond_0

    .line 306
    const-string/jumbo v0, "sync_link_LongTimerManger"

    const-string/jumbo v1, "FlowControlTask: [ connManager=null ]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    :goto_0
    return-void

    .line 310
    :cond_0
    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->connect()V

    goto :goto_0
.end method
