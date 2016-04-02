.class Lcom/alipay/android/phone/thirdparty/common/asynctask/AsyncTaskExecutor$TransactionPipeline;
.super Lcom/alipay/android/phone/thirdparty/common/asynctask/StandardPipeline;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/phone/thirdparty/common/asynctask/AsyncTaskExecutor;


# direct methods
.method public constructor <init>(Lcom/alipay/android/phone/thirdparty/common/asynctask/AsyncTaskExecutor;Ljava/lang/String;Ljava/util/concurrent/Executor;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/thirdparty/common/asynctask/AsyncTaskExecutor$TransactionPipeline;->this$0:Lcom/alipay/android/phone/thirdparty/common/asynctask/AsyncTaskExecutor;

    invoke-direct {p0, p2, p3}, Lcom/alipay/android/phone/thirdparty/common/asynctask/StandardPipeline;-><init>(Ljava/lang/String;Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public doNext()V
    .locals 0

    invoke-super {p0}, Lcom/alipay/android/phone/thirdparty/common/asynctask/StandardPipeline;->next()V

    return-void
.end method

.method public next()V
    .locals 0

    return-void
.end method
