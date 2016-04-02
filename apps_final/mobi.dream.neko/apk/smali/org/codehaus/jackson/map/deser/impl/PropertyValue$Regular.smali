.class final Lorg/codehaus/jackson/map/deser/impl/PropertyValue$Regular;
.super Lorg/codehaus/jackson/map/deser/impl/PropertyValue;
.source "PropertyValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codehaus/jackson/map/deser/impl/PropertyValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Regular"
.end annotation


# instance fields
.field final _property:Lorg/codehaus/jackson/map/deser/SettableBeanProperty;


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/map/deser/impl/PropertyValue;Ljava/lang/Object;Lorg/codehaus/jackson/map/deser/SettableBeanProperty;)V
    .locals 0
    .param p1, "next"    # Lorg/codehaus/jackson/map/deser/impl/PropertyValue;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "prop"    # Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/impl/PropertyValue;-><init>(Lorg/codehaus/jackson/map/deser/impl/PropertyValue;Ljava/lang/Object;)V

    .line 53
    iput-object p3, p0, Lorg/codehaus/jackson/map/deser/impl/PropertyValue$Regular;->_property:Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    .line 54
    return-void
.end method


# virtual methods
.method public assign(Ljava/lang/Object;)V
    .locals 2
    .param p1, "bean"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/impl/PropertyValue$Regular;->_property:Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/impl/PropertyValue$Regular;->value:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 61
    return-void
.end method
