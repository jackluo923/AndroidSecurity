.class final Lorg/aspectj/internal/lang/reflect/StringToType$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/reflect/ParameterizedType;


# instance fields
.field final synthetic val$baseClass:Ljava/lang/Class;

.field final synthetic val$typeParams:[Ljava/lang/reflect/Type;


# direct methods
.method constructor <init>([Ljava/lang/reflect/Type;Ljava/lang/Class;)V
    .locals 0

    iput-object p1, p0, Lorg/aspectj/internal/lang/reflect/StringToType$1;->val$typeParams:[Ljava/lang/reflect/Type;

    iput-object p2, p0, Lorg/aspectj/internal/lang/reflect/StringToType$1;->val$baseClass:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getActualTypeArguments()[Ljava/lang/reflect/Type;
    .locals 1

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/StringToType$1;->val$typeParams:[Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public final getOwnerType()Ljava/lang/reflect/Type;
    .locals 1

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/StringToType$1;->val$baseClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public final getRawType()Ljava/lang/reflect/Type;
    .locals 1

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/StringToType$1;->val$baseClass:Ljava/lang/Class;

    return-object v0
.end method
