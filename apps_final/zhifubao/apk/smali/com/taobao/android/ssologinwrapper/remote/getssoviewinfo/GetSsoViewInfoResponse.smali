.class public Lcom/taobao/android/ssologinwrapper/remote/getssoviewinfo/GetSsoViewInfoResponse;
.super Lcom/taobao/android/ssologinwrapper/remote/SsoRemoteResponse;


# instance fields
.field public accountName:Ljava/lang/String;

.field public email:Ljava/lang/String;

.field public havanaId:J

.field public loginDesc:Ljava/lang/String;

.field public logo:Ljava/lang/String;

.field public mobile:Ljava/lang/String;

.field public uid:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/taobao/android/ssologinwrapper/remote/SsoRemoteResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public parse([B)Ljava/lang/Object;
    .locals 5

    new-instance v1, Lcom/taobao/android/ssologinwrapper/remote/getssoviewinfo/GetSsoViewInfoResponse;

    invoke-direct {v1}, Lcom/taobao/android/ssologinwrapper/remote/getssoviewinfo/GetSsoViewInfoResponse;-><init>()V

    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v2, "utf-8"

    invoke-direct {v0, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    new-instance v2, Lcom/taobao/android/ssologinwrapper/remote/ApiResponse;

    invoke-direct {v2}, Lcom/taobao/android/ssologinwrapper/remote/ApiResponse;-><init>()V

    invoke-virtual {v2, v0}, Lcom/taobao/android/ssologinwrapper/remote/ApiResponse;->parseResult(Ljava/lang/String;)Lcom/taobao/android/ssologinwrapper/remote/ApiResponse;

    move-result-object v0

    iget-boolean v0, v0, Lcom/taobao/android/ssologinwrapper/remote/ApiResponse;->success:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/taobao/android/ssologinwrapper/remote/getssoviewinfo/GetSsoViewInfoResponse;->mIsSuccess:Z

    iget-object v0, v2, Lcom/taobao/android/ssologinwrapper/remote/ApiResponse;->data:Lorg/json/JSONObject;

    const-string/jumbo v3, "havanaId"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "havanaId"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v1, Lcom/taobao/android/ssologinwrapper/remote/getssoviewinfo/GetSsoViewInfoResponse;->havanaId:J

    :cond_0
    const-string/jumbo v3, "accountName"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "accountName"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/taobao/android/ssologinwrapper/remote/getssoviewinfo/GetSsoViewInfoResponse;->accountName:Ljava/lang/String;

    :cond_1
    const-string/jumbo v3, "mobile"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "mobile"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/taobao/android/ssologinwrapper/remote/getssoviewinfo/GetSsoViewInfoResponse;->mobile:Ljava/lang/String;

    :cond_2
    const-string/jumbo v3, "email"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string/jumbo v3, "email"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/taobao/android/ssologinwrapper/remote/getssoviewinfo/GetSsoViewInfoResponse;->email:Ljava/lang/String;

    :cond_3
    const-string/jumbo v3, "uid"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string/jumbo v3, "uid"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v1, Lcom/taobao/android/ssologinwrapper/remote/getssoviewinfo/GetSsoViewInfoResponse;->uid:J

    :cond_4
    const-string/jumbo v3, "logo"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string/jumbo v3, "logo"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/taobao/android/ssologinwrapper/remote/getssoviewinfo/GetSsoViewInfoResponse;->logo:Ljava/lang/String;

    :cond_5
    const-string/jumbo v3, "loginDesc"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string/jumbo v3, "loginDesc"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/taobao/android/ssologinwrapper/remote/getssoviewinfo/GetSsoViewInfoResponse;->loginDesc:Ljava/lang/String;

    :cond_6
    iget-object v0, v2, Lcom/taobao/android/ssologinwrapper/remote/ApiResponse;->errCode:Ljava/lang/String;

    iput-object v0, v1, Lcom/taobao/android/ssologinwrapper/remote/getssoviewinfo/GetSsoViewInfoResponse;->mRetCode:Ljava/lang/String;

    iget-object v0, v2, Lcom/taobao/android/ssologinwrapper/remote/ApiResponse;->errInfo:Ljava/lang/String;

    iput-object v0, v1, Lcom/taobao/android/ssologinwrapper/remote/getssoviewinfo/GetSsoViewInfoResponse;->mRetInfo:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string/jumbo v0, "unknow_err"

    iput-object v0, v1, Lcom/taobao/android/ssologinwrapper/remote/getssoviewinfo/GetSsoViewInfoResponse;->mRetCode:Ljava/lang/String;

    goto :goto_0
.end method
