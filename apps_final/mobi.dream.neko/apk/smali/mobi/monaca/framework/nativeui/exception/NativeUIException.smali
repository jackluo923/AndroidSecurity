.class public abstract Lmobi/monaca/framework/nativeui/exception/NativeUIException;
.super Ljava/lang/Exception;
.source "NativeUIException.java"


# instance fields
.field protected componentName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "componentName"    # Ljava/lang/String;

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 7
    iput-object p1, p0, Lmobi/monaca/framework/nativeui/exception/NativeUIException;->componentName:Ljava/lang/String;

    .line 8
    return-void
.end method


# virtual methods
.method public abstract getMessage()Ljava/lang/String;
.end method
