.class public Lorg/apache/james/mime4j/field/address/parser/ASTname_addr;
.super Lorg/apache/james/mime4j/field/address/parser/SimpleNode;
.source "ASTname_addr.java"


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 7
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/field/address/parser/SimpleNode;-><init>(I)V

    .line 8
    return-void
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/field/address/parser/AddressListParser;I)V
    .locals 0
    .param p1, "p"    # Lorg/apache/james/mime4j/field/address/parser/AddressListParser;
    .param p2, "id"    # I

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Lorg/apache/james/mime4j/field/address/parser/SimpleNode;-><init>(Lorg/apache/james/mime4j/field/address/parser/AddressListParser;I)V

    .line 12
    return-void
.end method


# virtual methods
.method public jjtAccept(Lorg/apache/james/mime4j/field/address/parser/AddressListParserVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "visitor"    # Lorg/apache/james/mime4j/field/address/parser/AddressListParserVisitor;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 17
    invoke-interface {p1, p0, p2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserVisitor;->visit(Lorg/apache/james/mime4j/field/address/parser/ASTname_addr;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
