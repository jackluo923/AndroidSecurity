.class public final Lcom/taobao/wireless/security/sdk/simulatordetect/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/taobao/wireless/security/sdk/simulatordetect/ISimulatorDetectComponent;


# instance fields
.field private a:Lcom/taobao/wireless/security/adapter/k/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/taobao/wireless/security/adapter/k/a;

    invoke-direct {v0}, Lcom/taobao/wireless/security/adapter/k/a;-><init>()V

    iput-object v0, p0, Lcom/taobao/wireless/security/sdk/simulatordetect/a;->a:Lcom/taobao/wireless/security/adapter/k/a;

    return-void
.end method


# virtual methods
.method public final isSimulator()Z
    .locals 1

    iget-object v0, p0, Lcom/taobao/wireless/security/sdk/simulatordetect/a;->a:Lcom/taobao/wireless/security/adapter/k/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/wireless/security/sdk/simulatordetect/a;->a:Lcom/taobao/wireless/security/adapter/k/a;

    invoke-virtual {v0}, Lcom/taobao/wireless/security/adapter/k/a;->isSimulator()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
