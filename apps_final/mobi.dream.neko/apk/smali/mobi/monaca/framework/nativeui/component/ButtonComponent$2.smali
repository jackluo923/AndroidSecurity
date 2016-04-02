.class Lmobi/monaca/framework/nativeui/component/ButtonComponent$2;
.super Ljava/lang/Object;
.source "ButtonComponent.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/monaca/framework/nativeui/component/ButtonComponent;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/monaca/framework/nativeui/component/ButtonComponent;


# direct methods
.method constructor <init>(Lmobi/monaca/framework/nativeui/component/ButtonComponent;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lmobi/monaca/framework/nativeui/component/ButtonComponent$2;->this$0:Lmobi/monaca/framework/nativeui/component/ButtonComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 83
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/ButtonComponent$2;->this$0:Lmobi/monaca/framework/nativeui/component/ButtonComponent;

    iget-object v0, v0, Lmobi/monaca/framework/nativeui/component/ButtonComponent;->eventer:Lmobi/monaca/framework/nativeui/ComponentEventer;

    invoke-virtual {v0}, Lmobi/monaca/framework/nativeui/ComponentEventer;->onTap()V

    .line 84
    return-void
.end method
