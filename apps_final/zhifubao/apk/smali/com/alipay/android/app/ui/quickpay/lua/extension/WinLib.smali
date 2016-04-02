.class public Lcom/alipay/android/app/ui/quickpay/lua/extension/WinLib;
.super Lorg/luaj/vm2/lib/TwoArgFunction;

# interfaces
.implements Lcom/alipay/android/app/sys/IDispose;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/ui/quickpay/lua/extension/WinLib$WinLibV;
    }
.end annotation


# static fields
.field public static final LIB_NAME:Ljava/lang/String; = "win"

.field private static final WIN_ALERT:I = 0x0

.field private static final WIN_CLEARINTERVAL:I = 0x8

.field private static final WIN_CLEARTIMEOUT:I = 0xa

.field private static final WIN_CONFIRM:I = 0x1

.field private static final WIN_DISMISS:I = 0x4

.field private static final WIN_EXIT:I = 0x5

.field private static final WIN_GUIDEVIEW:I = 0xc

.field private static final WIN_OPEN:I = 0x6

.field private static final WIN_READ_SMS:I = 0xb

.field private static final WIN_SETINTERVAL:I = 0x7

.field private static final WIN_SETTIMEOUT:I = 0x9

.field private static final WIN_SUBMIT:I = 0x3

.field private static final WIN_TOAST:I = 0x2


# instance fields
.field public final WIN_NAMES:[Ljava/lang/String;

.field private timerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Timer;",
            ">;"
        }
    .end annotation
.end field

.field private winScriptable:Lcom/alipay/android/app/ui/quickpay/lua/scriptable/IWinScriptable;


