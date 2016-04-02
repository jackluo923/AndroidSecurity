.class public Lorg/codehaus/jackson/map/deser/ValueInstantiators$Base;
.super Ljava/lang/Object;
.source "ValueInstantiators.java"

# interfaces
.implements Lorg/codehaus/jackson/map/deser/ValueInstantiators;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codehaus/jackson/map/deser/ValueInstantiators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Base"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public findValueInstantiator(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/BeanDescription;Lorg/codehaus/jackson/map/deser/ValueInstantiator;)Lorg/codehaus/jackson/map/deser/ValueInstantiator;
    .locals 0
    .param p1, "config"    # Lorg/codehaus/jackson/map/DeserializationConfig;
    .param p2, "beanDesc"    # Lorg/codehaus/jackson/map/BeanDescription;
    .param p3, "defaultInstantiator"    # Lorg/codehaus/jackson/map/deser/ValueInstantiator;

    .prologue
    .line 49
    return-object p3
.end method
