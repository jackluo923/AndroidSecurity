.class public final enum Lcom/inmobi/re/container/IMWebView$ViewState;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/inmobi/re/container/IMWebView$ViewState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DEFAULT:Lcom/inmobi/re/container/IMWebView$ViewState;

.field public static final enum EXPANDED:Lcom/inmobi/re/container/IMWebView$ViewState;

.field public static final enum EXPANDING:Lcom/inmobi/re/container/IMWebView$ViewState;

.field public static final enum HIDDEN:Lcom/inmobi/re/container/IMWebView$ViewState;

.field public static final enum LOADING:Lcom/inmobi/re/container/IMWebView$ViewState;

.field public static final enum RESIZED:Lcom/inmobi/re/container/IMWebView$ViewState;

.field public static final enum RESIZING:Lcom/inmobi/re/container/IMWebView$ViewState;

.field private static final synthetic a:[Lcom/inmobi/re/container/IMWebView$ViewState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/inmobi/re/container/IMWebView$ViewState;

    const-string v1, "LOADING"

    invoke-direct {v0, v1, v3}, Lcom/inmobi/re/container/IMWebView$ViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/re/container/IMWebView$ViewState;->LOADING:Lcom/inmobi/re/container/IMWebView$ViewState;

    new-instance v0, Lcom/inmobi/re/container/IMWebView$ViewState;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v4}, Lcom/inmobi/re/container/IMWebView$ViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/re/container/IMWebView$ViewState;->DEFAULT:Lcom/inmobi/re/container/IMWebView$ViewState;

    new-instance v0, Lcom/inmobi/re/container/IMWebView$ViewState;

    const-string v1, "RESIZED"

    invoke-direct {v0, v1, v5}, Lcom/inmobi/re/container/IMWebView$ViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/re/container/IMWebView$ViewState;->RESIZED:Lcom/inmobi/re/container/IMWebView$ViewState;

    new-instance v0, Lcom/inmobi/re/container/IMWebView$ViewState;

    const-string v1, "EXPANDED"

    invoke-direct {v0, v1, v6}, Lcom/inmobi/re/container/IMWebView$ViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/re/container/IMWebView$ViewState;->EXPANDED:Lcom/inmobi/re/container/IMWebView$ViewState;

    new-instance v0, Lcom/inmobi/re/container/IMWebView$ViewState;

    const-string v1, "EXPANDING"

    invoke-direct {v0, v1, v7}, Lcom/inmobi/re/container/IMWebView$ViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/re/container/IMWebView$ViewState;->EXPANDING:Lcom/inmobi/re/container/IMWebView$ViewState;

    new-instance v0, Lcom/inmobi/re/container/IMWebView$ViewState;

    const-string v1, "HIDDEN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/inmobi/re/container/IMWebView$ViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/re/container/IMWebView$ViewState;->HIDDEN:Lcom/inmobi/re/container/IMWebView$ViewState;

    new-instance v0, Lcom/inmobi/re/container/IMWebView$ViewState;

    const-string v1, "RESIZING"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/inmobi/re/container/IMWebView$ViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/re/container/IMWebView$ViewState;->RESIZING:Lcom/inmobi/re/container/IMWebView$ViewState;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/inmobi/re/container/IMWebView$ViewState;

    sget-object v1, Lcom/inmobi/re/container/IMWebView$ViewState;->LOADING:Lcom/inmobi/re/container/IMWebView$ViewState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/inmobi/re/container/IMWebView$ViewState;->DEFAULT:Lcom/inmobi/re/container/IMWebView$ViewState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/inmobi/re/container/IMWebView$ViewState;->RESIZED:Lcom/inmobi/re/container/IMWebView$ViewState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/inmobi/re/container/IMWebView$ViewState;->EXPANDED:Lcom/inmobi/re/container/IMWebView$ViewState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/inmobi/re/container/IMWebView$ViewState;->EXPANDING:Lcom/inmobi/re/container/IMWebView$ViewState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/inmobi/re/container/IMWebView$ViewState;->HIDDEN:Lcom/inmobi/re/container/IMWebView$ViewState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/inmobi/re/container/IMWebView$ViewState;->RESIZING:Lcom/inmobi/re/container/IMWebView$ViewState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/inmobi/re/container/IMWebView$ViewState;->a:[Lcom/inmobi/re/container/IMWebView$ViewState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/inmobi/re/container/IMWebView$ViewState;
    .locals 1

    const-class v0, Lcom/inmobi/re/container/IMWebView$ViewState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/inmobi/re/container/IMWebView$ViewState;

    return-object v0
.end method

.method public static values()[Lcom/inmobi/re/container/IMWebView$ViewState;
    .locals 1

    sget-object v0, Lcom/inmobi/re/container/IMWebView$ViewState;->a:[Lcom/inmobi/re/container/IMWebView$ViewState;

    invoke-virtual {v0}, [Lcom/inmobi/re/container/IMWebView$ViewState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/inmobi/re/container/IMWebView$ViewState;

    return-object v0
.end method
