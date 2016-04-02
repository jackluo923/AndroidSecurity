.class public final enum Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

.field public static final enum DELETE:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

.field public static final enum EXECUTE:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

.field public static final enum SELECT:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

.field public static final enum SELECT_LONG:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

.field public static final enum SELECT_RAW:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

.field public static final enum UPDATE:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;


# instance fields
.field private final okForExecute:Z

.field private final okForQuery:Z

.field private final okForStatementBuilder:Z

.field private final okForUpdate:Z


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    const-string v1, "SELECT"

    move v4, v3

    move v5, v2

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v0, Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;->SELECT:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    new-instance v4, Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    const-string v5, "SELECT_LONG"

    move v6, v3

    move v7, v3

    move v8, v3

    move v9, v2

    move v10, v2

    invoke-direct/range {v4 .. v10}, Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v4, Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;->SELECT_LONG:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    new-instance v4, Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    const-string v5, "SELECT_RAW"

    move v6, v11

    move v7, v3

    move v8, v3

    move v9, v2

    move v10, v2

    invoke-direct/range {v4 .. v10}, Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v4, Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;->SELECT_RAW:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    new-instance v4, Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    const-string v5, "UPDATE"

    move v6, v12

    move v7, v3

    move v8, v2

    move v9, v3

    move v10, v2

    invoke-direct/range {v4 .. v10}, Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v4, Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;->UPDATE:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    new-instance v4, Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    const-string v5, "DELETE"

    move v6, v13

    move v7, v3

    move v8, v2

    move v9, v3

    move v10, v2

    invoke-direct/range {v4 .. v10}, Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v4, Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;->DELETE:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    new-instance v4, Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    const-string v5, "EXECUTE"

    const/4 v6, 0x5

    move v7, v2

    move v8, v2

    move v9, v2

    move v10, v3

    invoke-direct/range {v4 .. v10}, Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v4, Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;->EXECUTE:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    sget-object v1, Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;->SELECT:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;->SELECT_LONG:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;->SELECT_RAW:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    aput-object v1, v0, v11

    sget-object v1, Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;->UPDATE:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    aput-object v1, v0, v12

    sget-object v1, Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;->DELETE:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    aput-object v1, v0, v13

    const/4 v1, 0x5

    sget-object v2, Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;->EXECUTE:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;->$VALUES:[Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZZZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZZ)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;->okForStatementBuilder:Z

    iput-boolean p4, p0, Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;->okForQuery:Z

    iput-boolean p5, p0, Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;->okForUpdate:Z

    iput-boolean p6, p0, Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;->okForExecute:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;
    .locals 1

    const-class v0, Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    return-object v0
.end method

.method public static values()[Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;
    .locals 1

    sget-object v0, Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;->$VALUES:[Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    invoke-virtual {v0}, [Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    return-object v0
.end method


# virtual methods
.method public final isOkForExecute()Z
    .locals 1

    iget-boolean v0, p0, Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;->okForExecute:Z

    return v0
.end method

.method public final isOkForQuery()Z
    .locals 1

    iget-boolean v0, p0, Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;->okForQuery:Z

    return v0
.end method

.method public final isOkForStatementBuilder()Z
    .locals 1

    iget-boolean v0, p0, Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;->okForStatementBuilder:Z

    return v0
.end method

.method public final isOkForUpdate()Z
    .locals 1

    iget-boolean v0, p0, Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;->okForUpdate:Z

    return v0
.end method
