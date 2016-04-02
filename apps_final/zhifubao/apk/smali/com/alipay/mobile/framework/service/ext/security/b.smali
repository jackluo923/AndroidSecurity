.class Lcom/alipay/mobile/framework/service/ext/security/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    invoke-static {p2}, Lcom/qihoo360/contacts/service/ITxlUiService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/qihoo360/contacts/service/ITxlUiService;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/framework/service/ext/security/QihooGuardService;->access$3(Lcom/qihoo360/contacts/service/ITxlUiService;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/alipay/mobile/framework/service/ext/security/QihooGuardService;->access$3(Lcom/qihoo360/contacts/service/ITxlUiService;)V

    invoke-static {v0}, Lcom/alipay/mobile/framework/service/ext/security/QihooGuardService;->access$4(Landroid/content/ServiceConnection;)V

    return-void
.end method
