.class public Lcom/mega/nexus/bluetooth/MegaBluetoothA2dpSink;
.super Ljava/lang/Object;
.source "MegaBluetoothA2dpSink.java"


# static fields
.field public static final ACTION_CONNECTION_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.a2dp-sink.profile.action.CONNECTION_STATE_CHANGED"

.field public static final ACTION_PLAYING_STATE_CHANGED:Ljava/lang/String;

.field public static final STATE_PLAYING:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    sget-object v0, Lcom/mega/nexus/bluetooth/MegaBluetoothA2dpAdapter;->ACTION_PLAYING_STATE_CHANGED:Ljava/lang/String;

    sput-object v0, Lcom/mega/nexus/bluetooth/MegaBluetoothA2dpSink;->ACTION_PLAYING_STATE_CHANGED:Ljava/lang/String;

    .line 10
    sget v0, Lcom/mega/nexus/bluetooth/MegaBluetoothA2dpAdapter;->STATE_PLAYING:I

    sput v0, Lcom/mega/nexus/bluetooth/MegaBluetoothA2dpSink;->STATE_PLAYING:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
