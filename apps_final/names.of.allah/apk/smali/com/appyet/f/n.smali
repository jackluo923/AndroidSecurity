.class final Lcom/appyet/f/n;
.super Ljava/util/HashMap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "^\\d{8}$"

    const-string v1, "yyyyMMdd"

    invoke-virtual {p0, v0, v1}, Lcom/appyet/f/n;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "^\\d{1,2}-\\d{1,2}-\\d{4}$"

    const-string v1, "dd-MM-yyyy"

    invoke-virtual {p0, v0, v1}, Lcom/appyet/f/n;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "^\\d{4}-\\d{1,2}-\\d{1,2}$"

    const-string v1, "yyyy-MM-dd"

    invoke-virtual {p0, v0, v1}, Lcom/appyet/f/n;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "^\\d{1,2}/\\d{1,2}/\\d{4}$"

    const-string v1, "MM/dd/yyyy"

    invoke-virtual {p0, v0, v1}, Lcom/appyet/f/n;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "^\\d{4}/\\d{1,2}/\\d{1,2}$"

    const-string v1, "yyyy/MM/dd"

    invoke-virtual {p0, v0, v1}, Lcom/appyet/f/n;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "^\\d{1,2}\\s[a-z]{3}\\s\\d{4}$"

    const-string v1, "dd MMM yyyy"

    invoke-virtual {p0, v0, v1}, Lcom/appyet/f/n;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "^\\d{1,2}\\s[a-z]{4,}\\s\\d{4}$"

    const-string v1, "dd MMMM yyyy"

    invoke-virtual {p0, v0, v1}, Lcom/appyet/f/n;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "^\\d{12}$"

    const-string v1, "yyyyMMddHHmm"

    invoke-virtual {p0, v0, v1}, Lcom/appyet/f/n;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "^\\d{8}\\s\\d{4}$"

    const-string v1, "yyyyMMdd HHmm"

    invoke-virtual {p0, v0, v1}, Lcom/appyet/f/n;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "^\\d{1,2}-\\d{1,2}-\\d{4}\\s\\d{1,2}:\\d{2}$"

    const-string v1, "dd-MM-yyyy HH:mm"

    invoke-virtual {p0, v0, v1}, Lcom/appyet/f/n;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "^\\d{4}-\\d{1,2}-\\d{1,2}\\s\\d{1,2}:\\d{2}$"

    const-string v1, "yyyy-MM-dd HH:mm"

    invoke-virtual {p0, v0, v1}, Lcom/appyet/f/n;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "^\\d{1,2}/\\d{1,2}/\\d{4}\\s\\d{1,2}:\\d{2}$"

    const-string v1, "MM/dd/yyyy HH:mm"

    invoke-virtual {p0, v0, v1}, Lcom/appyet/f/n;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "^\\d{4}/\\d{1,2}/\\d{1,2}\\s\\d{1,2}:\\d{2}$"

    const-string v1, "yyyy/MM/dd HH:mm"

    invoke-virtual {p0, v0, v1}, Lcom/appyet/f/n;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "^\\d{1,2}\\s[a-z]{3}\\s\\d{4}\\s\\d{1,2}:\\d{2}$"

    const-string v1, "dd MMM yyyy HH:mm"

    invoke-virtual {p0, v0, v1}, Lcom/appyet/f/n;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "^\\d{1,2}\\s[a-z]{4,}\\s\\d{4}\\s\\d{1,2}:\\d{2}$"

    const-string v1, "dd MMMM yyyy HH:mm"

    invoke-virtual {p0, v0, v1}, Lcom/appyet/f/n;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "^\\d{14}$"

    const-string v1, "yyyyMMddHHmmss"

    invoke-virtual {p0, v0, v1}, Lcom/appyet/f/n;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "^\\d{8}\\s\\d{6}$"

    const-string v1, "yyyyMMdd HHmmss"

    invoke-virtual {p0, v0, v1}, Lcom/appyet/f/n;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "^\\d{1,2}-\\d{1,2}-\\d{4}\\s\\d{1,2}:\\d{2}:\\d{2}$"

    const-string v1, "dd-MM-yyyy HH:mm:ss"

    invoke-virtual {p0, v0, v1}, Lcom/appyet/f/n;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "^\\d{4}-\\d{1,2}-\\d{1,2}\\s\\d{1,2}:\\d{2}:\\d{2}$"

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-virtual {p0, v0, v1}, Lcom/appyet/f/n;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "^\\d{1,2}/\\d{1,2}/\\d{4}\\s\\d{1,2}:\\d{2}:\\d{2}$"

    const-string v1, "MM/dd/yyyy HH:mm:ss"

    invoke-virtual {p0, v0, v1}, Lcom/appyet/f/n;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "^\\d{4}/\\d{1,2}/\\d{1,2}\\s\\d{1,2}:\\d{2}:\\d{2}$"

    const-string v1, "yyyy/MM/dd HH:mm:ss"

    invoke-virtual {p0, v0, v1}, Lcom/appyet/f/n;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "^\\d{1,2}\\s[a-z]{3}\\s\\d{4}\\s\\d{1,2}:\\d{2}:\\d{2}$"

    const-string v1, "dd MMM yyyy HH:mm:ss"

    invoke-virtual {p0, v0, v1}, Lcom/appyet/f/n;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "^\\d{1,2}\\s[a-z]{4,}\\s\\d{4}\\s\\d{1,2}:\\d{2}:\\d{2}$"

    const-string v1, "dd MMMM yyyy HH:mm:ss"

    invoke-virtual {p0, v0, v1}, Lcom/appyet/f/n;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
