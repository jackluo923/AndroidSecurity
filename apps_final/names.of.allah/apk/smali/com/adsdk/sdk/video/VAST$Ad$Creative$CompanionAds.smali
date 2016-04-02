.class public Lcom/adsdk/sdk/video/VAST$Ad$Creative$CompanionAds;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lorg/simpleframework/xml/Root;
    name = "CompanionAds"
.end annotation


# instance fields
.field companions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/adsdk/sdk/video/VAST$Ad$Creative$CompanionAds$Companion;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/ElementList;
        inline = true
        required = false
    .end annotation
.end field

.field required:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        name = "required"
        required = false
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
