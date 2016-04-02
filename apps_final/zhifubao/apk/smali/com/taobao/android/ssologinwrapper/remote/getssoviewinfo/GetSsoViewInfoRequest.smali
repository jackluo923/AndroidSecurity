.class public Lcom/taobao/android/ssologinwrapper/remote/getssoviewinfo/GetSsoViewInfoRequest;
.super Lcom/taobao/android/ssologinwrapper/remote/SsoRemoteRequest;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/taobao/android/ssologinwrapper/remote/SsoRemoteRequest;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected assembleParams(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/taobao/android/ssologinwrapper/remote/ISsoRemoteRequestParam;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/taobao/android/ssologinwrapper/remote/ISsoRemoteRequestParam;",
            ")V"
        }
    .end annotation

    instance-of v0, p3, Lcom/taobao/android/ssologinwrapper/remote/getssoviewinfo/GetSsoViewInfoParam;

    if-eqz v0, :cond_0

    check-cast p3, Lcom/taobao/android/ssologinwrapper/remote/getssoviewinfo/GetSsoViewInfoParam;

    const-string/jumbo v0, "api"

    invoke-virtual {p3}, Lcom/taobao/android/ssologinwrapper/remote/getssoviewinfo/GetSsoViewInfoParam;->getApiName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "v"

    invoke-virtual {p3}, Lcom/taobao/android/ssologinwrapper/remote/getssoviewinfo/GetSsoViewInfoParam;->getApiVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "apdid"

    invoke-virtual {p3}, Lcom/taobao/android/ssologinwrapper/remote/getssoviewinfo/GetSsoViewInfoParam;->getApdid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "umidToken"

    invoke-virtual {p3}, Lcom/taobao/android/ssologinwrapper/remote/getssoviewinfo/GetSsoViewInfoParam;->getUmidToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "ssoToken"

    invoke-virtual {p3}, Lcom/taobao/android/ssologinwrapper/remote/getssoviewinfo/GetSsoViewInfoParam;->getSsoToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
