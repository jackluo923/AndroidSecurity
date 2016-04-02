.class final enum Lcom/inmobi/monetization/IMNative$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/inmobi/monetization/IMNative$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/inmobi/monetization/IMNative$a;

.field public static final enum b:Lcom/inmobi/monetization/IMNative$a;

.field public static final enum c:Lcom/inmobi/monetization/IMNative$a;

.field public static final enum d:Lcom/inmobi/monetization/IMNative$a;

.field public static final enum e:Lcom/inmobi/monetization/IMNative$a;

.field public static final enum f:Lcom/inmobi/monetization/IMNative$a;

.field public static final enum g:Lcom/inmobi/monetization/IMNative$a;

.field private static final synthetic h:[Lcom/inmobi/monetization/IMNative$a;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/inmobi/monetization/IMNative$a;

    const-string v1, "INIT"

    invoke-direct {v0, v1, v3}, Lcom/inmobi/monetization/IMNative$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/monetization/IMNative$a;->a:Lcom/inmobi/monetization/IMNative$a;

    new-instance v0, Lcom/inmobi/monetization/IMNative$a;

    const-string v1, "LOADING"

    invoke-direct {v0, v1, v4}, Lcom/inmobi/monetization/IMNative$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/monetization/IMNative$a;->b:Lcom/inmobi/monetization/IMNative$a;

    new-instance v0, Lcom/inmobi/monetization/IMNative$a;

    const-string v1, "READY"

    invoke-direct {v0, v1, v5}, Lcom/inmobi/monetization/IMNative$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/monetization/IMNative$a;->c:Lcom/inmobi/monetization/IMNative$a;

    new-instance v0, Lcom/inmobi/monetization/IMNative$a;

    const-string v1, "ATTACHED"

    invoke-direct {v0, v1, v6}, Lcom/inmobi/monetization/IMNative$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/monetization/IMNative$a;->d:Lcom/inmobi/monetization/IMNative$a;

    new-instance v0, Lcom/inmobi/monetization/IMNative$a;

    const-string v1, "DETACHED"

    invoke-direct {v0, v1, v7}, Lcom/inmobi/monetization/IMNative$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/monetization/IMNative$a;->e:Lcom/inmobi/monetization/IMNative$a;

    new-instance v0, Lcom/inmobi/monetization/IMNative$a;

    const-string v1, "ERROR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/inmobi/monetization/IMNative$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/monetization/IMNative$a;->f:Lcom/inmobi/monetization/IMNative$a;

    new-instance v0, Lcom/inmobi/monetization/IMNative$a;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/inmobi/monetization/IMNative$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/monetization/IMNative$a;->g:Lcom/inmobi/monetization/IMNative$a;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/inmobi/monetization/IMNative$a;

    sget-object v1, Lcom/inmobi/monetization/IMNative$a;->a:Lcom/inmobi/monetization/IMNative$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/inmobi/monetization/IMNative$a;->b:Lcom/inmobi/monetization/IMNative$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/inmobi/monetization/IMNative$a;->c:Lcom/inmobi/monetization/IMNative$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/inmobi/monetization/IMNative$a;->d:Lcom/inmobi/monetization/IMNative$a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/inmobi/monetization/IMNative$a;->e:Lcom/inmobi/monetization/IMNative$a;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/inmobi/monetization/IMNative$a;->f:Lcom/inmobi/monetization/IMNative$a;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/inmobi/monetization/IMNative$a;->g:Lcom/inmobi/monetization/IMNative$a;

    aput-object v2, v0, v1

    sput-object v0, Lcom/inmobi/monetization/IMNative$a;->h:[Lcom/inmobi/monetization/IMNative$a;

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

.method public static valueOf(Ljava/lang/String;)Lcom/inmobi/monetization/IMNative$a;
    .locals 1

    const-class v0, Lcom/inmobi/monetization/IMNative$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/inmobi/monetization/IMNative$a;

    return-object v0
.end method

.method public static values()[Lcom/inmobi/monetization/IMNative$a;
    .locals 1

    sget-object v0, Lcom/inmobi/monetization/IMNative$a;->h:[Lcom/inmobi/monetization/IMNative$a;

    invoke-virtual {v0}, [Lcom/inmobi/monetization/IMNative$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/inmobi/monetization/IMNative$a;

    return-object v0
.end method
