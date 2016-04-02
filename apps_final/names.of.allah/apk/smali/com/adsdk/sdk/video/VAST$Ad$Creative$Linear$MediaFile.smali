.class public Lcom/adsdk/sdk/video/VAST$Ad$Creative$Linear$MediaFile;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lorg/simpleframework/xml/Root;
    name = "MediaFile"
.end annotation


# instance fields
.field apiFramework:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        name = "apiFramework"
        required = false
    .end annotation
.end field

.field bitrate:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        name = "bitrate"
        required = false
    .end annotation
.end field

.field codec:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        name = "codec"
        required = false
    .end annotation
.end field

.field delivery:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        name = "delivery"
    .end annotation
.end field

.field height:I
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        name = "height"
    .end annotation
.end field

.field id:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        name = "id"
        required = false
    .end annotation
.end field

.field maintainAspectRatio:Z
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        name = "maintainAspectRatio"
        required = false
    .end annotation
.end field

.field scalable:Z
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        name = "scalable"
        required = false
    .end annotation
.end field

.field type:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        name = "type"
    .end annotation
.end field

.field url:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Text;
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
