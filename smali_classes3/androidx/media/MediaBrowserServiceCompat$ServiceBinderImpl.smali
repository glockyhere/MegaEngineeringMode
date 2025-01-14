.class Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;
.super Ljava/lang/Object;
.source "MediaBrowserServiceCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media/MediaBrowserServiceCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceBinderImpl"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media/MediaBrowserServiceCompat;


# direct methods
.method constructor <init>(Landroidx/media/MediaBrowserServiceCompat;)V
    .locals 0

    .line 958
    iput-object p1, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;->this$0:Landroidx/media/MediaBrowserServiceCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 959
    return-void
.end method


# virtual methods
.method public addSubscription(Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;Landroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;)V
    .locals 8
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "options"    # Landroid/os/Bundle;
    .param p4, "callbacks"    # Landroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;

    .line 1029
    iget-object v0, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;->this$0:Landroidx/media/MediaBrowserServiceCompat;

    iget-object v0, v0, Landroidx/media/MediaBrowserServiceCompat;->mHandler:Landroidx/media/MediaBrowserServiceCompat$ServiceHandler;

    new-instance v7, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$3;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$3;-><init>(Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;Landroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;)V

    invoke-virtual {v0, v7}, Landroidx/media/MediaBrowserServiceCompat$ServiceHandler;->postOrRun(Ljava/lang/Runnable;)V

    .line 1045
    return-void
.end method

