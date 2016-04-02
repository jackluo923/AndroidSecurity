.class Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator$Connection;
.super Ljava/lang/Object;
.source "AlipayAuthenticator.java"


# static fields
.field private static d:Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator$Connection;


# instance fields
.field private a:Lcom/a/a/a/a/a;

.field private b:Landroid/content/ServiceConnection;

.field private c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator$Connection;->d:Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator$Connection;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator$InitCallback;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput-object v2, p0, Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator$Connection;->a:Lcom/a/a/a/a/a;

    .line 148
    iput-object v2, p0, Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator$Connection;->b:Landroid/content/ServiceConnection;

    .line 153
    iput-object v2, p0, Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator$Connection;->c:Landroid/content/Context;

    .line 160
    if-nez p1, :cond_0

    .line 161
    new-instance v0, Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator$ServiceException;

    const-string/jumbo v1, "Invalid parameter exception"

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator$ServiceException;-><init>(Ljava/lang/String;Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator$1;)V

    throw v0

    .line 164
    :cond_0
    iput-object p1, p0, Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator$Connection;->c:Landroid/content/Context;

    .line 165
    iput-object v2, p0, Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator$Connection;->a:Lcom/a/a/a/a/a;

    .line 166
    new-instance v0, Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator$Connection$1;

    invoke-direct {v0, p0, p2}, Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator$Connection$1;-><init>(Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator$Connection;Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator$InitCallback;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator$Connection;->b:Landroid/content/ServiceConnection;

    .line 185
    return-void
.end method

.method private a(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 240
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sendCommand, aMessages: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 242
    iget-object v1, p0, Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator$Connection;->a:Lcom/a/a/a/a/a;

    invoke-interface {v1, p1}, Lcom/a/a/a/a/a;->a(Landroid/os/Bundle;)I

    .line 243
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sendCommand, result: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 244
    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 250
    :goto_0
    return-object p1

    .line 247
    :cond_0
    new-instance v1, Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator$ServiceException;

    const-string/jumbo v2, "Null pointer exception"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator$ServiceException;-><init>(Ljava/lang/String;Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator$1;)V

    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    :catch_0
    move-exception v1

    move-object p1, v0

    goto :goto_0
.end method

.method private a()Z
    .locals 5

    .prologue
    .line 205
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 206
    const-string/jumbo v1, "com.autonavi.minimap"

    .line 208
    :try_start_0
    new-instance v2, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.amap.api.service.AMapService"

    invoke-direct {v2, v1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 211
    iget-object v2, p0, Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator$Connection;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator$Connection;->b:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 213
    if-eqz v0, :cond_0

    .line 214
    # setter for: Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator;->d:Ljava/lang/String;
    invoke-static {v1}, Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator;->access$602(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator$Connection;)Z
    .locals 1

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator$Connection;->a()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator$Connection;)V
    .locals 2

    .prologue
    .line 139
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator$Connection;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator$Connection;->b:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator$Connection;->a:Lcom/a/a/a/a/a;

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator$Connection;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator$Connection;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator$Connection;)Lcom/a/a/a/a/a;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator$Connection;->a:Lcom/a/a/a/a/a;

    return-object v0
.end method

.method static synthetic access$302(Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator$Connection;Lcom/a/a/a/a/a;)Lcom/a/a/a/a/a;
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator$Connection;->a:Lcom/a/a/a/a/a;

    return-object p1
.end method

.method static synthetic access$502(Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator$Connection;)Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator$Connection;
    .locals 0

    .prologue
    .line 139
    sput-object p0, Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator$Connection;->d:Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator$Connection;

    return-object p0
.end method

.method public static final declared-synchronized getInstance(Landroid/content/Context;Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator$InitCallback;)Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator$Connection;
    .locals 2

    .prologue
    .line 190
    const-class v1, Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator$Connection;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator$Connection;->d:Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator$Connection;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator$Connection;->d:Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator$Connection;

    iget-object v0, v0, Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator$Connection;->a:Lcom/a/a/a/a/a;

    if-nez v0, :cond_1

    .line 191
    :cond_0
    new-instance v0, Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator$Connection;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator$Connection;-><init>(Landroid/content/Context;Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator$InitCallback;)V

    sput-object v0, Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator$Connection;->d:Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator$Connection;

    .line 193
    :cond_1
    sget-object v0, Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator$Connection;->d:Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator$Connection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 190
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
