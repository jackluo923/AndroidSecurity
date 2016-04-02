.class public Lorg/apache/james/mime4j/field/mimeversion/parser/Token;
.super Ljava/lang/Object;
.source "Token.java"


# instance fields
.field public beginColumn:I

.field public beginLine:I

.field public endColumn:I

.field public endLine:I

.field public image:Ljava/lang/String;

.field public kind:I

.field public next:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

.field public specialToken:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final newToken(I)Lorg/apache/james/mime4j/field/mimeversion/parser/Token;
    .locals 1
    .param p0, "ofKind"    # I

    .prologue
    .line 93
    .line 95
    new-instance v0, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    invoke-direct {v0}, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;-><init>()V

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;->image:Ljava/lang/String;

    return-object v0
.end method
