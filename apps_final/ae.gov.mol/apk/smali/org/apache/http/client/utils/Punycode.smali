.class public Lorg/apache/http/client/utils/Punycode;
.super Ljava/lang/Object;
.source "Punycode.java"


# annotations
.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


# static fields
.field private static final impl:Lorg/apache/http/client/utils/Idn;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 47
    :try_start_0
    new-instance v0, Lorg/apache/http/client/utils/JdkIdn;

    invoke-direct {v0}, Lorg/apache/http/client/utils/JdkIdn;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .local v0, "_impl":Lorg/apache/http/client/utils/Idn;
    :goto_0
    sput-object v0, Lorg/apache/http/client/utils/Punycode;->impl:Lorg/apache/http/client/utils/Idn;

    .line 52
    return-void

    .line 48
    .end local v0    # "_impl":Lorg/apache/http/client/utils/Idn;
    :catch_0
    move-exception v1

    .line 49
    .local v1, "e":Ljava/lang/Exception;
    new-instance v0, Lorg/apache/http/client/utils/Rfc3492Idn;

    invoke-direct {v0}, Lorg/apache/http/client/utils/Rfc3492Idn;-><init>()V

    .restart local v0    # "_impl":Lorg/apache/http/client/utils/Idn;
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toUnicode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "punycode"    # Ljava/lang/String;

    .prologue
    .line 55
    sget-object v0, Lorg/apache/http/client/utils/Punycode;->impl:Lorg/apache/http/client/utils/Idn;

    invoke-interface {v0, p0}, Lorg/apache/http/client/utils/Idn;->toUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
