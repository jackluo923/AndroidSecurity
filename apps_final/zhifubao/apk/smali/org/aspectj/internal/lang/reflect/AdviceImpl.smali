.class public Lorg/aspectj/internal/lang/reflect/AdviceImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/aspectj/lang/reflect/Advice;


# instance fields
.field private final a:Lorg/aspectj/lang/reflect/AdviceKind;

.field private final b:Ljava/lang/reflect/Method;

.field private c:Lorg/aspectj/lang/reflect/PointcutExpression;

.field private d:Z

.field private e:[Ljava/lang/reflect/Type;

.field private f:[Lorg/aspectj/lang/reflect/AjType;

.field private g:[Lorg/aspectj/lang/reflect/AjType;


# direct methods
.method protected constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/String;Lorg/aspectj/lang/reflect/AdviceKind;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->d:Z

    iput-object p3, p0, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->a:Lorg/aspectj/lang/reflect/AdviceKind;

    iput-object p1, p0, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->b:Ljava/lang/reflect/Method;

    new-instance v0, Lorg/aspectj/internal/lang/reflect/PointcutExpressionImpl;

    invoke-direct {v0, p2}, Lorg/aspectj/internal/lang/reflect/PointcutExpressionImpl;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->c:Lorg/aspectj/lang/reflect/PointcutExpression;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/String;Lorg/aspectj/lang/reflect/AdviceKind;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lorg/aspectj/internal/lang/reflect/AdviceImpl;-><init>(Ljava/lang/reflect/Method;Ljava/lang/String;Lorg/aspectj/lang/reflect/AdviceKind;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->d:Z

    return-void
.end method


# virtual methods
.method public getDeclaringType()Lorg/aspectj/lang/reflect/AjType;
    .locals 1

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->b:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/lang/reflect/AjTypeSystem;->getAjType(Ljava/lang/Class;)Lorg/aspectj/lang/reflect/AjType;

    move-result-object v0

    return-object v0
.end method

.method public getExceptionTypes()[Lorg/aspectj/lang/reflect/AjType;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lorg/aspectj/lang/reflect/AjType",
            "<*>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->g:[Lorg/aspectj/lang/reflect/AjType;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->b:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getExceptionTypes()[Ljava/lang/Class;

    move-result-object v1

    array-length v0, v1

    new-array v0, v0, [Lorg/aspectj/lang/reflect/AjType;

    iput-object v0, p0, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->g:[Lorg/aspectj/lang/reflect/AjType;

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->g:[Lorg/aspectj/lang/reflect/AjType;

    aget-object v3, v1, v0

    invoke-static {v3}, Lorg/aspectj/lang/reflect/AjTypeSystem;->getAjType(Ljava/lang/Class;)Lorg/aspectj/lang/reflect/AjType;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->g:[Lorg/aspectj/lang/reflect/AjType;

    return-object v0
.end method

.method public getGenericParameterTypes()[Ljava/lang/reflect/Type;
    .locals 7

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->e:[Ljava/lang/reflect/Type;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->b:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v4

    array-length v5, v4

    move v3, v2

    move v1, v2

    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v0, v4, v3

    instance-of v6, v0, Ljava/lang/Class;

    if-eqz v6, :cond_3

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v6, "org.aspectj.runtime.internal"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    add-int/lit8 v0, v1, 0x1

    :goto_1
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_0

    :cond_0
    array-length v0, v4

    sub-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/reflect/Type;

    iput-object v0, p0, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->e:[Ljava/lang/reflect/Type;

    move v1, v2

    :goto_2
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->e:[Ljava/lang/reflect/Type;

    array-length v0, v0

    if-ge v1, v0, :cond_2

    aget-object v0, v4, v1

    instance-of v0, v0, Ljava/lang/Class;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->e:[Ljava/lang/reflect/Type;

    aget-object v0, v4, v1

    check-cast v0, Ljava/lang/Class;

    invoke-static {v0}, Lorg/aspectj/lang/reflect/AjTypeSystem;->getAjType(Ljava/lang/Class;)Lorg/aspectj/lang/reflect/AjType;

    move-result-object v0

    aput-object v0, v2, v1

    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->e:[Ljava/lang/reflect/Type;

    aget-object v2, v4, v1

    aput-object v2, v0, v1

    goto :goto_3

    :cond_2
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->e:[Ljava/lang/reflect/Type;

    return-object v0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public getKind()Lorg/aspectj/lang/reflect/AdviceKind;
    .locals 1

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->a:Lorg/aspectj/lang/reflect/AdviceKind;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->b:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ajc$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, ""

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->b:Ljava/lang/reflect/Method;

    const-class v2, Lorg/aspectj/lang/annotation/AdviceName;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/aspectj/lang/annotation/AdviceName;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/aspectj/lang/annotation/AdviceName;->value()Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public getParameterTypes()[Lorg/aspectj/lang/reflect/AjType;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lorg/aspectj/lang/reflect/AjType",
            "<*>;"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->f:[Lorg/aspectj/lang/reflect/AjType;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->b:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    array-length v4, v3

    move v2, v1

    move v0, v1

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v5, v3, v2

    invoke-virtual {v5}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "org.aspectj.runtime.internal"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    array-length v2, v3

    sub-int v0, v2, v0

    new-array v0, v0, [Lorg/aspectj/lang/reflect/AjType;

    iput-object v0, p0, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->f:[Lorg/aspectj/lang/reflect/AjType;

    move v0, v1

    :goto_1
    iget-object v1, p0, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->f:[Lorg/aspectj/lang/reflect/AjType;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->f:[Lorg/aspectj/lang/reflect/AjType;

    aget-object v2, v3, v0

    invoke-static {v2}, Lorg/aspectj/lang/reflect/AjTypeSystem;->getAjType(Ljava/lang/Class;)Lorg/aspectj/lang/reflect/AjType;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->f:[Lorg/aspectj/lang/reflect/AjType;

    return-object v0
.end method

.method public getPointcutExpression()Lorg/aspectj/lang/reflect/PointcutExpression;
    .locals 1

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->c:Lorg/aspectj/lang/reflect/PointcutExpression;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    const/4 v1, 0x0

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string/jumbo v0, "@AdviceName(\""

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v0, "\") "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->getKind()Lorg/aspectj/lang/reflect/AdviceKind;

    move-result-object v0

    sget-object v2, Lorg/aspectj/lang/reflect/AdviceKind;->AROUND:Lorg/aspectj/lang/reflect/AdviceKind;

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->b:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    sget-object v0, Lorg/aspectj/internal/lang/reflect/AdviceImpl$1;->$SwitchMap$org$aspectj$lang$reflect$AdviceKind:[I

    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->getKind()Lorg/aspectj/lang/reflect/AdviceKind;

    move-result-object v2

    invoke-virtual {v2}, Lorg/aspectj/lang/reflect/AdviceKind;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->getParameterTypes()[Lorg/aspectj/lang/reflect/AjType;

    move-result-object v4

    array-length v0, v4

    iget-boolean v2, p0, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->d:Z

    if-eqz v2, :cond_2

    add-int/lit8 v0, v0, -0x1

    :cond_2
    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_4

    aget-object v5, v4, v2

    invoke-interface {v5}, Lorg/aspectj/lang/reflect/AjType;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v5, v2, 0x1

    if-ge v5, v0, :cond_3

    const-string/jumbo v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :pswitch_0
    const-string/jumbo v0, "after("

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :pswitch_1
    const-string/jumbo v0, "after("

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :pswitch_2
    const-string/jumbo v0, "after("

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :pswitch_3
    const-string/jumbo v0, "around("

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :pswitch_4
    const-string/jumbo v0, "before("

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_4
    const-string/jumbo v2, ") "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v2, Lorg/aspectj/internal/lang/reflect/AdviceImpl$1;->$SwitchMap$org$aspectj$lang$reflect$AdviceKind:[I

    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->getKind()Lorg/aspectj/lang/reflect/AdviceKind;

    move-result-object v5

    invoke-virtual {v5}, Lorg/aspectj/lang/reflect/AdviceKind;->ordinal()I

    move-result v5

    aget v2, v2, v5

    packed-switch v2, :pswitch_data_1

    :cond_5
    :goto_2
    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->getExceptionTypes()[Lorg/aspectj/lang/reflect/AjType;

    move-result-object v2

    array-length v0, v2

    if-lez v0, :cond_9

    const-string/jumbo v0, "throws "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v1

    :goto_3
    array-length v1, v2

    if-ge v0, v1, :cond_8

    aget-object v1, v2, v0

    invoke-interface {v1}, Lorg/aspectj/lang/reflect/AjType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v0, 0x1

    array-length v4, v2

    if-ge v1, v4, :cond_6

    const-string/jumbo v1, ","

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :pswitch_5
    const-string/jumbo v2, "returning"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean v2, p0, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->d:Z

    if-eqz v2, :cond_7

    const-string/jumbo v2, "("

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v0, -0x1

    aget-object v2, v4, v2

    invoke-interface {v2}, Lorg/aspectj/lang/reflect/AjType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v2, ") "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_7
    :pswitch_6
    const-string/jumbo v2, "throwing"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean v2, p0, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->d:Z

    if-eqz v2, :cond_5

    const-string/jumbo v2, "("

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v4, v0

    invoke-interface {v0}, Lorg/aspectj/lang/reflect/AjType;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v0, ") "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_8
    const-string/jumbo v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_9
    const-string/jumbo v0, ": "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->getPointcutExpression()Lorg/aspectj/lang/reflect/PointcutExpression;

    move-result-object v0

    invoke-interface {v0}, Lorg/aspectj/lang/reflect/PointcutExpression;->asString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
