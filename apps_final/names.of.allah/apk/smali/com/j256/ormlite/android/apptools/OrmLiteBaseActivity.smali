.class public abstract Lcom/j256/ormlite/android/apptools/OrmLiteBaseActivity;
.super Landroid/app/Activity;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<H:",
        "Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;",
        ">",
        "Landroid/app/Activity;"
    }
.end annotation


# static fields
.field private static logger:Lcom/j256/ormlite/logger/Logger;


# instance fields
.field private volatile created:Z

.field private volatile destroyed:Z

.field private volatile helper:Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TH;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/j256/ormlite/android/apptools/OrmLiteBaseActivity;

    invoke-static {v0}, Lcom/j256/ormlite/logger/LoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/j256/ormlite/logger/Logger;

    move-result-object v0

    sput-object v0, Lcom/j256/ormlite/android/apptools/OrmLiteBaseActivity;->logger:Lcom/j256/ormlite/logger/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-boolean v0, p0, Lcom/j256/ormlite/android/apptools/OrmLiteBaseActivity;->created:Z

    iput-boolean v0, p0, Lcom/j256/ormlite/android/apptools/OrmLiteBaseActivity;->destroyed:Z

    return-void
.end method


# virtual methods
.method public getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;
    .locals 1

    invoke-virtual {p0}, Lcom/j256/ormlite/android/apptools/OrmLiteBaseActivity;->getHelper()Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v0

    return-object v0
.end method

.method public getHelper()Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TH;"
        }
    .end annotation

    iget-object v0, p0, Lcom/j256/ormlite/android/apptools/OrmLiteBaseActivity;->helper:Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/j256/ormlite/android/apptools/OrmLiteBaseActivity;->created:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "A call has not been made to onCreate() yet so the helper is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-boolean v0, p0, Lcom/j256/ormlite/android/apptools/OrmLiteBaseActivity;->destroyed:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "A call to onDestroy has already been made and the helper cannot be used after that point"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Helper is null for some unknown reason"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/j256/ormlite/android/apptools/OrmLiteBaseActivity;->helper:Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    return-object v0
.end method

.method protected getHelperInternal(Landroid/content/Context;)Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")TH;"
        }
    .end annotation

    invoke-static {p1}, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->getHelper(Landroid/content/Context;)Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    move-result-object v0

    sget-object v1, Lcom/j256/ormlite/android/apptools/OrmLiteBaseActivity;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v2, "{}: got new helper {} from OpenHelperManager"

    invoke-virtual {v1, v2, p0, v0}, Lcom/j256/ormlite/logger/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/j256/ormlite/android/apptools/OrmLiteBaseActivity;->helper:Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    if-nez v0, :cond_0

    invoke-virtual {p0, p0}, Lcom/j256/ormlite/android/apptools/OrmLiteBaseActivity;->getHelperInternal(Landroid/content/Context;)Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/j256/ormlite/android/apptools/OrmLiteBaseActivity;->helper:Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/j256/ormlite/android/apptools/OrmLiteBaseActivity;->created:Z

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/j256/ormlite/android/apptools/OrmLiteBaseActivity;->helper:Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    invoke-virtual {p0, v0}, Lcom/j256/ormlite/android/apptools/OrmLiteBaseActivity;->releaseHelper(Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/j256/ormlite/android/apptools/OrmLiteBaseActivity;->destroyed:Z

    return-void
.end method

.method protected releaseHelper(Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TH;)V"
        }
    .end annotation

    invoke-static {}, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->releaseHelper()V

    sget-object v0, Lcom/j256/ormlite/android/apptools/OrmLiteBaseActivity;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v1, "{}: helper {} was released, set to null"

    invoke-virtual {v0, v1, p0, p1}, Lcom/j256/ormlite/logger/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/j256/ormlite/android/apptools/OrmLiteBaseActivity;->helper:Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
