.class Lcom/mega/app/engineeringmode/mic/MicrophoneFragment$1;
.super Ljava/lang/Object;
.source "MicrophoneFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mega/app/engineeringmode/mic/MicrophoneFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mega/app/engineeringmode/mic/MicrophoneFragment;


# direct methods
.method constructor <init>(Lcom/mega/app/engineeringmode/mic/MicrophoneFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mega/app/engineeringmode/mic/MicrophoneFragment;

    .line 35
    iput-object p1, p0, Lcom/mega/app/engineeringmode/mic/MicrophoneFragment$1;->this$0:Lcom/mega/app/engineeringmode/mic/MicrophoneFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 38
    invoke-static {}, Lcom/mega/app/engineeringmode/common/Util;->isMonkeyRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/mega/app/engineeringmode/mic/MicrophoneFragment$1;->this$0:Lcom/mega/app/engineeringmode/mic/MicrophoneFragment;

    invoke-static {v0}, Lcom/mega/app/engineeringmode/mic/MicrophoneFragment;->access$000(Lcom/mega/app/engineeringmode/mic/MicrophoneFragment;)V

    .line 41
    :cond_0
    return-void
.end method
