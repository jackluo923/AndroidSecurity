.class public abstract Lcom/taobao/android/dexposed/XC_MethodReplacement;
.super Lcom/taobao/android/dexposed/XC_MethodHook;
.source "XC_MethodReplacement.java"


# static fields
.field public static final DO_NOTHING:Lcom/taobao/android/dexposed/XC_MethodReplacement;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 30
    new-instance v0, Lcom/taobao/android/dexposed/XC_MethodReplacement$1;

    const/16 v1, 0x4e20

    invoke-direct {v0, v1}, Lcom/taobao/android/dexposed/XC_MethodReplacement$1;-><init>(I)V

    sput-object v0, Lcom/taobao/android/dexposed/XC_MethodReplacement;->DO_NOTHING:Lcom/taobao/android/dexposed/XC_MethodReplacement;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/taobao/android/dexposed/XC_MethodHook;-><init>()V

    .line 7
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/taobao/android/dexposed/XC_MethodHook;-><init>(I)V

    .line 10
    return-void
.end method

.method public static returnConstant(ILjava/lang/Object;)Lcom/taobao/android/dexposed/XC_MethodReplacement;
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lcom/taobao/android/dexposed/XC_MethodReplacement$2;

    invoke-direct {v0, p0, p1}, Lcom/taobao/android/dexposed/XC_MethodReplacement$2;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static returnConstant(Ljava/lang/Object;)Lcom/taobao/android/dexposed/XC_MethodReplacement;
    .locals 1

    .prologue
    .line 41
    const/16 v0, 0x32

    invoke-static {v0, p0}, Lcom/taobao/android/dexposed/XC_MethodReplacement;->returnConstant(ILjava/lang/Object;)Lcom/taobao/android/dexposed/XC_MethodReplacement;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final afterHookedMethod(Lcom/taobao/android/dexposed/XC_MethodHook$MethodHookParam;)V
    .locals 0

    .prologue
    .line 22
    return-void
.end method

.method protected final beforeHookedMethod(Lcom/taobao/android/dexposed/XC_MethodHook$MethodHookParam;)V
    .locals 1

    .prologue
    .line 15
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/taobao/android/dexposed/XC_MethodReplacement;->replaceHookedMethod(Lcom/taobao/android/dexposed/XC_MethodHook$MethodHookParam;)Ljava/lang/Object;

    move-result-object v0

    .line 16
    invoke-virtual {p1, v0}, Lcom/taobao/android/dexposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    :goto_0
    return-void

    .line 17
    :catch_0
    move-exception v0

    .line 18
    invoke-virtual {p1, v0}, Lcom/taobao/android/dexposed/XC_MethodHook$MethodHookParam;->setThrowable(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected abstract replaceHookedMethod(Lcom/taobao/android/dexposed/XC_MethodHook$MethodHookParam;)Ljava/lang/Object;
.end method
