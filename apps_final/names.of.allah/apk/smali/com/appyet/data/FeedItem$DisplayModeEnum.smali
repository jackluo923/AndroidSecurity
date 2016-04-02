.class public final enum Lcom/appyet/data/FeedItem$DisplayModeEnum;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/appyet/data/FeedItem$DisplayModeEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/appyet/data/FeedItem$DisplayModeEnum;

.field public static final enum Article:Lcom/appyet/data/FeedItem$DisplayModeEnum;

.field public static final enum Feed:Lcom/appyet/data/FeedItem$DisplayModeEnum;

.field public static final enum None:Lcom/appyet/data/FeedItem$DisplayModeEnum;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/appyet/data/FeedItem$DisplayModeEnum;

    const-string v1, "None"

    invoke-direct {v0, v1, v2}, Lcom/appyet/data/FeedItem$DisplayModeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appyet/data/FeedItem$DisplayModeEnum;->None:Lcom/appyet/data/FeedItem$DisplayModeEnum;

    new-instance v0, Lcom/appyet/data/FeedItem$DisplayModeEnum;

    const-string v1, "Feed"

    invoke-direct {v0, v1, v3}, Lcom/appyet/data/FeedItem$DisplayModeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appyet/data/FeedItem$DisplayModeEnum;->Feed:Lcom/appyet/data/FeedItem$DisplayModeEnum;

    new-instance v0, Lcom/appyet/data/FeedItem$DisplayModeEnum;

    const-string v1, "Article"

    invoke-direct {v0, v1, v4}, Lcom/appyet/data/FeedItem$DisplayModeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appyet/data/FeedItem$DisplayModeEnum;->Article:Lcom/appyet/data/FeedItem$DisplayModeEnum;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/appyet/data/FeedItem$DisplayModeEnum;

    sget-object v1, Lcom/appyet/data/FeedItem$DisplayModeEnum;->None:Lcom/appyet/data/FeedItem$DisplayModeEnum;

    aput-object v1, v0, v2

    sget-object v1, Lcom/appyet/data/FeedItem$DisplayModeEnum;->Feed:Lcom/appyet/data/FeedItem$DisplayModeEnum;

    aput-object v1, v0, v3

    sget-object v1, Lcom/appyet/data/FeedItem$DisplayModeEnum;->Article:Lcom/appyet/data/FeedItem$DisplayModeEnum;

    aput-object v1, v0, v4

    sput-object v0, Lcom/appyet/data/FeedItem$DisplayModeEnum;->$VALUES:[Lcom/appyet/data/FeedItem$DisplayModeEnum;

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

.method public static valueOf(Ljava/lang/String;)Lcom/appyet/data/FeedItem$DisplayModeEnum;
    .locals 1

    const-class v0, Lcom/appyet/data/FeedItem$DisplayModeEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/appyet/data/FeedItem$DisplayModeEnum;

    return-object v0
.end method

.method public static values()[Lcom/appyet/data/FeedItem$DisplayModeEnum;
    .locals 1

    sget-object v0, Lcom/appyet/data/FeedItem$DisplayModeEnum;->$VALUES:[Lcom/appyet/data/FeedItem$DisplayModeEnum;

    invoke-virtual {v0}, [Lcom/appyet/data/FeedItem$DisplayModeEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appyet/data/FeedItem$DisplayModeEnum;

    return-object v0
.end method
