.class public Lorg/apache/james/mime4j/storage/DefaultStorageProvider;
.super Ljava/lang/Object;
.source "DefaultStorageProvider.java"


# static fields
.field public static final DEFAULT_STORAGE_PROVIDER_PROPERTY:Ljava/lang/String; = "org.apache.james.mime4j.defaultStorageProvider"

.field private static volatile instance:Lorg/apache/james/mime4j/storage/StorageProvider;

.field private static log:Lorg/apache/commons/logging/Log;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lorg/apache/james/mime4j/storage/DefaultStorageProvider;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/storage/DefaultStorageProvider;->log:Lorg/apache/commons/logging/Log;

    .line 46
    const/4 v0, 0x0

    sput-object v0, Lorg/apache/james/mime4j/storage/DefaultStorageProvider;->instance:Lorg/apache/james/mime4j/storage/StorageProvider;

    .line 49
    invoke-static {}, Lorg/apache/james/mime4j/storage/DefaultStorageProvider;->initialize()V

    .line 50
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method public static getInstance()Lorg/apache/james/mime4j/storage/StorageProvider;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lorg/apache/james/mime4j/storage/DefaultStorageProvider;->instance:Lorg/apache/james/mime4j/storage/StorageProvider;

    return-object v0
.end method

.method private static initialize()V
    .locals 6

    .prologue
    .line 79
    const-string v3, "org.apache.james.mime4j.defaultStorageProvider"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, "clazz":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 82
    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/james/mime4j/storage/StorageProvider;

    sput-object v3, Lorg/apache/james/mime4j/storage/DefaultStorageProvider;->instance:Lorg/apache/james/mime4j/storage/StorageProvider;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :cond_0
    :goto_0
    sget-object v3, Lorg/apache/james/mime4j/storage/DefaultStorageProvider;->instance:Lorg/apache/james/mime4j/storage/StorageProvider;

    if-nez v3, :cond_1

    .line 90
    new-instance v0, Lorg/apache/james/mime4j/storage/TempFileStorageProvider;

    invoke-direct {v0}, Lorg/apache/james/mime4j/storage/TempFileStorageProvider;-><init>()V

    .line 91
    .local v0, "backend":Lorg/apache/james/mime4j/storage/StorageProvider;
    new-instance v3, Lorg/apache/james/mime4j/storage/ThresholdStorageProvider;

    const/16 v4, 0x400

    invoke-direct {v3, v0, v4}, Lorg/apache/james/mime4j/storage/ThresholdStorageProvider;-><init>(Lorg/apache/james/mime4j/storage/StorageProvider;I)V

    sput-object v3, Lorg/apache/james/mime4j/storage/DefaultStorageProvider;->instance:Lorg/apache/james/mime4j/storage/StorageProvider;

    .line 93
    .end local v0    # "backend":Lorg/apache/james/mime4j/storage/StorageProvider;
    :cond_1
    return-void

    .line 84
    :catch_0
    move-exception v2

    .line 85
    .local v2, "e":Ljava/lang/Exception;
    sget-object v3, Lorg/apache/james/mime4j/storage/DefaultStorageProvider;->log:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to create or instantiate StorageProvider class \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'. Using default instead."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static reset()V
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    sput-object v0, Lorg/apache/james/mime4j/storage/DefaultStorageProvider;->instance:Lorg/apache/james/mime4j/storage/StorageProvider;

    .line 98
    invoke-static {}, Lorg/apache/james/mime4j/storage/DefaultStorageProvider;->initialize()V

    .line 99
    return-void
.end method

.method public static setInstance(Lorg/apache/james/mime4j/storage/StorageProvider;)V
    .locals 1
    .param p0, "instance"    # Lorg/apache/james/mime4j/storage/StorageProvider;

    .prologue
    .line 71
    if-nez p0, :cond_0

    .line 72
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 75
    :cond_0
    sput-object p0, Lorg/apache/james/mime4j/storage/DefaultStorageProvider;->instance:Lorg/apache/james/mime4j/storage/StorageProvider;

    .line 76
    return-void
.end method
