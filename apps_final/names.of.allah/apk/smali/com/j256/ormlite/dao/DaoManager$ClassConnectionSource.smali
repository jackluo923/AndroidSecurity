.class Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;
.super Ljava/lang/Object;


# instance fields
.field clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field connectionSource:Lcom/j256/ormlite/support/ConnectionSource;


# direct methods
.method public constructor <init>(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    iput-object p2, p0, Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;->clazz:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;

    iget-object v1, p0, Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;->clazz:Ljava/lang/Class;

    iget-object v2, p1, Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;->clazz:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    iget-object v2, p1, Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
