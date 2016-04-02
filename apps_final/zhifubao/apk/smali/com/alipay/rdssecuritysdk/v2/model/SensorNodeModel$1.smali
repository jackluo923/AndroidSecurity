.class Lcom/alipay/rdssecuritysdk/v2/model/SensorNodeModel$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/rdssecuritysdk/v2/model/SensorNodeModel;


# direct methods
.method constructor <init>(Lcom/alipay/rdssecuritysdk/v2/model/SensorNodeModel;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/rdssecuritysdk/v2/model/SensorNodeModel$1;->this$0:Lcom/alipay/rdssecuritysdk/v2/model/SensorNodeModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x0

    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/model/SensorNodeModel$1;->this$0:Lcom/alipay/rdssecuritysdk/v2/model/SensorNodeModel;

    # getter for: Lcom/alipay/rdssecuritysdk/v2/model/SensorNodeModel;->c:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/alipay/rdssecuritysdk/v2/model/SensorNodeModel;->access$000(Lcom/alipay/rdssecuritysdk/v2/model/SensorNodeModel;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/model/SensorNodeModel$1;->this$0:Lcom/alipay/rdssecuritysdk/v2/model/SensorNodeModel;

    # getter for: Lcom/alipay/rdssecuritysdk/v2/model/SensorNodeModel;->c:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/alipay/rdssecuritysdk/v2/model/SensorNodeModel;->access$000(Lcom/alipay/rdssecuritysdk/v2/model/SensorNodeModel;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/rdssecuritysdk/v2/model/SensorNodeModel$RunningTask;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/rdssecuritysdk/v2/model/SensorNodeModel$RunningTask;->run()V

    iget-object v1, p0, Lcom/alipay/rdssecuritysdk/v2/model/SensorNodeModel$1;->this$0:Lcom/alipay/rdssecuritysdk/v2/model/SensorNodeModel;

    invoke-virtual {v0}, Lcom/alipay/rdssecuritysdk/v2/model/SensorNodeModel$RunningTask;->getResult()Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/alipay/rdssecuritysdk/v2/model/SensorNodeModel;->b:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/alipay/rdssecuritysdk/v2/model/SensorNodeModel;->access$102(Lcom/alipay/rdssecuritysdk/v2/model/SensorNodeModel;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "sensorResult="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/rdssecuritysdk/v2/model/SensorNodeModel$1;->this$0:Lcom/alipay/rdssecuritysdk/v2/model/SensorNodeModel;

    # getter for: Lcom/alipay/rdssecuritysdk/v2/model/SensorNodeModel;->b:Ljava/lang/String;
    invoke-static {v1}, Lcom/alipay/rdssecuritysdk/v2/model/SensorNodeModel;->access$100(Lcom/alipay/rdssecuritysdk/v2/model/SensorNodeModel;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/model/SensorNodeModel$1;->this$0:Lcom/alipay/rdssecuritysdk/v2/model/SensorNodeModel;

    # setter for: Lcom/alipay/rdssecuritysdk/v2/model/SensorNodeModel;->d:Ljava/lang/Thread;
    invoke-static {v0, v2}, Lcom/alipay/rdssecuritysdk/v2/model/SensorNodeModel;->access$202(Lcom/alipay/rdssecuritysdk/v2/model/SensorNodeModel;Ljava/lang/Thread;)Ljava/lang/Thread;

    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/model/SensorNodeModel$1;->this$0:Lcom/alipay/rdssecuritysdk/v2/model/SensorNodeModel;

    # setter for: Lcom/alipay/rdssecuritysdk/v2/model/SensorNodeModel;->d:Ljava/lang/Thread;
    invoke-static {v0, v2}, Lcom/alipay/rdssecuritysdk/v2/model/SensorNodeModel;->access$202(Lcom/alipay/rdssecuritysdk/v2/model/SensorNodeModel;Ljava/lang/Thread;)Ljava/lang/Thread;

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/alipay/rdssecuritysdk/v2/model/SensorNodeModel$1;->this$0:Lcom/alipay/rdssecuritysdk/v2/model/SensorNodeModel;

    # setter for: Lcom/alipay/rdssecuritysdk/v2/model/SensorNodeModel;->d:Ljava/lang/Thread;
    invoke-static {v1, v2}, Lcom/alipay/rdssecuritysdk/v2/model/SensorNodeModel;->access$202(Lcom/alipay/rdssecuritysdk/v2/model/SensorNodeModel;Ljava/lang/Thread;)Ljava/lang/Thread;

    throw v0
.end method
