.class public Lcom/adsdk/sdk/video/VAST$Ad$Creative$NonLinearAds$NonLinear;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lorg/simpleframework/xml/Root;
    name = "NonLinear"
.end annotation


# instance fields
.field apiFramework:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        name = "apiFramework"
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

.field maintainAspectRatio:Z
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        name = "maintainAspectRatio"
        required = false
    .end annotation
.end field

.field minSuggestedDuration:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        name = "minSuggestedDuration"
        required = false
    .end annotation
.end field

.field nonLinearClickThrough:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        name = "NonLinearClickThrough"
        required = false
    .end annotation
.end field

.field nonLinearClickTracking:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        name = "NonLinearClickTracking"
        required = false
    .end annotation
.end field

.field scalable:Z
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        name = "scalable"
        required = false
    .end annotation
.end field

.field staticResource:Lcom/adsdk/sdk/video/VAST$Ad$Creative$StaticResource;
    .annotation runtime Lorg/simpleframework/xml/Element;
        name = "StaticResource"
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
