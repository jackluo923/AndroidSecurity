.class Lmobi/monaca/framework/nativeui/component/SearchBoxComponent$4;
.super Ljava/lang/Object;
.source "SearchBoxComponent.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/monaca/framework/nativeui/component/SearchBoxComponent;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/monaca/framework/nativeui/component/SearchBoxComponent;


# direct methods
.method constructor <init>(Lmobi/monaca/framework/nativeui/component/SearchBoxComponent;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lmobi/monaca/framework/nativeui/component/SearchBoxComponent$4;->this$0:Lmobi/monaca/framework/nativeui/component/SearchBoxComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 173
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/SearchBoxComponent$4;->this$0:Lmobi/monaca/framework/nativeui/component/SearchBoxComponent;

    iget-object v0, v0, Lmobi/monaca/framework/nativeui/component/SearchBoxComponent;->searchEditText:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/SearchBoxComponent$4;->this$0:Lmobi/monaca/framework/nativeui/component/SearchBoxComponent;

    iget-object v0, v0, Lmobi/monaca/framework/nativeui/component/SearchBoxComponent;->searchEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 175
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/SearchBoxComponent$4;->this$0:Lmobi/monaca/framework/nativeui/component/SearchBoxComponent;

    iget-object v0, v0, Lmobi/monaca/framework/nativeui/component/SearchBoxComponent;->uiContext:Lmobi/monaca/framework/nativeui/UIContext;

    iget-object v1, p0, Lmobi/monaca/framework/nativeui/component/SearchBoxComponent$4;->this$0:Lmobi/monaca/framework/nativeui/component/SearchBoxComponent;

    iget-object v1, v1, Lmobi/monaca/framework/nativeui/component/SearchBoxComponent;->searchEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Lmobi/monaca/framework/nativeui/UIContext;->showSoftInput(Landroid/view/View;)V

    .line 176
    return-void
.end method
