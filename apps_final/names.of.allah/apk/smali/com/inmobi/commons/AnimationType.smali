.class public final enum Lcom/inmobi/commons/AnimationType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/inmobi/commons/AnimationType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ANIMATION_ALPHA:Lcom/inmobi/commons/AnimationType;

.field public static final enum ANIMATION_OFF:Lcom/inmobi/commons/AnimationType;

.field public static final enum ROTATE_HORIZONTAL_AXIS:Lcom/inmobi/commons/AnimationType;

.field public static final enum ROTATE_VERTICAL_AXIS:Lcom/inmobi/commons/AnimationType;

.field private static final synthetic a:[Lcom/inmobi/commons/AnimationType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/inmobi/commons/AnimationType;

    const-string v1, "ANIMATION_OFF"

    invoke-direct {v0, v1, v2}, Lcom/inmobi/commons/AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/commons/AnimationType;->ANIMATION_OFF:Lcom/inmobi/commons/AnimationType;

    new-instance v0, Lcom/inmobi/commons/AnimationType;

    const-string v1, "ROTATE_HORIZONTAL_AXIS"

    invoke-direct {v0, v1, v3}, Lcom/inmobi/commons/AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/commons/AnimationType;->ROTATE_HORIZONTAL_AXIS:Lcom/inmobi/commons/AnimationType;

    new-instance v0, Lcom/inmobi/commons/AnimationType;

    const-string v1, "ANIMATION_ALPHA"

    invoke-direct {v0, v1, v4}, Lcom/inmobi/commons/AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/commons/AnimationType;->ANIMATION_ALPHA:Lcom/inmobi/commons/AnimationType;

    new-instance v0, Lcom/inmobi/commons/AnimationType;

    const-string v1, "ROTATE_VERTICAL_AXIS"

    invoke-direct {v0, v1, v5}, Lcom/inmobi/commons/AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/commons/AnimationType;->ROTATE_VERTICAL_AXIS:Lcom/inmobi/commons/AnimationType;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/inmobi/commons/AnimationType;

    sget-object v1, Lcom/inmobi/commons/AnimationType;->ANIMATION_OFF:Lcom/inmobi/commons/AnimationType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/inmobi/commons/AnimationType;->ROTATE_HORIZONTAL_AXIS:Lcom/inmobi/commons/AnimationType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/inmobi/commons/AnimationType;->ANIMATION_ALPHA:Lcom/inmobi/commons/AnimationType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/inmobi/commons/AnimationType;->ROTATE_VERTICAL_AXIS:Lcom/inmobi/commons/AnimationType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/inmobi/commons/AnimationType;->a:[Lcom/inmobi/commons/AnimationType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/inmobi/commons/AnimationType;
    .locals 1

    const-class v0, Lcom/inmobi/commons/AnimationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/inmobi/commons/AnimationType;

    return-object v0
.end method

.method public static values()[Lcom/inmobi/commons/AnimationType;
    .locals 1

    sget-object v0, Lcom/inmobi/commons/AnimationType;->a:[Lcom/inmobi/commons/AnimationType;

    invoke-virtual {v0}, [Lcom/inmobi/commons/AnimationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/inmobi/commons/AnimationType;

    return-object v0
.end method
