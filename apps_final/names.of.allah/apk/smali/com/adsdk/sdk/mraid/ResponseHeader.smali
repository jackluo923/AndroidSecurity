.class public final enum Lcom/adsdk/sdk/mraid/ResponseHeader;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/adsdk/sdk/mraid/ResponseHeader;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AD_TIMEOUT:Lcom/adsdk/sdk/mraid/ResponseHeader;

.field public static final enum AD_TYPE:Lcom/adsdk/sdk/mraid/ResponseHeader;

.field public static final enum CLICKTHROUGH_URL:Lcom/adsdk/sdk/mraid/ResponseHeader;

.field public static final enum CUSTOM_EVENT_DATA:Lcom/adsdk/sdk/mraid/ResponseHeader;

.field public static final enum CUSTOM_EVENT_HTML_DATA:Lcom/adsdk/sdk/mraid/ResponseHeader;

.field public static final enum CUSTOM_EVENT_NAME:Lcom/adsdk/sdk/mraid/ResponseHeader;

.field public static final enum CUSTOM_SELECTOR:Lcom/adsdk/sdk/mraid/ResponseHeader;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum DSP_CREATIVE_ID:Lcom/adsdk/sdk/mraid/ResponseHeader;

.field private static final synthetic ENUM$VALUES:[Lcom/adsdk/sdk/mraid/ResponseHeader;

.field public static final enum FAIL_URL:Lcom/adsdk/sdk/mraid/ResponseHeader;

.field public static final enum FULL_AD_TYPE:Lcom/adsdk/sdk/mraid/ResponseHeader;

.field public static final enum HEIGHT:Lcom/adsdk/sdk/mraid/ResponseHeader;

.field public static final enum IMPRESSION_URL:Lcom/adsdk/sdk/mraid/ResponseHeader;

.field public static final enum LOCATION:Lcom/adsdk/sdk/mraid/ResponseHeader;

.field public static final enum NATIVE_PARAMS:Lcom/adsdk/sdk/mraid/ResponseHeader;

.field public static final enum NETWORK_TYPE:Lcom/adsdk/sdk/mraid/ResponseHeader;

.field public static final enum REDIRECT_URL:Lcom/adsdk/sdk/mraid/ResponseHeader;

.field public static final enum REFRESH_TIME:Lcom/adsdk/sdk/mraid/ResponseHeader;

.field public static final enum SCROLLABLE:Lcom/adsdk/sdk/mraid/ResponseHeader;

.field public static final enum USER_AGENT:Lcom/adsdk/sdk/mraid/ResponseHeader;

.field public static final enum WARMUP:Lcom/adsdk/sdk/mraid/ResponseHeader;

.field public static final enum WIDTH:Lcom/adsdk/sdk/mraid/ResponseHeader;


# instance fields
.field private final key:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/adsdk/sdk/mraid/ResponseHeader;

    const-string v1, "AD_TIMEOUT"

    const-string v2, "X-AdTimeout"

    invoke-direct {v0, v1, v4, v2}, Lcom/adsdk/sdk/mraid/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/adsdk/sdk/mraid/ResponseHeader;->AD_TIMEOUT:Lcom/adsdk/sdk/mraid/ResponseHeader;

    new-instance v0, Lcom/adsdk/sdk/mraid/ResponseHeader;

    const-string v1, "AD_TYPE"

    const-string v2, "X-Adtype"

    invoke-direct {v0, v1, v5, v2}, Lcom/adsdk/sdk/mraid/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/adsdk/sdk/mraid/ResponseHeader;->AD_TYPE:Lcom/adsdk/sdk/mraid/ResponseHeader;

    new-instance v0, Lcom/adsdk/sdk/mraid/ResponseHeader;

    const-string v1, "CLICKTHROUGH_URL"

    const-string v2, "X-Clickthrough"

    invoke-direct {v0, v1, v6, v2}, Lcom/adsdk/sdk/mraid/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/adsdk/sdk/mraid/ResponseHeader;->CLICKTHROUGH_URL:Lcom/adsdk/sdk/mraid/ResponseHeader;

    new-instance v0, Lcom/adsdk/sdk/mraid/ResponseHeader;

    const-string v1, "CUSTOM_EVENT_DATA"

    const-string v2, "X-Custom-Event-Class-Data"

    invoke-direct {v0, v1, v7, v2}, Lcom/adsdk/sdk/mraid/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/adsdk/sdk/mraid/ResponseHeader;->CUSTOM_EVENT_DATA:Lcom/adsdk/sdk/mraid/ResponseHeader;

    new-instance v0, Lcom/adsdk/sdk/mraid/ResponseHeader;

    const-string v1, "CUSTOM_EVENT_NAME"

    const-string v2, "X-Custom-Event-Class-Name"

    invoke-direct {v0, v1, v8, v2}, Lcom/adsdk/sdk/mraid/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/adsdk/sdk/mraid/ResponseHeader;->CUSTOM_EVENT_NAME:Lcom/adsdk/sdk/mraid/ResponseHeader;

    new-instance v0, Lcom/adsdk/sdk/mraid/ResponseHeader;

    const-string v1, "CUSTOM_EVENT_HTML_DATA"

    const/4 v2, 0x5

    const-string v3, "X-Custom-Event-Html-Data"

    invoke-direct {v0, v1, v2, v3}, Lcom/adsdk/sdk/mraid/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/adsdk/sdk/mraid/ResponseHeader;->CUSTOM_EVENT_HTML_DATA:Lcom/adsdk/sdk/mraid/ResponseHeader;

    new-instance v0, Lcom/adsdk/sdk/mraid/ResponseHeader;

    const-string v1, "DSP_CREATIVE_ID"

    const/4 v2, 0x6

    const-string v3, "X-DspCreativeid"

    invoke-direct {v0, v1, v2, v3}, Lcom/adsdk/sdk/mraid/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/adsdk/sdk/mraid/ResponseHeader;->DSP_CREATIVE_ID:Lcom/adsdk/sdk/mraid/ResponseHeader;

    new-instance v0, Lcom/adsdk/sdk/mraid/ResponseHeader;

    const-string v1, "FAIL_URL"

    const/4 v2, 0x7

    const-string v3, "X-Failurl"

    invoke-direct {v0, v1, v2, v3}, Lcom/adsdk/sdk/mraid/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/adsdk/sdk/mraid/ResponseHeader;->FAIL_URL:Lcom/adsdk/sdk/mraid/ResponseHeader;

    new-instance v0, Lcom/adsdk/sdk/mraid/ResponseHeader;

    const-string v1, "FULL_AD_TYPE"

    const/16 v2, 0x8

    const-string v3, "X-Fulladtype"

    invoke-direct {v0, v1, v2, v3}, Lcom/adsdk/sdk/mraid/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/adsdk/sdk/mraid/ResponseHeader;->FULL_AD_TYPE:Lcom/adsdk/sdk/mraid/ResponseHeader;

    new-instance v0, Lcom/adsdk/sdk/mraid/ResponseHeader;

    const-string v1, "HEIGHT"

    const/16 v2, 0x9

    const-string v3, "X-Height"

    invoke-direct {v0, v1, v2, v3}, Lcom/adsdk/sdk/mraid/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/adsdk/sdk/mraid/ResponseHeader;->HEIGHT:Lcom/adsdk/sdk/mraid/ResponseHeader;

    new-instance v0, Lcom/adsdk/sdk/mraid/ResponseHeader;

    const-string v1, "IMPRESSION_URL"

    const/16 v2, 0xa

    const-string v3, "X-Imptracker"

    invoke-direct {v0, v1, v2, v3}, Lcom/adsdk/sdk/mraid/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/adsdk/sdk/mraid/ResponseHeader;->IMPRESSION_URL:Lcom/adsdk/sdk/mraid/ResponseHeader;

    new-instance v0, Lcom/adsdk/sdk/mraid/ResponseHeader;

    const-string v1, "REDIRECT_URL"

    const/16 v2, 0xb

    const-string v3, "X-Launchpage"

    invoke-direct {v0, v1, v2, v3}, Lcom/adsdk/sdk/mraid/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/adsdk/sdk/mraid/ResponseHeader;->REDIRECT_URL:Lcom/adsdk/sdk/mraid/ResponseHeader;

    new-instance v0, Lcom/adsdk/sdk/mraid/ResponseHeader;

    const-string v1, "NATIVE_PARAMS"

    const/16 v2, 0xc

    const-string v3, "X-Nativeparams"

    invoke-direct {v0, v1, v2, v3}, Lcom/adsdk/sdk/mraid/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/adsdk/sdk/mraid/ResponseHeader;->NATIVE_PARAMS:Lcom/adsdk/sdk/mraid/ResponseHeader;

    new-instance v0, Lcom/adsdk/sdk/mraid/ResponseHeader;

    const-string v1, "NETWORK_TYPE"

    const/16 v2, 0xd

    const-string v3, "X-Networktype"

    invoke-direct {v0, v1, v2, v3}, Lcom/adsdk/sdk/mraid/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/adsdk/sdk/mraid/ResponseHeader;->NETWORK_TYPE:Lcom/adsdk/sdk/mraid/ResponseHeader;

    new-instance v0, Lcom/adsdk/sdk/mraid/ResponseHeader;

    const-string v1, "REFRESH_TIME"

    const/16 v2, 0xe

    const-string v3, "X-Refreshtime"

    invoke-direct {v0, v1, v2, v3}, Lcom/adsdk/sdk/mraid/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/adsdk/sdk/mraid/ResponseHeader;->REFRESH_TIME:Lcom/adsdk/sdk/mraid/ResponseHeader;

    new-instance v0, Lcom/adsdk/sdk/mraid/ResponseHeader;

    const-string v1, "SCROLLABLE"

    const/16 v2, 0xf

    const-string v3, "X-Scrollable"

    invoke-direct {v0, v1, v2, v3}, Lcom/adsdk/sdk/mraid/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/adsdk/sdk/mraid/ResponseHeader;->SCROLLABLE:Lcom/adsdk/sdk/mraid/ResponseHeader;

    new-instance v0, Lcom/adsdk/sdk/mraid/ResponseHeader;

    const-string v1, "WARMUP"

    const/16 v2, 0x10

    const-string v3, "X-Warmup"

    invoke-direct {v0, v1, v2, v3}, Lcom/adsdk/sdk/mraid/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/adsdk/sdk/mraid/ResponseHeader;->WARMUP:Lcom/adsdk/sdk/mraid/ResponseHeader;

    new-instance v0, Lcom/adsdk/sdk/mraid/ResponseHeader;

    const-string v1, "WIDTH"

    const/16 v2, 0x11

    const-string v3, "X-Width"

    invoke-direct {v0, v1, v2, v3}, Lcom/adsdk/sdk/mraid/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/adsdk/sdk/mraid/ResponseHeader;->WIDTH:Lcom/adsdk/sdk/mraid/ResponseHeader;

    new-instance v0, Lcom/adsdk/sdk/mraid/ResponseHeader;

    const-string v1, "LOCATION"

    const/16 v2, 0x12

    const-string v3, "Location"

    invoke-direct {v0, v1, v2, v3}, Lcom/adsdk/sdk/mraid/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/adsdk/sdk/mraid/ResponseHeader;->LOCATION:Lcom/adsdk/sdk/mraid/ResponseHeader;

    new-instance v0, Lcom/adsdk/sdk/mraid/ResponseHeader;

    const-string v1, "USER_AGENT"

    const/16 v2, 0x13

    const-string v3, "User-Agent"

    invoke-direct {v0, v1, v2, v3}, Lcom/adsdk/sdk/mraid/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/adsdk/sdk/mraid/ResponseHeader;->USER_AGENT:Lcom/adsdk/sdk/mraid/ResponseHeader;

    new-instance v0, Lcom/adsdk/sdk/mraid/ResponseHeader;

    const-string v1, "CUSTOM_SELECTOR"

    const/16 v2, 0x14

    const-string v3, "X-Customselector"

    invoke-direct {v0, v1, v2, v3}, Lcom/adsdk/sdk/mraid/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/adsdk/sdk/mraid/ResponseHeader;->CUSTOM_SELECTOR:Lcom/adsdk/sdk/mraid/ResponseHeader;

    const/16 v0, 0x15

    new-array v0, v0, [Lcom/adsdk/sdk/mraid/ResponseHeader;

    sget-object v1, Lcom/adsdk/sdk/mraid/ResponseHeader;->AD_TIMEOUT:Lcom/adsdk/sdk/mraid/ResponseHeader;

    aput-object v1, v0, v4

    sget-object v1, Lcom/adsdk/sdk/mraid/ResponseHeader;->AD_TYPE:Lcom/adsdk/sdk/mraid/ResponseHeader;

    aput-object v1, v0, v5

    sget-object v1, Lcom/adsdk/sdk/mraid/ResponseHeader;->CLICKTHROUGH_URL:Lcom/adsdk/sdk/mraid/ResponseHeader;

    aput-object v1, v0, v6

    sget-object v1, Lcom/adsdk/sdk/mraid/ResponseHeader;->CUSTOM_EVENT_DATA:Lcom/adsdk/sdk/mraid/ResponseHeader;

    aput-object v1, v0, v7

    sget-object v1, Lcom/adsdk/sdk/mraid/ResponseHeader;->CUSTOM_EVENT_NAME:Lcom/adsdk/sdk/mraid/ResponseHeader;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/adsdk/sdk/mraid/ResponseHeader;->CUSTOM_EVENT_HTML_DATA:Lcom/adsdk/sdk/mraid/ResponseHeader;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/adsdk/sdk/mraid/ResponseHeader;->DSP_CREATIVE_ID:Lcom/adsdk/sdk/mraid/ResponseHeader;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/adsdk/sdk/mraid/ResponseHeader;->FAIL_URL:Lcom/adsdk/sdk/mraid/ResponseHeader;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/adsdk/sdk/mraid/ResponseHeader;->FULL_AD_TYPE:Lcom/adsdk/sdk/mraid/ResponseHeader;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/adsdk/sdk/mraid/ResponseHeader;->HEIGHT:Lcom/adsdk/sdk/mraid/ResponseHeader;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/adsdk/sdk/mraid/ResponseHeader;->IMPRESSION_URL:Lcom/adsdk/sdk/mraid/ResponseHeader;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/adsdk/sdk/mraid/ResponseHeader;->REDIRECT_URL:Lcom/adsdk/sdk/mraid/ResponseHeader;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/adsdk/sdk/mraid/ResponseHeader;->NATIVE_PARAMS:Lcom/adsdk/sdk/mraid/ResponseHeader;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/adsdk/sdk/mraid/ResponseHeader;->NETWORK_TYPE:Lcom/adsdk/sdk/mraid/ResponseHeader;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/adsdk/sdk/mraid/ResponseHeader;->REFRESH_TIME:Lcom/adsdk/sdk/mraid/ResponseHeader;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/adsdk/sdk/mraid/ResponseHeader;->SCROLLABLE:Lcom/adsdk/sdk/mraid/ResponseHeader;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/adsdk/sdk/mraid/ResponseHeader;->WARMUP:Lcom/adsdk/sdk/mraid/ResponseHeader;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/adsdk/sdk/mraid/ResponseHeader;->WIDTH:Lcom/adsdk/sdk/mraid/ResponseHeader;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/adsdk/sdk/mraid/ResponseHeader;->LOCATION:Lcom/adsdk/sdk/mraid/ResponseHeader;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/adsdk/sdk/mraid/ResponseHeader;->USER_AGENT:Lcom/adsdk/sdk/mraid/ResponseHeader;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/adsdk/sdk/mraid/ResponseHeader;->CUSTOM_SELECTOR:Lcom/adsdk/sdk/mraid/ResponseHeader;

    aput-object v2, v0, v1

    sput-object v0, Lcom/adsdk/sdk/mraid/ResponseHeader;->ENUM$VALUES:[Lcom/adsdk/sdk/mraid/ResponseHeader;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/adsdk/sdk/mraid/ResponseHeader;->key:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adsdk/sdk/mraid/ResponseHeader;
    .locals 1

    const-class v0, Lcom/adsdk/sdk/mraid/ResponseHeader;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/adsdk/sdk/mraid/ResponseHeader;

    return-object v0
.end method

.method public static values()[Lcom/adsdk/sdk/mraid/ResponseHeader;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/adsdk/sdk/mraid/ResponseHeader;->ENUM$VALUES:[Lcom/adsdk/sdk/mraid/ResponseHeader;

    array-length v1, v0

    new-array v2, v1, [Lcom/adsdk/sdk/mraid/ResponseHeader;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/ResponseHeader;->key:Ljava/lang/String;

    return-object v0
.end method
