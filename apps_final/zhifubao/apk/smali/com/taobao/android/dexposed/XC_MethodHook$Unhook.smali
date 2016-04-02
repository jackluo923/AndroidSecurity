.class public Lcom/taobao/android/dexposed/XC_MethodHook$Unhook;
.super Ljava/lang/Object;
.source "XC_MethodHook.java"


# instance fields
.field private final hookMethod:Ljava/lang/reflect/Member;

.field final synthetic this$0:Lcom/taobao/android/dexposed/XC_MethodHook;


# direct methods
.method public constructor <init>(Lcom/taobao/android/dexposed/XC_MethodHook;Ljava/lang/reflect/Member;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/taobao/android/dexposed/XC_MethodHook$Unhook;->this$0:Lcom/taobao/android/dexposed/XC_MethodHook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p2, p0, Lcom/taobao/android/dexposed/XC_MethodHook$Unhook;->hookMethod:Ljava/lang/reflect/Member;

    .line 93
    return-void
.end method


# virtual methods
.method public getCallback()Lcom/taobao/android/dexposed/XC_MethodHook;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/taobao/android/dexposed/XC_MethodHook$Unhook;->this$0:Lcom/taobao/android/dexposed/XC_MethodHook;

    return-object v0
.end method

.method public getHookedMethod()Ljava/lang/reflect/Member;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/taobao/android/dexposed/XC_MethodHook$Unhook;->hookMethod:Ljava/lang/reflect/Member;

    return-object v0
.end method

.method public unhook()V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/taobao/android/dexposed/XC_MethodHook$Unhook;->hookMethod:Ljava/lang/reflect/Member;

    iget-object v1, p0, Lcom/taobao/android/dexposed/XC_MethodHook$Unhook;->this$0:Lcom/taobao/android/dexposed/XC_MethodHook;

    invoke-static {v0, v1}, Lcom/taobao/android/dexposed/XposedBridge;->unhookMethod(Ljava/lang/reflect/Member;Lcom/taobao/android/dexposed/XC_MethodHook;)V

    .line 106
    return-void
.end method
