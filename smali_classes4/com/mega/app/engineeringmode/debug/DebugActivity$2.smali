.class Lcom/mega/app/engineeringmode/debug/DebugActivity$2;
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

    .line 130
    iput-object p1, p0, Lcom/mega/app/engineeringmode/debug/DebugActivity$2;->this$0:Lcom/mega/app/engineeringmode/debug/DebugActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 133
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 134
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "com.mega.audiotesttools"

    const-string v2, "com.mega.audiotesttools.MainActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    iget-object v1, p0, Lcom/mega/app/engineeringmode/debug/DebugActivity$2;->this$0:Lcom/mega/app/engineeringmode/debug/DebugActivity;

    invoke-virtual {v1, v0}, Lcom/mega/app/engineeringmode/debug/DebugActivity;->startActivity(Landroid/content/Intent;)V

    .line 136
    return-void
.end method
