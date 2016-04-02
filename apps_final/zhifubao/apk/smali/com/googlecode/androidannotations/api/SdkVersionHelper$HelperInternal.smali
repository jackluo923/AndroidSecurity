.class Lcom/googlecode/androidannotations/api/SdkVersionHelper$HelperInternal;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    invoke-static {}, Lcom/googlecode/androidannotations/api/SdkVersionHelper$HelperInternal;->getSdkIntInternal()I

    move-result v0

    return v0
.end method

.method private static getSdkIntInternal()I
    .locals 1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method
