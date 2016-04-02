.class public Lorg/codehaus/jackson/map/ser/EnumSerializer;
.super Lorg/codehaus/jackson/map/ser/std/EnumSerializer;
.source "EnumSerializer.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation

.annotation runtime Lorg/codehaus/jackson/map/annotate/JacksonStdImpl;
.end annotation


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/map/util/EnumValues;)V
    .locals 0
    .param p1, "v"    # Lorg/codehaus/jackson/map/util/EnumValues;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/map/ser/std/EnumSerializer;-><init>(Lorg/codehaus/jackson/map/util/EnumValues;)V

    .line 16
    return-void
.end method
