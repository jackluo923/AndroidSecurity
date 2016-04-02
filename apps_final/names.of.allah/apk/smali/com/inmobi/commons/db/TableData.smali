.class public Lcom/inmobi/commons/db/TableData;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/inmobi/commons/db/ColumnData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getmColumns()Ljava/util/LinkedHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/inmobi/commons/db/ColumnData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/inmobi/commons/db/TableData;->b:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method public getmTableName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/commons/db/TableData;->a:Ljava/lang/String;

    return-object v0
.end method

.method public setmColumns(Ljava/util/LinkedHashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/inmobi/commons/db/ColumnData;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/inmobi/commons/db/TableData;->b:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public setmTableName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/commons/db/TableData;->a:Ljava/lang/String;

    return-void
.end method
