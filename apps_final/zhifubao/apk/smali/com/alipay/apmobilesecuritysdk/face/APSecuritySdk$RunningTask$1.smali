.class Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$RunningTask$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/taobao/dp/client/IInitResultListener;


# instance fields
.field final synthetic this$1:Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$RunningTask;


# direct methods
.method constructor <init>(Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$RunningTask;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$RunningTask$1;->this$1:Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$RunningTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitFinished(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$RunningTask$1;->this$1:Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$RunningTask;

    iget-object v0, v0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$RunningTask;->this$0:Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    const/4 v1, 0x1

    # setter for: Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->e:Z
    invoke-static {v0, v1}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->access$402(Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;Z)Z

    invoke-static {p1}, Lcom/alipay/apmobilesecuritysdk/util/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$RunningTask$1;->this$1:Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$RunningTask;

    iget-object v0, v0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$RunningTask;->this$0:Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    # setter for: Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->d:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->access$502(Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    return-void
.end method
