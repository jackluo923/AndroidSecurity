.class public Lcom/adsdk/sdk/video/VAST$Ad$Creative$CompanionAds$Companion;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lorg/simpleframework/xml/Root;
    name = "Companion"
.end annotation


# instance fields
.field adSlotID:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        name = "adSlotID"
        required = false
    .end annotation
.end field

.field altText:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        name = "AltText"
        required = false
    .end annotation
.end field

.field apiFramework:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        name = "apiFramework"
        required = false
    .end annotation
.end field

.field assetHeight:I
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        name = "assetHeight"
        required = false
    .end annotation
.end field

.field assetWidth:I
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        name = "assetWidth"
        required = false
    .end annotation
.end field

.field companionClickThrough:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        name = "CompanionClickThrough"
        required = false
    .end annotation
.end field

.field companionClickTracking:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        name = "CompanionClickTracking"
        required = false
    .end annotation
.end field

.field expandedHeight:I
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        name = "expandedHeight"
        required = false
    .end annotation
.end field

.field expandedWidth:I
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        name = "expandedWidth"
        required = false
    .end annotation
.end field

.field height:I
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        name = "height"
    .end annotation
.end field

.field htmlResource:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        name = "HTMLResource"
        required = false
    .end annotation
.end field

.field id:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        name = "id"
        required = false
    .end annotation
.end field

.field iframeResource:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        name = "IFrameResource"
        required = false
    .end annotation
.end field

.field staticResource:Lcom/adsdk/sdk/video/VAST$Ad$Creative$StaticResource;
    .annotation runtime Lorg/simpleframework/xml/Element;
        name = "StaticResource"
        required = false
    .end annotation
.end field

.field trackingEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/adsdk/sdk/video/VAST$Ad$Creative$Tracking;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/ElementList;
        name = "TrackingEvents"
        required = false
    .end annotation
.end field

.field width:I
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        name = "width"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