.method public connect(Ljava/lang/String;IILandroid/os/Bundle;Landroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;)V
    .locals 9
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "rootHints"    # Landroid/os/Bundle;
    .param p5, "callbacks"    # Landroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;

    .line 964
    iget-object v0, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;->this$0:Landroidx/media/MediaBrowserServiceCompat;

    invoke-virtual {v0, p1, p3}, Landroidx/media/MediaBrowserServiceCompat;->isValidPackage(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 969
    iget-object v0, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;->this$0:Landroidx/media/MediaBrowserServiceCompat;

    iget-object v0, v0, Landroidx/media/MediaBrowserServiceCompat;->mHandler:Landroidx/media/MediaBrowserServiceCompat$ServiceHandler;

    new-instance v8, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p5

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;-><init>(Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;Landroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;Ljava/lang/String;IILandroid/os/Bundle;)V

    invoke-virtual {v0, v8}, Landroidx/media/MediaBrowserServiceCompat$ServiceHandler;->postOrRun(Ljava/lang/Runnable;)V

    .line 1009
    return-void

    .line 965
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package/uid mismatch: uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " package="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public disconnect(Landroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;)V
    .locals 2
    .param p1, "callbacks"    # Landroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;

    .line 1012
    iget-object v0, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;->this$0:Landroidx/media/MediaBrowserServiceCompat;

    iget-object v0, v0, Landroidx/media/MediaBrowserServiceCompat;->mHandler:Landroidx/media/MediaBrowserServiceCompat$ServiceHandler;

    new-instance v1, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$2;

    invoke-direct {v1, p0, p1}, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$2;-><init>(Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;Landroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;)V

    invoke-virtual {v0, v1}, Landroidx/media/MediaBrowserServiceCompat$ServiceHandler;->postOrRun(Ljava/lang/Runnable;)V

    .line 1025
    return-void
.end method

.method public getMediaItem(Ljava/lang/String;Landroid/support/v4/os/ResultReceiver;Landroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;)V
    .locals 2
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p2, "receiver"    # Landroid/support/v4/os/ResultReceiver;
    .param p3, "callbacks"    # Landroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;

    .line 1071
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 1075
    :cond_0
    iget-object v0, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;->this$0:Landroidx/media/MediaBrowserServiceCompat;

    iget-object v0, v0, Landroidx/media/MediaBrowserServiceCompat;->mHandler:Landroidx/media/MediaBrowserServiceCompat$ServiceHandler;

    new-instance v1, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$5;

    invoke-direct {v1, p0, p3, p1, p2}, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$5;-><init>(Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;Landroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;Ljava/lang/String;Landroid/support/v4/os/ResultReceiver;)V

    invoke-virtual {v0, v1}, Landroidx/media/MediaBrowserServiceCompat$ServiceHandler;->postOrRun(Ljava/lang/Runnable;)V

    .line 1088
    return-void

    .line 1072
    :cond_1
    :goto_0
    return-void
.end method

.method public registerCallbacks(Landroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;Ljava/lang/String;IILandroid/os/Bundle;)V
    .locals 9
    .param p1, "callbacks"    # Landroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "pid"    # I
    .param p4, "uid"    # I
    .param p5, "rootHints"    # Landroid/os/Bundle;

    .line 1093
    iget-object v0, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;->this$0:Landroidx/media/MediaBrowserServiceCompat;

    iget-object v0, v0, Landroidx/media/MediaBrowserServiceCompat;->mHandler:Landroidx/media/MediaBrowserServiceCompat$ServiceHandler;

    new-instance v8, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$6;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move v4, p4

    move-object v5, p2

    move v6, p3

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$6;-><init>(Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;Landroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;ILjava/lang/String;ILandroid/os/Bundle;)V

    invoke-virtual {v0, v8}, Landroidx/media/MediaBrowserServiceCompat$ServiceHandler;->postOrRun(Ljava/lang/Runnable;)V

    .line 1129
    return-void
.end method

.method public removeSubscription(Ljava/lang/String;Landroid/os/IBinder;Landroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "callbacks"    # Landroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;

    .line 1049
    iget-object v0, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;->this$0:Landroidx/media/MediaBrowserServiceCompat;

    iget-object v0, v0, Landroidx/media/MediaBrowserServiceCompat;->mHandler:Landroidx/media/MediaBrowserServiceCompat$ServiceHandler;

    new-instance v1, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$4;

    invoke-direct {v1, p0, p3, p1, p2}, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$4;-><init>(Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;Landroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-virtual {v0, v1}, Landroidx/media/MediaBrowserServiceCompat$ServiceHandler;->postOrRun(Ljava/lang/Runnable;)V

    .line 1067
    return-void
.end method

.method public search(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/os/ResultReceiver;Landroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;)V
    .locals 8
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "receiver"    # Landroid/support/v4/os/ResultReceiver;
    .param p4, "callbacks"    # Landroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;

    .line 1147
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 1151
    :cond_0
    iget-object v0, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;->this$0:Landroidx/media/MediaBrowserServiceCompat;

    iget-object v0, v0, Landroidx/media/MediaBrowserServiceCompat;->mHandler:Landroidx/media/MediaBrowserServiceCompat$ServiceHandler;

    new-instance v7, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$8;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$8;-><init>(Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;Landroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/os/ResultReceiver;)V

    invoke-virtual {v0, v7}, Landroidx/media/MediaBrowserServiceCompat$ServiceHandler;->postOrRun(Ljava/lang/Runnable;)V

    .line 1164
    return-void

    .line 1148
    :cond_1
    :goto_0
    return-void
.end method

.method public sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/os/ResultReceiver;Landroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;)V
    .locals 8
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "receiver"    # Landroid/support/v4/os/ResultReceiver;
    .param p4, "callbacks"    # Landroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;

    .line 1168
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 1172
    :cond_0
    iget-object v0, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;->this$0:Landroidx/media/MediaBrowserServiceCompat;

    iget-object v0, v0, Landroidx/media/MediaBrowserServiceCompat;->mHandler:Landroidx/media/MediaBrowserServiceCompat$ServiceHandler;

    new-instance v7, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$9;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$9;-><init>(Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;Landroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/os/ResultReceiver;)V

    invoke-virtual {v0, v7}, Landroidx/media/MediaBrowserServiceCompat$ServiceHandler;->postOrRun(Ljava/lang/Runnable;)V

    .line 1186
    return-void

    .line 1169
    :cond_1
    :goto_0
    return-void
.end method

.method public unregisterCallbacks(Landroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;)V
    .locals 2
    .param p1, "callbacks"    # Landroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;

    .line 1133
    iget-object v0, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;->this$0:Landroidx/media/MediaBrowserServiceCompat;

    iget-object v0, v0, Landroidx/media/MediaBrowserServiceCompat;->mHandler:Landroidx/media/MediaBrowserServiceCompat$ServiceHandler;

    new-instance v1, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$7;

    invoke-direct {v1, p0, p1}, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$7;-><init>(Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;Landroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;)V

    invoke-virtual {v0, v1}, Landroidx/media/MediaBrowserServiceCompat$ServiceHandler;->postOrRun(Ljava/lang/Runnable;)V

    .line 1143
    return-void
.end method
