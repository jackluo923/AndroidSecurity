.class public abstract Lcom/alipay/mobile/framework/service/ext/security/SecurityInitService;
.super Lcom/alipay/mobile/framework/service/ext/ExternalService;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/ExternalService;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract checkResetGestureMode()V
.end method

.method public abstract copyMspTidToWalletId()V
.end method

.method public abstract securityInit(Landroid/content/Intent;)V
.end method

.method public abstract updateWalletLoginAuth(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
