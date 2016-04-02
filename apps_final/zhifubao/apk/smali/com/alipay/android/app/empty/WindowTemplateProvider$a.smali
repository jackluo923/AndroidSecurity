.class final Lcom/alipay/android/app/empty/WindowTemplateProvider$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/app/empty/WindowTemplateProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/android/app/empty/WindowTemplate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/android/app/empty/WindowTemplate;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/android/app/empty/WindowTemplateProvider$a;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/alipay/android/app/empty/WindowTemplateProvider$a;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lcom/alipay/android/app/empty/WindowTemplateProvider;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {v3}, Lcom/alipay/android/app/empty/WindowTemplateProvider;->a(Z)Z

    new-instance v5, Lcom/alipay/android/app/empty/b;

    iget-object v0, p0, Lcom/alipay/android/app/empty/WindowTemplateProvider$a;->a:Landroid/content/Context;

    invoke-direct {v5, v0}, Lcom/alipay/android/app/empty/b;-><init>(Landroid/content/Context;)V

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/empty/WindowTemplateProvider$a;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/android/app/empty/WindowTemplateProvider$a;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/android/app/empty/WindowTemplate;

    invoke-virtual {v5}, Lcom/alipay/android/app/empty/b;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string/jumbo v7, "select count(*) from window_template where name = ?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    invoke-virtual {v2, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    :goto_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    if-lez v2, :cond_2

    move v2, v3

    :goto_3
    if-eqz v2, :cond_3

    invoke-virtual {v5, v0, v1}, Lcom/alipay/android/app/empty/b;->b(Ljava/lang/String;Lcom/alipay/android/app/empty/WindowTemplate;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    :cond_1
    invoke-virtual {v5}, Lcom/alipay/android/app/empty/b;->close()V

    iget-object v0, p0, Lcom/alipay/android/app/empty/WindowTemplateProvider$a;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    invoke-static {v4}, Lcom/alipay/android/app/empty/WindowTemplateProvider;->a(Z)Z

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_3

    :cond_3
    :try_start_1
    invoke-virtual {v5, v0, v1}, Lcom/alipay/android/app/empty/b;->a(Ljava/lang/String;Lcom/alipay/android/app/empty/WindowTemplate;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_4
    move v2, v4

    goto :goto_2
.end method
