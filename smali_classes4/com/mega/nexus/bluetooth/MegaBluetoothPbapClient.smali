.class public Lcom/mega/nexus/bluetooth/MegaBluetoothPbapClient;
.super Ljava/lang/Object;
.source "MegaBluetoothPbapClient.java"


# static fields
.field public static final ACTION_CONNECTION_STATE_CHANGED:Ljava/lang/String;

.field public static final ACTION_PHONEBOOK_DOWNLOAD_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.pbapclient.profile.action.PHONEBOOK_DOWNLOAD_STATE_CHANGED"

.field public static final EXTRA_DOWNLOAD_STATE:Ljava/lang/String; = "android.bluetooth.pbapclient.profile.extra.DOWNLOAD_STATE"

.field public static final EXTRA_PHONEBOOK_PATH:Ljava/lang/String; = "android.bluetooth.pbapclient.profile.extra.PHONEBOOK_PATH"

.field public static final EXTRA_PHONEBOOK_SIZE:Ljava/lang/String; = "android.bluetooth.pbapclient.profile.extra.PHONEBOOK_SIZE"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    sget-object v0, Lcom/mega/nexus/bluetooth/MegaBluetoothPbapClientAdapter;->ACTION_CONNECTION_STATE_CHANGED:Ljava/lang/String;

    sput-object v0, Lcom/mega/nexus/bluetooth/MegaBluetoothPbapClient;->ACTION_CONNECTION_STATE_CHANGED:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static registerCallback(Landroid/bluetooth/BluetoothPbapClient;Landroid/bluetooth/BluetoothPbapClientCallback;)V
    .locals 0
    .param p0, "bpc"    # Landroid/bluetooth/BluetoothPbapClient;
    .param p1, "cb"    # Landroid/bluetooth/BluetoothPbapClientCallback;

    .line 22
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothPbapClient;->registerCallback(Landroid/bluetooth/BluetoothPbapClientCallback;)V

    .line 23
    return-void
.end method

.method public static unregisterCallback(Landroid/bluetooth/BluetoothPbapClient;Landroid/bluetooth/BluetoothPbapClientCallback;)V
    .locals 0
    .param p0, "bpc"    # Landroid/bluetooth/BluetoothPbapClient;
    .param p1, "cb"    # Landroid/bluetooth/BluetoothPbapClientCallback;

    .line 27
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothPbapClient;->unregisterCallback(Landroid/bluetooth/BluetoothPbapClientCallback;)V

    .line 28
    return-void
.end method
