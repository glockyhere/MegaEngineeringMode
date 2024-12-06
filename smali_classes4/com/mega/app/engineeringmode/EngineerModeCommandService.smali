.class public Lcom/mega/app/engineeringmode/EngineerModeCommandService;
.super Landroid/app/Service;
.source "EngineerModeCommandService.java"


# static fields
.field public static final ACTION_PUSH:Ljava/lang/String; = "com.mega.satellite.RECEIVE_PUSH_EVENT"

.field private static final COMMAND_TYPE_CLEAR_DDR:Ljava/lang/String; = "ddr_clear_data"

.field public static final EXTRA_PAYLOAD:Ljava/lang/String; = "mega.message.payload"

.field private static final KEY_COMMAND_TYPE:Ljava/lang/String; = "command_type"

.field private static final KEY_MESSAGE_SUB_TYPE:Ljava/lang/String; = "sub_type"

.field private static final SUBTYPE_RVS_GENERIC_CONFIG:Ljava/lang/String; = "rvs_generic_config"

.field private static final TAG:Ljava/lang/String; = "DebugCommandService"


# instance fields
.field private mMegaConnector:Lcom/mega/app/engineeringmode/common/MegaConnector;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private clearDDRData()V
    .locals 4

    .line 56
    new-instance v0, Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;

    invoke-direct {v0}, Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;-><init>()V

    .line 57
    .local v0, "mConfigData":Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;
    const-string v1, "32"

    invoke-virtual {v0, v1}, Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;->setCommand(Ljava/lang/String;)V

    .line 58
    const-string v2, "set"

    invoke-virtual {v0, v2}, Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;->setOperation(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v0, v1}, Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;->setId(Ljava/lang/String;)V

    .line 60
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;->setParameter(Ljava/lang/String;)V

    .line 61
    const-string v1, "DebugCommandService"

    const-string v2, "clear ddr data topic:misc_service/command/clear_ddrdata_request"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object v1, p0, Lcom/mega/app/engineeringmode/EngineerModeCommandService;->mMegaConnector:Lcom/mega/app/engineeringmode/common/MegaConnector;

    invoke-static {v0}, Lcom/mega/app/engineeringmode/common/Util;->convertConfigToArray(Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    const-string v3, "misc_service/command/clear_ddrdata_request"

    invoke-virtual {v1, v3, v2}, Lcom/mega/app/engineeringmode/common/MegaConnector;->send(Ljava/lang/String;Ljava/util/ArrayList;)Z

    .line 63
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 36
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .line 30
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 31
    invoke-static {}, Lcom/mega/app/engineeringmode/common/MegaConnector;->getInstance()Lcom/mega/app/engineeringmode/common/MegaConnector;

    move-result-object v0

    iput-object v0, p0, Lcom/mega/app/engineeringmode/EngineerModeCommandService;->mMegaConnector:Lcom/mega/app/engineeringmode/common/MegaConnector;

    .line 32
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .line 41
    if-eqz p1, :cond_0

    .line 42
    const-string v0, "sub_type"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, "subType":Ljava/lang/String;
    const-string v1, "command_type"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 44
    .local v1, "commandType":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCommandReceived subType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ,commandType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DebugCommandService"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    const-string v2, "rvs_generic_config"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 47
    const-string v2, "ddr_clear_data"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 48
    const-string v2, "do COMMAND_TYPE_CLEAR_DDR"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-direct {p0}, Lcom/mega/app/engineeringmode/EngineerModeCommandService;->clearDDRData()V

    .line 52
    .end local v0    # "subType":Ljava/lang/String;
    .end local v1    # "commandType":Ljava/lang/String;
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method
