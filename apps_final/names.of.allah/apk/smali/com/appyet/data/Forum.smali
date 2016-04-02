.class public Lcom/appyet/data/Forum;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
    tableName = "Forum"
.end annotation


# static fields
.field public static final COLUMN_FORUM_ID:Ljava/lang/String; = "ForumId"

.field public static final COLUMN_GUID:Ljava/lang/String; = "Guid"

.field public static final COLUMN_LINK:Ljava/lang/String; = "Link"

.field public static final COLUMN_MODULE_ID:Ljava/lang/String; = "ModuleId"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mForumId:Ljava/lang/Long;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "ForumId"
        generatedId = true
        useGetSet = false
    .end annotation
.end field

.field private mGuid:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "Guid"
        useGetSet = false
    .end annotation
.end field

.field private mLink:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        canBeNull = false
        columnName = "Link"
        uniqueIndex = true
        useGetSet = false
    .end annotation
.end field

.field private mModuleId:J
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "ModuleId"
        useGetSet = false
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getForumId()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/appyet/data/Forum;->mForumId:Ljava/lang/Long;

    return-object v0
.end method

.method public getGuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appyet/data/Forum;->mGuid:Ljava/lang/String;

    return-object v0
.end method

.method public getLink()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appyet/data/Forum;->mLink:Ljava/lang/String;

    return-object v0
.end method

.method public getModuleId()Ljava/lang/Long;
    .locals 2

    iget-wide v0, p0, Lcom/appyet/data/Forum;->mModuleId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public setForumId(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/data/Forum;->mForumId:Ljava/lang/Long;

    return-void
.end method

.method public setGuid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/data/Forum;->mGuid:Ljava/lang/String;

    return-void
.end method

.method public setLink(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/data/Forum;->mLink:Ljava/lang/String;

    return-void
.end method

.method public setModuleId(Ljava/lang/Long;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/appyet/data/Forum;->mModuleId:J

    return-void
.end method
