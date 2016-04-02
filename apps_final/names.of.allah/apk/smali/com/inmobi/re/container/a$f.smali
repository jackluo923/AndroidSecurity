.class Lcom/inmobi/re/container/a$f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/webkit/GeolocationPermissions$Callback;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/inmobi/re/container/a;


# direct methods
.method constructor <init>(Lcom/inmobi/re/container/a;Landroid/webkit/GeolocationPermissions$Callback;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/re/container/a$f;->c:Lcom/inmobi/re/container/a;

    iput-object p2, p0, Lcom/inmobi/re/container/a$f;->a:Landroid/webkit/GeolocationPermissions$Callback;

    iput-object p3, p0, Lcom/inmobi/re/container/a$f;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/inmobi/re/container/a$f;->a:Landroid/webkit/GeolocationPermissions$Callback;

    iget-object v1, p0, Lcom/inmobi/re/container/a$f;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v2}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    return-void
.end method
