.class Lcom/facebook/widget/LoginButton$LoginClickListener;
.super Ljava/lang/Object;
.source "LoginButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/widget/LoginButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoginClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/widget/LoginButton;


# direct methods
.method private constructor <init>(Lcom/facebook/widget/LoginButton;)V
    .locals 0

    .prologue
    .line 649
    iput-object p1, p0, Lcom/facebook/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/widget/LoginButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/widget/LoginButton;Lcom/facebook/widget/LoginButton$LoginClickListener;)V
    .locals 0

    .prologue
    .line 649
    invoke-direct {p0, p1}, Lcom/facebook/widget/LoginButton$LoginClickListener;-><init>(Lcom/facebook/widget/LoginButton;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 15
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 653
    iget-object v11, p0, Lcom/facebook/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/widget/LoginButton;

    invoke-virtual {v11}, Lcom/facebook/widget/LoginButton;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 654
    .local v2, "context":Landroid/content/Context;
    iget-object v11, p0, Lcom/facebook/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/widget/LoginButton;

    # getter for: Lcom/facebook/widget/LoginButton;->sessionTracker:Lcom/facebook/internal/SessionTracker;
    invoke-static {v11}, Lcom/facebook/widget/LoginButton;->access$1(Lcom/facebook/widget/LoginButton;)Lcom/facebook/internal/SessionTracker;

    move-result-object v11

    invoke-virtual {v11}, Lcom/facebook/internal/SessionTracker;->getOpenSession()Lcom/facebook/Session;

    move-result-object v8

    .line 656
    .local v8, "openSession":Lcom/facebook/Session;
    if-eqz v8, :cond_3

    .line 658
    iget-object v11, p0, Lcom/facebook/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/widget/LoginButton;

    # getter for: Lcom/facebook/widget/LoginButton;->confirmLogout:Z
    invoke-static {v11}, Lcom/facebook/widget/LoginButton;->access$2(Lcom/facebook/widget/LoginButton;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 660
    iget-object v11, p0, Lcom/facebook/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/widget/LoginButton;

    invoke-virtual {v11}, Lcom/facebook/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lcom/facebook/android/R$string;->com_facebook_loginview_log_out_action:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 661
    .local v5, "logout":Ljava/lang/String;
    iget-object v11, p0, Lcom/facebook/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/widget/LoginButton;

    invoke-virtual {v11}, Lcom/facebook/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lcom/facebook/android/R$string;->com_facebook_loginview_cancel_action:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 663
    .local v1, "cancel":Ljava/lang/String;
    iget-object v11, p0, Lcom/facebook/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/widget/LoginButton;

    # getter for: Lcom/facebook/widget/LoginButton;->user:Lcom/facebook/model/GraphUser;
    invoke-static {v11}, Lcom/facebook/widget/LoginButton;->access$3(Lcom/facebook/widget/LoginButton;)Lcom/facebook/model/GraphUser;

    move-result-object v11

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/facebook/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/widget/LoginButton;

    # getter for: Lcom/facebook/widget/LoginButton;->user:Lcom/facebook/model/GraphUser;
    invoke-static {v11}, Lcom/facebook/widget/LoginButton;->access$3(Lcom/facebook/widget/LoginButton;)Lcom/facebook/model/GraphUser;

    move-result-object v11

    invoke-interface {v11}, Lcom/facebook/model/GraphUser;->getName()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_1

    .line 664
    iget-object v11, p0, Lcom/facebook/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/widget/LoginButton;

    invoke-virtual {v11}, Lcom/facebook/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lcom/facebook/android/R$string;->com_facebook_loginview_logged_in_as:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget-object v14, p0, Lcom/facebook/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/widget/LoginButton;

    # getter for: Lcom/facebook/widget/LoginButton;->user:Lcom/facebook/model/GraphUser;
    invoke-static {v14}, Lcom/facebook/widget/LoginButton;->access$3(Lcom/facebook/widget/LoginButton;)Lcom/facebook/model/GraphUser;

    move-result-object v14

    invoke-interface {v14}, Lcom/facebook/model/GraphUser;->getName()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 668
    .local v6, "message":Ljava/lang/String;
    :goto_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 669
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    .line 670
    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    .line 671
    new-instance v12, Lcom/facebook/widget/LoginButton$LoginClickListener$1;

    invoke-direct {v12, p0, v8}, Lcom/facebook/widget/LoginButton$LoginClickListener$1;-><init>(Lcom/facebook/widget/LoginButton$LoginClickListener;Lcom/facebook/Session;)V

    invoke-virtual {v11, v5, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    .line 676
    const/4 v12, 0x0

    invoke-virtual {v11, v1, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 677
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/AlertDialog;->show()V

    .line 711
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "cancel":Ljava/lang/String;
    .end local v2    # "context":Landroid/content/Context;
    .end local v5    # "logout":Ljava/lang/String;
    .end local v6    # "message":Ljava/lang/String;
    :cond_0
    :goto_1
    iget-object v11, p0, Lcom/facebook/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/widget/LoginButton;

    invoke-virtual {v11}, Lcom/facebook/widget/LoginButton;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/facebook/AppEventsLogger;->newLogger(Landroid/content/Context;)Lcom/facebook/AppEventsLogger;

    move-result-object v4

    .line 713
    .local v4, "logger":Lcom/facebook/AppEventsLogger;
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 714
    .local v9, "parameters":Landroid/os/Bundle;
    const-string v12, "logging_in"

    if-eqz v8, :cond_9

    const/4 v11, 0x0

    :goto_2
    invoke-virtual {v9, v12, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 716
    iget-object v11, p0, Lcom/facebook/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/widget/LoginButton;

    # getter for: Lcom/facebook/widget/LoginButton;->loginLogoutEventName:Ljava/lang/String;
    invoke-static {v11}, Lcom/facebook/widget/LoginButton;->access$7(Lcom/facebook/widget/LoginButton;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v4, v11, v12, v9}, Lcom/facebook/AppEventsLogger;->logSdkEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    .line 717
    return-void

    .line 666
    .end local v4    # "logger":Lcom/facebook/AppEventsLogger;
    .end local v9    # "parameters":Landroid/os/Bundle;
    .restart local v1    # "cancel":Ljava/lang/String;
    .restart local v2    # "context":Landroid/content/Context;
    .restart local v5    # "logout":Ljava/lang/String;
    :cond_1
    iget-object v11, p0, Lcom/facebook/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/widget/LoginButton;

    invoke-virtual {v11}, Lcom/facebook/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lcom/facebook/android/R$string;->com_facebook_loginview_logged_in_using_facebook:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "message":Ljava/lang/String;
    goto :goto_0

    .line 679
    .end local v1    # "cancel":Ljava/lang/String;
    .end local v5    # "logout":Ljava/lang/String;
    .end local v6    # "message":Ljava/lang/String;
    :cond_2
    invoke-virtual {v8}, Lcom/facebook/Session;->closeAndClearTokenInformation()V

    goto :goto_1

    .line 682
    :cond_3
    iget-object v11, p0, Lcom/facebook/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/widget/LoginButton;

    # getter for: Lcom/facebook/widget/LoginButton;->sessionTracker:Lcom/facebook/internal/SessionTracker;
    invoke-static {v11}, Lcom/facebook/widget/LoginButton;->access$1(Lcom/facebook/widget/LoginButton;)Lcom/facebook/internal/SessionTracker;

    move-result-object v11

    invoke-virtual {v11}, Lcom/facebook/internal/SessionTracker;->getSession()Lcom/facebook/Session;

    move-result-object v3

    .line 683
    .local v3, "currentSession":Lcom/facebook/Session;
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/facebook/Session;->getState()Lcom/facebook/SessionState;

    move-result-object v11

    invoke-virtual {v11}, Lcom/facebook/SessionState;->isClosed()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 684
    :cond_4
    iget-object v11, p0, Lcom/facebook/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/widget/LoginButton;

    # getter for: Lcom/facebook/widget/LoginButton;->sessionTracker:Lcom/facebook/internal/SessionTracker;
    invoke-static {v11}, Lcom/facebook/widget/LoginButton;->access$1(Lcom/facebook/widget/LoginButton;)Lcom/facebook/internal/SessionTracker;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/facebook/internal/SessionTracker;->setSession(Lcom/facebook/Session;)V

    .line 685
    new-instance v11, Lcom/facebook/Session$Builder;

    invoke-direct {v11, v2}, Lcom/facebook/Session$Builder;-><init>(Landroid/content/Context;)V

    iget-object v12, p0, Lcom/facebook/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/widget/LoginButton;

    # getter for: Lcom/facebook/widget/LoginButton;->applicationId:Ljava/lang/String;
    invoke-static {v12}, Lcom/facebook/widget/LoginButton;->access$4(Lcom/facebook/widget/LoginButton;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/facebook/Session$Builder;->setApplicationId(Ljava/lang/String;)Lcom/facebook/Session$Builder;

    move-result-object v11

    invoke-virtual {v11}, Lcom/facebook/Session$Builder;->build()Lcom/facebook/Session;

    move-result-object v10

    .line 686
    .local v10, "session":Lcom/facebook/Session;
    invoke-static {v10}, Lcom/facebook/Session;->setActiveSession(Lcom/facebook/Session;)V

    .line 687
    move-object v3, v10

    .line 689
    .end local v10    # "session":Lcom/facebook/Session;
    :cond_5
    invoke-virtual {v3}, Lcom/facebook/Session;->isOpened()Z

    move-result v11

    if-nez v11, :cond_0

    .line 690
    const/4 v7, 0x0

    .line 691
    .local v7, "openRequest":Lcom/facebook/Session$OpenRequest;
    iget-object v11, p0, Lcom/facebook/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/widget/LoginButton;

    # getter for: Lcom/facebook/widget/LoginButton;->parentFragment:Landroid/support/v4/app/Fragment;
    invoke-static {v11}, Lcom/facebook/widget/LoginButton;->access$5(Lcom/facebook/widget/LoginButton;)Landroid/support/v4/app/Fragment;

    move-result-object v11

    if-eqz v11, :cond_7

    .line 692
    new-instance v7, Lcom/facebook/Session$OpenRequest;

    .end local v7    # "openRequest":Lcom/facebook/Session$OpenRequest;
    iget-object v11, p0, Lcom/facebook/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/widget/LoginButton;

    # getter for: Lcom/facebook/widget/LoginButton;->parentFragment:Landroid/support/v4/app/Fragment;
    invoke-static {v11}, Lcom/facebook/widget/LoginButton;->access$5(Lcom/facebook/widget/LoginButton;)Landroid/support/v4/app/Fragment;

    move-result-object v11

    invoke-direct {v7, v11}, Lcom/facebook/Session$OpenRequest;-><init>(Landroid/support/v4/app/Fragment;)V

    .line 697
    .end local v2    # "context":Landroid/content/Context;
    .restart local v7    # "openRequest":Lcom/facebook/Session$OpenRequest;
    :cond_6
    :goto_3
    if-eqz v7, :cond_0

    .line 698
    iget-object v11, p0, Lcom/facebook/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/widget/LoginButton;

    # getter for: Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;
    invoke-static {v11}, Lcom/facebook/widget/LoginButton;->access$6(Lcom/facebook/widget/LoginButton;)Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    move-result-object v11

    # getter for: Lcom/facebook/widget/LoginButton$LoginButtonProperties;->defaultAudience:Lcom/facebook/SessionDefaultAudience;
    invoke-static {v11}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->access$0(Lcom/facebook/widget/LoginButton$LoginButtonProperties;)Lcom/facebook/SessionDefaultAudience;

    move-result-object v11

    invoke-virtual {v7, v11}, Lcom/facebook/Session$OpenRequest;->setDefaultAudience(Lcom/facebook/SessionDefaultAudience;)Lcom/facebook/Session$OpenRequest;

    .line 699
    iget-object v11, p0, Lcom/facebook/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/widget/LoginButton;

    # getter for: Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;
    invoke-static {v11}, Lcom/facebook/widget/LoginButton;->access$6(Lcom/facebook/widget/LoginButton;)Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    move-result-object v11

    # getter for: Lcom/facebook/widget/LoginButton$LoginButtonProperties;->permissions:Ljava/util/List;
    invoke-static {v11}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->access$1(Lcom/facebook/widget/LoginButton$LoginButtonProperties;)Ljava/util/List;

    move-result-object v11

    invoke-virtual {v7, v11}, Lcom/facebook/Session$OpenRequest;->setPermissions(Ljava/util/List;)Lcom/facebook/Session$OpenRequest;

    .line 700
    iget-object v11, p0, Lcom/facebook/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/widget/LoginButton;

    # getter for: Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;
    invoke-static {v11}, Lcom/facebook/widget/LoginButton;->access$6(Lcom/facebook/widget/LoginButton;)Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    move-result-object v11

    # getter for: Lcom/facebook/widget/LoginButton$LoginButtonProperties;->loginBehavior:Lcom/facebook/SessionLoginBehavior;
    invoke-static {v11}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->access$2(Lcom/facebook/widget/LoginButton$LoginButtonProperties;)Lcom/facebook/SessionLoginBehavior;

    move-result-object v11

    invoke-virtual {v7, v11}, Lcom/facebook/Session$OpenRequest;->setLoginBehavior(Lcom/facebook/SessionLoginBehavior;)Lcom/facebook/Session$OpenRequest;

    .line 702
    sget-object v11, Lcom/facebook/internal/SessionAuthorizationType;->PUBLISH:Lcom/facebook/internal/SessionAuthorizationType;

    iget-object v12, p0, Lcom/facebook/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/widget/LoginButton;

    # getter for: Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;
    invoke-static {v12}, Lcom/facebook/widget/LoginButton;->access$6(Lcom/facebook/widget/LoginButton;)Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    move-result-object v12

    # getter for: Lcom/facebook/widget/LoginButton$LoginButtonProperties;->authorizationType:Lcom/facebook/internal/SessionAuthorizationType;
    invoke-static {v12}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->access$3(Lcom/facebook/widget/LoginButton$LoginButtonProperties;)Lcom/facebook/internal/SessionAuthorizationType;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/facebook/internal/SessionAuthorizationType;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 703
    invoke-virtual {v3, v7}, Lcom/facebook/Session;->openForPublish(Lcom/facebook/Session$OpenRequest;)V

    goto/16 :goto_1

    .line 693
    .restart local v2    # "context":Landroid/content/Context;
    :cond_7
    instance-of v11, v2, Landroid/app/Activity;

    if-eqz v11, :cond_6

    .line 694
    new-instance v7, Lcom/facebook/Session$OpenRequest;

    .end local v7    # "openRequest":Lcom/facebook/Session$OpenRequest;
    check-cast v2, Landroid/app/Activity;

    .end local v2    # "context":Landroid/content/Context;
    invoke-direct {v7, v2}, Lcom/facebook/Session$OpenRequest;-><init>(Landroid/app/Activity;)V

    .restart local v7    # "openRequest":Lcom/facebook/Session$OpenRequest;
    goto :goto_3

    .line 705
    :cond_8
    invoke-virtual {v3, v7}, Lcom/facebook/Session;->openForRead(Lcom/facebook/Session$OpenRequest;)V

    goto/16 :goto_1

    .line 714
    .end local v3    # "currentSession":Lcom/facebook/Session;
    .end local v7    # "openRequest":Lcom/facebook/Session$OpenRequest;
    .restart local v4    # "logger":Lcom/facebook/AppEventsLogger;
    .restart local v9    # "parameters":Landroid/os/Bundle;
    :cond_9
    const/4 v11, 0x1

    goto/16 :goto_2
.end method
