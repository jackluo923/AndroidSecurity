.class public Lorg/codehaus/jackson/map/module/SimpleModule;
.super Lorg/codehaus/jackson/map/Module;
.source "SimpleModule.java"


# instance fields
.field protected _abstractTypes:Lorg/codehaus/jackson/map/module/SimpleAbstractTypeResolver;

.field protected _deserializers:Lorg/codehaus/jackson/map/module/SimpleDeserializers;

.field protected _keyDeserializers:Lorg/codehaus/jackson/map/module/SimpleKeyDeserializers;

.field protected _keySerializers:Lorg/codehaus/jackson/map/module/SimpleSerializers;

.field protected _mixins:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field protected final _name:Ljava/lang/String;

.field protected _serializers:Lorg/codehaus/jackson/map/module/SimpleSerializers;

.field protected _valueInstantiators:Lorg/codehaus/jackson/map/module/SimpleValueInstantiators;

.field protected final _version:Lorg/codehaus/jackson/Version;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/codehaus/jackson/Version;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "version"    # Lorg/codehaus/jackson/Version;

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0}, Lorg/codehaus/jackson/map/Module;-><init>()V

    .line 22
    iput-object v0, p0, Lorg/codehaus/jackson/map/module/SimpleModule;->_serializers:Lorg/codehaus/jackson/map/module/SimpleSerializers;

    .line 23
    iput-object v0, p0, Lorg/codehaus/jackson/map/module/SimpleModule;->_deserializers:Lorg/codehaus/jackson/map/module/SimpleDeserializers;

    .line 25
    iput-object v0, p0, Lorg/codehaus/jackson/map/module/SimpleModule;->_keySerializers:Lorg/codehaus/jackson/map/module/SimpleSerializers;

    .line 26
    iput-object v0, p0, Lorg/codehaus/jackson/map/module/SimpleModule;->_keyDeserializers:Lorg/codehaus/jackson/map/module/SimpleKeyDeserializers;

    .line 33
    iput-object v0, p0, Lorg/codehaus/jackson/map/module/SimpleModule;->_abstractTypes:Lorg/codehaus/jackson/map/module/SimpleAbstractTypeResolver;

    .line 40
    iput-object v0, p0, Lorg/codehaus/jackson/map/module/SimpleModule;->_valueInstantiators:Lorg/codehaus/jackson/map/module/SimpleValueInstantiators;

    .line 48
    iput-object v0, p0, Lorg/codehaus/jackson/map/module/SimpleModule;->_mixins:Ljava/util/HashMap;

    .line 58
    iput-object p1, p0, Lorg/codehaus/jackson/map/module/SimpleModule;->_name:Ljava/lang/String;

    .line 59
    iput-object p2, p0, Lorg/codehaus/jackson/map/module/SimpleModule;->_version:Lorg/codehaus/jackson/Version;

    .line 60
    return-void
.end method


# virtual methods
.method public addAbstractTypeMapping(Ljava/lang/Class;Ljava/lang/Class;)Lorg/codehaus/jackson/map/module/SimpleModule;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<+TT;>;)",
            "Lorg/codehaus/jackson/map/module/SimpleModule;"
        }
    .end annotation

    .prologue
    .line 181
    .local p1, "superType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "subType":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    iget-object v0, p0, Lorg/codehaus/jackson/map/module/SimpleModule;->_abstractTypes:Lorg/codehaus/jackson/map/module/SimpleAbstractTypeResolver;

    if-nez v0, :cond_0

    .line 182
    new-instance v0, Lorg/codehaus/jackson/map/module/SimpleAbstractTypeResolver;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/module/SimpleAbstractTypeResolver;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/map/module/SimpleModule;->_abstractTypes:Lorg/codehaus/jackson/map/module/SimpleAbstractTypeResolver;

    .line 185
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/module/SimpleModule;->_abstractTypes:Lorg/codehaus/jackson/map/module/SimpleAbstractTypeResolver;

    invoke-virtual {v0, p1, p2}, Lorg/codehaus/jackson/map/module/SimpleAbstractTypeResolver;->addMapping(Ljava/lang/Class;Ljava/lang/Class;)Lorg/codehaus/jackson/map/module/SimpleAbstractTypeResolver;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/module/SimpleModule;->_abstractTypes:Lorg/codehaus/jackson/map/module/SimpleAbstractTypeResolver;

    .line 186
    return-object p0
