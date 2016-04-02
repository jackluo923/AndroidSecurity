.class public final Lorg/apache/james/mime4j/parser/MimeEntityConfig;
.super Ljava/lang/Object;
.source "MimeEntityConfig.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private countLineNumbers:Z

.field private maxContentLen:J

.field private maxHeaderCount:I

.field private maxLineLen:I

.field private maximalBodyDescriptor:Z

.field private strictParsing:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v0, 0x3e8

    const/4 v2, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-boolean v2, p0, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->maximalBodyDescriptor:Z

    .line 38
    iput-boolean v2, p0, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->strictParsing:Z

    .line 39
    iput v0, p0, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->maxLineLen:I

    .line 40
    iput v0, p0, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->maxHeaderCount:I

    .line 41
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->maxContentLen:J

    .line 42
    iput-boolean v2, p0, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->countLineNumbers:Z

    .line 43
    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 27
    invoke-virtual {p0}, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->clone()Lorg/apache/james/mime4j/parser/MimeEntityConfig;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/james/mime4j/parser/MimeEntityConfig;
    .locals 2

    .prologue
    .line 165
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/james/mime4j/parser/MimeEntityConfig;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 166
    :catch_0
    move-exception v0

    .line 168
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1}, Ljava/lang/InternalError;-><init>()V

    throw v1
.end method

.method public getMaxContentLen()J
    .locals 2

    .prologue
    .line 139
    iget-wide v0, p0, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->maxContentLen:J

    return-wide v0
.end method

.method public getMaxHeaderCount()I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->maxHeaderCount:I

    return v0
.end method

.method public getMaxLineLen()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->maxLineLen:I

    return v0
.end method

.method public isCountLineNumbers()Z
    .locals 1

    .prologue
    .line 159
    iget-boolean v0, p0, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->countLineNumbers:Z

    return v0
.end method

.method public isMaximalBodyDescriptor()Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->maximalBodyDescriptor:Z

    return v0
.end method

.method public isStrictParsing()Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->strictParsing:Z

    return v0
.end method

.method public setCountLineNumbers(Z)V
    .locals 0
    .param p1, "countLineNumbers"    # Z

    .prologue
    .line 150
    iput-boolean p1, p0, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->countLineNumbers:Z

    .line 151
    return-void
.end method

.method public setMaxContentLen(J)V
    .locals 0
    .param p1, "maxContentLen"    # J

    .prologue
    .line 129
    iput-wide p1, p0, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->maxContentLen:J

    .line 130
    return-void
.end method

.method public setMaxHeaderCount(I)V
    .locals 0
    .param p1, "maxHeaderCount"    # I

    .prologue
    .line 107
    iput p1, p0, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->maxHeaderCount:I

    .line 108
    return-void
.end method

.method public setMaxLineLen(I)V
    .locals 0
    .param p1, "maxLineLen"    # I

    .prologue
    .line 85
    iput p1, p0, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->maxLineLen:I

    .line 86
    return-void
.end method

.method public setMaximalBodyDescriptor(Z)V
    .locals 0
    .param p1, "maximalBodyDescriptor"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->maximalBodyDescriptor:Z

    .line 51
    return-void
.end method

.method public setStrictParsing(Z)V
    .locals 0
    .param p1, "strictParsing"    # Z

    .prologue
    .line 63
    iput-boolean p1, p0, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->strictParsing:Z

    .line 64
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[max body descriptor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->maximalBodyDescriptor:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", strict parsing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->strictParsing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", max line length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->maxLineLen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", max header count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->maxHeaderCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", max content length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->maxContentLen:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", count line numbers: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->countLineNumbers:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
