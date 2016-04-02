.class public final enum Lcom/inmobi/re/container/CustomView$SwitchIconType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/inmobi/re/container/CustomView$SwitchIconType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BACK:Lcom/inmobi/re/container/CustomView$SwitchIconType;

.field public static final enum CLOSE_BUTTON:Lcom/inmobi/re/container/CustomView$SwitchIconType;

.field public static final enum CLOSE_ICON:Lcom/inmobi/re/container/CustomView$SwitchIconType;

.field public static final enum CLOSE_TRANSPARENT:Lcom/inmobi/re/container/CustomView$SwitchIconType;

.field public static final enum FORWARD_ACTIVE:Lcom/inmobi/re/container/CustomView$SwitchIconType;

.field public static final enum FORWARD_INACTIVE:Lcom/inmobi/re/container/CustomView$SwitchIconType;

.field public static final enum REFRESH:Lcom/inmobi/re/container/CustomView$SwitchIconType;

.field private static final synthetic a:[Lcom/inmobi/re/container/CustomView$SwitchIconType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/inmobi/re/container/CustomView$SwitchIconType;

    const-string v1, "CLOSE_BUTTON"

    invoke-direct {v0, v1, v3}, Lcom/inmobi/re/container/CustomView$SwitchIconType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/re/container/CustomView$SwitchIconType;->CLOSE_BUTTON:Lcom/inmobi/re/container/CustomView$SwitchIconType;

    new-instance v0, Lcom/inmobi/re/container/CustomView$SwitchIconType;

    const-string v1, "CLOSE_TRANSPARENT"

    invoke-direct {v0, v1, v4}, Lcom/inmobi/re/container/CustomView$SwitchIconType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/re/container/CustomView$SwitchIconType;->CLOSE_TRANSPARENT:Lcom/inmobi/re/container/CustomView$SwitchIconType;

    new-instance v0, Lcom/inmobi/re/container/CustomView$SwitchIconType;

    const-string v1, "CLOSE_ICON"

    invoke-direct {v0, v1, v5}, Lcom/inmobi/re/container/CustomView$SwitchIconType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/re/container/CustomView$SwitchIconType;->CLOSE_ICON:Lcom/inmobi/re/container/CustomView$SwitchIconType;

    new-instance v0, Lcom/inmobi/re/container/CustomView$SwitchIconType;

    const-string v1, "REFRESH"

    invoke-direct {v0, v1, v6}, Lcom/inmobi/re/container/CustomView$SwitchIconType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/re/container/CustomView$SwitchIconType;->REFRESH:Lcom/inmobi/re/container/CustomView$SwitchIconType;

    new-instance v0, Lcom/inmobi/re/container/CustomView$SwitchIconType;

    const-string v1, "BACK"

    invoke-direct {v0, v1, v7}, Lcom/inmobi/re/container/CustomView$SwitchIconType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/re/container/CustomView$SwitchIconType;->BACK:Lcom/inmobi/re/container/CustomView$SwitchIconType;

    new-instance v0, Lcom/inmobi/re/container/CustomView$SwitchIconType;

    const-string v1, "FORWARD_ACTIVE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/inmobi/re/container/CustomView$SwitchIconType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/re/container/CustomView$SwitchIconType;->FORWARD_ACTIVE:Lcom/inmobi/re/container/CustomView$SwitchIconType;

    new-instance v0, Lcom/inmobi/re/container/CustomView$SwitchIconType;

    const-string v1, "FORWARD_INACTIVE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/inmobi/re/container/CustomView$SwitchIconType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/re/container/CustomView$SwitchIconType;->FORWARD_INACTIVE:Lcom/inmobi/re/container/CustomView$SwitchIconType;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/inmobi/re/container/CustomView$SwitchIconType;

    sget-object v1, Lcom/inmobi/re/container/CustomView$SwitchIconType;->CLOSE_BUTTON:Lcom/inmobi/re/container/CustomView$SwitchIconType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/inmobi/re/container/CustomView$SwitchIconType;->CLOSE_TRANSPARENT:Lcom/inmobi/re/container/CustomView$SwitchIconType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/inmobi/re/container/CustomView$SwitchIconType;->CLOSE_ICON:Lcom/inmobi/re/container/CustomView$SwitchIconType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/inmobi/re/container/CustomView$SwitchIconType;->REFRESH:Lcom/inmobi/re/container/CustomView$SwitchIconType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/inmobi/re/container/CustomView$SwitchIconType;->BACK:Lcom/inmobi/re/container/CustomView$SwitchIconType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/inmobi/re/container/CustomView$SwitchIconType;->FORWARD_ACTIVE:Lcom/inmobi/re/container/CustomView$SwitchIconType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/inmobi/re/container/CustomView$SwitchIconType;->FORWARD_INACTIVE:Lcom/inmobi/re/container/CustomView$SwitchIconType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/inmobi/re/container/CustomView$SwitchIconType;->a:[Lcom/inmobi/re/container/CustomView$SwitchIconType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/inmobi/re/container/CustomView$SwitchIconType;
    .locals 1

    const-class v0, Lcom/inmobi/re/container/CustomView$SwitchIconType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/inmobi/re/container/CustomView$SwitchIconType;

    return-object v0
.end method

.method public static values()[Lcom/inmobi/re/container/CustomView$SwitchIconType;
    .locals 1

    sget-object v0, Lcom/inmobi/re/container/CustomView$SwitchIconType;->a:[Lcom/inmobi/re/container/CustomView$SwitchIconType;

    invoke-virtual {v0}, [Lcom/inmobi/re/container/CustomView$SwitchIconType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/inmobi/re/container/CustomView$SwitchIconType;

    return-object v0
.end method
