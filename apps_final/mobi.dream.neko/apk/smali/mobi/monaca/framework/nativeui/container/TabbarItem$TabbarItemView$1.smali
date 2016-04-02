.class Lmobi/monaca/framework/nativeui/container/TabbarItem$TabbarItemView$1;
.super Ljava/lang/Object;
.source "TabbarItem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/monaca/framework/nativeui/container/TabbarItem$TabbarItemView;->switchToSelected()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmobi/monaca/framework/nativeui/container/TabbarItem$TabbarItemView;


# direct methods
.method constructor <init>(Lmobi/monaca/framework/nativeui/container/TabbarItem$TabbarItemView;)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lmobi/monaca/framework/nativeui/container/TabbarItem$TabbarItemView$1;->this$1:Lmobi/monaca/framework/nativeui/container/TabbarItem$TabbarItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/container/TabbarItem$TabbarItemView$1;->this$1:Lmobi/monaca/framework/nativeui/container/TabbarItem$TabbarItemView;

    iget-object v0, v0, Lmobi/monaca/framework/nativeui/container/TabbarItem$TabbarItemView;->this$0:Lmobi/monaca/framework/nativeui/container/TabbarItem;

    # getter for: Lmobi/monaca/framework/nativeui/container/TabbarItem;->uiContext:Lmobi/monaca/framework/nativeui/UIContext;
    invoke-static {v0}, Lmobi/monaca/framework/nativeui/container/TabbarItem;->access$300(Lmobi/monaca/framework/nativeui/container/TabbarItem;)Lmobi/monaca/framework/nativeui/UIContext;

    move-result-object v0

    iget-object v1, p0, Lmobi/monaca/framework/nativeui/container/TabbarItem$TabbarItemView$1;->this$1:Lmobi/monaca/framework/nativeui/container/TabbarItem$TabbarItemView;

    iget-object v1, v1, Lmobi/monaca/framework/nativeui/container/TabbarItem$TabbarItemView;->this$0:Lmobi/monaca/framework/nativeui/container/TabbarItem;

    iget-object v1, v1, Lmobi/monaca/framework/nativeui/container/TabbarItem;->link:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmobi/monaca/framework/nativeui/UIContext;->loadRelativePathWithoutUIFile(Ljava/lang/String;)V

    .line 204
    return-void
.end method
