.class final Lcom/alipay/mobile/quinox/g;
.super Ljava/util/Observable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/quinox/LauncherApplication;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/quinox/LauncherApplication;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/quinox/g;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/quinox/LauncherApplication;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/mobile/quinox/g;-><init>(Lcom/alipay/mobile/quinox/LauncherApplication;)V

    return-void
.end method


# virtual methods
.method public final setChanged()V
    .locals 0

    invoke-super {p0}, Ljava/util/Observable;->setChanged()V

    return-void
.end method
