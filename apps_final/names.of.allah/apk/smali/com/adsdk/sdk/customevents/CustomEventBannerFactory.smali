.class public Lcom/adsdk/sdk/customevents/CustomEventBannerFactory;
.super Ljava/lang/Object;


# static fields
.field private static instance:Lcom/adsdk/sdk/customevents/CustomEventBannerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/adsdk/sdk/customevents/CustomEventBannerFactory;

    invoke-direct {v0}, Lcom/adsdk/sdk/customevents/CustomEventBannerFactory;-><init>()V

    sput-object v0, Lcom/adsdk/sdk/customevents/CustomEventBannerFactory;->instance:Lcom/adsdk/sdk/customevents/CustomEventBannerFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/lang/String;)Lcom/adsdk/sdk/customevents/CustomEventBanner;
    .locals 1

    sget-object v0, Lcom/adsdk/sdk/customevents/CustomEventBannerFactory;->instance:Lcom/adsdk/sdk/customevents/CustomEventBannerFactory;

    invoke-virtual {v0, p0}, Lcom/adsdk/sdk/customevents/CustomEventBannerFactory;->internalCreate(Ljava/lang/String;)Lcom/adsdk/sdk/customevents/CustomEventBanner;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected internalCreate(Ljava/lang/String;)Lcom/adsdk/sdk/customevents/CustomEventBanner;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "com.adsdk.sdk.customevents."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Banner"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/adsdk/sdk/customevents/CustomEventBanner;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsdk/sdk/customevents/CustomEventBanner;

    return-object v0
.end method
