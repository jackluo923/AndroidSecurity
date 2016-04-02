.class public final enum Lcom/alibaba/sqlcrypto/CursorJoiner$Result;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/sqlcrypto/CursorJoiner$Result;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/sqlcrypto/CursorJoiner$Result;

.field public static final enum BOTH:Lcom/alibaba/sqlcrypto/CursorJoiner$Result;

.field public static final enum LEFT:Lcom/alibaba/sqlcrypto/CursorJoiner$Result;

.field public static final enum RIGHT:Lcom/alibaba/sqlcrypto/CursorJoiner$Result;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/alibaba/sqlcrypto/CursorJoiner$Result;

    const-string/jumbo v1, "RIGHT"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/sqlcrypto/CursorJoiner$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/sqlcrypto/CursorJoiner$Result;->RIGHT:Lcom/alibaba/sqlcrypto/CursorJoiner$Result;

    new-instance v0, Lcom/alibaba/sqlcrypto/CursorJoiner$Result;

    const-string/jumbo v1, "LEFT"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/sqlcrypto/CursorJoiner$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/sqlcrypto/CursorJoiner$Result;->LEFT:Lcom/alibaba/sqlcrypto/CursorJoiner$Result;

    new-instance v0, Lcom/alibaba/sqlcrypto/CursorJoiner$Result;

    const-string/jumbo v1, "BOTH"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/sqlcrypto/CursorJoiner$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/sqlcrypto/CursorJoiner$Result;->BOTH:Lcom/alibaba/sqlcrypto/CursorJoiner$Result;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alibaba/sqlcrypto/CursorJoiner$Result;

    sget-object v1, Lcom/alibaba/sqlcrypto/CursorJoiner$Result;->RIGHT:Lcom/alibaba/sqlcrypto/CursorJoiner$Result;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/sqlcrypto/CursorJoiner$Result;->LEFT:Lcom/alibaba/sqlcrypto/CursorJoiner$Result;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/sqlcrypto/CursorJoiner$Result;->BOTH:Lcom/alibaba/sqlcrypto/CursorJoiner$Result;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alibaba/sqlcrypto/CursorJoiner$Result;->$VALUES:[Lcom/alibaba/sqlcrypto/CursorJoiner$Result;

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

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/sqlcrypto/CursorJoiner$Result;
    .locals 1

    const-class v0, Lcom/alibaba/sqlcrypto/CursorJoiner$Result;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sqlcrypto/CursorJoiner$Result;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/sqlcrypto/CursorJoiner$Result;
    .locals 1

    sget-object v0, Lcom/alibaba/sqlcrypto/CursorJoiner$Result;->$VALUES:[Lcom/alibaba/sqlcrypto/CursorJoiner$Result;

    invoke-virtual {v0}, [Lcom/alibaba/sqlcrypto/CursorJoiner$Result;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/sqlcrypto/CursorJoiner$Result;

    return-object v0
.end method
