.class public Lorg/codehaus/jackson/map/deser/impl/UnwrappedPropertyHandler;
.super Ljava/lang/Object;
.source "UnwrappedPropertyHandler.java"


# instance fields
.field protected final _properties:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/codehaus/jackson/map/deser/SettableBeanProperty;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/impl/UnwrappedPropertyHandler;->_properties:Ljava/util/ArrayList;

    .line 23
    return-void
.end method


# virtual methods
.method public addProperty(Lorg/codehaus/jackson/map/deser/SettableBeanProperty;)V
    .locals 1
    .param p1, "property"    # Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    .prologue
    .line 26
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/impl/UnwrappedPropertyHandler;->_properties:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    return-void
.end method

.method public processUnwrapped(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;Lorg/codehaus/jackson/util/TokenBuffer;)Ljava/lang/Object;
    .locals 5
    .param p1, "originalParser"    # Lorg/codehaus/jackson/JsonParser;
    .param p2, "ctxt"    # Lorg/codehaus/jackson/map/DeserializationContext;
    .param p3, "bean"    # Ljava/lang/Object;
    .param p4, "buffered"    # Lorg/codehaus/jackson/util/TokenBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 33
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v4, p0, Lorg/codehaus/jackson/map/deser/impl/UnwrappedPropertyHandler;->_properties:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "len":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 34
    iget-object v4, p0, Lorg/codehaus/jackson/map/deser/impl/UnwrappedPropertyHandler;->_properties:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    .line 35
    .local v3, "prop":Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    invoke-virtual {p4}, Lorg/codehaus/jackson/util/TokenBuffer;->asParser()Lorg/codehaus/jackson/JsonParser;

    move-result-object v1

    .line 36
    .local v1, "jp":Lorg/codehaus/jackson/JsonParser;
    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    .line 37
    invoke-virtual {v3, v1, p2, p3}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->deserializeAndSet(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)V

    .line 33
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 39
    .end local v1    # "jp":Lorg/codehaus/jackson/JsonParser;
    .end local v3    # "prop":Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    :cond_0
    return-object p3
.end method
