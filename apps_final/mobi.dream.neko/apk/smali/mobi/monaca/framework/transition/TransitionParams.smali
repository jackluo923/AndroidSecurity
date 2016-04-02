.class public Lmobi/monaca/framework/transition/TransitionParams;
.super Ljava/lang/Object;
.source "TransitionParams.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/monaca/framework/transition/TransitionParams$TransitionAnimationType;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public final animationType:Lmobi/monaca/framework/transition/TransitionParams$TransitionAnimationType;

.field public final backgroundImagePath:Ljava/lang/String;

.field public final clearsStack:Z

.field public final requestedOrientation:I


# direct methods
.method public constructor <init>(Lmobi/monaca/framework/transition/TransitionParams$TransitionAnimationType;Ljava/lang/String;I)V
    .locals 1
    .param p1, "animationType"    # Lmobi/monaca/framework/transition/TransitionParams$TransitionAnimationType;
    .param p2, "backgroundImagePath"    # Ljava/lang/String;
    .param p3, "requestedOrientation"    # I

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lmobi/monaca/framework/transition/TransitionParams;-><init>(Lmobi/monaca/framework/transition/TransitionParams$TransitionAnimationType;Ljava/lang/String;IZ)V

    .line 36
    return-void
.end method

.method public constructor <init>(Lmobi/monaca/framework/transition/TransitionParams$TransitionAnimationType;Ljava/lang/String;IZ)V
    .locals 0
    .param p1, "animationType"    # Lmobi/monaca/framework/transition/TransitionParams$TransitionAnimationType;
    .param p2, "backgroundImagePath"    # Ljava/lang/String;
    .param p3, "requestedOrientation"    # I
    .param p4, "clearsStack"    # Z

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lmobi/monaca/framework/transition/TransitionParams;->animationType:Lmobi/monaca/framework/transition/TransitionParams$TransitionAnimationType;

    .line 28
    iput-object p2, p0, Lmobi/monaca/framework/transition/TransitionParams;->backgroundImagePath:Ljava/lang/String;

    .line 29
    iput p3, p0, Lmobi/monaca/framework/transition/TransitionParams;->requestedOrientation:I

    .line 30
    iput-boolean p4, p0, Lmobi/monaca/framework/transition/TransitionParams;->clearsStack:Z

    .line 31
    return-void
.end method

.method public static createDefaultParams(I)Lmobi/monaca/framework/transition/TransitionParams;
    .locals 3
    .param p0, "orientation"    # I

    .prologue
    .line 90
    new-instance v0, Lmobi/monaca/framework/transition/TransitionParams;

    sget-object v1, Lmobi/monaca/framework/transition/TransitionParams$TransitionAnimationType;->SLIDE_LEFT:Lmobi/monaca/framework/transition/TransitionParams$TransitionAnimationType;

    const-string v2, ""

    invoke-direct {v0, v1, v2, p0}, Lmobi/monaca/framework/transition/TransitionParams;-><init>(Lmobi/monaca/framework/transition/TransitionParams$TransitionAnimationType;Ljava/lang/String;I)V

    return-object v0
.end method

