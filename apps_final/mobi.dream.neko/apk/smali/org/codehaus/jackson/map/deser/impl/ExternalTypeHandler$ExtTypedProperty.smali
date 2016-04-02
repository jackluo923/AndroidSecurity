.class final Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler$ExtTypedProperty;
.super Ljava/lang/Object;
.source "ExternalTypeHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ExtTypedProperty"
.end annotation


# instance fields
.field private final _property:Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

.field private final _typePropertyName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/map/deser/SettableBeanProperty;Ljava/lang/String;)V
    .locals 0
    .param p1, "property"    # Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    .param p2, "typePropertyName"    # Ljava/lang/String;

    .prologue
    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    iput-object p1, p0, Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler$ExtTypedProperty;->_property:Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    .line 192
    iput-object p2, p0, Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler$ExtTypedProperty;->_typePropertyName:Ljava/lang/String;

    .line 193
    return-void
.end method


# virtual methods
.method public getProperty()Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler$ExtTypedProperty;->_property:Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    return-object v0
.end method

.method public getTypePropertyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler$ExtTypedProperty;->_typePropertyName:Ljava/lang/String;

    return-object v0
.end method

.method public hasTypePropertyName(Ljava/lang/String;)Z
    .locals 1
    .param p1, "n"    # Ljava/lang/String;

    .prologue
    .line 196
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler$ExtTypedProperty;->_typePropertyName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
