.class Lcom/ali/user/mobile/register/RegisterUtil$1;
.super Ljava/lang/Object;
.source "RegisterUtil.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/register/RegisterUtil$1;->a:Ljava/lang/String;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/ali/user/mobile/register/RegisterUtil$1;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/ali/user/mobile/h5/H5Wrapper;->startPage(Ljava/lang/String;)V

    .line 87
    return-void
.end method
