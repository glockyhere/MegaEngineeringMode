.class public Lcom/mega/nexus/media/session/MegaMediaSessionManager;
.super Ljava/lang/Object;
.source "MegaMediaSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mega/nexus/media/session/MegaMediaSessionManager$OnMediaKeyListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dispatchMediaKeyEventAsSystemService(Landroid/media/session/MediaSessionManager;Landroid/view/KeyEvent;)V
    .locals 0
    .param p0, "mediaSessionManager"    # Landroid/media/session/MediaSessionManager;
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .line 23
    invoke-virtual {p0, p1}, Landroid/media/session/MediaSessionManager;->dispatchMediaKeyEventAsSystemService(Landroid/view/KeyEvent;)V

    .line 24
    return-void
.end method

.method public static dispatchVolumeKeyEventAsSystemService(Landroid/media/session/MediaSessionManager;Landroid/view/KeyEvent;I)V
    .locals 0
    .param p0, "mediaSessionManager"    # Landroid/media/session/MediaSessionManager;
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;
    .param p2, "streamType"    # I

    .line 30
    invoke-virtual {p0, p1, p2}, Landroid/media/session/MediaSessionManager;->dispatchVolumeKeyEventAsSystemService(Landroid/view/KeyEvent;I)V

    .line 31
    return-void
.end method

.method public static setOnMediaKeyListener(Landroid/media/session/MediaSessionManager;Lcom/mega/nexus/media/session/MegaMediaSessionManager$OnMediaKeyListener;Landroid/os/Handler;)V
    .locals 0
    .param p0, "mediaSessionManager"    # Landroid/media/session/MediaSessionManager;
    .param p1, "listener"    # Lcom/mega/nexus/media/session/MegaMediaSessionManager$OnMediaKeyListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 13
    invoke-virtual {p0, p1, p2}, Landroid/media/session/MediaSessionManager;->setOnMediaKeyListener(Landroid/media/session/MediaSessionManager$OnMediaKeyListener;Landroid/os/Handler;)V

    .line 14
    return-void
.end method
