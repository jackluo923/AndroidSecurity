.class public final enum Lcom/appyet/data/FileCache$DownloadStatusEnum;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/appyet/data/FileCache$DownloadStatusEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/appyet/data/FileCache$DownloadStatusEnum;

.field public static final enum Failed:Lcom/appyet/data/FileCache$DownloadStatusEnum;

.field public static final enum Ignore:Lcom/appyet/data/FileCache$DownloadStatusEnum;

.field public static final enum Pending:Lcom/appyet/data/FileCache$DownloadStatusEnum;

.field public static final enum Success:Lcom/appyet/data/FileCache$DownloadStatusEnum;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/appyet/data/FileCache$DownloadStatusEnum;

    const-string v1, "Pending"

    invoke-direct {v0, v1, v2}, Lcom/appyet/data/FileCache$DownloadStatusEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appyet/data/FileCache$DownloadStatusEnum;->Pending:Lcom/appyet/data/FileCache$DownloadStatusEnum;

    new-instance v0, Lcom/appyet/data/FileCache$DownloadStatusEnum;

    const-string v1, "Failed"

    invoke-direct {v0, v1, v3}, Lcom/appyet/data/FileCache$DownloadStatusEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appyet/data/FileCache$DownloadStatusEnum;->Failed:Lcom/appyet/data/FileCache$DownloadStatusEnum;

    new-instance v0, Lcom/appyet/data/FileCache$DownloadStatusEnum;

    const-string v1, "Success"

    invoke-direct {v0, v1, v4}, Lcom/appyet/data/FileCache$DownloadStatusEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appyet/data/FileCache$DownloadStatusEnum;->Success:Lcom/appyet/data/FileCache$DownloadStatusEnum;

    new-instance v0, Lcom/appyet/data/FileCache$DownloadStatusEnum;

    const-string v1, "Ignore"

    invoke-direct {v0, v1, v5}, Lcom/appyet/data/FileCache$DownloadStatusEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appyet/data/FileCache$DownloadStatusEnum;->Ignore:Lcom/appyet/data/FileCache$DownloadStatusEnum;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/appyet/data/FileCache$DownloadStatusEnum;

    sget-object v1, Lcom/appyet/data/FileCache$DownloadStatusEnum;->Pending:Lcom/appyet/data/FileCache$DownloadStatusEnum;

    aput-object v1, v0, v2

    sget-object v1, Lcom/appyet/data/FileCache$DownloadStatusEnum;->Failed:Lcom/appyet/data/FileCache$DownloadStatusEnum;

    aput-object v1, v0, v3

    sget-object v1, Lcom/appyet/data/FileCache$DownloadStatusEnum;->Success:Lcom/appyet/data/FileCache$DownloadStatusEnum;

    aput-object v1, v0, v4

    sget-object v1, Lcom/appyet/data/FileCache$DownloadStatusEnum;->Ignore:Lcom/appyet/data/FileCache$DownloadStatusEnum;

    aput-object v1, v0, v5

    sput-object v0, Lcom/appyet/data/FileCache$DownloadStatusEnum;->$VALUES:[Lcom/appyet/data/FileCache$DownloadStatusEnum;

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

.method public static valueOf(Ljava/lang/String;)Lcom/appyet/data/FileCache$DownloadStatusEnum;
    .locals 1

    const-class v0, Lcom/appyet/data/FileCache$DownloadStatusEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/appyet/data/FileCache$DownloadStatusEnum;

    return-object v0
.end method

.method public static values()[Lcom/appyet/data/FileCache$DownloadStatusEnum;
    .locals 1

    sget-object v0, Lcom/appyet/data/FileCache$DownloadStatusEnum;->$VALUES:[Lcom/appyet/data/FileCache$DownloadStatusEnum;

    invoke-virtual {v0}, [Lcom/appyet/data/FileCache$DownloadStatusEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appyet/data/FileCache$DownloadStatusEnum;

    return-object v0
.end method
