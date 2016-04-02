.class public final enum Lcom/inmobi/androidsdk/bootstrapper/NetworkEventType;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/inmobi/commons/metric/EventType;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/inmobi/androidsdk/bootstrapper/NetworkEventType;",
        ">;",
        "Lcom/inmobi/commons/metric/EventType;"
    }
.end annotation


# static fields
.field public static final enum CONNECT_ERROR:Lcom/inmobi/androidsdk/bootstrapper/NetworkEventType;

.field public static final enum FETCH_COMPLETE:Lcom/inmobi/androidsdk/bootstrapper/NetworkEventType;

.field public static final enum RENDER_COMPLETE:Lcom/inmobi/androidsdk/bootstrapper/NetworkEventType;

.field public static final enum RENDER_TIMEOUT:Lcom/inmobi/androidsdk/bootstrapper/NetworkEventType;

.field public static final enum RESPONSE_ERROR:Lcom/inmobi/androidsdk/bootstrapper/NetworkEventType;

.field private static final synthetic b:[Lcom/inmobi/androidsdk/bootstrapper/NetworkEventType;


# instance fields
.field private a:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/inmobi/androidsdk/bootstrapper/NetworkEventType;

    const-string v1, "FETCH_COMPLETE"

    invoke-direct {v0, v1, v2, v2}, Lcom/inmobi/androidsdk/bootstrapper/NetworkEventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/inmobi/androidsdk/bootstrapper/NetworkEventType;->FETCH_COMPLETE:Lcom/inmobi/androidsdk/bootstrapper/NetworkEventType;

    new-instance v0, Lcom/inmobi/androidsdk/bootstrapper/NetworkEventType;

    const-string v1, "RENDER_COMPLETE"

    invoke-direct {v0, v1, v3, v3}, Lcom/inmobi/androidsdk/bootstrapper/NetworkEventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/inmobi/androidsdk/bootstrapper/NetworkEventType;->RENDER_COMPLETE:Lcom/inmobi/androidsdk/bootstrapper/NetworkEventType;

    new-instance v0, Lcom/inmobi/androidsdk/bootstrapper/NetworkEventType;

    const-string v1, "CONNECT_ERROR"

    invoke-direct {v0, v1, v4, v4}, Lcom/inmobi/androidsdk/bootstrapper/NetworkEventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/inmobi/androidsdk/bootstrapper/NetworkEventType;->CONNECT_ERROR:Lcom/inmobi/androidsdk/bootstrapper/NetworkEventType;

    new-instance v0, Lcom/inmobi/androidsdk/bootstrapper/NetworkEventType;

    const-string v1, "RESPONSE_ERROR"

    invoke-direct {v0, v1, v5, v5}, Lcom/inmobi/androidsdk/bootstrapper/NetworkEventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/inmobi/androidsdk/bootstrapper/NetworkEventType;->RESPONSE_ERROR:Lcom/inmobi/androidsdk/bootstrapper/NetworkEventType;

    new-instance v0, Lcom/inmobi/androidsdk/bootstrapper/NetworkEventType;

    const-string v1, "RENDER_TIMEOUT"

    invoke-direct {v0, v1, v6, v6}, Lcom/inmobi/androidsdk/bootstrapper/NetworkEventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/inmobi/androidsdk/bootstrapper/NetworkEventType;->RENDER_TIMEOUT:Lcom/inmobi/androidsdk/bootstrapper/NetworkEventType;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/inmobi/androidsdk/bootstrapper/NetworkEventType;

    sget-object v1, Lcom/inmobi/androidsdk/bootstrapper/NetworkEventType;->FETCH_COMPLETE:Lcom/inmobi/androidsdk/bootstrapper/NetworkEventType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/inmobi/androidsdk/bootstrapper/NetworkEventType;->RENDER_COMPLETE:Lcom/inmobi/androidsdk/bootstrapper/NetworkEventType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/inmobi/androidsdk/bootstrapper/NetworkEventType;->CONNECT_ERROR:Lcom/inmobi/androidsdk/bootstrapper/NetworkEventType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/inmobi/androidsdk/bootstrapper/NetworkEventType;->RESPONSE_ERROR:Lcom/inmobi/androidsdk/bootstrapper/NetworkEventType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/inmobi/androidsdk/bootstrapper/NetworkEventType;->RENDER_TIMEOUT:Lcom/inmobi/androidsdk/bootstrapper/NetworkEventType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/inmobi/androidsdk/bootstrapper/NetworkEventType;->b:[Lcom/inmobi/androidsdk/bootstrapper/NetworkEventType;

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

    iput p3, p0, Lcom/inmobi/androidsdk/bootstrapper/NetworkEventType;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/inmobi/androidsdk/bootstrapper/NetworkEventType;
    .locals 1

    const-class v0, Lcom/inmobi/androidsdk/bootstrapper/NetworkEventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/inmobi/androidsdk/bootstrapper/NetworkEventType;

    return-object v0
.end method

.method public static values()[Lcom/inmobi/androidsdk/bootstrapper/NetworkEventType;
    .locals 1

    sget-object v0, Lcom/inmobi/androidsdk/bootstrapper/NetworkEventType;->b:[Lcom/inmobi/androidsdk/bootstrapper/NetworkEventType;

    invoke-virtual {v0}, [Lcom/inmobi/androidsdk/bootstrapper/NetworkEventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/inmobi/androidsdk/bootstrapper/NetworkEventType;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    iget v0, p0, Lcom/inmobi/androidsdk/bootstrapper/NetworkEventType;->a:I

    return v0
.end method