.end method

.method public addDeserializer(Ljava/lang/Class;Lorg/codehaus/jackson/map/JsonDeserializer;)Lorg/codehaus/jackson/map/module/SimpleModule;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<+TT;>;)",
            "Lorg/codehaus/jackson/map/module/SimpleModule;"
        }
    .end annotation

    .prologue
    .line 157
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "deser":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<+TT;>;"
    iget-object v0, p0, Lorg/codehaus/jackson/map/module/SimpleModule;->_deserializers:Lorg/codehaus/jackson/map/module/SimpleDeserializers;

    if-nez v0, :cond_0

    .line 158
    new-instance v0, Lorg/codehaus/jackson/map/module/SimpleDeserializers;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/module/SimpleDeserializers;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/map/module/SimpleModule;->_deserializers:Lorg/codehaus/jackson/map/module/SimpleDeserializers;

    .line 160
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/module/SimpleModule;->_deserializers:Lorg/codehaus/jackson/map/module/SimpleDeserializers;

    invoke-virtual {v0, p1, p2}, Lorg/codehaus/jackson/map/module/SimpleDeserializers;->addDeserializer(Ljava/lang/Class;Lorg/codehaus/jackson/map/JsonDeserializer;)V

    .line 161
    return-object p0
.end method

.method public addKeyDeserializer(Ljava/lang/Class;Lorg/codehaus/jackson/map/KeyDeserializer;)Lorg/codehaus/jackson/map/module/SimpleModule;
    .locals 1
    .param p2, "deser"    # Lorg/codehaus/jackson/map/KeyDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/codehaus/jackson/map/KeyDeserializer;",
            ")",
            "Lorg/codehaus/jackson/map/module/SimpleModule;"
        }
    .end annotation

    .prologue
    .line 166
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lorg/codehaus/jackson/map/module/SimpleModule;->_keyDeserializers:Lorg/codehaus/jackson/map/module/SimpleKeyDeserializers;

    if-nez v0, :cond_0

    .line 167
    new-instance v0, Lorg/codehaus/jackson/map/module/SimpleKeyDeserializers;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/module/SimpleKeyDeserializers;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/map/module/SimpleModule;->_keyDeserializers:Lorg/codehaus/jackson/map/module/SimpleKeyDeserializers;

    .line 169
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/module/SimpleModule;->_keyDeserializers:Lorg/codehaus/jackson/map/module/SimpleKeyDeserializers;

    invoke-virtual {v0, p1, p2}, Lorg/codehaus/jackson/map/module/SimpleKeyDeserializers;->addDeserializer(Ljava/lang/Class;Lorg/codehaus/jackson/map/KeyDeserializer;)Lorg/codehaus/jackson/map/module/SimpleKeyDeserializers;

    .line 170
    return-object p0
.end method

.method public addKeySerializer(Ljava/lang/Class;Lorg/codehaus/jackson/map/JsonSerializer;)Lorg/codehaus/jackson/map/module/SimpleModule;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<+TT;>;",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<TT;>;)",
            "Lorg/codehaus/jackson/map/module/SimpleModule;"
        }
    .end annotation

    .prologue
    .line 148
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    .local p2, "ser":Lorg/codehaus/jackson/map/JsonSerializer;, "Lorg/codehaus/jackson/map/JsonSerializer<TT;>;"
    iget-object v0, p0, Lorg/codehaus/jackson/map/module/SimpleModule;->_keySerializers:Lorg/codehaus/jackson/map/module/SimpleSerializers;

    if-nez v0, :cond_0

    .line 149
    new-instance v0, Lorg/codehaus/jackson/map/module/SimpleSerializers;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/module/SimpleSerializers;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/map/module/SimpleModule;->_keySerializers:Lorg/codehaus/jackson/map/module/SimpleSerializers;

    .line 151
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/module/SimpleModule;->_keySerializers:Lorg/codehaus/jackson/map/module/SimpleSerializers;

    invoke-virtual {v0, p1, p2}, Lorg/codehaus/jackson/map/module/SimpleSerializers;->addSerializer(Ljava/lang/Class;Lorg/codehaus/jackson/map/JsonSerializer;)V

    .line 152
    return-object p0
