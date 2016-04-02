.class public final enum Lfi/iki/elonen/NanoHTTPD$Response$Status;
.super Ljava/lang/Enum;
.source "NanoHTTPD.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfi/iki/elonen/NanoHTTPD$Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lfi/iki/elonen/NanoHTTPD$Response$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lfi/iki/elonen/NanoHTTPD$Response$Status;

.field public static final enum ACCEPTED:Lfi/iki/elonen/NanoHTTPD$Response$Status;

.field public static final enum BAD_REQUEST:Lfi/iki/elonen/NanoHTTPD$Response$Status;

.field public static final enum CREATED:Lfi/iki/elonen/NanoHTTPD$Response$Status;

.field public static final enum FORBIDDEN:Lfi/iki/elonen/NanoHTTPD$Response$Status;

.field public static final enum INTERNAL_ERROR:Lfi/iki/elonen/NanoHTTPD$Response$Status;

.field public static final enum NOT_FOUND:Lfi/iki/elonen/NanoHTTPD$Response$Status;

.field public static final enum NOT_MODIFIED:Lfi/iki/elonen/NanoHTTPD$Response$Status;

.field public static final enum NO_CONTENT:Lfi/iki/elonen/NanoHTTPD$Response$Status;

.field public static final enum OK:Lfi/iki/elonen/NanoHTTPD$Response$Status;

.field public static final enum PARTIAL_CONTENT:Lfi/iki/elonen/NanoHTTPD$Response$Status;

.field public static final enum RANGE_NOT_SATISFIABLE:Lfi/iki/elonen/NanoHTTPD$Response$Status;

.field public static final enum REDIRECT:Lfi/iki/elonen/NanoHTTPD$Response$Status;

.field public static final enum UNAUTHORIZED:Lfi/iki/elonen/NanoHTTPD$Response$Status;


# instance fields
.field private final description:Ljava/lang/String;

.field private final requestStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 588
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v1, "OK"

    const/16 v2, 0xc8

    const-string v3, "OK"

    invoke-direct {v0, v1, v5, v2, v3}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->OK:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v1, "CREATED"

    const/16 v2, 0xc9

    const-string v3, "Created"

    invoke-direct {v0, v1, v6, v2, v3}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->CREATED:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v1, "ACCEPTED"

    const/16 v2, 0xca

    const-string v3, "Accepted"

    invoke-direct {v0, v1, v7, v2, v3}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->ACCEPTED:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v1, "NO_CONTENT"

    const/16 v2, 0xcc

    const-string v3, "No Content"

    invoke-direct {v0, v1, v8, v2, v3}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->NO_CONTENT:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v1, "PARTIAL_CONTENT"

    const/16 v2, 0xce

    const-string v3, "Partial Content"

    invoke-direct {v0, v1, v9, v2, v3}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->PARTIAL_CONTENT:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v1, "REDIRECT"

    const/4 v2, 0x5

    const/16 v3, 0x12d

    const-string v4, "Moved Permanently"

    invoke-direct {v0, v1, v2, v3, v4}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->REDIRECT:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 589
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v1, "NOT_MODIFIED"

    const/4 v2, 0x6

    const/16 v3, 0x130

    const-string v4, "Not Modified"

    invoke-direct {v0, v1, v2, v3, v4}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->NOT_MODIFIED:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v1, "BAD_REQUEST"

    const/4 v2, 0x7

    const/16 v3, 0x190

    const-string v4, "Bad Request"

    invoke-direct {v0, v1, v2, v3, v4}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->BAD_REQUEST:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v1, "UNAUTHORIZED"

    const/16 v2, 0x8

    const/16 v3, 0x191

    const-string v4, "Unauthorized"

    invoke-direct {v0, v1, v2, v3, v4}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->UNAUTHORIZED:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 590
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v1, "FORBIDDEN"

    const/16 v2, 0x9

    const/16 v3, 0x193

    const-string v4, "Forbidden"

    invoke-direct {v0, v1, v2, v3, v4}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->FORBIDDEN:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v1, "NOT_FOUND"

    const/16 v2, 0xa

    const/16 v3, 0x194

    const-string v4, "Not Found"

    invoke-direct {v0, v1, v2, v3, v4}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->NOT_FOUND:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v1, "RANGE_NOT_SATISFIABLE"

    const/16 v2, 0xb

    const/16 v3, 0x1a0

    const-string v4, "Requested Range Not Satisfiable"

    invoke-direct {v0, v1, v2, v3, v4}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->RANGE_NOT_SATISFIABLE:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 591
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v1, "INTERNAL_ERROR"

    const/16 v2, 0xc

    const/16 v3, 0x1f4

    const-string v4, "Internal Server Error"

    invoke-direct {v0, v1, v2, v3, v4}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->INTERNAL_ERROR:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 587
    const/16 v0, 0xd

    new-array v0, v0, [Lfi/iki/elonen/NanoHTTPD$Response$Status;

    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->OK:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    aput-object v1, v0, v5

    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->CREATED:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    aput-object v1, v0, v6

    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->ACCEPTED:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    aput-object v1, v0, v7

    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->NO_CONTENT:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    aput-object v1, v0, v8

    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->PARTIAL_CONTENT:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lfi/iki/elonen/NanoHTTPD$Response$Status;->REDIRECT:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lfi/iki/elonen/NanoHTTPD$Response$Status;->NOT_MODIFIED:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lfi/iki/elonen/NanoHTTPD$Response$Status;->BAD_REQUEST:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lfi/iki/elonen/NanoHTTPD$Response$Status;->UNAUTHORIZED:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lfi/iki/elonen/NanoHTTPD$Response$Status;->FORBIDDEN:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lfi/iki/elonen/NanoHTTPD$Response$Status;->NOT_FOUND:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lfi/iki/elonen/NanoHTTPD$Response$Status;->RANGE_NOT_SATISFIABLE:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lfi/iki/elonen/NanoHTTPD$Response$Status;->INTERNAL_ERROR:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    aput-object v2, v0, v1

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->$VALUES:[Lfi/iki/elonen/NanoHTTPD$Response$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p3, "requestStatus"    # I
    .param p4, "description"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 595
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 596
    iput p3, p0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->requestStatus:I

    .line 597
    iput-object p4, p0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->description:Ljava/lang/String;

    .line 598
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response$Status;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 587
    const-class v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    return-object v0
.end method

.method public static values()[Lfi/iki/elonen/NanoHTTPD$Response$Status;
    .locals 1

    .prologue
    .line 587
    sget-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->$VALUES:[Lfi/iki/elonen/NanoHTTPD$Response$Status;

    invoke-virtual {v0}, [Lfi/iki/elonen/NanoHTTPD$Response$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfi/iki/elonen/NanoHTTPD$Response$Status;

    return-object v0
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 2

    .prologue
    .line 605
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->requestStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lmobi/monaca/framework/psedo/R$string;->space:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestStatus()I
    .locals 1

    .prologue
    .line 601
    iget v0, p0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->requestStatus:I

    return v0
.end method
