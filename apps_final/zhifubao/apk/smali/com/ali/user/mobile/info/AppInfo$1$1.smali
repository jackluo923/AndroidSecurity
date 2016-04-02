.class Lcom/ali/user/mobile/info/AppInfo$1$1;
.super Ljava/lang/Object;
.source "AppInfo.java"

# interfaces
.implements Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$InitResultListener;


# instance fields
.field private final synthetic a:Landroid/content/Context;

.field final synthetic this$1:Lcom/ali/user/mobile/info/AppInfo$1;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/info/AppInfo$1;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/info/AppInfo$1$1;->this$1:Lcom/ali/user/mobile/info/AppInfo$1;

    iput-object p2, p0, Lcom/ali/user/mobile/info/AppInfo$1$1;->a:Landroid/content/Context;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;)V
    .locals 3

    .prologue
    .line 99
    const-string/jumbo v0, "AppInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "initUmidToken-onResult: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string/jumbo v0, "AppInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "apdid:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;->apdid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string/jumbo v0, "AppInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "apdidToken:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;->apdidToken:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string/jumbo v0, "AppInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "umidToken:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;->umidToken:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo$1$1;->this$1:Lcom/ali/user/mobile/info/AppInfo$1;

    # getter for: Lcom/ali/user/mobile/info/AppInfo$1;->this$0:Lcom/ali/user/mobile/info/AppInfo;
    invoke-static {v0}, Lcom/ali/user/mobile/info/AppInfo$1;->access$0(Lcom/ali/user/mobile/info/AppInfo$1;)Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v0

    iget-object v1, p1, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;->apdid:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ali/user/mobile/info/AppInfo;->access$0(Lcom/ali/user/mobile/info/AppInfo;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo$1$1;->this$1:Lcom/ali/user/mobile/info/AppInfo$1;

    # getter for: Lcom/ali/user/mobile/info/AppInfo$1;->this$0:Lcom/ali/user/mobile/info/AppInfo;
    invoke-static {v0}, Lcom/ali/user/mobile/info/AppInfo$1;->access$0(Lcom/ali/user/mobile/info/AppInfo$1;)Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v0

    iget-object v1, p1, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;->apdidToken:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ali/user/mobile/info/AppInfo;->access$1(Lcom/ali/user/mobile/info/AppInfo;Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo$1$1;->this$1:Lcom/ali/user/mobile/info/AppInfo$1;

    # getter for: Lcom/ali/user/mobile/info/AppInfo$1;->this$0:Lcom/ali/user/mobile/info/AppInfo;
    invoke-static {v0}, Lcom/ali/user/mobile/info/AppInfo$1;->access$0(Lcom/ali/user/mobile/info/AppInfo$1;)Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v0

    iget-object v1, p1, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;->umidToken:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ali/user/mobile/info/AppInfo;->access$2(Lcom/ali/user/mobile/info/AppInfo;Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo$1$1;->this$1:Lcom/ali/user/mobile/info/AppInfo$1;

    # getter for: Lcom/ali/user/mobile/info/AppInfo$1;->this$0:Lcom/ali/user/mobile/info/AppInfo;
    invoke-static {v0}, Lcom/ali/user/mobile/info/AppInfo$1;->access$0(Lcom/ali/user/mobile/info/AppInfo$1;)Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/ali/user/mobile/info/AppInfo$1$1;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/ali/user/mobile/info/AppInfo;->access$3(Lcom/ali/user/mobile/info/AppInfo;Landroid/content/Context;)V

    .line 108
    return-void
.end method
