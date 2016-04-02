.class public Lcom/appyet/data/Widget;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
    tableName = "Widget"
.end annotation


# static fields
.field public static final COLUMN_MODULE_ID:Ljava/lang/String; = "ModuleId"

.field public static final COLUMN_POSITION:Ljava/lang/String; = "Position"

.field public static final COLUMN_WIDGET_ID:Ljava/lang/String; = "WidgetId"


# instance fields
.field private mModuleId:Ljava/lang/Long;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "ModuleId"
        useGetSet = false
    .end annotation
.end field

.field private mPosition:Ljava/lang/Long;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "Position"
        useGetSet = false
    .end annotation
.end field

.field private mWidgetId:Ljava/lang/Long;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        allowGeneratedIdInsert = true
        columnName = "WidgetId"
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
.method public getModuleId()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/appyet/data/Widget;->mModuleId:Ljava/lang/Long;

    return-object v0
.end method

.method public getPosition()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/appyet/data/Widget;->mPosition:Ljava/lang/Long;

    return-object v0
.end method

.method public getWidgetId()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/appyet/data/Widget;->mWidgetId:Ljava/lang/Long;

    return-object v0
.end method

.method public setModuleId(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/data/Widget;->mModuleId:Ljava/lang/Long;

    return-void
.end method

.method public setPosition(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/data/Widget;->mPosition:Ljava/lang/Long;

    return-void
.end method

.method public setWidgetId(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/data/Widget;->mWidgetId:Ljava/lang/Long;

    return-void
.end method
