.class public final enum Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DEBUG:Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;

.field public static final enum INTERNAL:Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;

.field public static final enum NONE:Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;

.field public static final enum NOT_SET:Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;

.field public static final enum VERBOSE:Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;

.field private static final synthetic b:[Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;

    const-string v1, "NOT_SET"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;->NOT_SET:Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;

    new-instance v0, Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v4, v3}, Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;->NONE:Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;

    new-instance v0, Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;

    const-string v1, "DEBUG"

    invoke-direct {v0, v1, v5, v4}, Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;->DEBUG:Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;

    new-instance v0, Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;

    const-string v1, "VERBOSE"

    invoke-direct {v0, v1, v6, v5}, Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;->VERBOSE:Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;

    new-instance v0, Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;

    const-string v1, "INTERNAL"

    invoke-direct {v0, v1, v7, v6}, Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;->INTERNAL:Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;

    sget-object v1, Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;->NOT_SET:Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;

    aput-object v1, v0, v3

    sget-object v1, Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;->NONE:Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;

    aput-object v1, v0, v4

    sget-object v1, Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;->DEBUG:Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;

    aput-object v1, v0, v5

    sget-object v1, Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;->VERBOSE:Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;

    aput-object v1, v0, v6

    sget-object v1, Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;->INTERNAL:Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;

    aput-object v1, v0, v7

    sput-object v0, Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;->b:[Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;
    .locals 1

    const-class v0, Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;

    return-object v0
.end method

.method public static values()[Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;
    .locals 1

    sget-object v0, Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;->b:[Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;

    invoke-virtual {v0}, [Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    iget v0, p0, Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;->a:I

    return v0
.end method
