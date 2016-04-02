.class public final enum Lorg/aspectj/lang/reflect/AdviceKind;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/aspectj/lang/reflect/AdviceKind;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AFTER:Lorg/aspectj/lang/reflect/AdviceKind;

.field public static final enum AFTER_RETURNING:Lorg/aspectj/lang/reflect/AdviceKind;

.field public static final enum AFTER_THROWING:Lorg/aspectj/lang/reflect/AdviceKind;

.field public static final enum AROUND:Lorg/aspectj/lang/reflect/AdviceKind;

.field public static final enum BEFORE:Lorg/aspectj/lang/reflect/AdviceKind;

.field private static final synthetic a:[Lorg/aspectj/lang/reflect/AdviceKind;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lorg/aspectj/lang/reflect/AdviceKind;

    const-string/jumbo v1, "BEFORE"

    invoke-direct {v0, v1, v2}, Lorg/aspectj/lang/reflect/AdviceKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/aspectj/lang/reflect/AdviceKind;->BEFORE:Lorg/aspectj/lang/reflect/AdviceKind;

    new-instance v0, Lorg/aspectj/lang/reflect/AdviceKind;

    const-string/jumbo v1, "AFTER"

    invoke-direct {v0, v1, v3}, Lorg/aspectj/lang/reflect/AdviceKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/aspectj/lang/reflect/AdviceKind;->AFTER:Lorg/aspectj/lang/reflect/AdviceKind;

    new-instance v0, Lorg/aspectj/lang/reflect/AdviceKind;

    const-string/jumbo v1, "AFTER_RETURNING"

    invoke-direct {v0, v1, v4}, Lorg/aspectj/lang/reflect/AdviceKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/aspectj/lang/reflect/AdviceKind;->AFTER_RETURNING:Lorg/aspectj/lang/reflect/AdviceKind;

    new-instance v0, Lorg/aspectj/lang/reflect/AdviceKind;

    const-string/jumbo v1, "AFTER_THROWING"

    invoke-direct {v0, v1, v5}, Lorg/aspectj/lang/reflect/AdviceKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/aspectj/lang/reflect/AdviceKind;->AFTER_THROWING:Lorg/aspectj/lang/reflect/AdviceKind;

    new-instance v0, Lorg/aspectj/lang/reflect/AdviceKind;

    const-string/jumbo v1, "AROUND"

    invoke-direct {v0, v1, v6}, Lorg/aspectj/lang/reflect/AdviceKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/aspectj/lang/reflect/AdviceKind;->AROUND:Lorg/aspectj/lang/reflect/AdviceKind;

    const/4 v0, 0x5

    new-array v0, v0, [Lorg/aspectj/lang/reflect/AdviceKind;

    sget-object v1, Lorg/aspectj/lang/reflect/AdviceKind;->BEFORE:Lorg/aspectj/lang/reflect/AdviceKind;

    aput-object v1, v0, v2

    sget-object v1, Lorg/aspectj/lang/reflect/AdviceKind;->AFTER:Lorg/aspectj/lang/reflect/AdviceKind;

    aput-object v1, v0, v3

    sget-object v1, Lorg/aspectj/lang/reflect/AdviceKind;->AFTER_RETURNING:Lorg/aspectj/lang/reflect/AdviceKind;

    aput-object v1, v0, v4

    sget-object v1, Lorg/aspectj/lang/reflect/AdviceKind;->AFTER_THROWING:Lorg/aspectj/lang/reflect/AdviceKind;

    aput-object v1, v0, v5

    sget-object v1, Lorg/aspectj/lang/reflect/AdviceKind;->AROUND:Lorg/aspectj/lang/reflect/AdviceKind;

    aput-object v1, v0, v6

    sput-object v0, Lorg/aspectj/lang/reflect/AdviceKind;->a:[Lorg/aspectj/lang/reflect/AdviceKind;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/aspectj/lang/reflect/AdviceKind;
    .locals 1

    const-class v0, Lorg/aspectj/lang/reflect/AdviceKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/aspectj/lang/reflect/AdviceKind;

    return-object v0
.end method

.method public static values()[Lorg/aspectj/lang/reflect/AdviceKind;
    .locals 1

    sget-object v0, Lorg/aspectj/lang/reflect/AdviceKind;->a:[Lorg/aspectj/lang/reflect/AdviceKind;

    invoke-virtual {v0}, [Lorg/aspectj/lang/reflect/AdviceKind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/aspectj/lang/reflect/AdviceKind;

    return-object v0
.end method
