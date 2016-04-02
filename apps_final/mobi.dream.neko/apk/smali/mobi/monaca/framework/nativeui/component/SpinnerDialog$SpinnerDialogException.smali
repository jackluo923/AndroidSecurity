.class public Lmobi/monaca/framework/nativeui/component/SpinnerDialog$SpinnerDialogException;
.super Ljava/lang/Exception;
.source "SpinnerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/monaca/framework/nativeui/component/SpinnerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SpinnerDialogException"
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/monaca/framework/nativeui/component/SpinnerDialog;


# direct methods
.method public constructor <init>(Lmobi/monaca/framework/nativeui/component/SpinnerDialog;Ljava/lang/String;)V
    .locals 0
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lmobi/monaca/framework/nativeui/component/SpinnerDialog$SpinnerDialogException;->this$0:Lmobi/monaca/framework/nativeui/component/SpinnerDialog;

    .line 40
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 41
    return-void
.end method