.end method

.method public addSerializer(Ljava/lang/Class;Lorg/codehaus/jackson/map/JsonSerializer;)Lorg/codehaus/jackson/map/module/SimpleModule;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<+TT;>;",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<TT;>;)",
            "Lorg/codehaus/jackson/map/module/SimpleModule;"
        }
    .end annotation

    .prologue
    .line 139
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    .local p2, "ser":Lorg/codehaus/jackson/map/JsonSerializer;, "Lorg/codehaus/jackson/map/JsonSerializer<TT;>;"
    iget-object v0, p0, Lorg/codehaus/jackson/map/module/SimpleModule;->_serializers:Lorg/codehaus/jackson/map/module/SimpleSerializers;

    if-nez v0, :cond_0

    .line 140
    new-instance v0, Lorg/codehaus/jackson/map/module/SimpleSerializers;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/module/SimpleSerializers;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/map/module/SimpleModule;->_serializers:Lorg/codehaus/jackson/map/module/SimpleSerializers;

    .line 142
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/module/SimpleModule;->_serializers:Lorg/codehaus/jackson/map/module/SimpleSerializers;

    invoke-virtual {v0, p1, p2}, Lorg/codehaus/jackson/map/module/SimpleSerializers;->addSerializer(Ljava/lang/Class;Lorg/codehaus/jackson/map/JsonSerializer;)V

    .line 143
    return-object p0
.end method

.method public addSerializer(Lorg/codehaus/jackson/map/JsonSerializer;)Lorg/codehaus/jackson/map/module/SimpleModule;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<*>;)",
            "Lorg/codehaus/jackson/map/module/SimpleModule;"
        }
    .end annotation

    .prologue
    .line 130
    .local p1, "ser":Lorg/codehaus/jackson/map/JsonSerializer;, "Lorg/codehaus/jackson/map/JsonSerializer<*>;"
    iget-object v0, p0, Lorg/codehaus/jackson/map/module/SimpleModule;->_serializers:Lorg/codehaus/jackson/map/module/SimpleSerializers;

    if-nez v0, :cond_0

    .line 131
    new-instance v0, Lorg/codehaus/jackson/map/module/SimpleSerializers;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/module/SimpleSerializers;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/map/module/SimpleModule;->_serializers:Lorg/codehaus/jackson/map/module/SimpleSerializers;

    .line 133
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/module/SimpleModule;->_serializers:Lorg/codehaus/jackson/map/module/SimpleSerializers;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/module/SimpleSerializers;->addSerializer(Lorg/codehaus/jackson/map/JsonSerializer;)V

    .line 134
    return-object p0
.end method

.method public addValueInstantiator(Ljava/lang/Class;Lorg/codehaus/jackson/map/deser/ValueInstantiator;)Lorg/codehaus/jackson/map/module/SimpleModule;
    .locals 1
    .param p2, "inst"    # Lorg/codehaus/jackson/map/deser/ValueInstantiator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/codehaus/jackson/map/deser/ValueInstantiator;",
            ")",
            "Lorg/codehaus/jackson/map/module/SimpleModule;"
        }
    .end annotation

    .prologue
    .line 198
    .local p1, "beanType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lorg/codehaus/jackson/map/module/SimpleModule;->_valueInstantiators:Lorg/codehaus/jackson/map/module/SimpleValueInstantiators;

    if-nez v0, :cond_0

    .line 199
    new-instance v0, Lorg/codehaus/jackson/map/module/SimpleValueInstantiators;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/module/SimpleValueInstantiators;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/map/module/SimpleModule;->_valueInstantiators:Lorg/codehaus/jackson/map/module/SimpleValueInstantiators;

    .line 201
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/module/SimpleModule;->_valueInstantiators:Lorg/codehaus/jackson/map/module/SimpleValueInstantiators;

    invoke-virtual {v0, p1, p2}, Lorg/codehaus/jackson/map/module/SimpleValueInstantiators;->addValueInstantiator(Ljava/lang/Class;Lorg/codehaus/jackson/map/deser/ValueInstantiator;)Lorg/codehaus/jackson/map/module/SimpleValueInstantiators;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/module/SimpleModule;->_valueInstantiators:Lorg/codehaus/jackson/map/module/SimpleValueInstantiators;

    .line 202
    return-object p0
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lorg/codehaus/jackson/map/module/SimpleModule;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public setAbstractTypes(Lorg/codehaus/jackson/map/module/SimpleAbstractTypeResolver;)V
    .locals 0
    .param p1, "atr"    # Lorg/codehaus/jackson/map/module/SimpleAbstractTypeResolver;

    .prologue
    .line 110
    iput-object p1, p0, Lorg/codehaus/jackson/map/module/SimpleModule;->_abstractTypes:Lorg/codehaus/jackson/map/module/SimpleAbstractTypeResolver;

    .line 111
    return-void
