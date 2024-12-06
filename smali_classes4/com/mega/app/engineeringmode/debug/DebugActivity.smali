.class public Lcom/mega/app/engineeringmode/debug/DebugActivity;
.super Lcom/mega/app/engineeringmode/base/BaseActivity;
.source "DebugActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/mega/app/engineeringmode/common/MegaConnector$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mega/app/engineeringmode/debug/DebugActivity$AudioDumpThread;,
        Lcom/mega/app/engineeringmode/debug/DebugActivity$EocInfo;
    }
.end annotation


# static fields
.field private static final AUDIO_DUMP_STATUS:I = 0x1

.field private static final CACHE_INVALID_ENABLE:Ljava/lang/String; = "persist.carservice.cacheinvalid"

.field private static final DEBUG_CLOSE:Ljava/lang/String; = "I"

.field private static final DEBUG_OPEN:Ljava/lang/String; = "V"

.field private static final DEBUG_TBOX_CHECK_PROPERTY:Ljava/lang/String; = "persist.vendor.svdc.check_enable"

.field private static final DEBUG_TBOX_CLIENT_PROPERTY:Ljava/lang/String; = "persist.log.tag.tbox_client"

.field private static final DEBUG_TBOX_LOCATION_PROPERTY:Ljava/lang/String; = "persist.log.tag.tbox_location"

.field private static final EOC_STATUS:I = 0x0

.field private static final EOC_STATUS_REQ:Ljava/lang/String; = "EOC/Debug/Req"

.field private static final EOC_STATUS_RESP:Ljava/lang/String; = "EOC/Debug/Resp"

.field private static final SVDC_CHECK_CLOSE:Ljava/lang/String; = "false"

.field private static final SVDC_CHECK_OPEN:Ljava/lang/String; = "true"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBtAudioFwCloseExport:Landroid/widget/Button;

.field private mBtAudioFwDumpRx:Landroid/widget/Button;

.field private mBtAudioFwDumpTx:Landroid/widget/Button;

.field private mBtAudioFwRecordTx:Landroid/widget/Button;

.field private mBtAudioFwTrackRx:Landroid/widget/Button;

.field private mBtAudioHalDumpRx:Landroid/widget/Button;

.field private mBtAudioHalDumpTx:Landroid/widget/Button;

.field private mBtEocOnOff:Landroid/widget/Button;

.field private mCarServiceDebugText:Landroid/widget/TextView;

.field private mDebugResetHub:Landroid/widget/Button;

.field private mDebugResetHub2:Landroid/widget/Button;

.field private mDebugResetPhy:Landroid/widget/Button;

.field private mDebugTboxCheck:Landroid/widget/Button;

.field private mDebugTboxClient:Landroid/widget/Button;

.field private mDebugTboxLocation:Landroid/widget/Button;

.field private mEocStatus:Ljava/lang/Boolean;

.field private mHandler:Landroid/os/Handler;

.field private mMegaConnector:Lcom/mega/app/engineeringmode/common/MegaConnector;

.field private mStopTcpDump:Landroid/widget/Button;

.field private mTcpDumpEth1:Landroid/widget/Button;

.field private mTcpDumpEth2:Landroid/widget/Button;

.field private mTcpDumpWifi:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const-class v0, Lcom/mega/app/engineeringmode/debug/DebugActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mega/app/engineeringmode/debug/DebugActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lcom/mega/app/engineeringmode/base/BaseActivity;-><init>()V

    .line 69
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/mega/app/engineeringmode/debug/DebugActivity;->mEocStatus:Ljava/lang/Boolean;

    .line 320
    new-instance v0, Lcom/mega/app/engineeringmode/debug/DebugActivity$4;

    invoke-direct {v0, p0}, Lcom/mega/app/engineeringmode/debug/DebugActivity$4;-><init>(Lcom/mega/app/engineeringmode/debug/DebugActivity;)V

    iput-object v0, p0, Lcom/mega/app/engineeringmode/debug/DebugActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/mega/app/engineeringmode/debug/DebugActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mega/app/engineeringmode/debug/DebugActivity;

    .line 32
    invoke-direct {p0}, Lcom/mega/app/engineeringmode/debug/DebugActivity;->getCarServiceDebugSwitch()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/mega/app/engineeringmode/debug/DebugActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/mega/app/engineeringmode/debug/DebugActivity;

    .line 32
    invoke-direct {p0}, Lcom/mega/app/engineeringmode/debug/DebugActivity;->updateCarServiceDebugStatus()V

    return-void
