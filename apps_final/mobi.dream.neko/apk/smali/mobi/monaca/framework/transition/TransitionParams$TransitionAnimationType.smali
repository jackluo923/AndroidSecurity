.class public final enum Lmobi/monaca/framework/transition/TransitionParams$TransitionAnimationType;
.super Ljava/lang/Enum;
.source "TransitionParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/monaca/framework/transition/TransitionParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TransitionAnimationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmobi/monaca/framework/transition/TransitionParams$TransitionAnimationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmobi/monaca/framework/transition/TransitionParams$TransitionAnimationType;

.field public static final enum DISMISS:Lmobi/monaca/framework/transition/TransitionParams$TransitionAnimationType;

.field public static final enum MODAL:Lmobi/monaca/framework/transition/TransitionParams$TransitionAnimationType;

.field public static final enum NONE:Lmobi/monaca/framework/transition/TransitionParams$TransitionAnimationType;

.field public static final enum POP:Lmobi/monaca/framework/transition/TransitionParams$TransitionAnimationType;

.field public static final enum SLIDE_LEFT:Lmobi/monaca/framework/transition/TransitionParams$TransitionAnimationType;

.field public static final enum SLIDE_RIGHT:Lmobi/monaca/framework/transition/TransitionParams$TransitionAnimationType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 17
    new-instance v0, Lmobi/monaca/framework/transition/TransitionParams$TransitionAnimationType;

    const-string v1, "SLIDE_LEFT"

    invoke-direct {v0, v1, v3}, Lmobi/monaca/framework/transition/TransitionParams$TransitionAnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmobi/monaca/framework/transition/TransitionParams$TransitionAnimationType;->SLIDE_LEFT:Lmobi/monaca/framework/transition/TransitionParams$TransitionAnimationType;

    new-instance v0, Lmobi/monaca/framework/transition/TransitionParams$TransitionAnimationType;

    const-string v1, "SLIDE_RIGHT"

    invoke-direct {v0, v1, v4}, Lmobi/monaca/framework/transition/TransitionParams$TransitionAnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmobi/monaca/framework/transition/TransitionParams$TransitionAnimationType;->SLIDE_RIGHT:Lmobi/monaca/framework/transition/TransitionParams$TransitionAnimationType;

    new-instance v0, Lmobi/monaca/framework/transition/TransitionParams$TransitionAnimationType;

    const-string v1, "MODAL"

    invoke-direct {v0, v1, v5}, Lmobi/monaca/framework/transition/TransitionParams$TransitionAnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmobi/monaca/framework/transition/TransitionParams$TransitionAnimationType;->MODAL:Lmobi/monaca/framework/transition/TransitionParams$TransitionAnimationType;

    new-instance v0, Lmobi/monaca/framework/transition/TransitionParams$TransitionAnimationType;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v6}, Lmobi/monaca/framework/transition/TransitionParams$TransitionAnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmobi/monaca/framework/transition/TransitionParams$TransitionAnimationType;->NONE:Lmobi/monaca/framework/transition/TransitionParams$TransitionAnimationType;

    new-instance v0, Lmobi/monaca/framework/transition/TransitionParams$TransitionAnimationType;

    const-string v1, "POP"

    invoke-direct {v0, v1, v7}, Lmobi/monaca/framework/transition/TransitionParams$TransitionAnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmobi/monaca/framework/transition/TransitionParams$TransitionAnimationType;->POP:Lmobi/monaca/framework/transition/TransitionParams$TransitionAnimationType;

    new-instance v0, Lmobi/monaca/framework/transition/TransitionParams$TransitionAnimationType;

    const-string v1, "DISMISS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lmobi/monaca/framework/transition/TransitionParams$TransitionAnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmobi/monaca/framework/transition/TransitionParams$TransitionAnimationType;->DISMISS:Lmobi/monaca/framework/transition/TransitionParams$TransitionAnimationType;

    .line 16
    const/4 v0, 0x6

    new-array v0, v0, [Lmobi/monaca/framework/transition/TransitionParams$TransitionAnimationType;

    sget-object v1, Lmobi/monaca/framework/transition/TransitionParams$TransitionAnimationType;->SLIDE_LEFT:Lmobi/monaca/framework/transition/TransitionParams$TransitionAnimationType;

    aput-object v1, v0, v3

    sget-object v1, Lmobi/monaca/framework/transition/TransitionParams$TransitionAnimationType;->SLIDE_RIGHT:Lmobi/monaca/framework/transition/TransitionParams$TransitionAnimationType;

    aput-object v1, v0, v4

    sget-object v1, Lmobi/monaca/framework/transition/TransitionParams$TransitionAnimationType;->MODAL:Lmobi/monaca/framework/transition/TransitionParams$TransitionAnimationType;

    aput-object v1, v0, v5

    sget-object v1, Lmobi/monaca/framework/transition/TransitionParams$TransitionAnimationType;->NONE:Lmobi/monaca/framework/transition/TransitionParams$TransitionAnimationType;

    aput-object v1, v0, v6

    sget-object v1, Lmobi/monaca/framework/transition/TransitionParams$TransitionAnimationType;->POP:Lmobi/monaca/framework/transition/TransitionParams$TransitionAnimationType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lmobi/monaca/framework/transition/TransitionParams$TransitionAnimationType;->DISMISS:Lmobi/monaca/framework/transition/TransitionParams$TransitionAnimationType;

    aput-object v2, v0, v1

    sput-object v0, Lmobi/monaca/framework/transition/TransitionParams$TransitionAnimationType;->$VALUES:[Lmobi/monaca/framework/transition/TransitionParams$TransitionAnimationType;

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
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmobi/monaca/framework/transition/TransitionParams$TransitionAnimationType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 16
    const-class v0, Lmobi/monaca/framework/transition/TransitionParams$TransitionAnimationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmobi/monaca/framework/transition/TransitionParams$TransitionAnimationType;

    return-object v0
.end method

.method public static values()[Lmobi/monaca/framework/transition/TransitionParams$TransitionAnimationType;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lmobi/monaca/framework/transition/TransitionParams$TransitionAnimationType;->$VALUES:[Lmobi/monaca/framework/transition/TransitionParams$TransitionAnimationType;

    invoke-virtual {v0}, [Lmobi/monaca/framework/transition/TransitionParams$TransitionAnimationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmobi/monaca/framework/transition/TransitionParams$TransitionAnimationType;

    return-object v0
.end method
