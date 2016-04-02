.class public Lcom/adsdk/sdk/video/VAST$Ad;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lorg/simpleframework/xml/Root;
    name = "Ad"
.end annotation


# instance fields
.field id:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        name = "id"
        required = false
    .end annotation
.end field

.field inLine:Lcom/adsdk/sdk/video/VAST$Ad$InLine;
    .annotation runtime Lorg/simpleframework/xml/Element;
        name = "InLine"
        required = false
    .end annotation
.end field

.field sequence:I
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        name = "sequence"
        required = false
    .end annotation
.end field

.field wrapper:Lcom/adsdk/sdk/video/VAST$Ad$Wrapper;
    .annotation runtime Lorg/simpleframework/xml/Element;
        name = "Wrapper"
        required = false
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
