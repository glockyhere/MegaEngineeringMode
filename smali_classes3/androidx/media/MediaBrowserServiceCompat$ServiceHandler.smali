.class final Landroidx/media/MediaBrowserServiceCompat$ServiceHandler;
.super Landroid/os/Handler;
.source "MediaBrowserServiceCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media/MediaBrowserServiceCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field private final mServiceBinderImpl:Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;

.field final synthetic this$0:Landroidx/media/MediaBrowserServiceCompat;


# direct methods
.method constructor <init>(Landroidx/media/MediaBrowserServiceCompat;)V
    .locals 1

    .line 664
    iput-object p1, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceHandler;->this$0:Landroidx/media/MediaBrowserServiceCompat;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 662
    new-instance p1, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;

    iget-object v0, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceHandler;->this$0:Landroidx/media/MediaBrowserServiceCompat;

    invoke-direct {p1, v0}, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;-><init>(Landroidx/media/MediaBrowserServiceCompat;)V

    iput-object p1, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceHandler;->mServiceBinderImpl:Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;

    .line 665
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .line 669
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 670
    .local v0, "data":Landroid/os/Bundle;
    iget v1, p1, Landroid/os/Message;->what:I

    const-string v2, "data_callback_token"

    const-string v3, "data_calling_uid"

    const-string v4, "data_calling_pid"

    const-string v5, "data_package_name"

    const-string v6, "data_root_hints"

    const-string v7, "data_result_receiver"

    const-string v8, "data_media_item_id"

    packed-switch v1, :pswitch_data_0

    .line 748
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\n  Service version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n  Client version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MBServiceCompat"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 737
    :pswitch_0
    const-string v1, "data_custom_action_extras"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 738
    .local v1, "customActionExtras":Landroid/os/Bundle;
    invoke-static {v1}, Landroid/support/v4/media/session/MediaSessionCompat;->ensureClassLoader(Landroid/os/Bundle;)V

    .line 740
    iget-object v2, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceHandler;->mServiceBinderImpl:Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;

    .line 741
    const-string v3, "data_custom_action"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 743
    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/support/v4/os/ResultReceiver;

    new-instance v5, Landroidx/media/MediaBrowserServiceCompat$ServiceCallbacksCompat;

    iget-object v6, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {v5, v6}, Landroidx/media/MediaBrowserServiceCompat$ServiceCallbacksCompat;-><init>(Landroid/os/Messenger;)V

    .line 740
    invoke-virtual {v2, v3, v1, v4, v5}, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;->sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/os/ResultReceiver;Landroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;)V

    .line 745
    goto/16 :goto_0

    .line 726
    .end local v1    # "customActionExtras":Landroid/os/Bundle;
    :pswitch_1
    const-string v1, "data_search_extras"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 727
    .local v1, "searchExtras":Landroid/os/Bundle;
    invoke-static {v1}, Landroid/support/v4/media/session/MediaSessionCompat;->ensureClassLoader(Landroid/os/Bundle;)V

    .line 729
    iget-object v2, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceHandler;->mServiceBinderImpl:Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;

    .line 730
    const-string v3, "data_search_query"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 732
    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/support/v4/os/ResultReceiver;

    new-instance v5, Landroidx/media/MediaBrowserServiceCompat$ServiceCallbacksCompat;

    iget-object v6, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {v5, v6}, Landroidx/media/MediaBrowserServiceCompat$ServiceCallbacksCompat;-><init>(Landroid/os/Messenger;)V

    .line 729
    invoke-virtual {v2, v3, v1, v4, v5}, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;->search(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/os/ResultReceiver;Landroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;)V

    .line 734
    goto/16 :goto_0

    .line 722
    .end local v1    # "searchExtras":Landroid/os/Bundle;
    :pswitch_2
    iget-object v1, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceHandler;->mServiceBinderImpl:Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;

    new-instance v2, Landroidx/media/MediaBrowserServiceCompat$ServiceCallbacksCompat;

    iget-object v3, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {v2, v3}, Landroidx/media/MediaBrowserServiceCompat$ServiceCallbacksCompat;-><init>(Landroid/os/Messenger;)V

    invoke-virtual {v1, v2}, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;->unregisterCallbacks(Landroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;)V

    .line 724
    goto/16 :goto_0

    .line 710
    :pswitch_3
    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 711
    .local v1, "rootHints":Landroid/os/Bundle;
    invoke-static {v1}, Landroid/support/v4/media/session/MediaSessionCompat;->ensureClassLoader(Landroid/os/Bundle;)V

    .line 713
    iget-object v2, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceHandler;->mServiceBinderImpl:Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;

    new-instance v6, Landroidx/media/MediaBrowserServiceCompat$ServiceCallbacksCompat;

    iget-object v7, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {v6, v7}, Landroidx/media/MediaBrowserServiceCompat$ServiceCallbacksCompat;-><init>(Landroid/os/Messenger;)V

    .line 715
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 716
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 717
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 713
    move-object v4, v2

    move-object v5, v6

    move-object v6, v7

    move v7, v8

    move v8, v3

    move-object v9, v1

    invoke-virtual/range {v4 .. v9}, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;->registerCallbacks(Landroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;Ljava/lang/String;IILandroid/os/Bundle;)V

    .line 719
    goto/16 :goto_0

    .line 704
    .end local v1    # "rootHints":Landroid/os/Bundle;
    :pswitch_4
    iget-object v1, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceHandler;->mServiceBinderImpl:Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;

    .line 705
    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 706
    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/support/v4/os/ResultReceiver;

    new-instance v4, Landroidx/media/MediaBrowserServiceCompat$ServiceCallbacksCompat;

    iget-object v5, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {v4, v5}, Landroidx/media/MediaBrowserServiceCompat$ServiceCallbacksCompat;-><init>(Landroid/os/Messenger;)V

    .line 704
    invoke-virtual {v1, v2, v3, v4}, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;->getMediaItem(Ljava/lang/String;Landroid/support/v4/os/ResultReceiver;Landroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;)V

    .line 708
    goto :goto_0

    .line 698
    :pswitch_5
    iget-object v1, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceHandler;->mServiceBinderImpl:Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;

    .line 699
    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 700
    invoke-static {v0, v2}, Landroidx/core/app/BundleCompat;->getBinder(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    new-instance v4, Landroidx/media/MediaBrowserServiceCompat$ServiceCallbacksCompat;

    iget-object v5, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {v4, v5}, Landroidx/media/MediaBrowserServiceCompat$ServiceCallbacksCompat;-><init>(Landroid/os/Messenger;)V

    .line 698
    invoke-virtual {v1, v3, v2, v4}, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;->removeSubscription(Ljava/lang/String;Landroid/os/IBinder;Landroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;)V

    .line 702
    goto :goto_0

    .line 687
    :pswitch_6
    const-string v1, "data_options"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 688
    .local v1, "options":Landroid/os/Bundle;
    invoke-static {v1}, Landroid/support/v4/media/session/MediaSessionCompat;->ensureClassLoader(Landroid/os/Bundle;)V

    .line 690
    iget-object v3, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceHandler;->mServiceBinderImpl:Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;

    .line 691
    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 692
    invoke-static {v0, v2}, Landroidx/core/app/BundleCompat;->getBinder(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    new-instance v5, Landroidx/media/MediaBrowserServiceCompat$ServiceCallbacksCompat;

    iget-object v6, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {v5, v6}, Landroidx/media/MediaBrowserServiceCompat$ServiceCallbacksCompat;-><init>(Landroid/os/Messenger;)V

    .line 690
    invoke-virtual {v3, v4, v2, v1, v5}, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;->addSubscription(Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;Landroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;)V

    .line 695
    goto :goto_0

    .line 684
    .end local v1    # "options":Landroid/os/Bundle;
    :pswitch_7
    iget-object v1, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceHandler;->mServiceBinderImpl:Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;

    new-instance v2, Landroidx/media/MediaBrowserServiceCompat$ServiceCallbacksCompat;

    iget-object v3, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {v2, v3}, Landroidx/media/MediaBrowserServiceCompat$ServiceCallbacksCompat;-><init>(Landroid/os/Messenger;)V

    invoke-virtual {v1, v2}, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;->disconnect(Landroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;)V

    .line 685
    goto :goto_0

    .line 672
    :pswitch_8
    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 673
    .local v1, "rootHints":Landroid/os/Bundle;
    invoke-static {v1}, Landroid/support/v4/media/session/MediaSessionCompat;->ensureClassLoader(Landroid/os/Bundle;)V

    .line 675
    iget-object v2, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceHandler;->mServiceBinderImpl:Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;

    .line 676
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 677
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 678
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    new-instance v9, Landroidx/media/MediaBrowserServiceCompat$ServiceCallbacksCompat;

    iget-object v3, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {v9, v3}, Landroidx/media/MediaBrowserServiceCompat$ServiceCallbacksCompat;-><init>(Landroid/os/Messenger;)V

    .line 675
    move-object v4, v2

    move-object v8, v1

    invoke-virtual/range {v4 .. v9}, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;->connect(Ljava/lang/String;IILandroid/os/Bundle;Landroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;)V

    .line 681
    nop

    .line 752
    .end local v1    # "rootHints":Landroid/os/Bundle;
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public postOrRun(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 772
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/media/MediaBrowserServiceCompat$ServiceHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 773
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 775
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/media/MediaBrowserServiceCompat$ServiceHandler;->post(Ljava/lang/Runnable;)Z

    .line 777
    :goto_0
    return-void
.end method

.method public sendMessageAtTime(Landroid/os/Message;J)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "uptimeMillis"    # J

    .line 758
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 759
    .local v0, "data":Landroid/os/Bundle;
    const-class v1, Landroid/support/v4/media/MediaBrowserCompat;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 760
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const-string v2, "data_calling_uid"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 761
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 762
    .local v1, "pid":I
    const-string v2, "data_calling_pid"

    if-lez v1, :cond_0

    .line 763
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 764
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 766
    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 768
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    move-result v2

    return v2
.end method
