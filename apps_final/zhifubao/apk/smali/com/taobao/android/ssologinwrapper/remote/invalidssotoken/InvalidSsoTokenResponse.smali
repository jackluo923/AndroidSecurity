.class public Lcom/taobao/android/ssologinwrapper/remote/invalidssotoken/InvalidSsoTokenResponse;
.super Lcom/taobao/android/ssologinwrapper/remote/SsoRemoteResponse;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/taobao/android/ssologinwrapper/remote/SsoRemoteResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public parse([B)Ljava/lang/Object;
    .locals 3

    new-instance v1, Lcom/taobao/android/ssologinwrapper/remote/invalidssotoken/InvalidSsoTokenResponse;

    invoke-direct {v1}, Lcom/taobao/android/ssologinwrapper/remote/invalidssotoken/InvalidSsoTokenResponse;-><init>()V

    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v2, "utf-8"

    invoke-direct {v0, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    new-instance v2, Lcom/taobao/android/ssologinwrapper/remote/ApiResponse;

    invoke-direct {v2}, Lcom/taobao/android/ssologinwrapper/remote/ApiResponse;-><init>()V

    invoke-virtual {v2, v0}, Lcom/taobao/android/ssologinwrapper/remote/ApiResponse;->parseResult(Ljava/lang/String;)Lcom/taobao/android/ssologinwrapper/remote/ApiResponse;

    move-result-object v0

    iget-boolean v0, v0, Lcom/taobao/android/ssologinwrapper/remote/ApiResponse;->success:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/taobao/android/ssologinwrapper/remote/invalidssotoken/InvalidSsoTokenResponse;->mIsSuccess:Z

    iget-object v0, v2, Lcom/taobao/android/ssologinwrapper/remote/ApiResponse;->data:Lorg/json/JSONObject;

    :cond_0
    iget-object v0, v2, Lcom/taobao/android/ssologinwrapper/remote/ApiResponse;->errCode:Ljava/lang/String;

    iput-object v0, v1, Lcom/taobao/android/ssologinwrapper/remote/invalidssotoken/InvalidSsoTokenResponse;->mRetCode:Ljava/lang/String;

    iget-object v0, v2, Lcom/taobao/android/ssologinwrapper/remote/ApiResponse;->errInfo:Ljava/lang/String;

    iput-object v0, v1, Lcom/taobao/android/ssologinwrapper/remote/invalidssotoken/InvalidSsoTokenResponse;->mRetInfo:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string/jumbo v0, "unknow_err"

    iput-object v0, v1, Lcom/taobao/android/ssologinwrapper/remote/invalidssotoken/InvalidSsoTokenResponse;->mRetCode:Ljava/lang/String;

    goto :goto_0
.end method