.method public static from(Lorg/json/JSONObject;Ljava/lang/String;)Lmobi/monaca/framework/transition/TransitionParams;
    .locals 7
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "animationTypeString"    # Ljava/lang/String;

    .prologue
    .line 52
    const-string v5, "bg"

    const-string v6, ""

    invoke-virtual {p0, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, "backgroundImagePath":Ljava/lang/String;
    const-string v5, "orientation"

    const-string v6, "portrait"

    invoke-virtual {p0, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 54
    .local v4, "orientationString":Ljava/lang/String;
    const/4 v0, 0x0

    .line 56
    .local v0, "animationType":Lmobi/monaca/framework/transition/TransitionParams$TransitionAnimationType;
    sget v5, Lmobi/monaca/framework/psedo/R$string;->transition_anim_slideleft:I

    invoke-static {v5}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 57
    sget-object v0, Lmobi/monaca/framework/transition/TransitionParams$TransitionAnimationType;->SLIDE_LEFT:Lmobi/monaca/framework/transition/TransitionParams$TransitionAnimationType;

    .line 73
    :goto_0
    const-string v5, "unspecified"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 74
    const/4 v3, -0x1

    .line 83
    .local v3, "orientation":I
    :goto_1
    const-string v5, "clearStack"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 85
    .local v2, "clearsStack":Z
    new-instance v5, Lmobi/monaca/framework/transition/TransitionParams;

    invoke-direct {v5, v0, v1, v3, v2}, Lmobi/monaca/framework/transition/TransitionParams;-><init>(Lmobi/monaca/framework/transition/TransitionParams$TransitionAnimationType;Ljava/lang/String;IZ)V

    return-object v5

    .line 58
    .end local v2    # "clearsStack":Z
    .end local v3    # "orientation":I
    :cond_0
    sget v5, Lmobi/monaca/framework/psedo/R$string;->transition_anim_slideright:I

    invoke-static {v5}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 59
    sget-object v0, Lmobi/monaca/framework/transition/TransitionParams$TransitionAnimationType;->SLIDE_RIGHT:Lmobi/monaca/framework/transition/TransitionParams$TransitionAnimationType;

    goto :goto_0

    .line 60
    :cond_1
    sget v5, Lmobi/monaca/framework/psedo/R$string;->transition_anim_modal:I

    invoke-static {v5}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 61
    sget-object v0, Lmobi/monaca/framework/transition/TransitionParams$TransitionAnimationType;->MODAL:Lmobi/monaca/framework/transition/TransitionParams$TransitionAnimationType;

    goto :goto_0

    .line 62
    :cond_2
    sget v5, Lmobi/monaca/framework/psedo/R$string;->transition_anim_none:I

    invoke-static {v5}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 63
    sget-object v0, Lmobi/monaca/framework/transition/TransitionParams$TransitionAnimationType;->NONE:Lmobi/monaca/framework/transition/TransitionParams$TransitionAnimationType;

    goto :goto_0

    .line 64
    :cond_3
    sget v5, Lmobi/monaca/framework/psedo/R$string;->transition_anim_pop:I

    invoke-static {v5}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 65
    sget-object v0, Lmobi/monaca/framework/transition/TransitionParams$TransitionAnimationType;->POP:Lmobi/monaca/framework/transition/TransitionParams$TransitionAnimationType;

    goto :goto_0

    .line 66
    :cond_4
    sget v5, Lmobi/monaca/framework/psedo/R$string;->transition_dismiss:I

    invoke-static {v5}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 67
    sget-object v0, Lmobi/monaca/framework/transition/TransitionParams$TransitionAnimationType;->DISMISS:Lmobi/monaca/framework/transition/TransitionParams$TransitionAnimationType;

    goto :goto_0

    .line 69
    :cond_5
    sget-object v0, Lmobi/monaca/framework/transition/TransitionParams$TransitionAnimationType;->NONE:Lmobi/monaca/framework/transition/TransitionParams$TransitionAnimationType;

    goto :goto_0

    .line 75
    :cond_6
    const-string v5, "portrait"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 76
    const/4 v3, 0x1

    .restart local v3    # "orientation":I
    goto :goto_1

    .line 77
    .end local v3    # "orientation":I
    :cond_7
    const-string v5, "landscape"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 78
    const/4 v3, 0x0

    .restart local v3    # "orientation":I
    goto :goto_1

    .line 80
    .end local v3    # "orientation":I
    :cond_8
    const/4 v3, 0x1

    .restart local v3    # "orientation":I
    goto :goto_1
.end method


# virtual methods
.method public getRequestedOrientation()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lmobi/monaca/framework/transition/TransitionParams;->requestedOrientation:I

    return v0
.end method

.method public hasBackgroundImage()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lmobi/monaca/framework/transition/TransitionParams;->backgroundImagePath:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmobi/monaca/framework/transition/TransitionParams;->backgroundImagePath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public needsToClearStack()Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lmobi/monaca/framework/transition/TransitionParams;->clearsStack:Z

    return v0
.end method
