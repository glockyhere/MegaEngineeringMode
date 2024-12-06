.class Lcom/mega/app/engineeringmode/common/EcuConnector$1;
.super Ljava/lang/Object;
.source "EcuConnector.java"

# interfaces
.implements Landroid/os/IHwBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mega/app/engineeringmode/common/EcuConnector;->getEcuInfo()Lvendor/mega/system/ecu_info/V1_0/IEcuInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mega/app/engineeringmode/common/EcuConnector;


# direct methods
.method constructor <init>(Lcom/mega/app/engineeringmode/common/EcuConnector;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mega/app/engineeringmode/common/EcuConnector;

    .line 24
    iput-object p1, p0, Lcom/mega/app/engineeringmode/common/EcuConnector$1;->this$0:Lcom/mega/app/engineeringmode/common/EcuConnector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public serviceDied(J)V
    .locals 2
    .param p1, "l"    # J

    .line 28
    :try_start_0
    iget-object v0, p0, Lcom/mega/app/engineeringmode/common/EcuConnector$1;->this$0:Lcom/mega/app/engineeringmode/common/EcuConnector;

    invoke-static {v0}, Lcom/mega/app/engineeringmode/common/EcuConnector;->access$000(Lcom/mega/app/engineeringmode/common/EcuConnector;)Lvendor/mega/system/ecu_info/V1_0/IEcuInfo;

    move-result-object v0

    invoke-interface {v0, p0}, Lvendor/mega/system/ecu_info/V1_0/IEcuInfo;->unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    goto :goto_0

    .line 29
    :catch_0
    move-exception v0

    .line 30
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 32
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-object v0, p0, Lcom/mega/app/engineeringmode/common/EcuConnector$1;->this$0:Lcom/mega/app/engineeringmode/common/EcuConnector;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mega/app/engineeringmode/common/EcuConnector;->access$002(Lcom/mega/app/engineeringmode/common/EcuConnector;Lvendor/mega/system/ecu_info/V1_0/IEcuInfo;)Lvendor/mega/system/ecu_info/V1_0/IEcuInfo;

    .line 33
    invoke-static {}, Lcom/mega/app/engineeringmode/common/EcuConnector;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ecu terminated"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    return-void
.end method
