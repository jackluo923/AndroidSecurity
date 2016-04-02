.class public Lcom/adsdk/sdk/video/VAST$Ad$AdSystem;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lorg/simpleframework/xml/Root;
.end annotation


# instance fields
.field name:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Text;
    .end annotation
.end field

.field version:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        name = "version"
        required = false
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