.end method

.method public setDeserializers(Lorg/codehaus/jackson/map/module/SimpleDeserializers;)V
    .locals 0
    .param p1, "d"    # Lorg/codehaus/jackson/map/module/SimpleDeserializers;

    .prologue
    .line 83
    iput-object p1, p0, Lorg/codehaus/jackson/map/module/SimpleModule;->_deserializers:Lorg/codehaus/jackson/map/module/SimpleDeserializers;

    .line 84
    return-void
.end method

.method public setKeyDeserializers(Lorg/codehaus/jackson/map/module/SimpleKeyDeserializers;)V
    .locals 0
    .param p1, "kd"    # Lorg/codehaus/jackson/map/module/SimpleKeyDeserializers;

    .prologue
    .line 101
    iput-object p1, p0, Lorg/codehaus/jackson/map/module/SimpleModule;->_keyDeserializers:Lorg/codehaus/jackson/map/module/SimpleKeyDeserializers;

    .line 102
    return-void
.end method

.method public setKeySerializers(Lorg/codehaus/jackson/map/module/SimpleSerializers;)V
    .locals 0
    .param p1, "ks"    # Lorg/codehaus/jackson/map/module/SimpleSerializers;

    .prologue
    .line 92
    iput-object p1, p0, Lorg/codehaus/jackson/map/module/SimpleModule;->_keySerializers:Lorg/codehaus/jackson/map/module/SimpleSerializers;

    .line 93
    return-void
.end method

.method public setMixInAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Lorg/codehaus/jackson/map/module/SimpleModule;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/codehaus/jackson/map/module/SimpleModule;"
        }
    .end annotation

    .prologue
    .line 215
    .local p1, "targetType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "mixinClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lorg/codehaus/jackson/map/module/SimpleModule;->_mixins:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 216
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/map/module/SimpleModule;->_mixins:Ljava/util/HashMap;

    .line 218
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/module/SimpleModule;->_mixins:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    return-object p0
.end method

.method public setSerializers(Lorg/codehaus/jackson/map/module/SimpleSerializers;)V
    .locals 0
    .param p1, "s"    # Lorg/codehaus/jackson/map/module/SimpleSerializers;

    .prologue
    .line 74
    iput-object p1, p0, Lorg/codehaus/jackson/map/module/SimpleModule;->_serializers:Lorg/codehaus/jackson/map/module/SimpleSerializers;

    .line 75
    return-void
.end method

.method public setValueInstantiators(Lorg/codehaus/jackson/map/module/SimpleValueInstantiators;)V
    .locals 0
    .param p1, "svi"    # Lorg/codehaus/jackson/map/module/SimpleValueInstantiators;

    .prologue
    .line 119
    iput-object p1, p0, Lorg/codehaus/jackson/map/module/SimpleModule;->_valueInstantiators:Lorg/codehaus/jackson/map/module/SimpleValueInstantiators;

    .line 120
    return-void
.end method

