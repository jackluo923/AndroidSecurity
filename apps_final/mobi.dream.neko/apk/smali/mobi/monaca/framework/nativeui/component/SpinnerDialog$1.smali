.class Lmobi/monaca/framework/nativeui/component/SpinnerDialog$1;
.super Ljava/lang/Object;
.source "SpinnerDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/monaca/framework/nativeui/component/SpinnerDialog;-><init>(Lmobi/monaca/framework/nativeui/UIContext;Lorg/json/JSONArray;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/monaca/framework/nativeui/component/SpinnerDialog;

.field final synthetic val$animationDrawable:Landroid/graphics/drawable/AnimationDrawable;


# direct methods
.method constructor <init>(Lmobi/monaca/framework/nativeui/component/SpinnerDialog;Landroid/graphics/drawable/AnimationDrawable;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lmobi/monaca/framework/nativeui/component/SpinnerDialog$1;->this$0:Lmobi/monaca/framework/nativeui/component/SpinnerDialog;

    iput-object p2, p0, Lmobi/monaca/framework/nativeui/component/SpinnerDialog$1;->val$animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/SpinnerDialog$1;->val$animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 188
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/SpinnerDialog$1;->val$animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 189
    return-void
.end method
