.class public Lcom/taobao/hotpatch/patch/PatchResult;
.super Ljava/lang/Object;
.source "PatchResult.java"


# static fields
.field public static ALL_PATCH_FAILED:I

.field public static DEVICE_UNSUPPORT:I

.field public static FILE_NOT_FOUND:I

.field public static FOUND_PATCH_CLASS_EXCEPTION:I

.field public static LOAD_SO_CRASHED:I

.field public static LOAD_SO_EXCEPTION:I

.field public static NO_ERROR:I

.field public static NO_PATCH_CLASS_HANDLE:I


# instance fields
.field private ErrorInfo:Ljava/lang/String;

.field private erroCode:I

.field private result:Z

.field private throwable:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    sput v0, Lcom/taobao/hotpatch/patch/PatchResult;->NO_ERROR:I

    .line 18
    const/4 v0, 0x1

    sput v0, Lcom/taobao/hotpatch/patch/PatchResult;->DEVICE_UNSUPPORT:I

    .line 23
    const/4 v0, 0x2

    sput v0, Lcom/taobao/hotpatch/patch/PatchResult;->LOAD_SO_EXCEPTION:I

    .line 28
    const/4 v0, 0x3

    sput v0, Lcom/taobao/hotpatch/patch/PatchResult;->LOAD_SO_CRASHED:I

    .line 33
    const/4 v0, 0x4

    sput v0, Lcom/taobao/hotpatch/patch/PatchResult;->FILE_NOT_FOUND:I

    .line 38
    const/4 v0, 0x5

    sput v0, Lcom/taobao/hotpatch/patch/PatchResult;->FOUND_PATCH_CLASS_EXCEPTION:I

    .line 43
    const/4 v0, 0x6

    sput v0, Lcom/taobao/hotpatch/patch/PatchResult;->NO_PATCH_CLASS_HANDLE:I

    .line 48
    const/4 v0, 0x7

    sput v0, Lcom/taobao/hotpatch/patch/PatchResult;->ALL_PATCH_FAILED:I

    return-void
.end method

.method public constructor <init>(ZILjava/lang/String;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-boolean p1, p0, Lcom/taobao/hotpatch/patch/PatchResult;->result:Z

    .line 52
    iput p2, p0, Lcom/taobao/hotpatch/patch/PatchResult;->erroCode:I

    .line 53
    iput-object p3, p0, Lcom/taobao/hotpatch/patch/PatchResult;->ErrorInfo:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public constructor <init>(ZILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-boolean p1, p0, Lcom/taobao/hotpatch/patch/PatchResult;->result:Z

    .line 58
    iput p2, p0, Lcom/taobao/hotpatch/patch/PatchResult;->erroCode:I

    .line 59
    iput-object p3, p0, Lcom/taobao/hotpatch/patch/PatchResult;->ErrorInfo:Ljava/lang/String;

    .line 60
    iput-object p4, p0, Lcom/taobao/hotpatch/patch/PatchResult;->throwable:Ljava/lang/Throwable;

    .line 61
    return-void
.end method


# virtual methods
.method public getErrocode()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/taobao/hotpatch/patch/PatchResult;->erroCode:I

    return v0
.end method

.method public getErrorInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/taobao/hotpatch/patch/PatchResult;->ErrorInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getThrowbale()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/taobao/hotpatch/patch/PatchResult;->throwable:Ljava/lang/Throwable;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/taobao/hotpatch/patch/PatchResult;->result:Z

    return v0
.end method
