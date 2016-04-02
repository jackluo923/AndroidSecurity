.class public final enum Lcom/appyet/data/Feed$FeedTypeEnum;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/appyet/data/Feed$FeedTypeEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/appyet/data/Feed$FeedTypeEnum;

.field public static final enum ATOM:Lcom/appyet/data/Feed$FeedTypeEnum;

.field public static final enum RDF:Lcom/appyet/data/Feed$FeedTypeEnum;

.field public static final enum RSS:Lcom/appyet/data/Feed$FeedTypeEnum;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/appyet/data/Feed$FeedTypeEnum;

    const-string v1, "RSS"

    invoke-direct {v0, v1, v2}, Lcom/appyet/data/Feed$FeedTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appyet/data/Feed$FeedTypeEnum;->RSS:Lcom/appyet/data/Feed$FeedTypeEnum;

    new-instance v0, Lcom/appyet/data/Feed$FeedTypeEnum;

    const-string v1, "ATOM"

    invoke-direct {v0, v1, v3}, Lcom/appyet/data/Feed$FeedTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appyet/data/Feed$FeedTypeEnum;->ATOM:Lcom/appyet/data/Feed$FeedTypeEnum;

    new-instance v0, Lcom/appyet/data/Feed$FeedTypeEnum;

    const-string v1, "RDF"

    invoke-direct {v0, v1, v4}, Lcom/appyet/data/Feed$FeedTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appyet/data/Feed$FeedTypeEnum;->RDF:Lcom/appyet/data/Feed$FeedTypeEnum;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/appyet/data/Feed$FeedTypeEnum;

    sget-object v1, Lcom/appyet/data/Feed$FeedTypeEnum;->RSS:Lcom/appyet/data/Feed$FeedTypeEnum;

    aput-object v1, v0, v2

    sget-object v1, Lcom/appyet/data/Feed$FeedTypeEnum;->ATOM:Lcom/appyet/data/Feed$FeedTypeEnum;

    aput-object v1, v0, v3

    sget-object v1, Lcom/appyet/data/Feed$FeedTypeEnum;->RDF:Lcom/appyet/data/Feed$FeedTypeEnum;

    aput-object v1, v0, v4

    sput-object v0, Lcom/appyet/data/Feed$FeedTypeEnum;->$VALUES:[Lcom/appyet/data/Feed$FeedTypeEnum;

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

.method public static valueOf(Ljava/lang/String;)Lcom/appyet/data/Feed$FeedTypeEnum;
    .locals 1

    const-class v0, Lcom/appyet/data/Feed$FeedTypeEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/appyet/data/Feed$FeedTypeEnum;

    return-object v0
.end method

.method public static values()[Lcom/appyet/data/Feed$FeedTypeEnum;
    .locals 1

    sget-object v0, Lcom/appyet/data/Feed$FeedTypeEnum;->$VALUES:[Lcom/appyet/data/Feed$FeedTypeEnum;

    invoke-virtual {v0}, [Lcom/appyet/data/Feed$FeedTypeEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appyet/data/Feed$FeedTypeEnum;

    return-object v0
.end method
