.class Lmobi/monaca/framework/MonacaPageActivity$10;
.super Ljava/lang/Object;
.source "MonacaPageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/monaca/framework/MonacaPageActivity;->popPageAsync(Lmobi/monaca/framework/transition/TransitionParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/monaca/framework/MonacaPageActivity;

.field final synthetic val$params:Lmobi/monaca/framework/transition/TransitionParams;


# direct methods
.method constructor <init>(Lmobi/monaca/framework/MonacaPageActivity;Lmobi/monaca/framework/transition/TransitionParams;)V
    .locals 0

    .prologue
    .line 1137
    iput-object p1, p0, Lmobi/monaca/framework/MonacaPageActivity$10;->this$0:Lmobi/monaca/framework/MonacaPageActivity;

    iput-object p2, p0, Lmobi/monaca/framework/MonacaPageActivity$10;->val$params:Lmobi/monaca/framework/transition/TransitionParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1141
    iget-object v0, p0, Lmobi/monaca/framework/MonacaPageActivity$10;->val$params:Lmobi/monaca/framework/transition/TransitionParams;

    iget-object v0, v0, Lmobi/monaca/framework/transition/TransitionParams;->animationType:Lmobi/monaca/framework/transition/TransitionParams$TransitionAnimationType;

    sget-object v1, Lmobi/monaca/framework/transition/TransitionParams$TransitionAnimationType;->POP:Lmobi/monaca/framework/transition/TransitionParams$TransitionAnimationType;

    if-ne v0, v1, :cond_0

    .line 1142
    iget-object v0, p0, Lmobi/monaca/framework/MonacaPageActivity$10;->this$0:Lmobi/monaca/framework/MonacaPageActivity;

    invoke-virtual {v0}, Lmobi/monaca/framework/MonacaPageActivity;->_popPage()V

    .line 1148
    :goto_0
    return-void

    .line 1143
    :cond_0
    iget-object v0, p0, Lmobi/monaca/framework/MonacaPageActivity$10;->val$params:Lmobi/monaca/framework/transition/TransitionParams;

    iget-object v0, v0, Lmobi/monaca/framework/transition/TransitionParams;->animationType:Lmobi/monaca/framework/transition/TransitionParams$TransitionAnimationType;

    sget-object v1, Lmobi/monaca/framework/transition/TransitionParams$TransitionAnimationType;->DISMISS:Lmobi/monaca/framework/transition/TransitionParams$TransitionAnimationType;

    if-ne v0, v1, :cond_1

    .line 1144
    iget-object v0, p0, Lmobi/monaca/framework/MonacaPageActivity$10;->this$0:Lmobi/monaca/framework/MonacaPageActivity;

    invoke-virtual {v0}, Lmobi/monaca/framework/MonacaPageActivity;->dismissPage()V

    goto :goto_0

    .line 1146
    :cond_1
    iget-object v0, p0, Lmobi/monaca/framework/MonacaPageActivity$10;->this$0:Lmobi/monaca/framework/MonacaPageActivity;

    invoke-virtual {v0}, Lmobi/monaca/framework/MonacaPageActivity;->_popPage()V

    goto :goto_0
.end method
