.class Lcom/taobao/android/ssologinwrapper/remote/SsoRemoteRequest$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# instance fields
.field final synthetic this$0:Lcom/taobao/android/ssologinwrapper/remote/SsoRemoteRequest;


# direct methods
.method constructor <init>(Lcom/taobao/android/ssologinwrapper/remote/SsoRemoteRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/taobao/android/ssologinwrapper/remote/SsoRemoteRequest$1;->this$0:Lcom/taobao/android/ssologinwrapper/remote/SsoRemoteRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    return-object v0
.end method
