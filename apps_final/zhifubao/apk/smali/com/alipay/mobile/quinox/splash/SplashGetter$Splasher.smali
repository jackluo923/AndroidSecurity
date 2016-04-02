.class public Lcom/alipay/mobile/quinox/splash/SplashGetter$Splasher;
.super Ljava/lang/Object;
.source "SplashGetter.java"


# instance fields
.field private spaceObjectInfo:Lcom/alipay/mobile/quinox/splash/SpaceObjectInfo;

.field final synthetic this$0:Lcom/alipay/mobile/quinox/splash/SplashGetter;

.field private weight:I


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/quinox/splash/SplashGetter;)V
    .locals 0

    .prologue
    .line 241
    iput-object p1, p0, Lcom/alipay/mobile/quinox/splash/SplashGetter$Splasher;->this$0:Lcom/alipay/mobile/quinox/splash/SplashGetter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/quinox/splash/SplashGetter$Splasher;)Lcom/alipay/mobile/quinox/splash/SpaceObjectInfo;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/alipay/mobile/quinox/splash/SplashGetter$Splasher;->spaceObjectInfo:Lcom/alipay/mobile/quinox/splash/SpaceObjectInfo;

    return-object v0
.end method

.method static synthetic access$1(Lcom/alipay/mobile/quinox/splash/SplashGetter$Splasher;)I
    .locals 1

    .prologue
    .line 242
    iget v0, p0, Lcom/alipay/mobile/quinox/splash/SplashGetter$Splasher;->weight:I

    return v0
.end method


# virtual methods
.method public getSpaceObjectInfo()Lcom/alipay/mobile/quinox/splash/SpaceObjectInfo;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/alipay/mobile/quinox/splash/SplashGetter$Splasher;->spaceObjectInfo:Lcom/alipay/mobile/quinox/splash/SpaceObjectInfo;

    return-object v0
.end method

.method public getWeight()I
    .locals 1

    .prologue
    .line 245
    iget v0, p0, Lcom/alipay/mobile/quinox/splash/SplashGetter$Splasher;->weight:I

    return v0
.end method

.method public setSpaceObjectInfo(Lcom/alipay/mobile/quinox/splash/SpaceObjectInfo;)V
    .locals 0

    .prologue
    .line 254
    iput-object p1, p0, Lcom/alipay/mobile/quinox/splash/SplashGetter$Splasher;->spaceObjectInfo:Lcom/alipay/mobile/quinox/splash/SpaceObjectInfo;

    .line 255
    return-void
.end method

.method public setWeight(I)V
    .locals 0

    .prologue
    .line 248
    iput p1, p0, Lcom/alipay/mobile/quinox/splash/SplashGetter$Splasher;->weight:I

    .line 249
    return-void
.end method
