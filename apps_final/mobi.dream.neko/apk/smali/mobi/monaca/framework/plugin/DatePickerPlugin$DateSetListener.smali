.class final Lmobi/monaca/framework/plugin/DatePickerPlugin$DateSetListener;
.super Ljava/lang/Object;
.source "DatePickerPlugin.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/monaca/framework/plugin/DatePickerPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DateSetListener"
.end annotation


# instance fields
.field private final callBackId:Ljava/lang/String;

.field private final datePickerPlugin:Lmobi/monaca/framework/plugin/DatePickerPlugin;

.field final synthetic this$0:Lmobi/monaca/framework/plugin/DatePickerPlugin;


# direct methods
.method private constructor <init>(Lmobi/monaca/framework/plugin/DatePickerPlugin;Lmobi/monaca/framework/plugin/DatePickerPlugin;Ljava/lang/String;)V
    .locals 0
    .param p2, "datePickerPlugin"    # Lmobi/monaca/framework/plugin/DatePickerPlugin;
    .param p3, "callBackId"    # Ljava/lang/String;

    .prologue
    .line 129
    iput-object p1, p0, Lmobi/monaca/framework/plugin/DatePickerPlugin$DateSetListener;->this$0:Lmobi/monaca/framework/plugin/DatePickerPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    iput-object p2, p0, Lmobi/monaca/framework/plugin/DatePickerPlugin$DateSetListener;->datePickerPlugin:Lmobi/monaca/framework/plugin/DatePickerPlugin;

    .line 131
    iput-object p3, p0, Lmobi/monaca/framework/plugin/DatePickerPlugin$DateSetListener;->callBackId:Ljava/lang/String;

    .line 132
    return-void
.end method

.method synthetic constructor <init>(Lmobi/monaca/framework/plugin/DatePickerPlugin;Lmobi/monaca/framework/plugin/DatePickerPlugin;Ljava/lang/String;Lmobi/monaca/framework/plugin/DatePickerPlugin$1;)V
    .locals 0
    .param p1, "x0"    # Lmobi/monaca/framework/plugin/DatePickerPlugin;
    .param p2, "x1"    # Lmobi/monaca/framework/plugin/DatePickerPlugin;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Lmobi/monaca/framework/plugin/DatePickerPlugin$1;

    .prologue
    .line 125
    invoke-direct {p0, p1, p2, p3}, Lmobi/monaca/framework/plugin/DatePickerPlugin$DateSetListener;-><init>(Lmobi/monaca/framework/plugin/DatePickerPlugin;Lmobi/monaca/framework/plugin/DatePickerPlugin;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 4
    .param p1, "view"    # Landroid/widget/DatePicker;
    .param p2, "year"    # I
    .param p3, "monthOfYear"    # I
    .param p4, "dayOfMonth"    # I

    .prologue
    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p3, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, "returnDate":Ljava/lang/String;
    iget-object v1, p0, Lmobi/monaca/framework/plugin/DatePickerPlugin$DateSetListener;->datePickerPlugin:Lmobi/monaca/framework/plugin/DatePickerPlugin;

    new-instance v2, Lorg/apache/cordova/api/PluginResult;

    sget-object v3, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-direct {v2, v3, v0}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Ljava/lang/String;)V

    iget-object v3, p0, Lmobi/monaca/framework/plugin/DatePickerPlugin$DateSetListener;->callBackId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lmobi/monaca/framework/plugin/DatePickerPlugin;->success(Lorg/apache/cordova/api/PluginResult;Ljava/lang/String;)V

    .line 141
    return-void
.end method
