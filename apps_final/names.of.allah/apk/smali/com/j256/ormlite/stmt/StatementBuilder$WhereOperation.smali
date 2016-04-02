.class public final enum Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;

.field public static final enum AND:Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;

.field public static final enum FIRST:Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;

.field public static final enum OR:Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;


# instance fields
.field private final after:Ljava/lang/String;

.field private final before:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;

    const-string v1, "FIRST"

    const-string v2, "WHERE "

    const/4 v3, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;->FIRST:Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;

    new-instance v0, Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;

    const-string v1, "AND"

    const-string v2, "AND ("

    const-string v3, ") "

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;->AND:Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;

    new-instance v0, Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;

    const-string v1, "OR"

    const-string v2, "OR ("

    const-string v3, ") "

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;->OR:Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;

    sget-object v1, Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;->FIRST:Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;

    aput-object v1, v0, v4

    sget-object v1, Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;->AND:Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;

    aput-object v1, v0, v5

    sget-object v1, Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;->OR:Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;

    aput-object v1, v0, v6

    sput-object v0, Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;->$VALUES:[Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;->before:Ljava/lang/String;

    iput-object p4, p0, Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;->after:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;
    .locals 1

    const-class v0, Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;

    return-object v0
.end method

.method public static values()[Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;
    .locals 1

    sget-object v0, Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;->$VALUES:[Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;

    invoke-virtual {v0}, [Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;

    return-object v0
.end method


# virtual methods
.method public final appendAfter(Ljava/lang/StringBuilder;)V
    .locals 1

    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;->after:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;->after:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method public final appendBefore(Ljava/lang/StringBuilder;)V
    .locals 1

    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;->before:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;->before:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method
