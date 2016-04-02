.class Lorg/aspectj/runtime/reflect/LockSignatureImpl;
.super Lorg/aspectj/runtime/reflect/SignatureImpl;

# interfaces
.implements Lorg/aspectj/lang/reflect/LockSignature;


# instance fields
.field private a:Ljava/lang/Class;


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 2

    const/16 v0, 0x8

    const-string/jumbo v1, "lock"

    invoke-direct {p0, v0, v1, p1}, Lorg/aspectj/runtime/reflect/SignatureImpl;-><init>(ILjava/lang/String;Ljava/lang/Class;)V

    iput-object p1, p0, Lorg/aspectj/runtime/reflect/LockSignatureImpl;->a:Ljava/lang/Class;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/aspectj/runtime/reflect/SignatureImpl;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected createToString(Lorg/aspectj/runtime/reflect/StringMaker;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/aspectj/runtime/reflect/LockSignatureImpl;->a:Ljava/lang/Class;

    if-nez v0, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/aspectj/runtime/reflect/SignatureImpl;->extractType(I)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/aspectj/runtime/reflect/LockSignatureImpl;->a:Ljava/lang/Class;

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    const-string/jumbo v1, "lock("

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/aspectj/runtime/reflect/LockSignatureImpl;->a:Ljava/lang/Class;

    invoke-virtual {p1, v1}, Lorg/aspectj/runtime/reflect/StringMaker;->makeTypeName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParameterType()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lorg/aspectj/runtime/reflect/LockSignatureImpl;->a:Ljava/lang/Class;

    if-nez v0, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/aspectj/runtime/reflect/SignatureImpl;->extractType(I)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/aspectj/runtime/reflect/LockSignatureImpl;->a:Ljava/lang/Class;

    :cond_0
    iget-object v0, p0, Lorg/aspectj/runtime/reflect/LockSignatureImpl;->a:Ljava/lang/Class;

    return-object v0
.end method