# direct methods
.method public constructor <init>(Lcom/alipay/android/app/ui/quickpay/lua/scriptable/IWinScriptable;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    invoke-direct {p0}, Lorg/luaj/vm2/lib/TwoArgFunction;-><init>()V

    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "alert"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "confirm"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "toast"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "submit"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "dismiss"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "exit"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "open"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "setInterval"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "clearInterval"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "setTimeout"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "clearTimeout"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "readSms"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "guideview"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/lua/extension/WinLib;->WIN_NAMES:[Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/lua/extension/WinLib;->timerMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Lcom/alipay/android/app/ui/quickpay/lua/extension/WinLib;->setWinScriptable(Lcom/alipay/android/app/ui/quickpay/lua/scriptable/IWinScriptable;)V

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/android/app/ui/quickpay/lua/extension/WinLib;)Lcom/alipay/android/app/ui/quickpay/lua/scriptable/IWinScriptable;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/lua/extension/WinLib;->winScriptable:Lcom/alipay/android/app/ui/quickpay/lua/scriptable/IWinScriptable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/android/app/ui/quickpay/lua/extension/WinLib;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/alipay/android/app/ui/quickpay/lua/extension/WinLib;->clearSchedule(I)Z

    move-result v0

    return v0
.end method

.method private cancelTimer(Ljava/util/Timer;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private declared-synchronized clearSchedule(I)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/lua/extension/WinLib;->timerMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/lua/extension/WinLib;->timerMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Timer;

    invoke-direct {p0, v0}, Lcom/alipay/android/app/ui/quickpay/lua/extension/WinLib;->cancelTimer(Ljava/util/Timer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized startSchedule(Lorg/luaj/vm2/LuaValue;IZ)Lorg/luaj/vm2/LuaValue;
    .locals 7

    monitor-enter p0

    if-gtz p2, :cond_0

    :try_start_0
    sget-object v0, Lorg/luaj/vm2/LuaValue;->NIL:Lorg/luaj/vm2/LuaValue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v6

    new-instance v1, Lcom/alipay/android/app/ui/quickpay/lua/extension/a;

    invoke-direct {v1, p0, v6, p1}, Lcom/alipay/android/app/ui/quickpay/lua/extension/a;-><init>(Lcom/alipay/android/app/ui/quickpay/lua/extension/WinLib;ILorg/luaj/vm2/LuaValue;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p3, :cond_1

    int-to-long v2, p2

    :try_start_2
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :goto_1
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/lua/extension/WinLib;->timerMap:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v6}, Lorg/luaj/vm2/LuaValue;->valueOf(I)Lorg/luaj/vm2/LuaInteger;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x0

    int-to-long v4, p2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_3
    sget-object v0, Lorg/luaj/vm2/LuaValue;->NIL:Lorg/luaj/vm2/LuaValue;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public call(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;
    .locals 5

    new-instance v1, Lorg/luaj/vm2/LuaTable;

    invoke-direct {v1}, Lorg/luaj/vm2/LuaTable;-><init>()V

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/lua/extension/WinLib;->WIN_NAMES:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/lua/extension/WinLib;->WIN_NAMES:[Ljava/lang/String;

    aget-object v2, v2, v0

    new-instance v3, Lcom/alipay/android/app/ui/quickpay/lua/extension/WinLib$WinLibV;

    iget-object v4, p0, Lcom/alipay/android/app/ui/quickpay/lua/extension/WinLib;->WIN_NAMES:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-direct {v3, v0, v4, p0}, Lcom/alipay/android/app/ui/quickpay/lua/extension/WinLib$WinLibV;-><init>(ILjava/lang/String;Lcom/alipay/android/app/ui/quickpay/lua/extension/WinLib;)V

    invoke-virtual {v1, v2, v3}, Lorg/luaj/vm2/LuaTable;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "win"

    invoke-virtual {p2, v0, v1}, Lorg/luaj/vm2/LuaValue;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    return-object v1
.end method

.method public dispose()V
    .locals 3

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/alipay/android/app/ui/quickpay/lua/extension/WinLib;->winScriptable:Lcom/alipay/android/app/ui/quickpay/lua/scriptable/IWinScriptable;

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/lua/extension/WinLib;->timerMap:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/lua/extension/WinLib;->timerMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Timer;

    invoke-direct {p0, v0}, Lcom/alipay/android/app/ui/quickpay/lua/extension/WinLib;->cancelTimer(Ljava/util/Timer;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/lua/extension/WinLib;->timerMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iput-object v2, p0, Lcom/alipay/android/app/ui/quickpay/lua/extension/WinLib;->timerMap:Ljava/util/HashMap;

    :cond_1
    return-void
.end method

.method public getWinScriptable()Lcom/alipay/android/app/ui/quickpay/lua/scriptable/IWinScriptable;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/lua/extension/WinLib;->winScriptable:Lcom/alipay/android/app/ui/quickpay/lua/scriptable/IWinScriptable;

    return-object v0
.end method

.method public setWinScriptable(Lcom/alipay/android/app/ui/quickpay/lua/scriptable/IWinScriptable;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/lua/extension/WinLib;->winScriptable:Lcom/alipay/android/app/ui/quickpay/lua/scriptable/IWinScriptable;

    return-void
.end method

.method public win_alert(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public win_clear_interval(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p1}, Lorg/luaj/vm2/Varargs;->narg()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v1}, Lorg/luaj/vm2/LuaValue;->valueOf(Z)Lorg/luaj/vm2/LuaBoolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v1}, Lorg/luaj/vm2/LuaValue;->valueOf(Z)Lorg/luaj/vm2/LuaBoolean;

    move-result-object v0

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p1, v1}, Lorg/luaj/vm2/Varargs;->checkint(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/alipay/android/app/ui/quickpay/lua/extension/WinLib;->clearSchedule(I)Z

    move-result v1

    invoke-static {v1}, Lorg/luaj/vm2/LuaValue;->valueOf(Z)Lorg/luaj/vm2/LuaBoolean;
    :try_end_0
    .catch Lorg/luaj/vm2/LuaError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/alipay/android/app/ui/quickpay/lua/LuaErrorHandler;->handle(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-static {v1}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public win_clear_timeout(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p1}, Lorg/luaj/vm2/Varargs;->narg()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-static {v1}, Lorg/luaj/vm2/LuaValue;->valueOf(Z)Lorg/luaj/vm2/LuaBoolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v1}, Lorg/luaj/vm2/LuaValue;->valueOf(Z)Lorg/luaj/vm2/LuaBoolean;

    move-result-object v0

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p1, v1}, Lorg/luaj/vm2/Varargs;->checkint(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/alipay/android/app/ui/quickpay/lua/extension/WinLib;->clearSchedule(I)Z

    move-result v1

    invoke-static {v1}, Lorg/luaj/vm2/LuaValue;->valueOf(Z)Lorg/luaj/vm2/LuaBoolean;
    :try_end_0
    .catch Lorg/luaj/vm2/LuaError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/alipay/android/app/ui/quickpay/lua/LuaErrorHandler;->handle(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-static {v1}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public win_confirm(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public win_dismiss(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/lua/extension/WinLib;->winScriptable:Lcom/alipay/android/app/ui/quickpay/lua/scriptable/IWinScriptable;

    invoke-interface {v0}, Lcom/alipay/android/app/ui/quickpay/lua/scriptable/IWinScriptable;->dismiss()V

    sget-object v0, Lorg/luaj/vm2/LuaValue;->NONE:Lorg/luaj/vm2/LuaValue;

    return-object v0
.end method

.method public win_exit(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/lua/extension/WinLib;->winScriptable:Lcom/alipay/android/app/ui/quickpay/lua/scriptable/IWinScriptable;

    invoke-interface {v0}, Lcom/alipay/android/app/ui/quickpay/lua/scriptable/IWinScriptable;->exit()V

    sget-object v0, Lorg/luaj/vm2/LuaValue;->NONE:Lorg/luaj/vm2/LuaValue;

    return-object v0
.end method

.method public win_guideview(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lorg/luaj/vm2/LuaValue;->valueOf(Z)Lorg/luaj/vm2/LuaBoolean;

    move-result-object v0

    return-object v0
.end method

.method public win_open(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;
    .locals 3

    invoke-virtual {p1}, Lorg/luaj/vm2/Varargs;->narg()I

    move-result v0

    if-gtz v0, :cond_0

    sget-object v0, Lorg/luaj/vm2/LuaValue;->NONE:Lorg/luaj/vm2/LuaValue;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p1, v0}, Lorg/luaj/vm2/Varargs;->checkjstring(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/lua/extension/WinLib;->winScriptable:Lcom/alipay/android/app/ui/quickpay/lua/scriptable/IWinScriptable;

    const-string/jumbo v2, "\u670d\u52a1\u534f\u8bae"

    invoke-interface {v1, v2, v0}, Lcom/alipay/android/app/ui/quickpay/lua/scriptable/IWinScriptable;->open(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/luaj/vm2/LuaError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    sget-object v0, Lorg/luaj/vm2/LuaValue;->NONE:Lorg/luaj/vm2/LuaValue;

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/lua/LuaErrorHandler;->handle(Ljava/lang/Exception;)V

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public win_read_sms(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;
    .locals 4

    const/4 v2, 0x2

    const/4 v1, 0x0

    invoke-virtual {p1}, Lorg/luaj/vm2/Varargs;->narg()I

    move-result v0

    if-ge v0, v2, :cond_0

    invoke-static {v1}, Lorg/luaj/vm2/LuaValue;->valueOf(Z)Lorg/luaj/vm2/LuaBoolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v1}, Lorg/luaj/vm2/LuaValue;->valueOf(Z)Lorg/luaj/vm2/LuaBoolean;

    move-result-object v0

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p1, v1}, Lorg/luaj/vm2/Varargs;->checkjstring(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lorg/luaj/vm2/Varargs;->checkjstring(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/app/ui/quickpay/lua/extension/WinLib;->winScriptable:Lcom/alipay/android/app/ui/quickpay/lua/scriptable/IWinScriptable;

    invoke-interface {v3, v1, v2}, Lcom/alipay/android/app/ui/quickpay/lua/scriptable/IWinScriptable;->readSms(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {v1}, Lorg/luaj/vm2/LuaValue;->valueOf(Z)Lorg/luaj/vm2/LuaBoolean;
    :try_end_0
    .catch Lorg/luaj/vm2/LuaError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/alipay/android/app/ui/quickpay/lua/LuaErrorHandler;->handle(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-static {v1}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public win_set_interval(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;
    .locals 4

    const/4 v1, 0x2

    invoke-virtual {p1}, Lorg/luaj/vm2/Varargs;->narg()I

    move-result v0

    if-ge v0, v1, :cond_1

    sget-object v0, Lorg/luaj/vm2/LuaValue;->NONE:Lorg/luaj/vm2/LuaValue;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lorg/luaj/vm2/LuaValue;->NONE:Lorg/luaj/vm2/LuaValue;

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p1, v1}, Lorg/luaj/vm2/Varargs;->checkfunction(I)Lorg/luaj/vm2/LuaFunction;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lorg/luaj/vm2/Varargs;->checkint(I)I

    move-result v2

    invoke-virtual {v1}, Lorg/luaj/vm2/LuaValue;->isnil()Z

    move-result v3

    if-nez v3, :cond_0

    if-lez v2, :cond_0

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/alipay/android/app/ui/quickpay/lua/extension/WinLib;->startSchedule(Lorg/luaj/vm2/LuaValue;IZ)Lorg/luaj/vm2/LuaValue;
    :try_end_0
    .catch Lorg/luaj/vm2/LuaError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/alipay/android/app/ui/quickpay/lua/LuaErrorHandler;->handle(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-static {v1}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public win_set_timeout(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;
    .locals 4

    const/4 v1, 0x2

    invoke-virtual {p1}, Lorg/luaj/vm2/Varargs;->narg()I

    move-result v0

    if-ge v0, v1, :cond_1

    sget-object v0, Lorg/luaj/vm2/LuaValue;->NONE:Lorg/luaj/vm2/LuaValue;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lorg/luaj/vm2/LuaValue;->NONE:Lorg/luaj/vm2/LuaValue;

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p1, v1}, Lorg/luaj/vm2/Varargs;->checkfunction(I)Lorg/luaj/vm2/LuaFunction;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lorg/luaj/vm2/Varargs;->checkint(I)I

    move-result v2

    invoke-virtual {v1}, Lorg/luaj/vm2/LuaValue;->isnil()Z

    move-result v3

    if-nez v3, :cond_0

    if-lez v2, :cond_0

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Lcom/alipay/android/app/ui/quickpay/lua/extension/WinLib;->startSchedule(Lorg/luaj/vm2/LuaValue;IZ)Lorg/luaj/vm2/LuaValue;
    :try_end_0
    .catch Lorg/luaj/vm2/LuaError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/alipay/android/app/ui/quickpay/lua/LuaErrorHandler;->handle(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-static {v1}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public win_submit(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public win_toast(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;
    .locals 2

    invoke-virtual {p1}, Lorg/luaj/vm2/Varargs;->narg()I

    move-result v0

    if-gtz v0, :cond_0

    sget-object v0, Lorg/luaj/vm2/LuaValue;->NONE:Lorg/luaj/vm2/LuaValue;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p1, v0}, Lorg/luaj/vm2/Varargs;->checkjstring(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/lua/extension/WinLib;->winScriptable:Lcom/alipay/android/app/ui/quickpay/lua/scriptable/IWinScriptable;

    invoke-interface {v1, v0}, Lcom/alipay/android/app/ui/quickpay/lua/scriptable/IWinScriptable;->toast(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    sget-object v0, Lorg/luaj/vm2/LuaValue;->NONE:Lorg/luaj/vm2/LuaValue;

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/lua/LuaErrorHandler;->handle(Ljava/lang/Exception;)V

    goto :goto_1
.end method
