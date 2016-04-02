.class final Lcom/alipay/mobile/command/engine/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/command/engine/e;

.field private final synthetic b:Lcom/alipay/mobile/command/model/TriggerTypeEnum;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/command/engine/e;Lcom/alipay/mobile/command/model/TriggerTypeEnum;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/command/engine/f;->a:Lcom/alipay/mobile/command/engine/e;

    iput-object p2, p0, Lcom/alipay/mobile/command/engine/f;->b:Lcom/alipay/mobile/command/model/TriggerTypeEnum;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "do "

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/alipay/mobile/command/engine/f;->b:Lcom/alipay/mobile/command/model/TriggerTypeEnum;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, " Trigger  unKnow Exception."

    aput-object v2, v0, v1

    invoke-static {p2, v0}, Lcom/alipay/mobile/command/util/CommandLogUtil;->upErrorInfo(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-void
.end method