.method public setupModule(Lorg/codehaus/jackson/map/Module$SetupContext;)V
    .locals 4
    .param p1, "context"    # Lorg/codehaus/jackson/map/Module$SetupContext;

    .prologue
    .line 236
    iget-object v2, p0, Lorg/codehaus/jackson/map/module/SimpleModule;->_serializers:Lorg/codehaus/jackson/map/module/SimpleSerializers;

    if-eqz v2, :cond_0

    .line 237
    iget-object v2, p0, Lorg/codehaus/jackson/map/module/SimpleModule;->_serializers:Lorg/codehaus/jackson/map/module/SimpleSerializers;

    invoke-interface {p1, v2}, Lorg/codehaus/jackson/map/Module$SetupContext;->addSerializers(Lorg/codehaus/jackson/map/Serializers;)V

    .line 239
    :cond_0
    iget-object v2, p0, Lorg/codehaus/jackson/map/module/SimpleModule;->_deserializers:Lorg/codehaus/jackson/map/module/SimpleDeserializers;

    if-eqz v2, :cond_1

    .line 240
    iget-object v2, p0, Lorg/codehaus/jackson/map/module/SimpleModule;->_deserializers:Lorg/codehaus/jackson/map/module/SimpleDeserializers;

    invoke-interface {p1, v2}, Lorg/codehaus/jackson/map/Module$SetupContext;->addDeserializers(Lorg/codehaus/jackson/map/Deserializers;)V

    .line 242
    :cond_1
    iget-object v2, p0, Lorg/codehaus/jackson/map/module/SimpleModule;->_keySerializers:Lorg/codehaus/jackson/map/module/SimpleSerializers;

    if-eqz v2, :cond_2

    .line 243
    iget-object v2, p0, Lorg/codehaus/jackson/map/module/SimpleModule;->_keySerializers:Lorg/codehaus/jackson/map/module/SimpleSerializers;

    invoke-interface {p1, v2}, Lorg/codehaus/jackson/map/Module$SetupContext;->addKeySerializers(Lorg/codehaus/jackson/map/Serializers;)V

    .line 245
    :cond_2
    iget-object v2, p0, Lorg/codehaus/jackson/map/module/SimpleModule;->_keyDeserializers:Lorg/codehaus/jackson/map/module/SimpleKeyDeserializers;

    if-eqz v2, :cond_3

    .line 246
    iget-object v2, p0, Lorg/codehaus/jackson/map/module/SimpleModule;->_keyDeserializers:Lorg/codehaus/jackson/map/module/SimpleKeyDeserializers;

    invoke-interface {p1, v2}, Lorg/codehaus/jackson/map/Module$SetupContext;->addKeyDeserializers(Lorg/codehaus/jackson/map/KeyDeserializers;)V

    .line 248
    :cond_3
    iget-object v2, p0, Lorg/codehaus/jackson/map/module/SimpleModule;->_abstractTypes:Lorg/codehaus/jackson/map/module/SimpleAbstractTypeResolver;

    if-eqz v2, :cond_4

    .line 249
    iget-object v2, p0, Lorg/codehaus/jackson/map/module/SimpleModule;->_abstractTypes:Lorg/codehaus/jackson/map/module/SimpleAbstractTypeResolver;

    invoke-interface {p1, v2}, Lorg/codehaus/jackson/map/Module$SetupContext;->addAbstractTypeResolver(Lorg/codehaus/jackson/map/AbstractTypeResolver;)V

    .line 251
    :cond_4
    iget-object v2, p0, Lorg/codehaus/jackson/map/module/SimpleModule;->_valueInstantiators:Lorg/codehaus/jackson/map/module/SimpleValueInstantiators;

    if-eqz v2, :cond_5

    .line 252
    iget-object v2, p0, Lorg/codehaus/jackson/map/module/SimpleModule;->_valueInstantiators:Lorg/codehaus/jackson/map/module/SimpleValueInstantiators;

    invoke-interface {p1, v2}, Lorg/codehaus/jackson/map/Module$SetupContext;->addValueInstantiators(Lorg/codehaus/jackson/map/deser/ValueInstantiators;)V

    .line 254
    :cond_5
    iget-object v2, p0, Lorg/codehaus/jackson/map/module/SimpleModule;->_mixins:Ljava/util/HashMap;

    if-eqz v2, :cond_6

    .line 255
    iget-object v2, p0, Lorg/codehaus/jackson/map/module/SimpleModule;->_mixins:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 256
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<*>;Ljava/lang/Class<*>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    invoke-interface {p1, v2, v3}, Lorg/codehaus/jackson/map/Module$SetupContext;->setMixInAnnotations(Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_0

    .line 259
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<*>;Ljava/lang/Class<*>;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_6
    return-void
.end method

.method public version()Lorg/codehaus/jackson/Version;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lorg/codehaus/jackson/map/module/SimpleModule;->_version:Lorg/codehaus/jackson/Version;

    return-object v0
.end method
