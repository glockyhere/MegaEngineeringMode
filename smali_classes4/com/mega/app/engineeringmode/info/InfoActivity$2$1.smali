.class Lcom/mega/app/engineeringmode/info/InfoActivity$2$1;
.super Ljava/lang/Object;
.source "InfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mega/app/engineeringmode/info/InfoActivity$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mega/app/engineeringmode/info/InfoActivity$2;


# direct methods
.method constructor <init>(Lcom/mega/app/engineeringmode/info/InfoActivity$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/mega/app/engineeringmode/info/InfoActivity$2;

    .line 300
    iput-object p1, p0, Lcom/mega/app/engineeringmode/info/InfoActivity$2$1;->this$1:Lcom/mega/app/engineeringmode/info/InfoActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 303
    iget-object v0, p0, Lcom/mega/app/engineeringmode/info/InfoActivity$2$1;->this$1:Lcom/mega/app/engineeringmode/info/InfoActivity$2;

    iget-object v0, v0, Lcom/mega/app/engineeringmode/info/InfoActivity$2;->this$0:Lcom/mega/app/engineeringmode/info/InfoActivity;

    invoke-static {v0}, Lcom/mega/app/engineeringmode/info/InfoActivity;->access$700(Lcom/mega/app/engineeringmode/info/InfoActivity;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "persist.mega.need_auth"

    invoke-static {v1, v0}, Lcom/mega/nexus/os/MegaSystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    iget-object v0, p0, Lcom/mega/app/engineeringmode/info/InfoActivity$2$1;->this$1:Lcom/mega/app/engineeringmode/info/InfoActivity$2;

    iget-object v0, v0, Lcom/mega/app/engineeringmode/info/InfoActivity$2;->this$0:Lcom/mega/app/engineeringmode/info/InfoActivity;

    invoke-static {v0}, Lcom/mega/app/engineeringmode/info/InfoActivity;->access$800(Lcom/mega/app/engineeringmode/info/InfoActivity;)V

    .line 305
    return-void
.end method
