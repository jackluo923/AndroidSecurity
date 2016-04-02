.class public Lcom/appyet/data/DatabaseConfigUtil;
.super Lcom/j256/ormlite/android/apptools/OrmLiteConfigUtil;


# static fields
.field private static final classes:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lcom/appyet/data/Feed;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcom/appyet/data/FeedItem;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lcom/appyet/data/FileCache;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Lcom/appyet/data/Module;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-class v2, Lcom/appyet/data/Web;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-class v2, Lcom/appyet/data/Forum;

    aput-object v2, v0, v1

    sput-object v0, Lcom/appyet/data/DatabaseConfigUtil;->classes:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/j256/ormlite/android/apptools/OrmLiteConfigUtil;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2

    const-string v0, "ormlite_config.txt"

    sget-object v1, Lcom/appyet/data/DatabaseConfigUtil;->classes:[Ljava/lang/Class;

    invoke-static {v0, v1}, Lcom/appyet/data/DatabaseConfigUtil;->writeConfigFile(Ljava/lang/String;[Ljava/lang/Class;)V

    return-void
.end method
