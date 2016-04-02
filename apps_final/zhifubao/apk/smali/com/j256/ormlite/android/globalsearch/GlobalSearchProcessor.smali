.class public Lcom/j256/ormlite/android/globalsearch/GlobalSearchProcessor;
.super Ljava/lang/Object;


# static fields
.field private static globalSearchAgent:Lcom/j256/ormlite/android/globalsearch/GlobalSearchAgent;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addDB(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1

    sget-object v0, Lcom/j256/ormlite/android/globalsearch/GlobalSearchProcessor;->globalSearchAgent:Lcom/j256/ormlite/android/globalsearch/GlobalSearchAgent;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/j256/ormlite/android/globalsearch/GlobalSearchProcessor;->globalSearchAgent:Lcom/j256/ormlite/android/globalsearch/GlobalSearchAgent;

    invoke-interface {v0, p0, p1, p2}, Lcom/j256/ormlite/android/globalsearch/GlobalSearchAgent;->addDB(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static addDB(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)Z
    .locals 6

    sget-object v0, Lcom/j256/ormlite/android/globalsearch/GlobalSearchProcessor;->globalSearchAgent:Lcom/j256/ormlite/android/globalsearch/GlobalSearchAgent;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/j256/ormlite/android/globalsearch/GlobalSearchProcessor;->globalSearchAgent:Lcom/j256/ormlite/android/globalsearch/GlobalSearchAgent;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/j256/ormlite/android/globalsearch/GlobalSearchAgent;->addDB(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static addIndexForTable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    :cond_0
    sget-object v0, Lcom/j256/ormlite/android/globalsearch/GlobalSearchProcessor;->globalSearchAgent:Lcom/j256/ormlite/android/globalsearch/GlobalSearchAgent;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0
.end method

.method public static addIndexForTable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/lang/String;Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    :cond_0
    sget-object v0, Lcom/j256/ormlite/android/globalsearch/GlobalSearchProcessor;->globalSearchAgent:Lcom/j256/ormlite/android/globalsearch/GlobalSearchAgent;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0
.end method

.method public static addIndexForTable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    :cond_0
    sget-object v0, Lcom/j256/ormlite/android/globalsearch/GlobalSearchProcessor;->globalSearchAgent:Lcom/j256/ormlite/android/globalsearch/GlobalSearchAgent;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0
.end method

.method public static getGlobalSearchAgent()Lcom/j256/ormlite/android/globalsearch/GlobalSearchAgent;
    .locals 1

    sget-object v0, Lcom/j256/ormlite/android/globalsearch/GlobalSearchProcessor;->globalSearchAgent:Lcom/j256/ormlite/android/globalsearch/GlobalSearchAgent;

    return-object v0
.end method

.method public static setGlobalSearchAgent(Lcom/j256/ormlite/android/globalsearch/GlobalSearchAgent;)V
    .locals 0

    sput-object p0, Lcom/j256/ormlite/android/globalsearch/GlobalSearchProcessor;->globalSearchAgent:Lcom/j256/ormlite/android/globalsearch/GlobalSearchAgent;

    return-void
.end method
