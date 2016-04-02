.class public abstract Lorg/apache/james/mime4j/field/address/Address;
.super Ljava/lang/Object;
.source "Address.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x8ccbe18f7550292L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lorg/apache/james/mime4j/field/address/Address;
    .locals 4
    .param p0, "rawAddressString"    # Ljava/lang/String;

    .prologue
    .line 108
    new-instance v1, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;

    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;-><init>(Ljava/io/Reader;)V

    .line 111
    .local v1, "parser":Lorg/apache/james/mime4j/field/address/parser/AddressListParser;
    :try_start_0
    invoke-static {}, Lorg/apache/james/mime4j/field/address/Builder;->getInstance()Lorg/apache/james/mime4j/field/address/Builder;

    move-result-object v2

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->parseAddress()Lorg/apache/james/mime4j/field/address/parser/ASTaddress;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/james/mime4j/field/address/Builder;->buildAddress(Lorg/apache/james/mime4j/field/address/parser/ASTaddress;)Lorg/apache/james/mime4j/field/address/Address;
    :try_end_0
    .catch Lorg/apache/james/mime4j/field/address/parser/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Lorg/apache/james/mime4j/field/address/parser/ParseException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method final addMailboxesTo(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/james/mime4j/field/address/Mailbox;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Lorg/apache/james/mime4j/field/address/Mailbox;>;"
    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/field/address/Address;->doAddMailboxesTo(Ljava/util/List;)V

    .line 44
    return-void
.end method

.method protected abstract doAddMailboxesTo(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/james/mime4j/field/address/Mailbox;",
            ">;)V"
        }
    .end annotation
.end method

.method public final getDisplayString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/field/address/Address;->getDisplayString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getDisplayString(Z)Ljava/lang/String;
.end method

.method public abstract getEncodedString()Ljava/lang/String;
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/field/address/Address;->getDisplayString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
