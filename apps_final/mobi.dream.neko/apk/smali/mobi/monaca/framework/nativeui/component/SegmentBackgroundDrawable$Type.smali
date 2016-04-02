.class final enum Lmobi/monaca/framework/nativeui/component/SegmentBackgroundDrawable$Type;
.super Ljava/lang/Enum;
.source "SegmentBackgroundDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/monaca/framework/nativeui/component/SegmentBackgroundDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmobi/monaca/framework/nativeui/component/SegmentBackgroundDrawable$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmobi/monaca/framework/nativeui/component/SegmentBackgroundDrawable$Type;

.field public static final enum CENTER:Lmobi/monaca/framework/nativeui/component/SegmentBackgroundDrawable$Type;

.field public static final enum LEFT:Lmobi/monaca/framework/nativeui/component/SegmentBackgroundDrawable$Type;

.field public static final enum RIGHT:Lmobi/monaca/framework/nativeui/component/SegmentBackgroundDrawable$Type;

.field public static final enum SINGLE:Lmobi/monaca/framework/nativeui/component/SegmentBackgroundDrawable$Type;


# instance fields
.field public final resourceId:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 25
    new-instance v0, Lmobi/monaca/framework/nativeui/component/SegmentBackgroundDrawable$Type;

    const-string v1, "LEFT"

    sget v2, Lmobi/monaca/framework/psedo/R$drawable;->monaca_segment_left:I

    invoke-direct {v0, v1, v3, v2}, Lmobi/monaca/framework/nativeui/component/SegmentBackgroundDrawable$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmobi/monaca/framework/nativeui/component/SegmentBackgroundDrawable$Type;->LEFT:Lmobi/monaca/framework/nativeui/component/SegmentBackgroundDrawable$Type;

    new-instance v0, Lmobi/monaca/framework/nativeui/component/SegmentBackgroundDrawable$Type;

    const-string v1, "CENTER"

    sget v2, Lmobi/monaca/framework/psedo/R$drawable;->monaca_segment_center:I

    invoke-direct {v0, v1, v4, v2}, Lmobi/monaca/framework/nativeui/component/SegmentBackgroundDrawable$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmobi/monaca/framework/nativeui/component/SegmentBackgroundDrawable$Type;->CENTER:Lmobi/monaca/framework/nativeui/component/SegmentBackgroundDrawable$Type;

    .line 26
    new-instance v0, Lmobi/monaca/framework/nativeui/component/SegmentBackgroundDrawable$Type;

    const-string v1, "RIGHT"

    sget v2, Lmobi/monaca/framework/psedo/R$drawable;->monaca_segment_right:I

    invoke-direct {v0, v1, v5, v2}, Lmobi/monaca/framework/nativeui/component/SegmentBackgroundDrawable$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmobi/monaca/framework/nativeui/component/SegmentBackgroundDrawable$Type;->RIGHT:Lmobi/monaca/framework/nativeui/component/SegmentBackgroundDrawable$Type;

    .line 27
    new-instance v0, Lmobi/monaca/framework/nativeui/component/SegmentBackgroundDrawable$Type;

    const-string v1, "SINGLE"

    sget v2, Lmobi/monaca/framework/psedo/R$drawable;->monaca_button:I

    invoke-direct {v0, v1, v6, v2}, Lmobi/monaca/framework/nativeui/component/SegmentBackgroundDrawable$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmobi/monaca/framework/nativeui/component/SegmentBackgroundDrawable$Type;->SINGLE:Lmobi/monaca/framework/nativeui/component/SegmentBackgroundDrawable$Type;

    .line 24
    const/4 v0, 0x4

    new-array v0, v0, [Lmobi/monaca/framework/nativeui/component/SegmentBackgroundDrawable$Type;

    sget-object v1, Lmobi/monaca/framework/nativeui/component/SegmentBackgroundDrawable$Type;->LEFT:Lmobi/monaca/framework/nativeui/component/SegmentBackgroundDrawable$Type;

    aput-object v1, v0, v3

    sget-object v1, Lmobi/monaca/framework/nativeui/component/SegmentBackgroundDrawable$Type;->CENTER:Lmobi/monaca/framework/nativeui/component/SegmentBackgroundDrawable$Type;

    aput-object v1, v0, v4

    sget-object v1, Lmobi/monaca/framework/nativeui/component/SegmentBackgroundDrawable$Type;->RIGHT:Lmobi/monaca/framework/nativeui/component/SegmentBackgroundDrawable$Type;

    aput-object v1, v0, v5

    sget-object v1, Lmobi/monaca/framework/nativeui/component/SegmentBackgroundDrawable$Type;->SINGLE:Lmobi/monaca/framework/nativeui/component/SegmentBackgroundDrawable$Type;

    aput-object v1, v0, v6

    sput-object v0, Lmobi/monaca/framework/nativeui/component/SegmentBackgroundDrawable$Type;->$VALUES:[Lmobi/monaca/framework/nativeui/component/SegmentBackgroundDrawable$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "resId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 33
    iput p3, p0, Lmobi/monaca/framework/nativeui/component/SegmentBackgroundDrawable$Type;->resourceId:I

    .line 34
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmobi/monaca/framework/nativeui/component/SegmentBackgroundDrawable$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 24
    const-class v0, Lmobi/monaca/framework/nativeui/component/SegmentBackgroundDrawable$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmobi/monaca/framework/nativeui/component/SegmentBackgroundDrawable$Type;

    return-object v0
.end method

.method public static values()[Lmobi/monaca/framework/nativeui/component/SegmentBackgroundDrawable$Type;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lmobi/monaca/framework/nativeui/component/SegmentBackgroundDrawable$Type;->$VALUES:[Lmobi/monaca/framework/nativeui/component/SegmentBackgroundDrawable$Type;

    invoke-virtual {v0}, [Lmobi/monaca/framework/nativeui/component/SegmentBackgroundDrawable$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmobi/monaca/framework/nativeui/component/SegmentBackgroundDrawable$Type;

    return-object v0
.end method
