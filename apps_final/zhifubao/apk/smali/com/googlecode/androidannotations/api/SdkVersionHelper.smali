.class public Lcom/googlecode/androidannotations/api/SdkVersionHelper;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSdkInt()I
    .locals 2

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string/jumbo v1, "1.5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    :goto_0
    return v0

    :cond_0
    # invokes: Lcom/googlecode/androidannotations/api/SdkVersionHelper$HelperInternal;->getSdkIntInternal()I
    invoke-static {}, Lcom/googlecode/androidannotations/api/SdkVersionHelper$HelperInternal;->access$000()I

    move-result v0

    goto :goto_0
.end method
