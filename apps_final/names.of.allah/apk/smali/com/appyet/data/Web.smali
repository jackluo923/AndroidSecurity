.class public Lcom/appyet/data/Web;
.super Ljava/lang/Object;


# static fields
.field public static final COLUMN_DATA:Ljava/lang/String; = "Data"

.field public static final COLUMN_GUID:Ljava/lang/String; = "Guid"

.field public static final COLUMN_MODULE_ID:Ljava/lang/String; = "ModuleId"

.field public static final COLUMN_TYPE:Ljava/lang/String; = "Type"

.field public static final COLUMN_WEB_ID:Ljava/lang/String; = "WebId"


# instance fields
.field private mData:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "Data"
        useGetSet = false
    .end annotation
.end field

.field private mGuid:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "Guid"
        useGetSet = false
    .end annotation
.end field

.field private mModuleId:Ljava/lang/Long;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "ModuleId"
        useGetSet = false
    .end annotation
.end field

.field private mType:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "Type"
        useGetSet = false
    .end annotation
.end field

.field private mWebId:Ljava/lang/Long;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "WebId"
        generatedId = true
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
.method public getData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appyet/data/Web;->mData:Ljava/lang/String;

    return-object v0
.end method

.method public getGuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appyet/data/Web;->mGuid:Ljava/lang/String;

    return-object v0
.end method

.method public getModuleId()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/appyet/data/Web;->mModuleId:Ljava/lang/Long;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appyet/data/Web;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public getWebId()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/appyet/data/Web;->mWebId:Ljava/lang/Long;

    return-object v0
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/data/Web;->mData:Ljava/lang/String;

    return-void
.end method

.method public setGuid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/data/Web;->mGuid:Ljava/lang/String;

    return-void
.end method

.method public setModuleId(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/data/Web;->mModuleId:Ljava/lang/Long;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/data/Web;->mType:Ljava/lang/String;

    return-void
.end method

.method public setWebId(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/data/Web;->mWebId:Ljava/lang/Long;

    return-void
.end method
