.class Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator$Connection$1;
.super Ljava/lang/Object;
.source "AlipayAuthenticator.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator$Connection;

.field final synthetic val$cb:Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator$InitCallback;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator$Connection;Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator$InitCallback;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator$Connection$1;->this$0:Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator$Connection;

    iput-object p2, p0, Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator$Connection$1;->val$cb:Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator$InitCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator$Connection$1;->this$0:Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator$Connection;

    invoke-static {p2}, Lcom/a/a/a/a/b;->a(Landroid/os/IBinder;)Lcom/a/a/a/a/a;

    move-result-object v1

    # setter for: Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator$Connection;->a:Lcom/a/a/a/a/a;
    invoke-static {v0, v1}, Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator$Connection;->access$302(Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator$Connection;Lcom/a/a/a/a/a;)Lcom/a/a/a/a/a;

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mAlipayAuthenticatorService: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator$Connection$1;->this$0:Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator$Connection;

    # getter for: Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator$Connection;->a:Lcom/a/a/a/a/a;
    invoke-static {v1}, Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator$Connection;->access$300(Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator$Connection;)Lcom/a/a/a/a/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 174
    iget-object v0, p0, Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator$Connection$1;->val$cb:Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator$InitCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator$InitCallback;->callback(I)V

    .line 175
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 180
    iget-object v0, p0, Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator$Connection$1;->this$0:Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator$Connection;

    # setter for: Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator$Connection;->a:Lcom/a/a/a/a/a;
    invoke-static {v0, v1}, Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator$Connection;->access$302(Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator$Connection;Lcom/a/a/a/a/a;)Lcom/a/a/a/a/a;

    .line 181
    # setter for: Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator$Connection;->d:Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator$Connection;
    invoke-static {v1}, Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator$Connection;->access$502(Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator$Connection;)Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator$Connection;

    .line 182
    return-void
.end method
