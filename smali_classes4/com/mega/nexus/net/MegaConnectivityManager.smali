.class public Lcom/mega/nexus/net/MegaConnectivityManager;
.super Ljava/lang/Object;
.source "MegaConnectivityManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mega/nexus/net/MegaConnectivityManager$MegaOnStartTetheringCallback;
    }
.end annotation


# static fields
.field public static final ACTION_TETHER_STATE_CHANGED:Ljava/lang/String; = "android.net.conn.TETHER_STATE_CHANGED"

.field public static INTERNET_STATUS_CHANGE_ACTION:Ljava/lang/String;

.field public static final TETHERING_WIFI:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    sget-object v0, Lcom/mega/nexus/net/MegaConnectivityManagerAdapter;->INTERNET_STATUS_CHANGE_ACTION:Ljava/lang/String;

    sput-object v0, Lcom/mega/nexus/net/MegaConnectivityManager;->INTERNET_STATUS_CHANGE_ACTION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static factoryReset(Landroid/net/ConnectivityManager;)V
    .locals 0
    .param p0, "manager"    # Landroid/net/ConnectivityManager;

    .line 15
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->factoryReset()V

    .line 16
    return-void
.end method

.method public static getTetherableWifiRegexs(Landroid/net/ConnectivityManager;)[Ljava/lang/String;
    .locals 1
    .param p0, "manager"    # Landroid/net/ConnectivityManager;

    .line 55
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isInternetAvailable(Landroid/net/ConnectivityManager;)Z
    .locals 1
    .param p0, "manager"    # Landroid/net/ConnectivityManager;

    .line 51
    invoke-static {p0}, Lcom/mega/nexus/net/MegaConnectivityManagerAdapter;->isInternetAvailable(Landroid/net/ConnectivityManager;)Z

    move-result v0

    return v0
.end method

.method public static startTethering(Landroid/net/ConnectivityManager;IZLandroid/os/Handler;)V
    .locals 1
    .param p0, "manager"    # Landroid/net/ConnectivityManager;
    .param p1, "type"    # I
    .param p2, "showProvisioningUi"    # Z
    .param p3, "handler"    # Landroid/os/Handler;

    .line 26
    new-instance v0, Lcom/mega/nexus/net/MegaConnectivityManager$1;

    invoke-direct {v0}, Lcom/mega/nexus/net/MegaConnectivityManager$1;-><init>()V

    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/net/ConnectivityManager;->startTethering(IZLandroid/net/ConnectivityManager$OnStartTetheringCallback;Landroid/os/Handler;)V

    .line 28
    return-void
.end method

.method public static startTethering(Landroid/net/ConnectivityManager;IZLcom/mega/nexus/net/MegaConnectivityManager$MegaOnStartTetheringCallback;Landroid/os/Handler;)V
    .locals 1
    .param p0, "manager"    # Landroid/net/ConnectivityManager;
    .param p1, "type"    # I
    .param p2, "showProvisioningUi"    # Z
    .param p3, "callback"    # Lcom/mega/nexus/net/MegaConnectivityManager$MegaOnStartTetheringCallback;
    .param p4, "handler"    # Landroid/os/Handler;

    .line 33
    new-instance v0, Lcom/mega/nexus/net/MegaConnectivityManager$2;

    invoke-direct {v0, p3}, Lcom/mega/nexus/net/MegaConnectivityManager$2;-><init>(Lcom/mega/nexus/net/MegaConnectivityManager$MegaOnStartTetheringCallback;)V

    .line 47
    .local v0, "startTetheringCallback":Landroid/net/ConnectivityManager$OnStartTetheringCallback;
    invoke-virtual {p0, p1, p2, v0, p4}, Landroid/net/ConnectivityManager;->startTethering(IZLandroid/net/ConnectivityManager$OnStartTetheringCallback;Landroid/os/Handler;)V

    .line 48
    return-void
.end method

.method public static stopTethering(Landroid/net/ConnectivityManager;I)V
    .locals 0
    .param p0, "connectivityManager"    # Landroid/net/ConnectivityManager;
    .param p1, "type"    # I

    .line 19
    invoke-virtual {p0, p1}, Landroid/net/ConnectivityManager;->stopTethering(I)V

    .line 20
    return-void
.end method
