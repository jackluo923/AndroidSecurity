.class public final enum Lmobi/monaca/framework/nativeui/component/PageOrientation;
.super Ljava/lang/Enum;
.source "PageOrientation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmobi/monaca/framework/nativeui/component/PageOrientation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmobi/monaca/framework/nativeui/component/PageOrientation;

.field public static final enum INHERIT:Lmobi/monaca/framework/nativeui/component/PageOrientation;

.field public static final enum LANDSCAPE:Lmobi/monaca/framework/nativeui/component/PageOrientation;

.field public static final enum PORTRAIT:Lmobi/monaca/framework/nativeui/component/PageOrientation;

.field public static final enum SENSOR:Lmobi/monaca/framework/nativeui/component/PageOrientation;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lmobi/monaca/framework/nativeui/component/PageOrientation;

    const-string v1, "PORTRAIT"

    invoke-direct {v0, v1, v2}, Lmobi/monaca/framework/nativeui/component/PageOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmobi/monaca/framework/nativeui/component/PageOrientation;->PORTRAIT:Lmobi/monaca/framework/nativeui/component/PageOrientation;

    .line 5
    new-instance v0, Lmobi/monaca/framework/nativeui/component/PageOrientation;

    const-string v1, "LANDSCAPE"

    invoke-direct {v0, v1, v3}, Lmobi/monaca/framework/nativeui/component/PageOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmobi/monaca/framework/nativeui/component/PageOrientation;->LANDSCAPE:Lmobi/monaca/framework/nativeui/component/PageOrientation;

    .line 6
    new-instance v0, Lmobi/monaca/framework/nativeui/component/PageOrientation;

    const-string v1, "SENSOR"

    invoke-direct {v0, v1, v4}, Lmobi/monaca/framework/nativeui/component/PageOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmobi/monaca/framework/nativeui/component/PageOrientation;->SENSOR:Lmobi/monaca/framework/nativeui/component/PageOrientation;

    .line 7
    new-instance v0, Lmobi/monaca/framework/nativeui/component/PageOrientation;

    const-string v1, "INHERIT"

    invoke-direct {v0, v1, v5}, Lmobi/monaca/framework/nativeui/component/PageOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmobi/monaca/framework/nativeui/component/PageOrientation;->INHERIT:Lmobi/monaca/framework/nativeui/component/PageOrientation;

    .line 3
    const/4 v0, 0x4

    new-array v0, v0, [Lmobi/monaca/framework/nativeui/component/PageOrientation;

    sget-object v1, Lmobi/monaca/framework/nativeui/component/PageOrientation;->PORTRAIT:Lmobi/monaca/framework/nativeui/component/PageOrientation;

    aput-object v1, v0, v2

    sget-object v1, Lmobi/monaca/framework/nativeui/component/PageOrientation;->LANDSCAPE:Lmobi/monaca/framework/nativeui/component/PageOrientation;

    aput-object v1, v0, v3

    sget-object v1, Lmobi/monaca/framework/nativeui/component/PageOrientation;->SENSOR:Lmobi/monaca/framework/nativeui/component/PageOrientation;

    aput-object v1, v0, v4

    sget-object v1, Lmobi/monaca/framework/nativeui/component/PageOrientation;->INHERIT:Lmobi/monaca/framework/nativeui/component/PageOrientation;

    aput-object v1, v0, v5

    sput-object v0, Lmobi/monaca/framework/nativeui/component/PageOrientation;->$VALUES:[Lmobi/monaca/framework/nativeui/component/PageOrientation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmobi/monaca/framework/nativeui/component/PageOrientation;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lmobi/monaca/framework/nativeui/component/PageOrientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmobi/monaca/framework/nativeui/component/PageOrientation;

    return-object v0
.end method

.method public static values()[Lmobi/monaca/framework/nativeui/component/PageOrientation;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lmobi/monaca/framework/nativeui/component/PageOrientation;->$VALUES:[Lmobi/monaca/framework/nativeui/component/PageOrientation;

    invoke-virtual {v0}, [Lmobi/monaca/framework/nativeui/component/PageOrientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmobi/monaca/framework/nativeui/component/PageOrientation;

    return-object v0
.end method
