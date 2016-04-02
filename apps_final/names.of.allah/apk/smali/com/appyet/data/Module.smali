.class public Lcom/appyet/data/Module;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
    tableName = "Module"
.end annotation


# static fields
.field public static final COLUMN_GROUP_NAME:Ljava/lang/String; = "GroupName"

.field public static final COLUMN_GUID:Ljava/lang/String; = "Guid"

.field public static final COLUMN_ICON:Ljava/lang/String; = "Icon"

.field public static final COLUMN_IS_HIDDEN:Ljava/lang/String; = "IsHidden"

.field public static final COLUMN_LAYOUT:Ljava/lang/String; = "Layout"

.field public static final COLUMN_MODULE_ID:Ljava/lang/String; = "ModuleId"

.field public static final COLUMN_NAME:Ljava/lang/String; = "Name"

.field public static final COLUMN_SORT_ORDER:Ljava/lang/String; = "SortOrder"

.field public static final COLUMN_STATUS_LABEL:Ljava/lang/String; = "StatusLabel"

.field public static final COLUMN_TYPE:Ljava/lang/String; = "Type"


# instance fields
.field private mGroupName:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "GroupName"
        useGetSet = false
    .end annotation
.end field

.field private mGuid:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "Guid"
        useGetSet = false
    .end annotation
.end field

.field private mIcon:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "Icon"
        useGetSet = false
    .end annotation
.end field

.field private mIsHidden:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "IsHidden"
        useGetSet = false
    .end annotation
.end field

.field private mIsSelected:Z

.field private mLayout:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "Layout"
        useGetSet = false
    .end annotation
.end field

.field private mModuleId:Ljava/lang/Long;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "ModuleId"
        generatedId = true
        useGetSet = false
    .end annotation
.end field

.field private mName:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "Name"
        useGetSet = false
    .end annotation
.end field

.field private mSortOrder:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "SortOrder"
        useGetSet = false
    .end annotation
.end field

.field private mStatusLabel:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "StatusLabel"
        useGetSet = false
    .end annotation
.end field

.field private mType:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "Type"
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
.method public getGroupName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appyet/data/Module;->mGroupName:Ljava/lang/String;

    return-object v0
.end method

.method public getGuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appyet/data/Module;->mGuid:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appyet/data/Module;->mIcon:Ljava/lang/String;

    return-object v0
.end method

.method public getIsHidden()Z
    .locals 1

    iget-boolean v0, p0, Lcom/appyet/data/Module;->mIsHidden:Z

    return v0
.end method

.method public getIsSelected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/appyet/data/Module;->mIsSelected:Z

    return v0
.end method

.method public getLayout()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appyet/data/Module;->mLayout:Ljava/lang/String;

    return-object v0
.end method

.method public getModuleId()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/appyet/data/Module;->mModuleId:Ljava/lang/Long;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appyet/data/Module;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getSortOrder()I
    .locals 1

    iget v0, p0, Lcom/appyet/data/Module;->mSortOrder:I

    return v0
.end method

.method public getStatusLabel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appyet/data/Module;->mStatusLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appyet/data/Module;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public setGroupName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/data/Module;->mGroupName:Ljava/lang/String;

    return-void
.end method

.method public setGuid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/data/Module;->mGuid:Ljava/lang/String;

    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/data/Module;->mIcon:Ljava/lang/String;

    return-void
.end method

.method public setIsHidden(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/appyet/data/Module;->mIsHidden:Z

    return-void
.end method

.method public setIsSelected(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/appyet/data/Module;->mIsSelected:Z

    return-void
.end method

.method public setLayout(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/data/Module;->mLayout:Ljava/lang/String;

    return-void
.end method

.method public setModuleId(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/data/Module;->mModuleId:Ljava/lang/Long;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/data/Module;->mName:Ljava/lang/String;

    return-void
.end method

.method public setSortOrder(I)V
    .locals 0

    iput p1, p0, Lcom/appyet/data/Module;->mSortOrder:I

    return-void
.end method

.method public setStatusLabel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/data/Module;->mStatusLabel:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/data/Module;->mType:Ljava/lang/String;

    return-void
.end method
