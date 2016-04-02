.class public final enum Lcom/appyet/data/FileCache$FileTypeEnum;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/appyet/data/FileCache$FileTypeEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/appyet/data/FileCache$FileTypeEnum;

.field public static final enum FavIcon:Lcom/appyet/data/FileCache$FileTypeEnum;

.field public static final enum Image:Lcom/appyet/data/FileCache$FileTypeEnum;

.field public static final enum Podcast:Lcom/appyet/data/FileCache$FileTypeEnum;

.field public static final enum Thumbnail:Lcom/appyet/data/FileCache$FileTypeEnum;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/appyet/data/FileCache$FileTypeEnum;

    const-string v1, "Image"

    invoke-direct {v0, v1, v2}, Lcom/appyet/data/FileCache$FileTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appyet/data/FileCache$FileTypeEnum;->Image:Lcom/appyet/data/FileCache$FileTypeEnum;

    new-instance v0, Lcom/appyet/data/FileCache$FileTypeEnum;

    const-string v1, "Podcast"

    invoke-direct {v0, v1, v3}, Lcom/appyet/data/FileCache$FileTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appyet/data/FileCache$FileTypeEnum;->Podcast:Lcom/appyet/data/FileCache$FileTypeEnum;

    new-instance v0, Lcom/appyet/data/FileCache$FileTypeEnum;

    const-string v1, "FavIcon"

    invoke-direct {v0, v1, v4}, Lcom/appyet/data/FileCache$FileTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appyet/data/FileCache$FileTypeEnum;->FavIcon:Lcom/appyet/data/FileCache$FileTypeEnum;

    new-instance v0, Lcom/appyet/data/FileCache$FileTypeEnum;

    const-string v1, "Thumbnail"

    invoke-direct {v0, v1, v5}, Lcom/appyet/data/FileCache$FileTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appyet/data/FileCache$FileTypeEnum;->Thumbnail:Lcom/appyet/data/FileCache$FileTypeEnum;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/appyet/data/FileCache$FileTypeEnum;

    sget-object v1, Lcom/appyet/data/FileCache$FileTypeEnum;->Image:Lcom/appyet/data/FileCache$FileTypeEnum;

    aput-object v1, v0, v2

    sget-object v1, Lcom/appyet/data/FileCache$FileTypeEnum;->Podcast:Lcom/appyet/data/FileCache$FileTypeEnum;

    aput-object v1, v0, v3

    sget-object v1, Lcom/appyet/data/FileCache$FileTypeEnum;->FavIcon:Lcom/appyet/data/FileCache$FileTypeEnum;

    aput-object v1, v0, v4

    sget-object v1, Lcom/appyet/data/FileCache$FileTypeEnum;->Thumbnail:Lcom/appyet/data/FileCache$FileTypeEnum;

    aput-object v1, v0, v5

    sput-object v0, Lcom/appyet/data/FileCache$FileTypeEnum;->$VALUES:[Lcom/appyet/data/FileCache$FileTypeEnum;

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

.method public static valueOf(Ljava/lang/String;)Lcom/appyet/data/FileCache$FileTypeEnum;
    .locals 1

    const-class v0, Lcom/appyet/data/FileCache$FileTypeEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/appyet/data/FileCache$FileTypeEnum;

    return-object v0
.end method

.method public static values()[Lcom/appyet/data/FileCache$FileTypeEnum;
    .locals 1

    sget-object v0, Lcom/appyet/data/FileCache$FileTypeEnum;->$VALUES:[Lcom/appyet/data/FileCache$FileTypeEnum;

    invoke-virtual {v0}, [Lcom/appyet/data/FileCache$FileTypeEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appyet/data/FileCache$FileTypeEnum;

    return-object v0
.end method
