.class public Lcom/alipay/android/lib/plusin/script/ScriptExcutorCreator;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/alipay/android/lib/plusin/script/ScriptExcutorCreator;

.field private static b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/alipay/android/lib/plusin/script/IScriptExcutor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/alipay/android/lib/plusin/script/IScriptExcutor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/lib/plusin/script/ScriptExcutorCreator;->c:Landroid/util/SparseArray;

    return-void
.end method

.method public static a()Lcom/alipay/android/lib/plusin/script/ScriptExcutorCreator;
    .locals 1

    sget-object v0, Lcom/alipay/android/lib/plusin/script/ScriptExcutorCreator;->a:Lcom/alipay/android/lib/plusin/script/ScriptExcutorCreator;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/android/lib/plusin/script/ScriptExcutorCreator;

    invoke-direct {v0}, Lcom/alipay/android/lib/plusin/script/ScriptExcutorCreator;-><init>()V

    sput-object v0, Lcom/alipay/android/lib/plusin/script/ScriptExcutorCreator;->a:Lcom/alipay/android/lib/plusin/script/ScriptExcutorCreator;

    :cond_0
    sget-object v0, Lcom/alipay/android/lib/plusin/script/ScriptExcutorCreator;->a:Lcom/alipay/android/lib/plusin/script/ScriptExcutorCreator;

    return-object v0
.end method

.method public static a(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alipay/android/lib/plusin/script/IScriptExcutor;",
            ">;)V"
        }
    .end annotation

    sput-object p0, Lcom/alipay/android/lib/plusin/script/ScriptExcutorCreator;->b:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/alipay/android/lib/plusin/script/IScriptExcutor;
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/lib/plusin/script/ScriptExcutorCreator;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/lib/plusin/script/IScriptExcutor;

    if-nez v0, :cond_0

    :try_start_0
    sget-object v1, Lcom/alipay/android/lib/plusin/script/ScriptExcutorCreator;->b:Ljava/lang/Class;

    if-eqz v1, :cond_0

    sget-object v0, Lcom/alipay/android/lib/plusin/script/ScriptExcutorCreator;->b:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/lib/plusin/script/IScriptExcutor;

    iget-object v1, p0, Lcom/alipay/android/lib/plusin/script/ScriptExcutorCreator;->c:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Lcom/alipay/android/app/exception/AppErrorException;

    const-string/jumbo v1, "can not creat script excutor"

    invoke-direct {v0, v1}, Lcom/alipay/android/app/exception/AppErrorException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b(I)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/lib/plusin/script/ScriptExcutorCreator;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/lib/plusin/script/IScriptExcutor;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/alipay/android/lib/plusin/script/IScriptExcutor;->dispose()V

    iget-object v0, p0, Lcom/alipay/android/lib/plusin/script/ScriptExcutorCreator;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_0
    return-void
.end method
