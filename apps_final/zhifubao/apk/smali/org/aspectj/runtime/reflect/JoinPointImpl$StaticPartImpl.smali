.class Lorg/aspectj/runtime/reflect/JoinPointImpl$StaticPartImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/aspectj/lang/JoinPoint$StaticPart;


# instance fields
.field private a:I

.field kind:Ljava/lang/String;

.field signature:Lorg/aspectj/lang/Signature;

.field sourceLocation:Lorg/aspectj/lang/reflect/SourceLocation;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lorg/aspectj/lang/Signature;Lorg/aspectj/lang/reflect/SourceLocation;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/aspectj/runtime/reflect/JoinPointImpl$StaticPartImpl;->kind:Ljava/lang/String;

    iput-object p3, p0, Lorg/aspectj/runtime/reflect/JoinPointImpl$StaticPartImpl;->signature:Lorg/aspectj/lang/Signature;

    iput-object p4, p0, Lorg/aspectj/runtime/reflect/JoinPointImpl$StaticPartImpl;->sourceLocation:Lorg/aspectj/lang/reflect/SourceLocation;

    iput p1, p0, Lorg/aspectj/runtime/reflect/JoinPointImpl$StaticPartImpl;->a:I

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    iget v0, p0, Lorg/aspectj/runtime/reflect/JoinPointImpl$StaticPartImpl;->a:I

    return v0
.end method

.method public getKind()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/aspectj/runtime/reflect/JoinPointImpl$StaticPartImpl;->kind:Ljava/lang/String;

    return-object v0
.end method

.method public getSignature()Lorg/aspectj/lang/Signature;
    .locals 1

    iget-object v0, p0, Lorg/aspectj/runtime/reflect/JoinPointImpl$StaticPartImpl;->signature:Lorg/aspectj/lang/Signature;

    return-object v0
.end method

.method public getSourceLocation()Lorg/aspectj/lang/reflect/SourceLocation;
    .locals 1

    iget-object v0, p0, Lorg/aspectj/runtime/reflect/JoinPointImpl$StaticPartImpl;->sourceLocation:Lorg/aspectj/lang/reflect/SourceLocation;

    return-object v0
.end method

.method public final toLongString()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/aspectj/runtime/reflect/StringMaker;->longStringMaker:Lorg/aspectj/runtime/reflect/StringMaker;

    invoke-virtual {p0, v0}, Lorg/aspectj/runtime/reflect/JoinPointImpl$StaticPartImpl;->toString(Lorg/aspectj/runtime/reflect/StringMaker;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toShortString()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/aspectj/runtime/reflect/StringMaker;->shortStringMaker:Lorg/aspectj/runtime/reflect/StringMaker;

    invoke-virtual {p0, v0}, Lorg/aspectj/runtime/reflect/JoinPointImpl$StaticPartImpl;->toString(Lorg/aspectj/runtime/reflect/StringMaker;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/aspectj/runtime/reflect/StringMaker;->middleStringMaker:Lorg/aspectj/runtime/reflect/StringMaker;

    invoke-virtual {p0, v0}, Lorg/aspectj/runtime/reflect/JoinPointImpl$StaticPartImpl;->toString(Lorg/aspectj/runtime/reflect/StringMaker;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method toString(Lorg/aspectj/runtime/reflect/StringMaker;)Ljava/lang/String;
    .locals 2

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lorg/aspectj/runtime/reflect/JoinPointImpl$StaticPartImpl;->getKind()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/aspectj/runtime/reflect/StringMaker;->makeKindName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v0, "("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/aspectj/runtime/reflect/JoinPointImpl$StaticPartImpl;->getSignature()Lorg/aspectj/lang/Signature;

    move-result-object v0

    check-cast v0, Lorg/aspectj/runtime/reflect/SignatureImpl;

    invoke-virtual {v0, p1}, Lorg/aspectj/runtime/reflect/SignatureImpl;->toString(Lorg/aspectj/runtime/reflect/StringMaker;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
