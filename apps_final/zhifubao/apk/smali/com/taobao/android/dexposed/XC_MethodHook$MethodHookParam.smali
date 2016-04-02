.class public Lcom/taobao/android/dexposed/XC_MethodHook$MethodHookParam;
.super Lcom/taobao/android/dexposed/callbacks/XCallback$Param;
.source "XC_MethodHook.java"


# instance fields
.field public args:[Ljava/lang/Object;

.field public method:Ljava/lang/reflect/Member;

.field private result:Ljava/lang/Object;

.field returnEarly:Z

.field public thisObject:Ljava/lang/Object;

.field private throwable:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Lcom/taobao/android/dexposed/callbacks/XCallback$Param;-><init>()V

    .line 39
    iput-object v0, p0, Lcom/taobao/android/dexposed/XC_MethodHook$MethodHookParam;->result:Ljava/lang/Object;

    .line 40
    iput-object v0, p0, Lcom/taobao/android/dexposed/XC_MethodHook$MethodHookParam;->throwable:Ljava/lang/Throwable;

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taobao/android/dexposed/XC_MethodHook$MethodHookParam;->returnEarly:Z

    return-void
.end method


# virtual methods
.method public getResult()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/taobao/android/dexposed/XC_MethodHook$MethodHookParam;->result:Ljava/lang/Object;

    return-object v0
.end method

.method public getResultOrThrowable()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/taobao/android/dexposed/XC_MethodHook$MethodHookParam;->throwable:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/taobao/android/dexposed/XC_MethodHook$MethodHookParam;->throwable:Ljava/lang/Throwable;

    throw v0

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/taobao/android/dexposed/XC_MethodHook$MethodHookParam;->result:Ljava/lang/Object;

    return-object v0
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/taobao/android/dexposed/XC_MethodHook$MethodHookParam;->throwable:Ljava/lang/Throwable;

    return-object v0
.end method

.method public hasThrowable()Z
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/taobao/android/dexposed/XC_MethodHook$MethodHookParam;->throwable:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setResult(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 54
    iput-object p1, p0, Lcom/taobao/android/dexposed/XC_MethodHook$MethodHookParam;->result:Ljava/lang/Object;

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/android/dexposed/XC_MethodHook$MethodHookParam;->throwable:Ljava/lang/Throwable;

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/taobao/android/dexposed/XC_MethodHook$MethodHookParam;->returnEarly:Z

    .line 57
    return-void
.end method

.method public setThrowable(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 75
    iput-object p1, p0, Lcom/taobao/android/dexposed/XC_MethodHook$MethodHookParam;->throwable:Ljava/lang/Throwable;

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/android/dexposed/XC_MethodHook$MethodHookParam;->result:Ljava/lang/Object;

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/taobao/android/dexposed/XC_MethodHook$MethodHookParam;->returnEarly:Z

    .line 78
    return-void
.end method
