.class public final Lcom/alipay/android/phone/thirdparty/common/utils/Log;
.super Ljava/lang/Object;


# static fields
.field public static final ASSERT:I = 0x7

.field private static CLS_LOG:Ljava/lang/Class; = null

.field private static final D:Ljava/lang/String; = "d"

.field public static final DEBUG:I = 0x3

.field private static final E:Ljava/lang/String; = "e"

.field public static final ERROR:I = 0x6

.field private static final I:Ljava/lang/String; = "i"

.field public static final INFO:I = 0x4

.field private static LEVEL_TO_METHOD:[Ljava/lang/reflect/Method; = null

.field private static LEVEL_TO_METHOD_THROWABLE:[Ljava/lang/reflect/Method; = null

.field private static final LEVLE_TO_LVL:[Ljava/lang/String;

.field private static LOG_LEVEL:I = 0x0

.field private static final V:Ljava/lang/String; = "v"

.field public static final VERBOSE:I = 0x2

.field private static final W:Ljava/lang/String; = "w"

.field public static final WARN:I = 0x5


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v0, 0x0

    const/4 v3, 0x1

    sput v4, Lcom/alipay/android/phone/thirdparty/common/utils/Log;->LOG_LEVEL:I

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "v"

    aput-object v2, v1, v0

    const-string/jumbo v2, "d"

    aput-object v2, v1, v3

    const-string/jumbo v2, "i"

    aput-object v2, v1, v4

    const-string/jumbo v2, "w"

    aput-object v2, v1, v6

    const/4 v2, 0x4

    const-string/jumbo v3, "e"

    aput-object v3, v1, v2

    sput-object v1, Lcom/alipay/android/phone/thirdparty/common/utils/Log;->LEVLE_TO_LVL:[Ljava/lang/String;

    sput-object v5, Lcom/alipay/android/phone/thirdparty/common/utils/Log;->CLS_LOG:Ljava/lang/Class;

    sput-object v5, Lcom/alipay/android/phone/thirdparty/common/utils/Log;->LEVEL_TO_METHOD:[Ljava/lang/reflect/Method;

    sput-object v5, Lcom/alipay/android/phone/thirdparty/common/utils/Log;->LEVEL_TO_METHOD_THROWABLE:[Ljava/lang/reflect/Method;

    :try_start_0
    const-string/jumbo v1, "android.util.Log"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/alipay/android/phone/thirdparty/common/utils/Log;->CLS_LOG:Ljava/lang/Class;

    sget-object v1, Lcom/alipay/android/phone/thirdparty/common/utils/Log;->LEVLE_TO_LVL:[Ljava/lang/String;

    array-length v1, v1

    new-array v2, v1, [Ljava/lang/reflect/Method;

    sput-object v2, Lcom/alipay/android/phone/thirdparty/common/utils/Log;->LEVEL_TO_METHOD:[Ljava/lang/reflect/Method;

    new-array v2, v1, [Ljava/lang/reflect/Method;

    sput-object v2, Lcom/alipay/android/phone/thirdparty/common/utils/Log;->LEVEL_TO_METHOD_THROWABLE:[Ljava/lang/reflect/Method;

    :goto_0
    if-ge v0, v1, :cond_0

    sget-object v2, Lcom/alipay/android/phone/thirdparty/common/utils/Log;->LEVEL_TO_METHOD:[Ljava/lang/reflect/Method;

    sget-object v3, Lcom/alipay/android/phone/thirdparty/common/utils/Log;->CLS_LOG:Ljava/lang/Class;

    sget-object v4, Lcom/alipay/android/phone/thirdparty/common/utils/Log;->LEVLE_TO_LVL:[Ljava/lang/String;

    aget-object v4, v4, v0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    aput-object v3, v2, v0

    sget-object v2, Lcom/alipay/android/phone/thirdparty/common/utils/Log;->LEVEL_TO_METHOD:[Ljava/lang/reflect/Method;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    sget-object v2, Lcom/alipay/android/phone/thirdparty/common/utils/Log;->LEVEL_TO_METHOD_THROWABLE:[Ljava/lang/reflect/Method;

    sget-object v3, Lcom/alipay/android/phone/thirdparty/common/utils/Log;->CLS_LOG:Ljava/lang/Class;

    sget-object v4, Lcom/alipay/android/phone/thirdparty/common/utils/Log;->LEVLE_TO_LVL:[Ljava/lang/String;

    aget-object v4, v4, v0

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-class v7, Ljava/lang/Throwable;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    aput-object v3, v2, v0

    sget-object v2, Lcom/alipay/android/phone/thirdparty/common/utils/Log;->LEVEL_TO_METHOD_THROWABLE:[Ljava/lang/reflect/Method;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    :goto_1
    return-void

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x3

    invoke-static {v0, p0, p1}, Lcom/alipay/android/phone/thirdparty/common/utils/Log;->logMsg(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x3

    invoke-static {v0, p0, p1, p2}, Lcom/alipay/android/phone/thirdparty/common/utils/Log;->logMsgThr(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x6

    invoke-static {v0, p0, p1}, Lcom/alipay/android/phone/thirdparty/common/utils/Log;->logMsg(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x6

    invoke-static {v0, p0, p1, p2}, Lcom/alipay/android/phone/thirdparty/common/utils/Log;->logMsgThr(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x4

    invoke-static {v0, p0, p1}, Lcom/alipay/android/phone/thirdparty/common/utils/Log;->logMsg(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x4

    invoke-static {v0, p0, p1, p2}, Lcom/alipay/android/phone/thirdparty/common/utils/Log;->logMsgThr(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static varargs invoke(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method private static logMsg(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    sget v0, Lcom/alipay/android/phone/thirdparty/common/utils/Log;->LOG_LEVEL:I

    if-gt v0, p0, :cond_0

    sget-object v0, Lcom/alipay/android/phone/thirdparty/common/utils/Log;->CLS_LOG:Ljava/lang/Class;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/alipay/android/phone/thirdparty/common/utils/Log;->LEVEL_TO_METHOD:[Ljava/lang/reflect/Method;

    add-int/lit8 v1, p0, -0x2

    aget-object v0, v0, v1

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/alipay/android/phone/thirdparty/common/utils/Log;->invoke(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/alipay/android/phone/thirdparty/common/utils/Log;->LEVLE_TO_LVL:[Ljava/lang/String;

    add-int/lit8 v1, p0, -0x2

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Lcom/alipay/android/phone/thirdparty/common/utils/Log;->println(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static logMsgThr(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    sget v0, Lcom/alipay/android/phone/thirdparty/common/utils/Log;->LOG_LEVEL:I

    if-gt v0, p0, :cond_0

    sget-object v0, Lcom/alipay/android/phone/thirdparty/common/utils/Log;->CLS_LOG:Ljava/lang/Class;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/alipay/android/phone/thirdparty/common/utils/Log;->LEVEL_TO_METHOD_THROWABLE:[Ljava/lang/reflect/Method;

    add-int/lit8 v1, p0, -0x2

    aget-object v0, v0, v1

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {v0, v1}, Lcom/alipay/android/phone/thirdparty/common/utils/Log;->invoke(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/alipay/android/phone/thirdparty/common/utils/Log;->LEVLE_TO_LVL:[Ljava/lang/String;

    add-int/lit8 v1, p0, -0x2

    aget-object v0, v0, v1

    invoke-static {v0, p1, p2, p3}, Lcom/alipay/android/phone/thirdparty/common/utils/Log;->println(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static println(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    if-eqz p3, :cond_1

    invoke-static {p3}, Lcom/alipay/android/phone/thirdparty/common/utils/Log;->throwableToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    const-string/jumbo v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static setLogLevel(I)V
    .locals 2

    const/4 v0, 0x2

    if-lt p0, v0, :cond_0

    const/4 v0, 0x6

    if-gt p0, v0, :cond_0

    sput p0, Lcom/alipay/android/phone/thirdparty/common/utils/Log;->LOG_LEVEL:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "level should between [2 , 6]"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static throwableToString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_2

    :try_start_0
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v0, ""

    goto :goto_1

    :cond_2
    const-string/jumbo v0, ""

    goto :goto_1
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    invoke-static {v0, p0, p1}, Lcom/alipay/android/phone/thirdparty/common/utils/Log;->logMsg(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x2

    invoke-static {v0, p0, p1, p2}, Lcom/alipay/android/phone/thirdparty/common/utils/Log;->logMsgThr(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x5

    invoke-static {v0, p0, p1}, Lcom/alipay/android/phone/thirdparty/common/utils/Log;->logMsg(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x5

    invoke-static {v0, p0, p1, p2}, Lcom/alipay/android/phone/thirdparty/common/utils/Log;->logMsgThr(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
