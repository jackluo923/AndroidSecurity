.class public Lcom/adsdk/sdk/video/VAST;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lorg/simpleframework/xml/Root;
    name = "VAST"
.end annotation


# instance fields
.field public ads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/adsdk/sdk/video/VAST$Ad;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/ElementList;
        inline = true
    .end annotation
.end field

.field public error:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        name = "Error"
        required = false
    .end annotation
.end field

.field public version:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        name = "version"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
