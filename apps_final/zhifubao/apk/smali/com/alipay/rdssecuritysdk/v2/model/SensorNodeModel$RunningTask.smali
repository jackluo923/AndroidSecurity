.class Lcom/alipay/rdssecuritysdk/v2/model/SensorNodeModel$RunningTask;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/content/Context;

.field final synthetic this$0:Lcom/alipay/rdssecuritysdk/v2/model/SensorNodeModel;


# direct methods
.method public constructor <init>(Lcom/alipay/rdssecuritysdk/v2/model/SensorNodeModel;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/alipay/rdssecuritysdk/v2/model/SensorNodeModel$RunningTask;->this$0:Lcom/alipay/rdssecuritysdk/v2/model/SensorNodeModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/model/SensorNodeModel$RunningTask;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/rdssecuritysdk/v2/model/SensorNodeModel$RunningTask;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getResult()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/model/SensorNodeModel$RunningTask;->a:Ljava/lang/String;

    return-object v0
.end method

.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/model/SensorNodeModel$RunningTask;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;->getDynamicSensorInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/model/SensorNodeModel$RunningTask;->a:Ljava/lang/String;

    return-void
.end method
