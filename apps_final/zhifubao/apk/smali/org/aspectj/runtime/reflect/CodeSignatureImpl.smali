.class abstract Lorg/aspectj/runtime/reflect/CodeSignatureImpl;
.super Lorg/aspectj/runtime/reflect/MemberSignatureImpl;

# interfaces
.implements Lorg/aspectj/lang/reflect/CodeSignature;


# instance fields
.field exceptionTypes:[Ljava/lang/Class;

.field parameterNames:[Ljava/lang/String;

.field parameterTypes:[Ljava/lang/Class;


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/String;[Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/aspectj/runtime/reflect/MemberSignatureImpl;-><init>(ILjava/lang/String;Ljava/lang/Class;)V

    iput-object p4, p0, Lorg/aspectj/runtime/reflect/CodeSignatureImpl;->parameterTypes:[Ljava/lang/Class;

    iput-object p5, p0, Lorg/aspectj/runtime/reflect/CodeSignatureImpl;->parameterNames:[Ljava/lang/String;

    iput-object p6, p0, Lorg/aspectj/runtime/reflect/CodeSignatureImpl;->exceptionTypes:[Ljava/lang/Class;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/aspectj/runtime/reflect/MemberSignatureImpl;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getExceptionTypes()[Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lorg/aspectj/runtime/reflect/CodeSignatureImpl;->exceptionTypes:[Ljava/lang/Class;

    if-nez v0, :cond_0

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lorg/aspectj/runtime/reflect/SignatureImpl;->extractTypes(I)[Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/aspectj/runtime/reflect/CodeSignatureImpl;->exceptionTypes:[Ljava/lang/Class;

    :cond_0
    iget-object v0, p0, Lorg/aspectj/runtime/reflect/CodeSignatureImpl;->exceptionTypes:[Ljava/lang/Class;

    return-object v0
.end method

.method public getParameterNames()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/aspectj/runtime/reflect/CodeSignatureImpl;->parameterNames:[Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/aspectj/runtime/reflect/SignatureImpl;->extractStrings(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/aspectj/runtime/reflect/CodeSignatureImpl;->parameterNames:[Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lorg/aspectj/runtime/reflect/CodeSignatureImpl;->parameterNames:[Ljava/lang/String;

    return-object v0
.end method

.method public getParameterTypes()[Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lorg/aspectj/runtime/reflect/CodeSignatureImpl;->parameterTypes:[Ljava/lang/Class;

    if-nez v0, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/aspectj/runtime/reflect/SignatureImpl;->extractTypes(I)[Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/aspectj/runtime/reflect/CodeSignatureImpl;->parameterTypes:[Ljava/lang/Class;

    :cond_0
    iget-object v0, p0, Lorg/aspectj/runtime/reflect/CodeSignatureImpl;->parameterTypes:[Ljava/lang/Class;

    return-object v0
.end method
