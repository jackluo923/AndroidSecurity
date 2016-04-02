.class Lfi/iki/elonen/NanoHTTPD$DefaultTempFileManagerFactory;
.super Ljava/lang/Object;
.source "NanoHTTPD.java"

# interfaces
.implements Lfi/iki/elonen/NanoHTTPD$TempFileManagerFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfi/iki/elonen/NanoHTTPD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultTempFileManagerFactory"
.end annotation


# instance fields
.field final synthetic this$0:Lfi/iki/elonen/NanoHTTPD;


# direct methods
.method private constructor <init>(Lfi/iki/elonen/NanoHTTPD;)V
    .locals 0

    .prologue
    .line 352
    iput-object p1, p0, Lfi/iki/elonen/NanoHTTPD$DefaultTempFileManagerFactory;->this$0:Lfi/iki/elonen/NanoHTTPD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lfi/iki/elonen/NanoHTTPD;Lfi/iki/elonen/NanoHTTPD$1;)V
    .locals 0
    .param p1, "x0"    # Lfi/iki/elonen/NanoHTTPD;
    .param p2, "x1"    # Lfi/iki/elonen/NanoHTTPD$1;

    .prologue
    .line 352
    invoke-direct {p0, p1}, Lfi/iki/elonen/NanoHTTPD$DefaultTempFileManagerFactory;-><init>(Lfi/iki/elonen/NanoHTTPD;)V

    return-void
.end method


# virtual methods
.method public create()Lfi/iki/elonen/NanoHTTPD$TempFileManager;
    .locals 1

    .prologue
    .line 355
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$DefaultTempFileManager;

    invoke-direct {v0}, Lfi/iki/elonen/NanoHTTPD$DefaultTempFileManager;-><init>()V

    return-object v0
.end method
