.class Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$RunningTask;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$InitResultListener;

.field private f:Z

.field final synthetic this$0:Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;


# direct methods
.method public constructor <init>(Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$InitResultListener;Z)V
    .locals 1

    iput-object p1, p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$RunningTask;->this$0:Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$RunningTask;->a:I

    iput-object p5, p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$RunningTask;->d:Ljava/lang/String;

    invoke-static {p3}, Lcom/alipay/apmobilesecuritysdk/util/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    # getter for: Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->c:Landroid/content/Context;
    invoke-static {p1}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->access$200(Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$RunningTask;->b:Ljava/lang/String;

    :goto_0
    iput-object p4, p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$RunningTask;->c:Ljava/lang/String;

    iput-object p6, p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$RunningTask;->e:Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$InitResultListener;

    iput-boolean p7, p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$RunningTask;->f:Z

    return-void

    :cond_0
    iput-object p3, p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$RunningTask;->b:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v0, 0x1

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$RunningTask;->this$0:Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    # getter for: Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->f:Z
    invoke-static {v1}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->access$300(Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$RunningTask;->this$0:Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    # setter for: Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->f:Z
    invoke-static {v1, v0}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->access$302(Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;Z)Z

    :try_start_0
    iget-object v1, p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$RunningTask;->this$0:Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    const/4 v2, 0x0

    # setter for: Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->e:Z
    invoke-static {v1, v2}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->access$402(Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;Z)Z

    iget v1, p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$RunningTask;->a:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_5

    :goto_1
    iget-object v1, p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$RunningTask;->this$0:Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    # getter for: Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->c:Landroid/content/Context;
    invoke-static {v1}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->access$200(Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/dp/DeviceSecuritySDK;->getInstance(Landroid/content/Context;)Lcom/taobao/dp/DeviceSecuritySDK;

    move-result-object v1

    const-string/jumbo v2, ""

    const/4 v3, 0x0

    new-instance v4, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$RunningTask$1;

    invoke-direct {v4, p0}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$RunningTask$1;-><init>(Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$RunningTask;)V

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/taobao/dp/DeviceSecuritySDK;->initAsync(Ljava/lang/String;ILcom/taobao/dp/http/IUrlRequestService;Lcom/taobao/dp/client/IInitResultListener;)V

    const/16 v0, 0xbb8

    :goto_2
    iget-object v1, p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$RunningTask;->this$0:Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    # getter for: Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->e:Z
    invoke-static {v1}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->access$400(Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;)Z

    move-result v1

    if-nez v1, :cond_1

    if-lez v0, :cond_1

    const-wide/16 v1, 0xa

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    add-int/lit8 v0, v0, -0xa

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$RunningTask;->this$0:Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    # getter for: Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->c:Landroid/content/Context;
    invoke-static {v0}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->access$200(Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/dp/DeviceSecuritySDK;->getInstance(Landroid/content/Context;)Lcom/taobao/dp/DeviceSecuritySDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/dp/DeviceSecuritySDK;->getSecurityToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/apmobilesecuritysdk/util/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$RunningTask;->this$0:Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    # setter for: Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->d:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->access$502(Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;Ljava/lang/String;)Ljava/lang/String;

    :cond_2
    iget v0, p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$RunningTask;->a:I

    packed-switch v0, :pswitch_data_0

    const-string/jumbo v0, "https://mobilegw.alipay.com/mgw.htm"

    sput-object v0, Lcom/alipay/apmobilesecuritysdk/constant/ConfigConstant;->DATA_POST_RPC_ADDRESS:Ljava/lang/String;

    :goto_3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "enable"

    const-string/jumbo v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "tid"

    iget-object v2, p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$RunningTask;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "utdid"

    iget-object v2, p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$RunningTask;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "umid"

    iget-object v2, p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$RunningTask;->this$0:Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    # getter for: Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->d:Ljava/lang/String;
    invoke-static {v2}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->access$500(Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "userId"

    iget-object v2, p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$RunningTask;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$RunningTask;->f:Z

    if-eqz v1, :cond_4

    const-string/jumbo v1, "appList"

    const-string/jumbo v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    iget-object v1, p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$RunningTask;->this$0:Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    # getter for: Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->c:Landroid/content/Context;
    invoke-static {v1}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->access$200(Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/alipay/apmobilesecuritysdk/face/SecureSdk;->getApdid(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$RunningTask;->e:Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$InitResultListener;

    if-eqz v0, :cond_3

    new-instance v0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;

    iget-object v1, p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$RunningTask;->this$0:Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    invoke-direct {v0, v1}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;-><init>(Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;)V

    iget-object v1, p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$RunningTask;->this$0:Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    # getter for: Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->c:Landroid/content/Context;
    invoke-static {v1}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->access$200(Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager;->getLocalApdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;->apdid:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$RunningTask;->this$0:Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    # getter for: Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->c:Landroid/content/Context;
    invoke-static {v1}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->access$200(Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager;->getLocalApdidToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;->apdidToken:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$RunningTask;->this$0:Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    # getter for: Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->d:Ljava/lang/String;
    invoke-static {v1}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->access$500(Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;->umidToken:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$RunningTask;->this$0:Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    # getter for: Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->c:Landroid/content/Context;
    invoke-static {v1}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->access$200(Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/apmobilesecuritysdk/util/LocalRandomStr;->getRandomStr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;->clientKey:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$RunningTask;->e:Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$InitResultListener;

    invoke-interface {v1, v0}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$InitResultListener;->onResult(Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$RunningTask;->this$0:Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    # setter for: Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->f:Z
    invoke-static {v0, v5}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->access$302(Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;Z)Z

    goto/16 :goto_0

    :pswitch_0
    :try_start_1
    const-string/jumbo v0, "http://mobilegw.aaa.alipay.net/mgw.htm"

    sput-object v0, Lcom/alipay/apmobilesecuritysdk/constant/ConfigConstant;->DATA_POST_RPC_ADDRESS:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_3

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$RunningTask;->this$0:Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    # setter for: Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->f:Z
    invoke-static {v0, v5}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->access$302(Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;Z)Z

    goto/16 :goto_0

    :pswitch_1
    :try_start_2
    const-string/jumbo v0, "https://mobilegw.alipay.com/mgw.htm"

    sput-object v0, Lcom/alipay/apmobilesecuritysdk/constant/ConfigConstant;->DATA_POST_RPC_ADDRESS:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$RunningTask;->this$0:Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    # setter for: Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->f:Z
    invoke-static {v1, v5}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->access$302(Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;Z)Z

    throw v0

    :pswitch_2
    :try_start_3
    const-string/jumbo v0, "http://mobilegw-1-64.test.alipay.net/mgw.htm"

    sput-object v0, Lcom/alipay/apmobilesecuritysdk/constant/ConfigConstant;->DATA_POST_RPC_ADDRESS:Ljava/lang/String;

    goto/16 :goto_3

    :cond_4
    const-string/jumbo v1, "appList"

    const-string/jumbo v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    :cond_5
    move v0, v1

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
