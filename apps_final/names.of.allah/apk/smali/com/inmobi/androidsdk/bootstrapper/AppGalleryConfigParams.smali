.class public Lcom/inmobi/androidsdk/bootstrapper/AppGalleryConfigParams;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "http://appgalleries.inmobi.com/inmobi_sdk"

    iput-object v0, p0, Lcom/inmobi/androidsdk/bootstrapper/AppGalleryConfigParams;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/androidsdk/bootstrapper/AppGalleryConfigParams;->a:Ljava/lang/String;

    return-object v0
.end method

.method public setFromMap(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/androidsdk/bootstrapper/AppGalleryConfigParams;->a:Ljava/lang/String;

    return-void
.end method