.end method

.method static synthetic access$200(Lcom/mega/app/engineeringmode/debug/DebugActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/mega/app/engineeringmode/debug/DebugActivity;

    .line 32
    iget-object v0, p0, Lcom/mega/app/engineeringmode/debug/DebugActivity;->mBtEocOnOff:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mega/app/engineeringmode/debug/DebugActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/mega/app/engineeringmode/debug/DebugActivity;

    .line 32
    iget-object v0, p0, Lcom/mega/app/engineeringmode/debug/DebugActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getCarServiceDebugSwitch()Z
    .locals 2

    .line 150
    const-string v0, "persist.carservice.cacheinvalid"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mega/nexus/os/MegaSystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private initDebugTboxCheck()V
    .locals 3

    .line 388
    const-string v0, "persist.vendor.svdc.check_enable"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/mega/app/engineeringmode/common/Util;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 389
    .local v0, "isEnable":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "true"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 390
    iget-object v1, p0, Lcom/mega/app/engineeringmode/debug/DebugActivity;->mDebugTboxCheck:Landroid/widget/Button;

    const v2, 0x7f0e003b

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 392
    :cond_0
    iget-object v1, p0, Lcom/mega/app/engineeringmode/debug/DebugActivity;->mDebugTboxCheck:Landroid/widget/Button;

    const v2, 0x7f0e003a

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 394
    :goto_0
    return-void
.end method

.method private initDebugTboxClient()V
    .locals 3

    .line 265
    const-string v0, "persist.log.tag.tbox_client"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/mega/app/engineeringmode/common/Util;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 266
    .local v0, "mode":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "V"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 267
    iget-object v1, p0, Lcom/mega/app/engineeringmode/debug/DebugActivity;->mDebugTboxClient:Landroid/widget/Button;

    const v2, 0x7f0e003e

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 269
    :cond_0
    iget-object v1, p0, Lcom/mega/app/engineeringmode/debug/DebugActivity;->mDebugTboxClient:Landroid/widget/Button;

    const v2, 0x7f0e003d

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 271
    :goto_0
    return-void
.end method

.method private initDebugTboxLocation()V
    .locals 3

    .line 285
    const-string v0, "persist.log.tag.tbox_location"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/mega/app/engineeringmode/common/Util;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 286
    .local v0, "mode":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "V"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 287
    iget-object v1, p0, Lcom/mega/app/engineeringmode/debug/DebugActivity;->mDebugTboxLocation:Landroid/widget/Button;

    const v2, 0x7f0e0040

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 289
    :cond_0
    iget-object v1, p0, Lcom/mega/app/engineeringmode/debug/DebugActivity;->mDebugTboxLocation:Landroid/widget/Button;

    const v2, 0x7f0e003f

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 291
    :goto_0
    return-void
.end method

.method private processReset(Ljava/lang/String;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .line 397
    const-string v0, "persist.vendor.svdc.check_enable"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/mega/app/engineeringmode/common/Util;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 398
    .local v0, "isEnable":Ljava/lang/String;
    sget-object v1, Lcom/mega/app/engineeringmode/debug/DebugActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set vendor.svdc.check.value to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " svdc check enable:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    const-string v1, "vendor.svdc.check.value"

    invoke-static {v1, p1}, Lcom/mega/app/engineeringmode/common/Util;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    const v1, 0x7f0e003c

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 401
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 402
    return-void
.end method

.method private setEocStatus(Z)V
    .locals 3
    .param p1, "status"    # Z

    .line 340
    if-eqz p1, :cond_0

    .line 341
    const-string v0, "{\"value\":1}"

    .local v0, "request":Ljava/lang/String;
    goto :goto_0

    .line 343
    .end local v0    # "request":Ljava/lang/String;
    :cond_0
    const-string v0, "{\"value\":0}"

    .line 345
    .restart local v0    # "request":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/mega/app/engineeringmode/debug/DebugActivity;->mMegaConnector:Lcom/mega/app/engineeringmode/common/MegaConnector;

    const-string v2, "EOC/Debug/Req"

    invoke-virtual {v1, v2, v0}, Lcom/mega/app/engineeringmode/common/MegaConnector;->send(Ljava/lang/String;Ljava/lang/String;)Z

    .line 346
    return-void
.end method

.method private switchDebugTboxCheck()V
    .locals 4

    .line 377
    const-string v0, "persist.vendor.svdc.check_enable"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/mega/app/engineeringmode/common/Util;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 378
    .local v1, "isEnable":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "true"

    if-nez v2, :cond_0

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 379
    const-string v2, "false"

    invoke-static {v0, v2}, Lcom/mega/app/engineeringmode/common/Util;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    iget-object v0, p0, Lcom/mega/app/engineeringmode/debug/DebugActivity;->mDebugTboxCheck:Landroid/widget/Button;

    const v2, 0x7f0e003a

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 382
    :cond_0
    invoke-static {v0, v3}, Lcom/mega/app/engineeringmode/common/Util;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    iget-object v0, p0, Lcom/mega/app/engineeringmode/debug/DebugActivity;->mDebugTboxCheck:Landroid/widget/Button;

    const v2, 0x7f0e003b

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 385
    :goto_0
    return-void
.end method

.method private switchDebugTboxClient()V
    .locals 4

    .line 254
    const-string v0, "persist.log.tag.tbox_client"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/mega/app/engineeringmode/common/Util;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 255
    .local v1, "mode":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "V"

    if-nez v2, :cond_0

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 256
    const-string v2, "I"

    invoke-static {v0, v2}, Lcom/mega/app/engineeringmode/common/Util;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/mega/app/engineeringmode/debug/DebugActivity;->mDebugTboxClient:Landroid/widget/Button;

    const v2, 0x7f0e003d

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 259
    :cond_0
    invoke-static {v0, v3}, Lcom/mega/app/engineeringmode/common/Util;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    iget-object v0, p0, Lcom/mega/app/engineeringmode/debug/DebugActivity;->mDebugTboxClient:Landroid/widget/Button;

    const v2, 0x7f0e003e

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 262
    :goto_0
    return-void
.end method

.method private switchDebugTboxLocation()V
    .locals 4

    .line 274
    const-string v0, "persist.log.tag.tbox_location"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/mega/app/engineeringmode/common/Util;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 275
    .local v1, "mode":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "V"

    if-nez v2, :cond_0

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 276
    const-string v2, "I"

    invoke-static {v0, v2}, Lcom/mega/app/engineeringmode/common/Util;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    iget-object v0, p0, Lcom/mega/app/engineeringmode/debug/DebugActivity;->mDebugTboxLocation:Landroid/widget/Button;

    const v2, 0x7f0e003f

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 279
    :cond_0
    invoke-static {v0, v3}, Lcom/mega/app/engineeringmode/common/Util;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    iget-object v0, p0, Lcom/mega/app/engineeringmode/debug/DebugActivity;->mDebugTboxLocation:Landroid/widget/Button;

    const v2, 0x7f0e0040

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 282
    :goto_0
    return-void
.end method

.method private updateCarServiceDebugStatus()V
    .locals 2

    .line 154
    iget-object v0, p0, Lcom/mega/app/engineeringmode/debug/DebugActivity;->mCarServiceDebugText:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/mega/app/engineeringmode/debug/DebugActivity;->getCarServiceDebugSwitch()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    const v1, 0x7f0e0038

    goto :goto_0

    .line 156
    :cond_0
    const v1, 0x7f0e0037

    .line 154
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 157
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .line 167
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090059

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const v1, 0x7f090175

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    const-string v1, "debug.audio.dump"

    packed-switch v0, :pswitch_data_1

    const-string v1, "vendor.tcp.dump"

    packed-switch v0, :pswitch_data_2

    goto/16 :goto_7

    .line 193
    :pswitch_0
    const-string v0, "wlan0"

    invoke-static {v1, v0}, Lcom/mega/app/engineeringmode/common/Util;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    goto/16 :goto_7

    .line 187
    :pswitch_1
    const-string v0, "eth1.8"

    invoke-static {v1, v0}, Lcom/mega/app/engineeringmode/common/Util;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    goto/16 :goto_7

    .line 190
    :pswitch_2
    const-string v0, "eth1.21"

    invoke-static {v1, v0}, Lcom/mega/app/engineeringmode/common/Util;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    goto/16 :goto_7

    .line 212
    :pswitch_3
    const-string v0, "hal_tx_true"

    invoke-static {v1, v0}, Lcom/mega/app/engineeringmode/common/Util;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const v0, 0x7f0e0050

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 214
    goto/16 :goto_7

    .line 208
    :pswitch_4
    const-string v0, "hal_rx_true"

    invoke-static {v1, v0}, Lcom/mega/app/engineeringmode/common/Util;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const v0, 0x7f0e004f

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 210
    goto/16 :goto_7

    .line 220
    :pswitch_5
    const-string v0, "fw_tx_true"

    invoke-static {v1, v0}, Lcom/mega/app/engineeringmode/common/Util;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const v0, 0x7f0e004e

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 222
    goto/16 :goto_7

    .line 224
    :pswitch_6
    const-string v0, "fw_track_true"

    invoke-static {v1, v0}, Lcom/mega/app/engineeringmode/common/Util;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const v0, 0x7f0e004d

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 226
    goto/16 :goto_7

    .line 216
    :pswitch_7
    const-string v0, "fw_rx_true"

    invoke-static {v1, v0}, Lcom/mega/app/engineeringmode/common/Util;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    const v0, 0x7f0e004b

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 218
    goto/16 :goto_7

    .line 228
    :pswitch_8
    const-string v0, "fw_record_true"

    invoke-static {v1, v0}, Lcom/mega/app/engineeringmode/common/Util;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    const v0, 0x7f0e004a

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 230
    goto/16 :goto_7

    .line 232
    :pswitch_9
    const v0, 0x7f0e0048

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 233
    const-string v0, "hal_rx_false"

    invoke-static {v1, v0}, Lcom/mega/app/engineeringmode/common/Util;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const-wide/16 v2, 0x12c

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 235
    :goto_0
    const-string v0, "hal_tx_false"

    invoke-static {v1, v0}, Lcom/mega/app/engineeringmode/common/Util;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 237
    :goto_1
    const-string v0, "fw_rx_false"

    invoke-static {v1, v0}, Lcom/mega/app/engineeringmode/common/Util;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    :try_start_2
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 239
    :goto_2
    const-string v0, "fw_tx_false"

    invoke-static {v1, v0}, Lcom/mega/app/engineeringmode/common/Util;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    :try_start_3
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    .line 241
    :goto_3
    const-string v0, "fw_track_false"

    invoke-static {v1, v0}, Lcom/mega/app/engineeringmode/common/Util;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    :try_start_4
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    .line 243
    :goto_4
    const-string v0, "fw_record_false"

    invoke-static {v1, v0}, Lcom/mega/app/engineeringmode/common/Util;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    :try_start_5
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception v0

    .line 245
    :goto_5
    const-string v0, "export"

    invoke-static {v1, v0}, Lcom/mega/app/engineeringmode/common/Util;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    new-instance v0, Lcom/mega/app/engineeringmode/debug/DebugActivity$AudioDumpThread;

    invoke-direct {v0, p0}, Lcom/mega/app/engineeringmode/debug/DebugActivity$AudioDumpThread;-><init>(Lcom/mega/app/engineeringmode/debug/DebugActivity;)V

    invoke-virtual {v0}, Lcom/mega/app/engineeringmode/debug/DebugActivity$AudioDumpThread;->start()V

    .line 247
    goto :goto_7

    .line 172
    :pswitch_a
    invoke-direct {p0}, Lcom/mega/app/engineeringmode/debug/DebugActivity;->switchDebugTboxLocation()V

    .line 173
    goto :goto_7

    .line 169
    :pswitch_b
    invoke-direct {p0}, Lcom/mega/app/engineeringmode/debug/DebugActivity;->switchDebugTboxClient()V

    .line 170
    goto :goto_7

    .line 175
    :pswitch_c
    invoke-direct {p0}, Lcom/mega/app/engineeringmode/debug/DebugActivity;->switchDebugTboxCheck()V

    .line 176
    goto :goto_7

    .line 178
    :pswitch_d
    const-string v0, "reset_phy"

    invoke-direct {p0, v0}, Lcom/mega/app/engineeringmode/debug/DebugActivity;->processReset(Ljava/lang/String;)V

    .line 179
    goto :goto_7

    .line 184
    :pswitch_e
    const-string v0, "reset_hub2"

    invoke-direct {p0, v0}, Lcom/mega/app/engineeringmode/debug/DebugActivity;->processReset(Ljava/lang/String;)V

    .line 185
    goto :goto_7

    .line 181
    :pswitch_f
    const-string v0, "reset_hub"

    invoke-direct {p0, v0}, Lcom/mega/app/engineeringmode/debug/DebugActivity;->processReset(Ljava/lang/String;)V

    .line 182
    goto :goto_7

    .line 196
    :cond_0
    const-string v0, "ctl.stop"

    const-string v1, "tcp_dump"

    invoke-static {v0, v1}, Lcom/mega/app/engineeringmode/common/Util;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    goto :goto_7

    .line 199
    :cond_1
    sget-object v0, Lcom/mega/app/engineeringmode/debug/DebugActivity;->TAG:Ljava/lang/String;

    const-string v1, "bt_eoc_onoff"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v0, p0, Lcom/mega/app/engineeringmode/debug/DebugActivity;->mEocStatus:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 201
    invoke-direct {p0, v2}, Lcom/mega/app/engineeringmode/debug/DebugActivity;->setEocStatus(Z)V

    goto :goto_6

    .line 203
    :cond_2
    invoke-direct {p0, v1}, Lcom/mega/app/engineeringmode/debug/DebugActivity;->setEocStatus(Z)V

    .line 205
    :goto_6
    const v0, 0x7f0e0059

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 206
    nop

    .line 251
    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0x7f09008c
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7f0900ae
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x7f0901a3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 74
    invoke-super {p0, p1}, Lcom/mega/app/engineeringmode/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    const v0, 0x7f0c001e

    invoke-virtual {p0, v0}, Lcom/mega/app/engineeringmode/debug/DebugActivity;->setContentView(I)V

    .line 78
    const v0, 0x7f090063

    invoke-virtual {p0, v0}, Lcom/mega/app/engineeringmode/debug/DebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mega/app/engineeringmode/debug/DebugActivity;->mCarServiceDebugText:Landroid/widget/TextView;

    .line 79
    invoke-direct {p0}, Lcom/mega/app/engineeringmode/debug/DebugActivity;->updateCarServiceDebugStatus()V

    .line 80
    const v0, 0x7f090064

    invoke-virtual {p0, v0}, Lcom/mega/app/engineeringmode/debug/DebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/mega/app/engineeringmode/debug/DebugActivity$1;

    invoke-direct {v1, p0}, Lcom/mega/app/engineeringmode/debug/DebugActivity$1;-><init>(Lcom/mega/app/engineeringmode/debug/DebugActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    const v0, 0x7f090090

    invoke-virtual {p0, v0}, Lcom/mega/app/engineeringmode/debug/DebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mega/app/engineeringmode/debug/DebugActivity;->mDebugTboxClient:Landroid/widget/Button;

    .line 89
    const v0, 0x7f090091

    invoke-virtual {p0, v0}, Lcom/mega/app/engineeringmode/debug/DebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mega/app/engineeringmode/debug/DebugActivity;->mDebugTboxLocation:Landroid/widget/Button;

    .line 90
    const v0, 0x7f09008f

    invoke-virtual {p0, v0}, Lcom/mega/app/engineeringmode/debug/DebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mega/app/engineeringmode/debug/DebugActivity;->mDebugTboxCheck:Landroid/widget/Button;

    .line 91
    const v0, 0x7f09008e

    invoke-virtual {p0, v0}, Lcom/mega/app/engineeringmode/debug/DebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mega/app/engineeringmode/debug/DebugActivity;->mDebugResetPhy:Landroid/widget/Button;

    .line 92
    const v0, 0x7f09008c

    invoke-virtual {p0, v0}, Lcom/mega/app/engineeringmode/debug/DebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mega/app/engineeringmode/debug/DebugActivity;->mDebugResetHub:Landroid/widget/Button;

    .line 93
    const v0, 0x7f09008d

    invoke-virtual {p0, v0}, Lcom/mega/app/engineeringmode/debug/DebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mega/app/engineeringmode/debug/DebugActivity;->mDebugResetHub2:Landroid/widget/Button;

    .line 94
    const v0, 0x7f0901a4

    invoke-virtual {p0, v0}, Lcom/mega/app/engineeringmode/debug/DebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mega/app/engineeringmode/debug/DebugActivity;->mTcpDumpEth1:Landroid/widget/Button;

    .line 95
    const v0, 0x7f0901a3

    invoke-virtual {p0, v0}, Lcom/mega/app/engineeringmode/debug/DebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mega/app/engineeringmode/debug/DebugActivity;->mTcpDumpEth2:Landroid/widget/Button;

    .line 96
    const v0, 0x7f0901a5

    invoke-virtual {p0, v0}, Lcom/mega/app/engineeringmode/debug/DebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mega/app/engineeringmode/debug/DebugActivity;->mTcpDumpWifi:Landroid/widget/Button;

    .line 97
    const v0, 0x7f090175

    invoke-virtual {p0, v0}, Lcom/mega/app/engineeringmode/debug/DebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mega/app/engineeringmode/debug/DebugActivity;->mStopTcpDump:Landroid/widget/Button;

    .line 98
    const v0, 0x7f090059

    invoke-virtual {p0, v0}, Lcom/mega/app/engineeringmode/debug/DebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mega/app/engineeringmode/debug/DebugActivity;->mBtEocOnOff:Landroid/widget/Button;

    .line 99
    const v0, 0x7f0900b3

    invoke-virtual {p0, v0}, Lcom/mega/app/engineeringmode/debug/DebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mega/app/engineeringmode/debug/DebugActivity;->mBtAudioHalDumpRx:Landroid/widget/Button;

    .line 100
    const v0, 0x7f0900b4

    invoke-virtual {p0, v0}, Lcom/mega/app/engineeringmode/debug/DebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mega/app/engineeringmode/debug/DebugActivity;->mBtAudioHalDumpTx:Landroid/widget/Button;

    .line 101
    const v0, 0x7f0900b0

    invoke-virtual {p0, v0}, Lcom/mega/app/engineeringmode/debug/DebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mega/app/engineeringmode/debug/DebugActivity;->mBtAudioFwDumpRx:Landroid/widget/Button;

    .line 102
    const v0, 0x7f0900b2

    invoke-virtual {p0, v0}, Lcom/mega/app/engineeringmode/debug/DebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mega/app/engineeringmode/debug/DebugActivity;->mBtAudioFwDumpTx:Landroid/widget/Button;

    .line 103
    const v0, 0x7f0900b1

    invoke-virtual {p0, v0}, Lcom/mega/app/engineeringmode/debug/DebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mega/app/engineeringmode/debug/DebugActivity;->mBtAudioFwTrackRx:Landroid/widget/Button;

    .line 104
    const v0, 0x7f0900af

    invoke-virtual {p0, v0}, Lcom/mega/app/engineeringmode/debug/DebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mega/app/engineeringmode/debug/DebugActivity;->mBtAudioFwRecordTx:Landroid/widget/Button;

    .line 105
    const v0, 0x7f0900ae

    invoke-virtual {p0, v0}, Lcom/mega/app/engineeringmode/debug/DebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mega/app/engineeringmode/debug/DebugActivity;->mBtAudioFwCloseExport:Landroid/widget/Button;

    .line 106
    iget-object v0, p0, Lcom/mega/app/engineeringmode/debug/DebugActivity;->mDebugTboxClient:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iget-object v0, p0, Lcom/mega/app/engineeringmode/debug/DebugActivity;->mDebugTboxLocation:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object v0, p0, Lcom/mega/app/engineeringmode/debug/DebugActivity;->mDebugTboxCheck:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-object v0, p0, Lcom/mega/app/engineeringmode/debug/DebugActivity;->mDebugResetPhy:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iget-object v0, p0, Lcom/mega/app/engineeringmode/debug/DebugActivity;->mDebugResetHub:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object v0, p0, Lcom/mega/app/engineeringmode/debug/DebugActivity;->mDebugResetHub2:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object v0, p0, Lcom/mega/app/engineeringmode/debug/DebugActivity;->mTcpDumpEth1:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iget-object v0, p0, Lcom/mega/app/engineeringmode/debug/DebugActivity;->mTcpDumpEth2:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object v0, p0, Lcom/mega/app/engineeringmode/debug/DebugActivity;->mTcpDumpWifi:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object v0, p0, Lcom/mega/app/engineeringmode/debug/DebugActivity;->mStopTcpDump:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iget-object v0, p0, Lcom/mega/app/engineeringmode/debug/DebugActivity;->mBtEocOnOff:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-object v0, p0, Lcom/mega/app/engineeringmode/debug/DebugActivity;->mBtAudioHalDumpRx:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-object v0, p0, Lcom/mega/app/engineeringmode/debug/DebugActivity;->mBtAudioHalDumpTx:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v0, p0, Lcom/mega/app/engineeringmode/debug/DebugActivity;->mBtAudioFwDumpRx:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    iget-object v0, p0, Lcom/mega/app/engineeringmode/debug/DebugActivity;->mBtAudioFwDumpTx:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object v0, p0, Lcom/mega/app/engineeringmode/debug/DebugActivity;->mBtAudioFwTrackRx:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object v0, p0, Lcom/mega/app/engineeringmode/debug/DebugActivity;->mBtAudioFwRecordTx:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object v0, p0, Lcom/mega/app/engineeringmode/debug/DebugActivity;->mBtAudioFwCloseExport:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    invoke-direct {p0}, Lcom/mega/app/engineeringmode/debug/DebugActivity;->initDebugTboxClient()V

    .line 125
    invoke-direct {p0}, Lcom/mega/app/engineeringmode/debug/DebugActivity;->initDebugTboxLocation()V

    .line 126
    invoke-direct {p0}, Lcom/mega/app/engineeringmode/debug/DebugActivity;->initDebugTboxCheck()V

    .line 127
    invoke-static {}, Lcom/mega/app/engineeringmode/common/MegaConnector;->getInstance()Lcom/mega/app/engineeringmode/common/MegaConnector;

    move-result-object v0

    iput-object v0, p0, Lcom/mega/app/engineeringmode/debug/DebugActivity;->mMegaConnector:Lcom/mega/app/engineeringmode/common/MegaConnector;

    .line 128
    const-string v1, "EOC/Debug/Resp"

    invoke-virtual {v0, p0, v1}, Lcom/mega/app/engineeringmode/common/MegaConnector;->addCallback(Lcom/mega/app/engineeringmode/common/MegaConnector$Callback;Ljava/lang/String;)V

    .line 130
    const v0, 0x7f09008a

    invoke-virtual {p0, v0}, Lcom/mega/app/engineeringmode/debug/DebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/mega/app/engineeringmode/debug/DebugActivity$2;

    invoke-direct {v1, p0}, Lcom/mega/app/engineeringmode/debug/DebugActivity$2;-><init>(Lcom/mega/app/engineeringmode/debug/DebugActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    const v0, 0x7f09008b

    invoke-virtual {p0, v0}, Lcom/mega/app/engineeringmode/debug/DebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/mega/app/engineeringmode/debug/DebugActivity$3;

    invoke-direct {v1, p0}, Lcom/mega/app/engineeringmode/debug/DebugActivity$3;-><init>(Lcom/mega/app/engineeringmode/debug/DebugActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 161
    iget-object v0, p0, Lcom/mega/app/engineeringmode/debug/DebugActivity;->mMegaConnector:Lcom/mega/app/engineeringmode/common/MegaConnector;

    const-string v1, "EOC/Debug/Resp"

    invoke-virtual {v0, v1}, Lcom/mega/app/engineeringmode/common/MegaConnector;->removeCallback(Ljava/lang/String;)V

    .line 162
    invoke-super {p0}, Lcom/mega/app/engineeringmode/base/BaseActivity;->onDestroy()V

    .line 163
    return-void
.end method

.method public onReceive(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 9
    .param p1, "topic"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 295
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    new-instance v0, Ljava/lang/String;

    invoke-static {p2}, Lcom/google/common/primitives/Bytes;->toArray(Ljava/util/Collection;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 296
    .local v0, "message":Ljava/lang/String;
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, Lcom/mega/app/engineeringmode/debug/DebugActivity$EocInfo;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mega/app/engineeringmode/debug/DebugActivity$EocInfo;

    .line 298
    .local v1, "ri":Lcom/mega/app/engineeringmode/debug/DebugActivity$EocInfo;
    sget-object v2, Lcom/mega/app/engineeringmode/debug/DebugActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive topic="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " data="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " message="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    const-string v2, "EOC/Debug/Resp"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 302
    iget-object v2, v1, Lcom/mega/app/engineeringmode/debug/DebugActivity$EocInfo;->value:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 303
    iget-object v2, v1, Lcom/mega/app/engineeringmode/debug/DebugActivity$EocInfo;->value:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 304
    .local v2, "result":Ljava/lang/String;
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 305
    .local v3, "msg":Landroid/os/Message;
    const/4 v4, 0x0

    iput v4, v3, Landroid/os/Message;->what:I

    .line 306
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 307
    .local v5, "bundle":Landroid/os/Bundle;
    const-string v6, "1"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, "textshow"

    if-eqz v6, :cond_0

    .line 308
    invoke-virtual {p0}, Lcom/mega/app/engineeringmode/debug/DebugActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0e0058

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v7, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/mega/app/engineeringmode/debug/DebugActivity;->mEocStatus:Ljava/lang/Boolean;

    goto :goto_0

    .line 311
    :cond_0
    invoke-virtual {p0}, Lcom/mega/app/engineeringmode/debug/DebugActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f0e0057

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/mega/app/engineeringmode/debug/DebugActivity;->mEocStatus:Ljava/lang/Boolean;

    .line 314
    :goto_0
    invoke-virtual {v3, v5}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 315
    iget-object v4, p0, Lcom/mega/app/engineeringmode/debug/DebugActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 318
    .end local v2    # "result":Ljava/lang/String;
    .end local v3    # "msg":Landroid/os/Message;
    .end local v5    # "bundle":Landroid/os/Bundle;
    :cond_1
    return-void
.end method
