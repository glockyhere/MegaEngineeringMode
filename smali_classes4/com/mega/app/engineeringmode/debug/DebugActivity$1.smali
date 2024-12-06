.class Lcom/mega/app/engineeringmode/debug/DebugActivity$1;
.super Ljava/lang/Object;
.source "DebugActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mega/app/engineeringmode/debug/DebugActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mega/app/engineeringmode/debug/DebugActivity;


# direct methods
.method constructor <init>(Lcom/mega/app/engineeringmode/debug/DebugActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mega/app/engineeringmode/debug/DebugActivity;

    .line 80
    iput-object p1, p0, Lcom/mega/app/engineeringmode/debug/DebugActivity$1;->this$0:Lcom/mega/app/engineeringmode/debug/DebugActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 83
    iget-object v0, p0, Lcom/mega/app/engineeringmode/debug/DebugActivity$1;->this$0:Lcom/mega/app/engineeringmode/debug/DebugActivity;

    invoke-static {v0}, Lcom/mega/app/engineeringmode/debug/DebugActivity;->access$000(Lcom/mega/app/engineeringmode/debug/DebugActivity;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "persist.carservice.cacheinvalid"

    invoke-static {v1, v0}, Lcom/mega/nexus/os/MegaSystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/mega/app/engineeringmode/debug/DebugActivity$1;->this$0:Lcom/mega/app/engineeringmode/debug/DebugActivity;

    invoke-static {v0}, Lcom/mega/app/engineeringmode/debug/DebugActivity;->access$100(Lcom/mega/app/engineeringmode/debug/DebugActivity;)V

    .line 85
    return-void
.end method
